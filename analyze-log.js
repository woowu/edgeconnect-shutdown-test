#!/usr/bin/node --harmony
'use strict';

/**
 * Read EdgeConnect shutdown logs organized in a md file and extract the timing
 * information; then save the timing records in a combined csv file. 
 */

import fs from 'node:fs';
import path from 'node:path';
import readline from 'node:readline';
import { glob } from 'glob';
import yargs from 'yargs/yargs';

/*---------------------------------------------------------------------------*/

const argv = yargs(process.argv.slice(2))
    .version('0.0.1')
    .argv;

function getSetupName(state)
{
    const comp = [state.setupL1];
    if (state.setupL2) comp.push(state.setupL2);
    return comp.join('/');
}

function processLogLineInSingleTest(state, line, lineNumber)
{
    var re, m;

    re = /\[([0-9]+)\] (.*)/;
    m = line.match(re);
    if (! m) return;
    var time = parseInt(m[1]) / 1000 + state.test.clockHigh;
    if (time < state.test.clock) {
        console.log(`line ${lineNumber} detected time wrapping around:`
            + ` ${state.test.clock} to ${time}`);
        state.test.clockHigh += 1000;
        time += 1000;
    }
    state.test.clock = time;

    const msg = m[2].trim();

    if (msg.includes('daemon_power_remove')) {
        state.test.powerDownStart = state.test.clock;
        return;
    }

    if (msg.includes('turn off wifi exited')) {
        state.test.wifi = state.test.clock - state.test.powerDownStart;
        return;
    }

    if (msg.includes('syncfs done')) {
        state.test.filesystem = state.test.clock - state.test.powerDownStart;
        return;
    }

    if (msg.includes('shutdown eMMC')) {
        state.test.emmcStart = state.test.clock;
        return;
    }

    re = /De-assert.*EIC_REMAIN_ON/;
    m = msg.match(re);
    if (m) {
        state.test.total = state.test.clock - state.test.powerDownStart;
        state.test.emmc = state.test.clock - state.test.emmcStart;
        const testIdx = state.test.idx;
        delete state.test.idx;
        state.tests[getSetupName(state)][testIdx]
            = state.test;
        return;
    }
}

function processLogFile(filename)
{
    const state = {
        name: null,
        setupL1: '',
        setupL2: '',
        test: null,
        tests: {},
    };

    return new Promise((resolve, reject) => {
        const rl = readline.createInterface({
            input: fs.createReadStream(filename),
        });
        var lineNumber = 0;
        rl.on('line', line => {
            var re, m;

            ++lineNumber;

            re = /^# (.*)/;
            m = line.match(re);
            if (m) { // test name
                if (state.name) throw new Error('Only one \'#\' is allowed');
                state.name = m[1];
                return;
            }

            re = /^## (.*)/;
            m = line.match(re);
            if (m) {
                state.setupL1 = m[1];
                /* I dont know there will be a lower level of setup name, so I
                 * have to setup my object first. If the lower level appeared
                 * later, the object can be value can be overwritten.
                 */
                state.tests[getSetupName(state)] = {};
                return;
            }

            re = /^### (.*)/;
            m = line.match(re);
            if (m) {
                state.setupL2 = m[1];
                delete state.tests[state.setupL1];
                state.tests[getSetupName(state)] = {};
                return;
            }

            re = /^Test ([0-9]+)/;
            m = line.match(re);
            if (m) {
                state.test = {
                    idx: m[1],
                    powerDownStart: 0,
                    emmcStart: 0,
                    filesystem: Infinity,
                    wifi: Infinity,
                    emmc: Infinity,
                    clock: 0,
                    clockHigh: 0,
                };
                return;
            }
            processLogLineInSingleTest(state, line, lineNumber);
        });

        rl.on('close', () => {
            resolve(state);
        });
    });
}

function dumpState(state)
{
    delete state.test;
    delete state.setupL1;
    delete state.setupL2;
    fs.writeFile(state.name + '.json', JSON.stringify(state, null, '  '),
        () => {});
}

const filename = argv._[0];
const state = await processLogFile(filename);
dumpState(state);
const csv = fs.createWriteStream(state.name + '.csv');
csv.write('Setup,Idx,Filesystem,WiFi,eMMC,Total\n');
for (const setup in state.tests) {
    const tests = state.tests[setup];
    for (const idx in tests) {
        const { filesystem, wifi, emmc, total } = tests[idx];
        csv.write(`"${setup}",${idx},${filesystem.toFixed(3)},${wifi.toFixed(3)},`
            + `${emmc.toFixed(3)},${total.toFixed(3)}\n`);
    }
}
csv.end();
