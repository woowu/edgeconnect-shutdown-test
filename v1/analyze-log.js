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

async function processLogFile(filename)
{
    const state = {
        powerDownStart: 0,
        emmcStart: 0,
        filesystem: Infinity,
        wifi: Infinity,
        emmc: Infinity,
    };

    return new Promise((resolve, reject) => {
        const rl = readline.createInterface({
            input: fs.createReadStream(filename),
        });
        rl.on('line', line => {
            var re, m;

            re = /\[(.*)\] daemon_power_remove/;
            m = line.match(re);
            if (m) {
                state.powerDownStart = parseInt(m[1]) / 1000;
                return;
            }

            re = /\[(.*)\] De-assert.*EIC_REMAIN_ON/;
            m = line.match(re);
            if (m) {
                const t = parseInt(m[1]) / 1000;
                if (t > state.powerDownStart)
                    state.total = t - state.powerDownStart;
                else
                    state.total = t + 1000 - state.powerDownStart;
                if (t > state.emmcStart)
                    state.emmc = t - state.emmcStart;
                else
                    state.emmc = t + 1000 - state.emmcStart;
                return;
            }

            re = /\[(.*)\] syncfs done/;
            m = line.match(re);
            if (m) {
                const t = parseInt(m[1]) / 1000;
                if (t > state.powerDownStart)
                    state.filesystem = t - state.powerDownStart;
                else
                    state.filesystem = t + 1000 - state.powerDownStart;
                return;
            }

            re = /\[(.*)\] turn off wifi exited/;
            m = line.match(re);
            if (m) {
                const t = parseInt(m[1]) / 1000;
                if (t > state.powerDownStart)
                    state.wifi = t - state.powerDownStart;
                else
                    state.wifi = t + 1000 - state.powerDownStart;
                return;
            }

            re = /\[(.*)\] shutdown eMMC/;
            m = line.match(re);
            if (m) {
                state.emmcStart = parseInt(m[1]) / 1000;
                return;
            }
        });
        rl.on('close', () => {
            resolve(state);
        });
    });
}

(async() => {
    const csv = fs.createWriteStream(argv.out);
    csv.write('Filesystem,WiFi,eMMC,Total\n');
    for (const f of await glob(path.join(argv.dir, '*.log'))) {
        const { filesystem, wifi, emmc, total } = await processLogFile(f);
        csv.write(`${filesystem.toFixed(3)},${wifi.toFixed(3)},${emmc.toFixed(3)},${total.toFixed(3)}\n`);
    }
    csv.end();
})();
