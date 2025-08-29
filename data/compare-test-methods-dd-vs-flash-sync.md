# Compare test methods: dd vs flash-sync

## rmmod,no-cache

### flash_sync

Test command:
```
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 2M --n-files 5 
```

Test 01

[403418] daemon_power_remove
[403478] daemon_shutdown_sequence 2. timeout time 403479
[406145] stop watchdogd
[408848] kill and syncfs
[409527] syncfs
[409928] turn off wifi using rmmod
[534127] turn off wifi exited: 0
[862263] syncfs done
[866702] sync exited: 0
[867040] shutdown eMMC
[876808] radio_continue_shutdown
[877199] De-assert (low) EIC_REMAIN_ON

Test 02

[438280] daemon_power_remove
[438340] daemon_shutdown_sequence 2. timeout time 438341
[440857] stop watchdogd
[443600] kill and syncfs
[444279] syncfs
[444677] turn off wifi using rmmod
[519192] turn off wifi exited: 0
[797369] syncfs done
[801779] sync exited: 0
[802099] shutdown eMMC
[811880] radio_continue_shutdown
[812257] De-assert (low) EIC_REMAIN_ON

Test 03

[097786] daemon_power_remove
[097849] daemon_shutdown_sequence 2. timeout time 097850
[100629] stop watchdogd
[103442] kill and syncfs
[104069] syncfs
[104480] turn off wifi using rmmod
[185088] syncfs done
[187649] sync exited: 0
[187912] shutdown eMMC
[197119] turn off wifi exited: 0
[203417] radio_continue_shutdown
[203744] De-assert (low) EIC_REMAIN_ON

Test 04

[605531] daemon_power_remove
[605593] daemon_shutdown_sequence 2. timeout time 605594
[608473] stop watchdogd
[611112] kill and syncfs
[611668] syncfs
[612104] turn off wifi using rmmod
[704029] turn off wifi exited: 0
[306664] syncfs done
[311345] sync exited: 0
[311628] shutdown eMMC
[321464] radio_continue_shutdown
[321832] De-assert (low) EIC_REMAIN_ON

Test 05

[778180] daemon_power_remove
[778248] daemon_shutdown_sequence 2. timeout time 778249
[781254] stop watchdogd
[784357] kill and syncfs
[784995] syncfs
[785464] turn off wifi using rmmod
[805612] syncfs done
[807951] sync exited: 0
[870571] turn off wifi exited: 0
[870971] shutdown eMMC
[883791] radio_continue_shutdown
[884220] De-assert (low) EIC_REMAIN_ON

Test 06

[143823] daemon_power_remove
[143884] daemon_shutdown_sequence 2. timeout time 143885
[146723] stop watchdogd
[149416] kill and syncfs
[150041] syncfs
[150445] turn off wifi using rmmod
[254155] turn off wifi exited: 0
[611261] syncfs done
[615863] sync exited: 0
[616177] shutdown eMMC
[626105] radio_continue_shutdown
[626412] De-assert (low) EIC_REMAIN_ON

Test 07

[163791] daemon_power_remove
[163849] daemon_shutdown_sequence 2. timeout time 163850
[166487] stop watchdogd
[169357] kill and syncfs
[169929] syncfs
[170377] turn off wifi using rmmod
[208125] syncfs done
[212784] sync exited: 0
[271440] turn off wifi exited: 0
[271776] shutdown eMMC
[283503] radio_continue_shutdown
[283845] De-assert (low) EIC_REMAIN_ON

Test 08

[774721] daemon_power_remove
[774781] daemon_shutdown_sequence 2. timeout time 774782
[777392] stop watchdogd
[780109] kill and syncfs
[780696] syncfs
[781132] turn off wifi using rmmod
[804210] syncfs done
[808781] sync exited: 0
[869194] turn off wifi exited: 0
[869598] shutdown eMMC
[881371] radio_continue_shutdown
[881741] De-assert (low) EIC_REMAIN_ON

Test 09

[927150] daemon_power_remove
[927212] daemon_shutdown_sequence 2. timeout time 927213
[929787] stop watchdogd
[932424] kill and syncfs
[933054] syncfs
[933456] turn off wifi using rmmod
[952694] syncfs done
[955193] sync exited: 0
[013333] turn off wifi exited: 0
[013696] shutdown eMMC
[025611] radio_continue_shutdown
[025977] De-assert (low) EIC_REMAIN_ON

Test 10

[114090] daemon_power_remove
[114158] daemon_shutdown_sequence 2. timeout time 114159
[117090] stop watchdogd
[119689] kill and syncfs
[120346] syncfs
[120752] turn off wifi using rmmod
[147000] syncfs done
[151523] sync exited: 0
[235228] turn off wifi exited: 0
[235631] shutdown eMMC
[248070] radio_continue_shutdown
[248404] De-assert (low) EIC_REMAIN_ON

