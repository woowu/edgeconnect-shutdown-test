# Test

## mkbusy command line examples

```
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 90
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 2M --n-files 5 >/dev/null --cache 256
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 2M --n-files 5
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 10M --dd 
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 10M --dd --cache 256 
```

## Type of tests

- pf-only: Assume we have infinity power budget and observe the time
  consumed by individul activiies executed in shutdow. To do this, we only
  assert the PowerFail PIN without deassert the power supply PIN from the
  meter side; and we did not pull down REMAINS_ON PIN from the Edge side.
- pf-and-power-off: assert the PowerFail and deassert power supply PINs
  together from the meter side and observe the maiximum exeute time the Edge
  can gain since the power off. To do this, we did not pull down REMAINS_ON
  PIN and instead toggle a test PIN to make the time measurement possible
  from a occillorscope.

## Debug code

In `powerman_deman.c`, there are debug options to enable different algorithms.

- _SHUTDOWN_USE_RFKILL: Turn on this to use `rfkill` to turn of WiFi, otherwise
  `rmmod cc33xx_sdio` will be used.
- _SHUTDOWN_REMAINS_ON_DRY_RUN: Turn on this and assert the PowerFail pin
  without deassert the ModemPower pin to observer the full power down timing. 

## Execute test and analyze data

1. For each type of test, build test firmware with desire debug code; run
   different `mkbusy` command lines to create different test conditions
