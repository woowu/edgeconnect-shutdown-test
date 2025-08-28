#!/usr/bin/node --harmony
'use strict';

/**
 * Read EdgeConnect shutdown log printed on the console
 */

import fs from 'node:fs';
import path from 'node:path';
import readline from 'node:readline';
import { glob } from 'glob';
import yargs from 'yargs/yargs';

/*---------------------------------------------------------------------------*/

var csv;

const argv = yargs(process.argv.slice(2))
    .version('0.0.1')
    .option('d', {
        alias: 'dir',
        description: 'directory of log files',
        demandOption: true,
    })
    .option('o', {
        alias: 'out',
        description: 'output filename (csv)',
        demandOption: true,
    })
    .argv;

function processLogLineInSingleTest(state, line)
{
    var re, m;

    re = /\[([0-9]+)\] (.*)/;
    m = line.match(re);
    if (! m) return;
    const time = parseInt(m[1]) / 1000;
    if (time < state.test.clock)
        state.test.clock = time + 1000;
    else
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
        const testId = state.test.id;
        delete state.test.id;
        state.tests[state.setupL1 + '/' + state.setupL2][testId]
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
        rl.on('line', line => {
            var re, m;

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
                return;
            }

            re = /^### (.*)/;
            m = line.match(re);
            if (m) {
                state.setupL2 = m[1];
                state.tests[state.setupL1 + '/' + state.setupL2] = {};
                return;
            }

            re = /^Test ([0-9]+)/;
            m = line.match(re);
            if (m) {
                state.test = {
                    id: m[1],
                    powerDownStart: 0,
                    emmcStart: 0,
                    filesystem: Infinity,
                    wifi: Infinity,
                    emmc: Infinity,
                    clock: 0,
                };
                return;
            }
            processLogLineInSingleTest(state, line);
        });

        rl.on('close', () => {
            resolve(state);
        });
    });
}

const filename = argv._[0];
const state = await processLogFile(filename);
console.log(JSON.stringify(state, null, '\t'));