Test 11

[709996] daemon_power_remove
[710139] daemon_shutdown_sequence 2. timeout time 710140
[712745] stop watchdogd
[715568] kill and syncfs
[716220] syncfs
[716640] turn off wifi using rmmod
[728406] syncfs done
[732939] sync exited: 0
[813068] turn off wifi exited: 0
[813471] shutdown eMMC
[825816] radio_continue_shutdown
[826240] De-assert (low) EIC_REMAIN_ON

Test 12

[691346] daemon_power_remove
[691406] daemon_shutdown_sequence 2. timeout time 691407
[694114] stop watchdogd
[696810] kill and syncfs
[697454] syncfs
[697845] turn off wifi using rmmod
[728725] syncfs done
[733154] sync exited: 0
[796223] turn off wifi exited: 0
[796607] shutdown eMMC
[812893] radio_continue_shutdown
[813277] De-assert (low) EIC_REMAIN_ON

Test 13

[058888] daemon_power_remove
[058953] daemon_shutdown_sequence 2. timeout time 058954
[061723] stop watchdogd
[064514] kill and syncfs
[065130] syncfs
[065518] turn off wifi using rmmod
[276518] turn off wifi exited: 0
[579774] syncfs done
[584268] sync exited: 0
[584583] shutdown eMMC
[594690] radio_continue_shutdown
[595124] De-assert (low) EIC_REMAIN_ON

Test 14

[190347] daemon_power_remove
[190411] daemon_shutdown_sequence 2. timeout time 190412
[193357] stop watchdogd
[196253] kill and syncfs
[196845] syncfs
[197278] turn off wifi using rmmod
[332976] turn off wifi exited: 0
[937965] syncfs done
[942769] sync exited: 0
[943142] shutdown eMMC
[953647] radio_continue_shutdown
[954084] De-assert (low) EIC_REMAIN_ON

Test 15

[723748] daemon_power_remove
[723808] daemon_shutdown_sequence 2. timeout time 723809
[726674] stop watchdogd
[729835] notify flash-sync-services: 0
[730171] kill sync-iprf: 0
[730229] syncfs
[730637] turn off wifi using rmmod
[807397] turn off wifi exited: 0
[263755] syncfs done
[268303] sync exited: 0
[268614] shutdown eMMC
[278544] radio_continue_shutdown
[278908] De-assert (low) EIC_REMAIN_ON

### dd

Test command:
```
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 10M --dd
```

Test 01

[713508] daemon_power_remove
[713570] daemon_shutdown_sequence 2. timeout time 713572
[716227] stop watchdogd
[718750] kill and syncfs
[719378] syncfs
[719782] turn off wifi using rmmod
[786608] syncfs done
[791119] sync exited: 0
[825160] turn off wifi exited: 0
[825506] shutdown eMMC
[836514] radio_continue_shutdown
[836909] De-assert (low) EIC_REMAIN_ON

Test 02

[684785] daemon_power_remove
[684848] daemon_shutdown_sequence 2. timeout time 684849
[687768] stop watchdogd
[690509] kill and syncfs
[691106] syncfs
[691513] turn off wifi using rmmod
[781165] turn off wifi exited: 0
[023305] syncfs done
[025575] sync exited: 0
[025846] shutdown eMMC
[035756] radio_continue_shutdown
[036197] De-assert (low) EIC_REMAIN_ON

Test 03

[066289] daemon_power_remove
[066350] daemon_shutdown_sequence 2. timeout time 066351
[069111] stop watchdogd
[071745] kill and syncfs
[072398] syncfs
[072807] turn off wifi using rmmod
[179629] turn off wifi exited: 0
[199792] syncfs done
[204345] sync exited: 0
[204682] shutdown eMMC
[214501] radio_continue_shutdown
[214859] De-assert (low) EIC_REMAIN_ON

Test 04

[162412] daemon_power_remove
[162475] daemon_shutdown_sequence 2. timeout time 162476
[165290] stop watchdogd
[167998] kill and syncfs
[168614] syncfs
[169046] turn off wifi using rmmod
[279730] syncfs done
[281385] turn off wifi exited: 0
[284256] sync exited: 0
[284477] shutdown eMMC
[303957] radio_continue_shutdown
[304357] De-assert (low) EIC_REMAIN_ON

Test 05

[812445] daemon_power_remove
[812511] daemon_shutdown_sequence 2. timeout time 812512
[815630] stop watchdogd
[818580] kill and syncfs
[819180] syncfs
[819578] turn off wifi using rmmod
[905245] turn off wifi exited: 0
[173137] syncfs done
[175393] sync exited: 0
[175664] shutdown eMMC
[184900] radio_continue_shutdown
[185289] De-assert (low) EIC_REMAIN_ON

Test 06

[874421] daemon_power_remove
[874486] daemon_shutdown_sequence 2. timeout time 874487
[877172] stop watchdogd
[880746] kill and syncfs
[881492] syncfs
[881916] turn off wifi using rmmod
[962755] turn off wifi exited: 0
[629268] syncfs done
[633785] sync exited: 0
[634190] shutdown eMMC
[644356] radio_continue_shutdown
[644707] De-assert (low) EIC_REMAIN_ON

Test 07

[651057] daemon_power_remove
[651121] daemon_shutdown_sequence 2. timeout time 651122
[653743] stop watchdogd
[656508] kill and syncfs
[657106] syncfs
[657471] turn off wifi using rmmod
[750596] turn off wifi exited: 0
[533151] syncfs done
[537487] sync exited: 0
[537771] shutdown eMMC
[548031] radio_continue_shutdown
[548409] De-assert (low) EIC_REMAIN_ON

Test 08

[323860] daemon_power_remove
[323923] daemon_shutdown_sequence 2. timeout time 323924
[326773] stop watchdogd
[329526] kill and syncfs
[330127] syncfs
[330539] turn off wifi using rmmod
[447265] turn off wifi exited: 0
[626657] syncfs done
[631241] sync exited: 0
[631564] shutdown eMMC
[650051] radio_continue_shutdown
[650408] De-assert (low) EIC_REMAIN_ON

Test 09

[904534] daemon_power_remove
[904596] daemon_shutdown_sequence 2. timeout time 904597
[907819] stop watchdogd
[910778] notify flash-sync-services: 0
[911092] syncfs
[911469] turn off wifi using rmmod
[964437] syncfs done
[969892] sync exited: 0
[997222] turn off wifi exited: 0
[997624] shutdown eMMC
[011085] radio_continue_shutdown
[011458] De-assert (low) EIC_REMAIN_ON

Test 10

[516231] daemon_power_remove
[516291] daemon_shutdown_sequence 2. timeout time 516292
[519086] stop watchdogd
[522106] notify flash-sync-services: 0
[522381] kill sync-iprf: -1
[522430] syncfs
[522823] turn off wifi using rmmod
[610549] turn off wifi exited: 0
[334191] syncfs done
[338924] sync exited: 0
[339275] shutdown eMMC
[348639] radio_continue_shutdown
[349085] De-assert (low) EIC_REMAIN_ON

Test 11

[399314] daemon_power_remove
[399375] daemon_shutdown_sequence 2. timeout time 399376
[402168] stop watchdogd
[405105] notify flash-sync-services: 0
[405382] kill sync-iprf: -1
[405430] syncfs
[405812] turn off wifi using rmmod
[447523] syncfs done
[452157] sync exited: 0
[491315] turn off wifi exited: 0
[491651] shutdown eMMC
[510092] radio_continue_shutdown
[510468] De-assert (low) EIC_REMAIN_ON

Test 12

[840271] daemon_power_remove
[840333] daemon_shutdown_sequence 2. timeout time 840334
[843060] stop watchdogd
[846090] notify flash-sync-services: 0
[846352] kill sync-iprf: -1
[846400] syncfs
[846793] turn off wifi using rmmod
[935304] turn off wifi exited: 0
[082389] syncfs done
[086939] sync exited: 0
[087388] shutdown eMMC
[097357] radio_continue_shutdown
[097698] De-assert (low) EIC_REMAIN_ON

Test 13

[969211] daemon_power_remove
[969273] daemon_shutdown_sequence 2. timeout time 969274
[972452] stop watchdogd
[975517] notify flash-sync-services: 0
[975781] kill sync-iprf: -1
[975829] syncfs
[976270] turn off wifi using rmmod
[041878] syncfs done
[047034] sync exited: 0
[067672] turn off wifi exited: 0
[068039] shutdown eMMC
[079699] radio_continue_shutdown
[080317] De-assert (low) EIC_REMAIN_ON

Test 14

[249387] daemon_power_remove
[249450] daemon_shutdown_sequence 2. timeout time 249452
[252321] stop watchdogd
[255427] notify flash-sync-services: 0
[255692] kill sync-iprf: -1
[255742] syncfs
[256170] turn off wifi using rmmod
[328254] syncfs done
[330832] sync exited: 0
[346047] turn off wifi exited: 0
[346418] shutdown eMMC
[366667] radio_continue_shutdown
[366999] De-assert (low) EIC_REMAIN_ON

Test 15

[552407] daemon_power_remove
[552469] daemon_shutdown_sequence 2. timeout time 552470
[555588] stop watchdogd
[558679] notify flash-sync-services: 0
[558952] kill sync-iprf: -1
[559034] syncfs
[559411] turn off wifi using rmmod
[727305] turn off wifi exited: 0
[252762] syncfs done
[257169] sync exited: 0
[257440] shutdown eMMC
[276157] radio_continue_shutdown
[276555] De-assert (low) EIC_REMAIN_ON

