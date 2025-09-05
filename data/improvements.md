# Shutdown improvements

## Baseline

- Firmware is not optimized
- Default cache is 10%/15%
- Ping size = 600

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

## Cache 256 KB

- Firmware is optimized
- Ping size = 600

Test command:
```
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 10M --dd --cache-lo 256 --cache-hi 256 
```

Test 01

[379194] daemon_power_remove
[379256] daemon_shutdown_sequence 2. timeout time 379257
[381824] stop watchdogd
[384830] notify flash-sync-services: 0
[385115] kill sync-iprf: -1
[385165] syncfs
[385552] turn off wifi using rmmod
[452168] syncfs done
[456827] sync exited: 0
[493152] turn off wifi exited: 0
[493506] shutdown eMMC
[505477] radio_continue_shutdown
[505809] De-assert (low) EIC_REMAIN_ON

Test 02

[802107] daemon_power_remove
[802167] daemon_shutdown_sequence 2. timeout time 802168
[804712] stop watchdogd
[807731] notify flash-sync-services: 0
[807998] kill sync-iprf: -1
[808084] syncfs
[808456] turn off wifi using rmmod
[880798] syncfs done
[886602] sync exited: 0
[889686] turn off wifi exited: 0
[889978] shutdown eMMC
[900475] radio_continue_shutdown
[900856] De-assert (low) EIC_REMAIN_ON

Test 03

[731356] daemon_power_remove
[731415] daemon_shutdown_sequence 2. timeout time 731416
[733983] stop watchdogd
[736932] notify flash-sync-services: 0
[737243] syncfs
[737615] turn off wifi using rmmod
[815175] syncfs done
[819709] sync exited: 0
[828823] turn off wifi exited: 0
[829203] shutdown eMMC
[839564] radio_continue_shutdown
[839940] De-assert (low) EIC_REMAIN_ON

Test 04

[706194] daemon_power_remove
[706253] daemon_shutdown_sequence 2. timeout time 706254
[708856] stop watchdogd
[711813] notify flash-sync-services: 0
[712116] kill sync-iprf: -1
[712166] syncfs
[712548] turn off wifi using rmmod
[800645] syncfs done
[803769] sync exited: 0
[806774] turn off wifi exited: 0
[807092] shutdown eMMC
[817508] radio_continue_shutdown
[817840] De-assert (low) EIC_REMAIN_ON

Test 05

[205929] daemon_power_remove
[205991] daemon_shutdown_sequence 2. timeout time 205993
[208735] stop watchdogd
[211874] notify flash-sync-services: 0
[212180] kill sync-iprf: -1
[212231] syncfs
[212606] turn off wifi using rmmod
[271459] syncfs done
[276156] sync exited: 0
[321916] turn off wifi exited: 0
[322350] shutdown eMMC
[334116] radio_continue_shutdown
[334438] De-assert (low) EIC_REMAIN_ON

Test 06

[960570] daemon_power_remove
[960631] daemon_shutdown_sequence 2. timeout time 960632
[963167] stop watchdogd
[965989] notify flash-sync-services: 0
[966321] kill sync-iprf: -1
[966373] syncfs
[966752] turn off wifi using rmmod
[038101] syncfs done
[040656] sync exited: 0
[053180] turn off wifi exited: 0
[053574] shutdown eMMC
[063938] radio_continue_shutdown
[064352] De-assert (low) EIC_REMAIN_ON

Test 07

[010460] daemon_power_remove
[010519] daemon_shutdown_sequence 2. timeout time 010520
[013166] stop watchdogd
[016141] notify flash-sync-services: 0
[016423] kill sync-iprf: 0
[016473] syncfs
[016849] turn off wifi using rmmod
[099595] turn off wifi exited: 0
[124056] syncfs done
[125925] sync exited: 0
[126213] shutdown eMMC
[136582] radio_continue_shutdown
[136972] De-assert (low) EIC_REMAIN_ON

Test 08

[674381] daemon_power_remove
[674441] daemon_shutdown_sequence 2. timeout time 674442
[677265] stop watchdogd
[680186] notify flash-sync-services: 0
[680471] kill sync-iprf: 0
[680523] syncfs
[680913] turn off wifi using rmmod
[766475] turn off wifi exited: 0
[781678] syncfs done
[786151] sync exited: 0
[786468] shutdown eMMC
[796672] radio_continue_shutdown
[797081] De-assert (low) EIC_REMAIN_ON

Test 09

[764798] daemon_power_remove
[764857] daemon_shutdown_sequence 2. timeout time 764858
[767354] stop watchdogd
[770321] notify flash-sync-services: 0
[770577] kill sync-iprf: -1
[770627] syncfs
[770999] turn off wifi using rmmod
[835561] syncfs done
[838126] sync exited: 0
[876161] turn off wifi exited: 0
[876570] shutdown eMMC
[888471] radio_continue_shutdown
[888827] De-assert (low) EIC_REMAIN_ON

Test 10

[957107] daemon_power_remove
[957165] daemon_shutdown_sequence 2. timeout time 957166
[959717] stop watchdogd
[962662] notify flash-sync-services: 0
[962931] kill sync-iprf: -1
[962981] syncfs
[963392] turn off wifi using rmmod
[049596] turn off wifi exited: 0
[076286] syncfs done
[078580] sync exited: 0
[078858] shutdown eMMC
[088144] radio_continue_shutdown
[088510] De-assert (low) EIC_REMAIN_ON

Test 11

[207592] daemon_power_remove
[207651] daemon_shutdown_sequence 2. timeout time 207652
[210358] stop watchdogd
[213373] notify flash-sync-services: 0
[213631] kill sync-iprf: -1
[213679] syncfs
[214117] turn off wifi using rmmod
[288982] turn off wifi exited: 0
[320306] syncfs done
[324801] sync exited: 0
[325145] shutdown eMMC
[335473] radio_continue_shutdown
[335846] De-assert (low) EIC_REMAIN_ON

Test 12

[235866] daemon_power_remove
[235924] daemon_shutdown_sequence 2. timeout time 235925
[238522] stop watchdogd
[241511] notify flash-sync-services: 0
[241772] kill sync-iprf: -1
[241820] syncfs
[242237] turn off wifi using rmmod
[318411] turn off wifi exited: 0
[340546] syncfs done
[344961] sync exited: 0
[345336] shutdown eMMC
[355769] radio_continue_shutdown
[356226] De-assert (low) EIC_REMAIN_ON

Test 13

[069226] daemon_power_remove
[069286] daemon_shutdown_sequence 2. timeout time 069287
[071811] stop watchdogd
[074974] notify flash-sync-services: 0
[075298] kill sync-iprf: 0
[075348] syncfs
[075718] turn off wifi using rmmod
[162249] turn off wifi exited: 0
[170730] syncfs done
[173080] sync exited: 0
[173337] shutdown eMMC
[183106] radio_continue_shutdown
[183442] De-assert (low) EIC_REMAIN_ON

Test 14

[327840] daemon_power_remove
[327898] daemon_shutdown_sequence 2. timeout time 327899
[330652] stop watchdogd
[333672] notify flash-sync-services: 0
[333923] kill sync-iprf: -1
[333972] syncfs
[334401] turn off wifi using rmmod
[415430] syncfs done
[420324] sync exited: 0
[426914] turn off wifi exited: 0
[427387] shutdown eMMC
[437829] radio_continue_shutdown
[438220] De-assert (low) EIC_REMAIN_ON

Test 15

[023072] daemon_power_remove
[023133] daemon_shutdown_sequence 2. timeout time 023134
[025775] stop watchdogd
[028768] notify flash-sync-services: 0
[029064] kill sync-iprf: -1
[029115] syncfs
[029519] turn off wifi using rmmod
[102734] syncfs done
[107317] sync exited: 0
[113230] turn off wifi exited: 0
[113563] shutdown eMMC
[123919] radio_continue_shutdown
[124347] De-assert (low) EIC_REMAIN_ON

## WiFi: exec(rmmod cc33xx)

- Firmware is optimized
- Ping size = 600

Test command:
```
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 10M --dd --cache-lo 256 --cache-hi 256
```

Test 01

[843194] daemon_power_remove
[843254] daemon_shutdown_sequence 2. timeout time 843255
[845809] turn off wifi using rmmod
[847125] notify flash-sync-services: 0
[847308] kill sync-iprf: -1
[847357] syncfs
[847717] stop watchdogd
[900209] syncfs done
[904790] sync exited: 0
[924611] turn off wifi exited: 0
[924983] shutdown eMMC
[937711] radio_continue_shutdown
[938113] De-assert (low) EIC_REMAIN_ON

Test 02

[804867] daemon_power_remove
[804927] daemon_shutdown_sequence 2. timeout time 804928
[807662] turn off wifi using rmmod
[813376] notify flash-sync-services: 0
[813681] kill sync-iprf: -1
[813733] syncfs
[814216] stop watchdogd
[884489] turn off wifi exited: 0
[893166] syncfs done
[895298] sync exited: 0
[895583] shutdown eMMC
[905100] radio_continue_shutdown
[905425] De-assert (low) EIC_REMAIN_ON

Test 04

[713404] daemon_power_remove
[713463] daemon_shutdown_sequence 2. timeout time 713464
[716061] turn off wifi using rmmod
[717344] notify flash-sync-services: 0
[717549] syncfs
[717941] stop watchdogd
[765212] syncfs done
[769966] sync exited: 0
[804488] turn off wifi exited: 0
[804839] shutdown eMMC
[816735] radio_continue_shutdown
[817120] De-assert (low) EIC_REMAIN_ON

Test 05

[492677] daemon_power_remove
[492735] daemon_shutdown_sequence 2. timeout time 492736
[495423] turn off wifi using rmmod
[496707] notify flash-sync-services: 0
[496945] syncfs
[497373] stop watchdogd
[572982] turn off wifi exited: 0
[594925] syncfs done
[596834] sync exited: 0
[597223] shutdown eMMC
[607078] radio_continue_shutdown
[607467] De-assert (low) EIC_REMAIN_ON

Test 06

[771635] daemon_power_remove
[771695] daemon_shutdown_sequence 2. timeout time 771696
[774264] turn off wifi using rmmod
[775487] notify flash-sync-services: 0
[775692] kill sync-iprf: -1
[775741] syncfs
[776180] stop watchdogd
[851113] turn off wifi exited: 0
[859302] syncfs done
[863764] sync exited: 0
[864121] shutdown eMMC
[874421] radio_continue_shutdown
[874766] De-assert (low) EIC_REMAIN_ON

Test 07

[165652] daemon_power_remove
[165712] daemon_shutdown_sequence 2. timeout time 165713
[168312] turn off wifi using rmmod
[169559] notify flash-sync-services: 0
[169756] kill sync-iprf: -1
[169802] syncfs
[170198] stop watchdogd
[245996] turn off wifi exited: 0
[269251] syncfs done
[273691] sync exited: 0
[273959] shutdown eMMC
[283388] radio_continue_shutdown
[283760] De-assert (low) EIC_REMAIN_ON

Test 08

[490898] daemon_power_remove
[490959] daemon_shutdown_sequence 2. timeout time 490960
[493592] turn off wifi using rmmod
[494890] notify flash-sync-services: 0
[495134] kill sync-iprf: -1
[495183] syncfs
[495565] stop watchdogd
[567673] turn off wifi exited: 0
[568175] syncfs done
[570716] sync exited: 0
[570960] shutdown eMMC
[581084] radio_continue_shutdown
[581403] De-assert (low) EIC_REMAIN_ON

Test 09

[547227] daemon_power_remove
[547287] daemon_shutdown_sequence 2. timeout time 547288
[549945] turn off wifi using rmmod
[551288] notify flash-sync-services: 0
[551474] kill sync-iprf: -1
[551521] syncfs
[551876] stop watchdogd
[627251] turn off wifi exited: 0
[650163] syncfs done
[654495] sync exited: 0
[654773] shutdown eMMC
[665127] radio_continue_shutdown
[665530] De-assert (low) EIC_REMAIN_ON

Test 10

[722661] daemon_power_remove
[722719] daemon_shutdown_sequence 2. timeout time 722720
[725397] turn off wifi using rmmod
[726713] notify flash-sync-services: 0
[726907] kill sync-iprf: -1
[726956] syncfs
[727354] stop watchdogd
[783132] syncfs done
[787725] sync exited: 0
[818583] turn off wifi exited: 0
[818937] shutdown eMMC
[830868] radio_continue_shutdown
[831281] De-assert (low) EIC_REMAIN_ON

Test 11

[533036] daemon_power_remove
[533098] daemon_shutdown_sequence 2. timeout time 533099
[535633] turn off wifi using rmmod
[536886] notify flash-sync-services: 0
[537144] kill sync-iprf: -1
[537193] syncfs
[537562] stop watchdogd
[619982] turn off wifi exited: 0
[628907] syncfs done
[630877] sync exited: 0
[631202] shutdown eMMC
[641568] radio_continue_shutdown
[641922] De-assert (low) EIC_REMAIN_ON

Test 12

[092737] daemon_power_remove
[092797] daemon_shutdown_sequence 2. timeout time 092799
[095540] turn off wifi using rmmod
[096857] notify flash-sync-services: 0
[097121] kill sync-iprf: -1
[097170] syncfs
[097562] stop watchdogd
[146848] syncfs done
[149172] sync exited: 0
[171524] turn off wifi exited: 0
[171871] shutdown eMMC
[183704] radio_continue_shutdown
[184133] De-assert (low) EIC_REMAIN_ON

Test 13

[803377] daemon_power_remove
[803437] daemon_shutdown_sequence 2. timeout time 803438
[805936] turn off wifi using rmmod
[807221] notify flash-sync-services: 0
[807445] syncfs
[807812] stop watchdogd
[857551] syncfs done
[862135] sync exited: 0
[881486] turn off wifi exited: 0
[881835] shutdown eMMC
[893622] radio_continue_shutdown
[894067] De-assert (low) EIC_REMAIN_ON

Test 14

[405361] daemon_power_remove
[405419] daemon_shutdown_sequence 2. timeout time 405420
[407965] turn off wifi using rmmod
[409279] notify flash-sync-services: 0
[409471] kill sync-iprf: -1
[409518] syncfs
[409883] stop watchdogd
[489081] turn off wifi exited: 0
[503430] syncfs done
[505425] sync exited: 0
[505722] shutdown eMMC
[516061] radio_continue_shutdown
[516395] De-assert (low) EIC_REMAIN_ON

Test 15

[691905] daemon_power_remove
[691964] daemon_shutdown_sequence 2. timeout time 691965
[694572] turn off wifi using rmmod
[695840] notify flash-sync-services: 0
[696107] kill sync-iprf: 0
[696157] syncfs
[696520] stop watchdogd
[775545] turn off wifi exited: 0
[815612] syncfs done
[817841] sync exited: 0
[818159] shutdown eMMC
[828183] radio_continue_shutdown
[828502] De-assert (low) EIC_REMAIN_ON

## WiFi: rfkill

- Firmware is optimized
- Ping size = 600

Test command:
```
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 10M --dd --cache 256 
```

Test 01

[960945] daemon_power_remove
[961037] daemon_shutdown_sequence 2. timeout time 961038
[963635] turn off wifi using rfkill
[964946] notify flash-sync-services: 0
[965185] kill sync-iprf: 0
[965235] syncfs
[965591] stop watchdogd
[011295] turn off wifi exited: 0
[022940] syncfs done
[027483] sync exited: 0
[027860] shutdown eMMC
[038189] radio_continue_shutdown
[038571] De-assert (low) EIC_REMAIN_ON

Test 02

[571523] daemon_power_remove
[571584] daemon_shutdown_sequence 2. timeout time 571585
[574249] turn off wifi using rfkill
[575559] notify flash-sync-services: 0
[575743] kill sync-iprf: -1
[575790] syncfs
[576221] stop watchdogd
[622965] turn off wifi exited: 0
[652434] syncfs done
[654411] sync exited: 0
[654699] shutdown eMMC
[664906] radio_continue_shutdown
[665328] De-assert (low) EIC_REMAIN_ON

Test 03

[458947] daemon_power_remove
[459032] daemon_shutdown_sequence 2. timeout time 459033
[461647] turn off wifi using rfkill
[463546] notify flash-sync-services: 0
[463775] syncfs
[464210] stop watchdogd
[524308] turn off wifi exited: 0
[585233] syncfs done
[589724] sync exited: 0
[590031] shutdown eMMC
[599934] radio_continue_shutdown
[600293] De-assert (low) EIC_REMAIN_ON

Test 04

[067136] daemon_power_remove
[067197] daemon_shutdown_sequence 2. timeout time 067198
[070511] turn off wifi using rfkill
[071926] notify flash-sync-services: 0
[072178] kill sync-iprf: -1
[072229] syncfs
[072650] stop watchdogd
[117271] turn off wifi exited: 0
[138116] syncfs done
[142546] sync exited: 0
[142911] shutdown eMMC
[159998] radio_continue_shutdown
[160457] De-assert (low) EIC_REMAIN_ON

Test 05

[306153] daemon_power_remove
[306217] daemon_shutdown_sequence 2. timeout time 306218
[309478] turn off wifi using rfkill
[310817] notify flash-sync-services: 0
[311057] kill sync-iprf: -1
[311111] syncfs
[311486] stop watchdogd
[348625] syncfs done
[353246] sync exited: 0
[359162] turn off wifi exited: 0
[359493] shutdown eMMC
[371372] radio_continue_shutdown
[371777] De-assert (low) EIC_REMAIN_ON

Test 06

[149682] daemon_power_remove
[149744] daemon_shutdown_sequence 2. timeout time 149745
[152634] turn off wifi using rfkill
[154101] notify flash-sync-services: 0
[154295] kill sync-iprf: -1
[154346] syncfs
[154754] stop watchdogd
[190175] syncfs done
[194772] sync exited: 0
[201809] turn off wifi exited: 0
[202158] shutdown eMMC
[221080] radio_continue_shutdown
[221422] De-assert (low) EIC_REMAIN_ON

Test 07

[739247] daemon_power_remove
[739310] daemon_shutdown_sequence 2. timeout time 739311
[742170] turn off wifi using rfkill
[743545] notify flash-sync-services: 0
[743726] kill sync-iprf: -1
[743776] syncfs
[744172] stop watchdogd
[797836] turn off wifi exited: 0
[843827] syncfs done
[848410] sync exited: 0
[848692] shutdown eMMC
[859106] radio_continue_shutdown
[859494] De-assert (low) EIC_REMAIN_ON

Test 08

[511978] daemon_power_remove
[512083] daemon_shutdown_sequence 2. timeout time 512084
[514779] turn off wifi using rfkill
[516162] notify flash-sync-services: 0
[516353] kill sync-iprf: -1
[516400] syncfs
[516764] stop watchdogd
[565246] turn off wifi exited: 0
[580116] syncfs done
[584555] sync exited: 0
[584890] shutdown eMMC
[604054] radio_continue_shutdown
[604455] De-assert (low) EIC_REMAIN_ON

Test 09

[217521] daemon_power_remove
[217582] daemon_shutdown_sequence 2. timeout time 217583
[220245] turn off wifi using rfkill
[221601] notify flash-sync-services: 0
[221776] kill sync-iprf: -1
[221822] syncfs
[222236] stop watchdogd
[266276] syncfs done
[267922] turn off wifi exited: 0
[270808] sync exited: 0
[271129] shutdown eMMC
[292639] radio_continue_shutdown
[292998] De-assert (low) EIC_REMAIN_ON

Test 10

[146621] daemon_power_remove
[146682] daemon_shutdown_sequence 2. timeout time 146683
[149488] turn off wifi using rfkill
[150883] notify flash-sync-services: 0
[151108] syncfs
[151496] stop watchdogd
[200191] turn off wifi exited: 0
[206533] syncfs done
[210979] sync exited: 0
[211380] shutdown eMMC
[233909] radio_continue_shutdown
[234336] De-assert (low) EIC_REMAIN_ON

Test 11

[524848] daemon_power_remove
[524907] daemon_shutdown_sequence 2. timeout time 524909
[527636] turn off wifi using rfkill
[528994] notify flash-sync-services: 0
[529210] kill sync-iprf: -1
[529258] syncfs
[529604] stop watchdogd
[583150] syncfs done
[585372] sync exited: 0
[617171] turn off wifi exited: 0
[617545] shutdown eMMC
[629357] radio_continue_shutdown
[629684] De-assert (low) EIC_REMAIN_ON

Test 12

[706600] daemon_power_remove
[706658] daemon_shutdown_sequence 2. timeout time 706660
[709346] turn off wifi using rfkill
[710675] notify flash-sync-services: 0
[710878] syncfs
[711308] stop watchdogd
[757834] turn off wifi exited: 0
[803628] syncfs done
[808151] sync exited: 0
[808487] shutdown eMMC
[818090] radio_continue_shutdown
[818534] De-assert (low) EIC_REMAIN_ON

Test 13

[073076] daemon_power_remove
[073139] daemon_shutdown_sequence 2. timeout time 073140
[075682] turn off wifi using rfkill
[076960] notify flash-sync-services: 0
[077193] kill sync-iprf: -1
[077242] syncfs
[077620] stop watchdogd
[126747] syncfs done
[131328] sync exited: 0
[145598] turn off wifi exited: 0
[145965] shutdown eMMC
[157541] radio_continue_shutdown
[157944] De-assert (low) EIC_REMAIN_ON

Test 14

[254971] daemon_power_remove
[255059] daemon_shutdown_sequence 2. timeout time 255060
[257725] turn off wifi using rfkill
[259074] notify flash-sync-services: 0
[259285] kill sync-iprf: 0
[259332] syncfs
[259709] stop watchdogd
[316438] syncfs done
[321141] sync exited: 0
[329757] turn off wifi exited: 0
[330103] shutdown eMMC
[339921] radio_continue_shutdown
[340302] De-assert (low) EIC_REMAIN_ON

Test 15

[542802] daemon_power_remove
[542861] daemon_shutdown_sequence 2. timeout time 542862
[545520] turn off wifi using rfkill
[546855] notify flash-sync-services: 0
[547083] kill sync-iprf: 0
[547134] syncfs
[547477] stop watchdogd
[594997] turn off wifi exited: 0
[661856] syncfs done
[666362] sync exited: 0
[666658] shutdown eMMC
[676508] radio_continue_shutdown
[676869] De-assert (low) EIC_REMAIN_ON

Test 16

[458070] daemon_power_remove
[458132] daemon_shutdown_sequence 2. timeout time 458133
[460780] turn off wifi using rfkill
[462158] notify flash-sync-services: 0
[462374] kill sync-iprf: 0
[462424] syncfs
[462803] stop watchdogd
[541717] syncfs done
[546343] sync exited: 0
[551953] turn off wifi exited: 0
[552396] shutdown eMMC
[562472] radio_continue_shutdown
[562861] De-assert (low) EIC_REMAIN_ON

Test 17

[223030] daemon_power_remove
[223089] daemon_shutdown_sequence 2. timeout time 223090
[225609] turn off wifi using rfkill
[226900] notify flash-sync-services: 0
[227145] syncfs
[227547] stop watchdogd
[270601] turn off wifi exited: 0
[337304] syncfs done
[341801] sync exited: 0
[342184] shutdown eMMC
[351533] radio_continue_shutdown
[351902] De-assert (low) EIC_REMAIN_ON

Test 18

[369869] daemon_power_remove
[369928] daemon_shutdown_sequence 2. timeout time 369929
[372656] turn off wifi using rfkill
[374197] notify flash-sync-services: 0
[374403] kill sync-iprf: -1
[374453] syncfs
[374873] stop watchdogd
[427031] syncfs done
[431704] sync exited: 0
[450102] turn off wifi exited: 0
[450491] shutdown eMMC
[462438] radio_continue_shutdown
[462827] De-assert (low) EIC_REMAIN_ON

Test 19

[842929] daemon_power_remove
[842987] daemon_shutdown_sequence 2. timeout time 842988
[845828] turn off wifi using rfkill
[847250] notify flash-sync-services: 0
[847453] kill sync-iprf: 0
[847503] syncfs
[847914] stop watchdogd
[904330] turn off wifi exited: 0
[926991] syncfs done
[931576] sync exited: 0
[931909] shutdown eMMC
[942103] radio_continue_shutdown
[942459] De-assert (low) EIC_REMAIN_ON

Test 20

[249434] daemon_power_remove
[249493] daemon_shutdown_sequence 2. timeout time 249495
[252123] turn off wifi using rfkill
[253440] notify flash-sync-services: 0
[253679] kill sync-iprf: 0
[253728] syncfs
[254135] stop watchdogd
[302480] syncfs done
[304780] sync exited: 0
[327859] turn off wifi exited: 0
[328298] shutdown eMMC
[340097] radio_continue_shutdown
[340494] De-assert (low) EIC_REMAIN_ON

Test 21

[983232] daemon_power_remove
[983291] daemon_shutdown_sequence 2. timeout time 983292
[985831] turn off wifi using rfkill
[987157] notify flash-sync-services: 0
[987356] kill sync-iprf: 0
[987405] syncfs
[987787] stop watchdogd
[053470] turn off wifi exited: 0
[074127] syncfs done
[078507] sync exited: 0
[078871] shutdown eMMC
[088769] radio_continue_shutdown
[089208] De-assert (low) EIC_REMAIN_ON

Test 22

[069632] daemon_power_remove
[069695] daemon_shutdown_sequence 2. timeout time 069696
[072428] turn off wifi using rfkill
[073690] notify flash-sync-services: 0
[073889] kill sync-iprf: -1
[073939] syncfs
[074314] stop watchdogd
[121853] turn off wifi exited: 0
[167899] syncfs done
[172273] sync exited: 0
[172594] shutdown eMMC
[182510] radio_continue_shutdown
[182887] De-assert (low) EIC_REMAIN_ON

## Killall

- Firmware is optimized
- Ping size = 600

Device had
Test command:
```
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 10M --dd --cache-hi 256 --cache-lo 170
```

Test 01

[214559] daemon_power_remove
[214621] daemon_shutdown_sequence 2. timeout time 214620
[217944] turn off wifi using rfkill
[219709] notify flash-sync-services: 0
[219955] kill sync-iprf: 0
[220036] syncfs
killall processes
[276431] rfkill done
[280691] turn off wifi exited: 0
[300232] syncfs done
[304306] sync exited: 0
[304617] shutdown eMMC
ping: sendto: Network is unreachable
[315079] radio_continue_shutdown
[315409] De-assert (low) EIC_REMAIN_ON
[315453] waiting battery drain
[325607] waiting battery drain
ping failed
[336067] waiting battery drain
[346525] waiting battery drain
[356938] waiting battery drain
[367388] waiting battery drain

Test 02

[669160] daemon_power_remove
[669223] daemon_shutdown_sequence 2. timeout time 669221
[672318] turn off wifi using rfkill
[674039] notify flash-sync-services: 0
[674288] kill sync-iprf: -1
[674338] syncfs
killall processes
[721335] rfkill done
[725622] turn off wifi exited: 0
[732472] syncfs done
[736459] sync exited: 0
[736822] shutdown eMMC
[747141] radio_continue_shutdown
[747524] De-assert (low) EIC_REMAIN_ON
[747570] waiting battery drain
[757743] waiting battery drain
[768203] waiting battery drain
[778643] waiting battery drain
[789131] waiting battery drain
[799589] waiting battery drain
ping: sendto: Network is unreachable
[809981] waiting battery drain

Test 03

[514724] daemon_power_remove
[514786] daemon_shutdown_sequence 2. timeout time 514783
[517908] turn off wifi using rfkill
[519590] notify flash-sync-services: 0
[519859] syncfs
killall processes
[567309] syncfs done
[570912] rfkill done
[572842] sync exited: 0
[575408] turn off wifi exited: 0
[575655] shutdown eMMC
[585121] radio_continue_shutdown
[585497] De-assert (low) EIC_REMAIN_ON
[585541] waiting battery drain
[595696] waiting battery drain
ping: sendto: Network is unreachable
[606140] waiting battery drain
[616549] waiting battery drain
ping failed
[626956] waiting battery drain
[637380] waiting battery drain
[647783] waiting battery drain
[658243] waiting battery drain
[668666] waiting battery drain

Test 04

[702525] daemon_power_remove
[702587] daemon_shutdown_sequence 2. timeout time 702585
[705732] turn off wifi using rfkill
[707461] notify flash-sync-services: 0
[707720] syncfs
killall processes
[745860] syncfs done
[749853] sync exited: 0
[761217] rfkill done
[765268] turn off wifi exited: 0
[765546] shutdown eMMC
[777573] radio_continue_shutdown
[777943] De-assert (low) EIC_REMAIN_ON
[777988] waiting battery drain
[788203] waiting battery drain
[798607] waiting battery drain
[809062] waiting battery drain
ping: sendto: Network is unreachable
[819497] waiting battery drain
ping failed
[829879] waiting battery drain
[840312] waiting battery drain

Test 05

[641893] daemon_power_remove
[641955] daemon_shutdown_sequence 2. timeout time 641953
[645090] turn off wifi using rfkill
[646707] notify flash-sync-services: 0
[646972] kill sync-iprf: -1
[647064] syncfs
killall processes
[692388] rfkill done
[696613] turn off wifi exited: 0
[731945] syncfs done
[735995] sync exited: 0
[736332] shutdown eMMC
[746074] radio_continue_shutdown
[746436] De-assert (low) EIC_REMAIN_ON
[746484] waiting battery drain
[756630] waiting battery drain
[767127] waiting battery drain
[777523] waiting battery drain

Test 06

[014766] daemon_power_remove
[014829] daemon_shutdown_sequence 2. timeout time 014827
[017963] turn off wifi using rfkill
[019742] notify flash-sync-services: 0
[019968] kill sync-iprf: -1
[020048] syncfs
killall processes
[077790] rfkill done
[079917] syncfs done
[083532] sync exited: 0
[083986] turn off wifi exited: 0
[084094] shutdown eMMC
[093844] radio_continue_shutdown
[094192] De-assert (low) EIC_REMAIN_ON
[094236] waiting battery drain
[104383] waiting battery drain
[114802] waiting battery drain
[125303] waiting battery drain
[135737] waiting battery drain
ping: sendto: Network is unreachable
[146204] waiting battery drain
[156599] waiting battery drain
ping failed
[167077] waiting battery drain

Test 07

[990616] daemon_power_remove
[990679] daemon_shutdown_sequence 2. timeout time 990677
[993863] turn off wifi using rfkill
[995516] notify flash-sync-services: 0
[995761] kill sync-iprf: -1
[995812] syncfs
killall processes
[065453] syncfs done
[068943] rfkill done
[070833] sync exited: 0
[073404] turn off wifi exited: 0
[073696] shutdown eMMC
[083556] radio_continue_shutdown
[083918] De-assert (low) EIC_REMAIN_ON
[083964] waiting battery drain
[094146] waiting battery drain
[104558] waiting battery drain
[115085] waiting battery drain
[125502] waiting battery drain

Test 08

[289037] daemon_power_remove
[289151] daemon_shutdown_sequence 2. timeout time 289149
[292726] turn off wifi using rfkill
[294655] notify flash-sync-services: 0
[294935] kill sync-iprf: -1
[294989] syncfs
killall processes
[346564] rfkill done
[351118] turn off wifi exited: 0
[359968] syncfs done
[364209] sync exited: 0
[364495] shutdown eMMC
[375025] radio_continue_shutdown
[375388] De-assert (low) EIC_REMAIN_ON
[375435] waiting battery drain
[385661] waiting battery drain
[396222] waiting battery drain
[406802] waiting battery drain
[417304] waiting battery drain
[427839] waiting battery drain
[438339] waiting battery drain
[448870] waiting battery drain
[459346] waiting battery drain

Test 09

[969188] daemon_power_remove
[969249] daemon_shutdown_sequence 2. timeout time 969247
[972405] turn off wifi using rfkill
[974131] notify flash-sync-services: 0
[974390] syncfs
killall processes
[026774] syncfs done
[030050] rfkill done
[031959] sync exited: 0
[034528] turn off wifi exited: 0
[034763] shutdown eMMC
[044677] radio_continue_shutdown
[045053] De-assert (low) EIC_REMAIN_ON
[045103] waiting battery drain
ping: sendto: Network is unreachable
[055256] waiting battery drain
ping failed
[065645] waiting battery drain
[076144] waiting battery drain
[086612] waiting battery drain
[097072] waiting battery drain
[107518] waiting battery drain

Test 10

[200251] daemon_power_remove
[200311] daemon_shutdown_sequence 2. timeout time 200309
[203435] turn off wifi using rfkill
[205806] notify flash-sync-services: 0
[206174] kill sync-iprf: 0
[206228] syncfs
killall processes
[234516] syncfs done
[238499] sync exited: 0
[263960] rfkill done
[268116] turn off wifi exited: 0
[268389] shutdown eMMC
[280077] radio_continue_shutdown
[280420] De-assert (low) EIC_REMAIN_ON
[280466] waiting battery drain
[290630] waiting battery drain
[301083] waiting battery drain
ping: sendto: Network is unreachable
[311524] waiting battery drain
ping failed
[321987] waiting battery drain
[332549] waiting battery drain
[342966] waiting battery drain
[353392] waiting battery drain

Test 11

[585892] daemon_power_remove
[585955] daemon_shutdown_sequence 2. timeout time 585953
[589158] turn off wifi using rfkill
[590800] notify flash-sync-services: 0
[591070] kill sync-iprf: -1
[591122] syncfs
killall processes
[638948] rfkill done
[643229] turn off wifi exited: 0
[659309] syncfs done
[663500] sync exited: 0
[663785] shutdown eMMC
[673055] radio_continue_shutdown
[673371] De-assert (low) EIC_REMAIN_ON
[673418] waiting battery drain
[683619] waiting battery drain
[694070] waiting battery drain
[704511] waiting battery drain
[714950] waiting battery drain
[725455] waiting battery drain
[735853] waiting battery drain
[746368] waiting battery drain

Test 12

[511296] daemon_power_remove
[511360] daemon_shutdown_sequence 2. timeout time 511358
[514493] turn off wifi using rfkill
[516236] notify flash-sync-services: 0
[516477] kill sync-iprf: -1
[516526] syncfs
killall processes
[564149] rfkill done
[568341] turn off wifi exited: 0
[592197] syncfs done
[596183] sync exited: 0
[596469] shutdown eMMC
[606819] radio_continue_shutdown
[607163] De-assert (low) EIC_REMAIN_ON
[607211] waiting battery drain
[617366] waiting battery drain
[627753] waiting battery drain
[638180] waiting battery drain
[648662] waiting battery drain
[659067] waiting battery drain
[669463] waiting battery drain

Test 13

[840898] daemon_power_remove
[840960] daemon_shutdown_sequence 2. timeout time 840958
[844137] turn off wifi using rfkill
[845771] notify flash-sync-services: 0
[846065] kill sync-iprf: -1
[846120] syncfs
killall processes
[888893] rfkill done
[893272] turn off wifi exited: 0
[899158] syncfs done
[903150] sync exited: 0
[903412] shutdown eMMC
[912833] radio_continue_shutdown
[913250] De-assert (low) EIC_REMAIN_ON
[913302] waiting battery drain
[923472] waiting battery drain
[933897] waiting battery drain
[944361] waiting battery drain
[954767] waiting battery drain
[965225] waiting battery drain
[975677] waiting battery drain
[986107] waiting battery drain
[996515] waiting battery drain
[006905] waiting battery drain

Test 14

[805949] daemon_power_remove
[806045] daemon_shutdown_sequence 2. timeout time 806043
[809381] turn off wifi using rfkill
[811053] notify flash-sync-services: 0
[811299] kill sync-iprf: -1
[811353] syncfs
killall processes
[858121] rfkill done
[862375] turn off wifi exited: 0
[876110] syncfs done
[880269] sync exited: 0
[880618] shutdown eMMC
[890823] radio_continue_shutdown
[891235] De-assert (low) EIC_REMAIN_ON
[891283] waiting battery drain
[901436] waiting battery drain
[911815] waiting battery drain
[922315] waiting battery drain
[932740] waiting battery drain
[943230] waiting battery drain
[953640] waiting battery drain
[964082] waiting battery drain

Test 15

[430854] daemon_power_remove
[430917] daemon_shutdown_sequence 2. timeout time 430914
[434089] turn off wifi using rfkill
[435751] notify flash-sync-services: 0
[435989] kill sync-iprf: -1
[436075] syncfs
killall processes
[486439] syncfs done
[490472] sync exited: 0
[493086] rfkill done
[497061] turn off wifi exited: 0
[497362] shutdown eMMC
[507687] radio_continue_shutdown
[508079] De-assert (low) EIC_REMAIN_ON
[508127] waiting battery drain
[518274] waiting battery drain
[528693] waiting battery drain
[539202] waiting battery drain
[549599] waiting battery drain
[560045] waiting battery drain
[570419] waiting battery drain

Test 16

[882839] daemon_power_remove
[882898] daemon_shutdown_sequence 2. timeout time 882896
[886126] turn off wifi using rfkill
[887886] notify flash-sync-services: 0
[888192] kill sync-iprf: -1
[888243] syncfs
killall processes
[936203] rfkill done
[940442] turn off wifi exited: 0
[966337] syncfs done
[970386] sync exited: 0
[970662] shutdown eMMC
[980564] radio_continue_shutdown
[980884] De-assert (low) EIC_REMAIN_ON
[980933] waiting battery drain
[991143] waiting battery drain
[001563] waiting battery drain
[011986] waiting battery drain
[022465] waiting battery drain

Test 17

[544570] daemon_power_remove
[544632] daemon_shutdown_sequence 2. timeout time 544630
[547754] turn off wifi using rfkill
[549444] notify flash-sync-services: 0
[549706] kill sync-iprf: 0
[549755] syncfs
killall processes
[609894] rfkill done
[614059] turn off wifi exited: 0
[660480] syncfs done
[664492] sync exited: 0
[664804] shutdown eMMC
[675061] radio_continue_shutdown
[675399] De-assert (low) EIC_REMAIN_ON
[675442] waiting battery drain
[685622] waiting battery drain
[696115] waiting battery drain

Test 18

[014128] daemon_power_remove
[014190] daemon_shutdown_sequence 2. timeout time 014188
[017279] turn off wifi using rfkill
[018935] notify flash-sync-services: 0
[019219] kill sync-iprf: -1
[019270] syncfs
killall processes
[074227] rfkill done
[078823] turn off wifi exited: 0
[089103] syncfs done
[093163] sync exited: 0
[093444] shutdown eMMC
[103178] radio_continue_shutdown
[103507] De-assert (low) EIC_REMAIN_ON
[103551] waiting battery drain
[113714] waiting battery drain
[124170] waiting battery drain
[134597] waiting battery drain
[145092] waiting battery drain
[155553] waiting battery drain

Test 19

[718227] daemon_power_remove
[718291] daemon_shutdown_sequence 2. timeout time 718289
[721375] turn off wifi using rfkill
[723067] notify flash-sync-services: 0
[723323] kill sync-iprf: -1
[723374] syncfs
killall processes
[770823] syncfs done
[774894] sync exited: 0
[798911] rfkill done
[803217] turn off wifi exited: 0
[803512] shutdown eMMC
[815375] radio_continue_shutdown
[815706] De-assert (low) EIC_REMAIN_ON
[815750] waiting battery drain
ping: sendto: Network is unreachable
[825899] waiting battery drain
ping failed
[836311] waiting battery drain
[846697] waiting battery drain
[857165] waiting battery drain

Test 20

[371683] daemon_power_remove
[371745] daemon_shutdown_sequence 2. timeout time 371743
[374983] turn off wifi using rfkill
[376716] notify flash-sync-services: 0
[377072] syncfs
killall processes
[425508] rfkill done
[429779] turn off wifi exited: 0
[432816] syncfs done
[436832] sync exited: 0
[437170] shutdown eMMC
[446977] radio_continue_shutdown
[447364] De-assert (low) EIC_REMAIN_ON
[447409] waiting battery drain
[457555] waiting battery drain
[467970] waiting battery drain
[478438] waiting battery drain
[488878] waiting battery drain
[499338] waiting battery drain
[509740] waiting battery drain
[520184] waiting batte

Test 21

[798661] daemon_power_remove
[798722] daemon_shutdown_sequence 2. timeout time 798720
[802110] turn off wifi using rfkill
[803783] notify flash-sync-services: 0
[804084] syncfs
killall processes
[873301] rfkill done
[875421] syncfs done
[877552] sync exited: 0
[877967] turn off wifi exited: 0
[878186] shutdown eMMC
[888100] radio_continue_shutdown
[888502] De-assert (low) EIC_REMAIN_ON
[888555] waiting battery drain
[898755] waiting battery drain
[909213] waiting battery drain
[919612] waiting battery drain
[930092] waiting battery drain
[940466] waiting battery drain
[950880] waiting battery drain

Test 22

[875542] daemon_power_remove
[875604] daemon_shutdown_sequence 2. timeout time 875602
[878640] turn off wifi using rfkill
[880396] notify flash-sync-services: 0
[880616] kill sync-iprf: -1
[880666] syncfs
killall processes
[926541] rfkill done
[930722] turn off wifi exited: 0
[945243] syncfs done
[949268] sync exited: 0
[949571] shutdown eMMC
[959412] radio_continue_shutdown
[959731] De-assert (low) EIC_REMAIN_ON
[959776] waiting battery drain
[969949] waiting battery drain
[980347] waiting battery drain
[990747] waiting battery drain
[001205] waiting battery drain
[011630] waiting battery drain
[022115] waiting battery drain
[032512] waiting battery drain

## NonPCO no power down

- Ping size = 600.
- Default cache is 170/256

Test command:
```
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 10M --dd
```

Test 1

[257056] daemon_power_remove
[257120] daemon_shutdown_sequence 2. timeout time 257103
[259733] turn off wifi using rfkill
[261069] notify flash-sync-services: 0
[261267] kill sync-iprf: -1
[261331] syncfs
[301561] rfkill done
[305669] turn off wifi exited: 0
[332314] syncfs done
[336231] sync exited: 0
[336540] shutdown eMMC
[346943] radio_continue_shutdown
[347329] De-assert (low) EIC_REMAIN_ON
[347376] waiting battery drain
[357537] waiting battery drain
[367899] waiting battery drain

Test 2

[678619] daemon_power_remove
[678680] daemon_shutdown_sequence 2. timeout time 678663
[681377] turn off wifi using rfkill
[682704] notify flash-sync-services: 0
[682927] kill sync-iprf: 0
[682975] syncfs
[726692] rfkill done
[731273] turn off wifi exited: 0
[747477] syncfs done
[751531] sync exited: 0
[751821] shutdown eMMC
[761696] radio_continue_shutdown
[762054] De-assert (low) EIC_REMAIN_ON
[762099] waiting battery drain
[772266] waiting battery drain
[782715] waiting battery drain
[793215] waiting battery drain
[803623] waiting battery drain

Test 3

[867588] daemon_power_remove
[867650] daemon_shutdown_sequence 2. timeout time 867634
[870272] turn off wifi using rfkill
[871654] notify flash-sync-services: 0
[871859] kill sync-iprf: -1
[871908] syncfs
[926090] rfkill done
[930150] turn off wifi exited: 0
[956337] syncfs done
[960368] sync exited: 0
[960682] shutdown eMMC
[971116] radio_continue_shutdown
[971475] De-assert (low) EIC_REMAIN_ON
[971523] waiting battery drain
[981673] waiting battery drain
[992184] wait

Test 4

[598585] daemon_power_remove
[598647] daemon_shutdown_sequence 2. timeout time 598629
[601335] turn off wifi using rfkill
[602689] notify flash-sync-services: 0
[602919] kill sync-iprf: -1
[602969] syncfs
[640958] rfkill done
[645042] turn off wifi exited: 0
[688110] syncfs done
[692086] sync exited: 0
[692395] shutdown eMMC
[702800] radio_continue_shutdown
[703201] De-assert (low) EIC_REMAIN_ON
[703252] waiting battery drain
[713396] waiting battery drain
[723814] waiting battery drain

Test 5

[192939] daemon_power_remove
[193000] daemon_shutdown_sequence 2. timeout time 192983
[195739] turn off wifi using rfkill
[197116] notify flash-sync-services: 0
[197322] kill sync-iprf: -1
[197372] syncfs
[247757] rfkill done
[250119] syncfs done
[252171] sync exited: 0
[252550] turn off wifi exited: 0
[252598] shutdown eMMC
[263115] radio_continue_shutdown
[263458] De-assert (low) EIC_REMAIN_ON
[263501] waiting battery drain
[273646] waiting battery drain
[284089] waiting battery drain
[294521] waiting battery drain
[304924] waiting battery drain
[315450] waiting battery drain
[325850] waiting batte

Test 6

[198434] daemon_power_remove
[198495] daemon_shutdown_sequence 2. timeout time 198477
[201242] turn off wifi using rfkill
[202553] notify flash-sync-services: 0
[202755] kill sync-iprf: 0
[202822] syncfs
[245868] rfkill done
[249963] turn off wifi exited: 0
[271143] syncfs done
[275177] sync exited: 0
[275478] shutdown eMMC
[285119] radio_continue_shutdown
[285463] De-assert (low) EIC_REMAIN_ON
[285507] waiting battery drain
[295664] waiting battery drain
[306135] waiting battery drain

Test 7

[448198] daemon_power_remove
[448260] daemon_shutdown_sequence 2. timeout time 448245
[450831] turn off wifi using rfkill
[452174] notify flash-sync-services: 0
[452364] kill sync-iprf: -1
[452413] syncfs
[495578] rfkill done
[499668] turn off wifi exited: 0
[529704] syncfs done
[533711] sync exited: 0
[534153] shutdown eMMC
[544523] radio_continue_shutdown
[544912] De-assert (low) EIC_REMAIN_ON
[544958] waiting battery drain
[555167] waiting battery drain
[565635] waiting battery drain

Test 8

[871693] daemon_power_remove
[871755] daemon_shutdown_sequence 2. timeout time 871737
[874303] turn off wifi using rfkill
[875647] notify flash-sync-services: 0
[875878] kill sync-iprf: -1
[875929] syncfs
[915684] rfkill done
[919992] turn off wifi exited: 0
[953265] syncfs done
[957213] sync exited: 0
[957556] shutdown eMMC
[967887] radio_continue_shutdown
[968253] De-assert (low) EIC_REMAIN_ON
[968302] waiting battery drain
[978468] waiting battery drain

Test 9

[665336] daemon_power_remove
[665396] daemon_shutdown_sequence 2. timeout time 665379
[667914] turn off wifi using rfkill
[669272] notify flash-sync-services: 0
[669469] kill sync-iprf: -1
[669532] syncfs
[710497] rfkill done
[714680] turn off wifi exited: 0
[730167] syncfs done
[734195] sync exited: 0
[734556] shutdown eMMC
[744766] radio_continue_shutdown
[745162] De-assert (low) EIC_REMAIN_ON
[745210] waiting battery drain
[755368] waiting battery drain
[765831] waiting battery drain
[776325] waiting battery drain

Test 10

[944120] daemon_power_remove
[944181] daemon_shutdown_sequence 2. timeout time 944164
[946735] turn off wifi using rfkill
[948104] notify flash-sync-services: 0
[948303] kill sync-iprf: -1
[948354] syncfs
[989097] rfkill done
[993296] turn off wifi exited: 0
[995539] syncfs done
[999456] sync exited: 0
[999743] shutdown eMMC
[009766] radio_continue_shutdown
[010150] De-assert (low) EIC_REMAIN_ON
[010196] waiting battery drain
[020336] waiting battery drain
[030723] waiting battery drain
[041202] waiting battery drain
[051597] waiting battery drain
[062048] waiting battery drain

Test 11

[976998] daemon_power_remove
[977103] daemon_shutdown_sequence 2. timeout time 977086
[979670] turn off wifi using rfkill
[981049] notify flash-sync-services: 0
[981248] kill sync-iprf: 0
[981308] syncfs
[023779] rfkill done
[027947] turn off wifi exited: 0
[055820] syncfs done
[059765] sync exited: 0
[060095] shutdown eMMC
[069978] radio_continue_shutdown
[070436] De-assert (low) EIC_REMAIN_ON
[070485] waiting battery drain
[080661] waiting battery drain
[091069] waiting battery drain

Test 12

[001546] daemon_power_remove
[001609] daemon_shutdown_sequence 2. timeout time 001592
[004167] turn off wifi using rfkill
[005504] notify flash-sync-services: 0
[005733] syncfs
[047455] rfkill done
[051560] turn off wifi exited: 0
[058292] syncfs done
[062316] sync exited: 0
[062604] shutdown eMMC
[071972] radio_continue_shutdown
[072368] De-assert (low) EIC_REMAIN_ON
[072414] waiting battery drain
[082579] waiting battery drain
[092996] waiting battery drain
[103500] waiting battery drain
[113927] waiting battery drai

Test 13

[111629] daemon_power_remove
[111690] daemon_shutdown_sequence 2. timeout time 111673
[114419] turn off wifi using rfkill
[115796] notify flash-sync-services: 0
[116044] syncfs
[157559] rfkill done
[162214] turn off wifi exited: 0
[172076] syncfs done
[176185] sync exited: 0
[176531] shutdown eMMC
[186736] radio_continue_shutdown
[187118] De-assert (low) EIC_REMAIN_ON
[187171] waiting battery drain
[197319] waiting battery drain
[207781] waiting battery drain
[218301] waiting battery drain
[228724] waiting battery drain
[239238] waiting battery drain

Test 14

[357218] daemon_power_remove
[357279] daemon_shutdown_sequence 2. timeout time 357262
[359942] turn off wifi using rfkill
[361288] notify flash-sync-services: 0
[361484] kill sync-iprf: -1
[361551] syncfs
[405862] rfkill done
[409934] turn off wifi exited: 0
[423697] syncfs done
[427781] sync exited: 0
[428132] shutdown eMMC
[438596] radio_continue_shutdown
[438987] De-assert (low) EIC_REMAIN_ON
[439078] waiting battery drain
[449244] waiting battery drain
[459699] waiting battery drain

Test 15

[335654] daemon_power_remove
[335715] daemon_shutdown_sequence 2. timeout time 335698
[338301] turn off wifi using rfkill
[339618] notify flash-sync-services: 0
[339810] kill sync-iprf: -1
[339874] syncfs
[380693] syncfs done
[384206] rfkill done
[385944] sync exited: 0
[388439] turn off wifi exited: 0
[388717] shutdown eMMC
[399115] radio_continue_shutdown
[399492] De-assert (low) EIC_REMAIN_ON
[399539] waiting battery drain
[409701] waiting battery drain
[420185] waiting battery drain
[430640] waiting battery drain
[441168] waiting battery drain
[451572] waiting battery drain

Test 16

[158562] daemon_power_remove
[158621] daemon_shutdown_sequence 2. timeout time 158606
[161303] turn off wifi using rfkill
[162669] notify flash-sync-services: 0
[162900] syncfs
[203527] rfkill done
[208257] turn off wifi exited: 0
[217228] syncfs done
[221302] sync exited: 0
[221663] shutdown eMMC
[230989] radio_continue_shutdown
[231407] De-assert (low) EIC_REMAIN_ON
[231456] waiting battery drain
[241629] waiting battery drain
[252112] waiting battery drain
[262561] waiting battery drain
[272955] waiting battery drain

Test 17

[158562] daemon_power_remove
[158621] daemon_shutdown_sequence 2. timeout time 158606
[161303] turn off wifi using rfkill
[162669] notify flash-sync-services: 0
[162900] syncfs
[203527] rfkill done
[208257] turn off wifi exited: 0
[217228] syncfs done
[221302] sync exited: 0
[221663] shutdown eMMC
[230989] radio_continue_shutdown
[231407] De-assert (low) EIC_REMAIN_ON
[231456] waiting battery drain
[241629] waiting battery drain
[252112] waiting battery drain
[262561] waiting battery drain
[272955] waiting battery drain

Test 18

[946484] daemon_power_remove
[946552] daemon_shutdown_sequence 2. timeout time 946534
[949431] turn off wifi using rfkill
[960995] notify flash-sync-services: 0
[961266] kill sync-iprf: -1
[961323] syncfs
[965245] syncfs done
[969304] sync exited: 0
[003489] rfkill done
[007723] turn off wifi exited: 0
[008147] shutdown eMMC
[021210] radio_continue_shutdown
[021576] De-assert (low) EIC_REMAIN_ON
[021624] waiting battery drain
[031843] waiting battery drain
[042344] waiting battery drain
[052841] waiting battery drain
[063382] waiting battery drain
[073932] waiting battery drain

Test 19

[073032] daemon_power_remove
[073129] daemon_shutdown_sequence 2. timeout time 073080
[075957] turn off wifi using rfkill
[077503] notify flash-sync-services: 0
[077723] kill sync-iprf: -1
[077780] syncfs
[133985] rfkill done
[138463] turn off wifi exited: 0
[165799] syncfs done
[170181] sync exited: 0
[170557] shutdown eMMC
[181930] radio_continue_shutdown
[182324] De-assert (low) EIC_REMAIN_ON
[182375] waiting battery drain
[192584] waiting battery

Test 20

[205406] daemon_power_remove
[205469] daemon_shutdown_sequence 2. timeout time 205451
[207957] turn off wifi using rfkill
[209344] notify flash-sync-services: 0
[209572] syncfs
[255119] rfkill done
[259654] turn off wifi exited: 0
[273844] syncfs done
[278073] sync exited: 0
[278411] shutdown eMMC
[288762] radio_continue_shutdown
[289266] De-assert (low) EIC_REMAIN_ON
[289320] waiting battery drain
[299459] waiting battery drain
[309905] waiting battery drain
[320403] waiting battery drain
[330862] waiting battery drain

Test 21

[933602] daemon_power_remove
[933661] daemon_shutdown_sequence 2. timeout time 933645
[936258] turn off wifi using rfkill
[937610] notify flash-sync-services: 0
[937799] kill sync-iprf: -1
[937871] syncfs
[976904] rfkill done
[981218] turn off wifi exited: 0
[988345] syncfs done
[992311] sync exited: 0
[992579] shutdown eMMC
[001942] radio_continue_shutdown
[002341] De-assert (low) EIC_REMAIN_ON
[002386] waiting battery drain
[012539] waiting battery drain
[022921] waiting battery drain
[033379] waiting battery drain
[043813] waiting battery drain
[054274] waiting battery drain
[064691] waiting battery

Test 22

[181607] daemon_power_remove
[181667] daemon_shutdown_sequence 2. timeout time 181651
[184917] turn off wifi using rfkill
[186648] notify flash-sync-services: 0
[186860] syncfs
[235966] syncfs done
[240177] sync exited: 0
[261292] rfkill done
[265373] turn off wifi exited: 0
[265704] shutdown eMMC
[277589] radio_continue_shutdown
[277977] De-assert (low) EIC_REMAIN_ON
[278055] waiting battery drain
[288195] waiting battery drain
[298610] waiting battery drain
[309078] waiting battery drain

Test 23

[436340] daemon_power_remove
[436402] daemon_shutdown_sequence 2. timeout time 436384
[439559] turn off wifi using rfkill
[450597] notify flash-sync-services: 0
[450849] syncfs
[459867] syncfs done
[461960] sync exited: 0
[507582] rfkill done
[511612] turn off wifi exited: 0
[511939] shutdown eMMC
[523914] radio_continue_shutdown
[524375] De-assert (low) EIC_REMAIN_ON
[524422] waiting battery drain
[534570] waiting battery drain
[545040] waiting battery drain

## NonPCO

- Firmware is optimized
- Ping size = 1472
- Default cache is 170/256

Test command:
```
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 10M --dd
```

Test 1

[022919] daemon_power_remove
[022979] daemon_shutdown_sequence 2. timeout time 022963
[026446] turn off wifi using rfkill
[028076] notify flash-sync-services: 0
[028302] kill sync-iprf: -1
[028430] syncfs
[081687] rfkill done
[085729] turn off wifi exited: 0
[104540] syncfs done
[108584] sync exited: 0
[108905] shutdown eMMC
[119095] radio_continue_shutdown
[119486] De-assert (low) EIC_REMAIN_ON
[119532] waiting battery drain
[129681] waiting battery drain

Test 2

[840159] daemon_power_remove
[840220] daemon_shutdown_sequence 2. timeout time 840203
[843364] turn off wifi using rfkill
[845085] notify flash-sync-services: 0
[845317] syncfs
[905978] rfkill done
[910059] turn off wifi exited: 0
[917663] syncfs done
[921563] sync exited: 0
[921916] shutdown eMMC
[932110] radio_continue_shutdown
[932502] De-assert (low) EIC_REMAIN_ON
[932547] waiting battery drain
[942697] waiting battery drain
[953195] waiting battery drain
[963632] waiting battery drain

Test 3

[422259] daemon_power_remove
[422321] daemon_shutdown_sequence 2. timeout time 422304
[425561] turn off wifi using rfkill
[427147] notify flash-sync-services: 0
[427367] kill sync-iprf: -1
[427416] syncfs
[485959] rfkill done
[490199] turn off wifi exited: 0
[494985] syncfs done
[496866] sync exited: 0
[497139] shutdown eMMC
[507499] radio_continue_shutdown
[507851] De-assert (low) EIC_REMAIN_ON
[507897] waiting battery drain
[518085] waiting battery drain
[528475] waiting battery drain
[538966] waiting ba

Test 4

[417619] daemon_power_remove
[417678] daemon_shutdown_sequence 2. timeout time 417663
[421056] turn off wifi using rfkill
[422651] notify flash-sync-services: 0
[422849] kill sync-iprf: -1
[422921] syncfs
[488094] rfkill done
[492246] turn off wifi exited: 0
[496680] syncfs done
[500596] sync exited: 0
[500913] shutdown eMMC
[511654] radio_continue_shutdown
[511976] De-assert (low) EIC_REMAIN_ON
[512058] waiting battery drain
[522201] waiting battery drain
[532635] waiting battery drain
[543100] waiting battery drain
[553539] waiting

Test 5

[365196] daemon_power_remove
[365258] daemon_shutdown_sequence 2. timeout time 365241
[368658] turn off wifi using rfkill
[370276] notify flash-sync-services: 0
[370586] kill sync-iprf: -1
[370640] syncfs
[430792] syncfs done
[434770] sync exited: 0
[452501] rfkill done
[456537] turn off wifi exited: 0
[456836] shutdown eMMC
[468664] radio_continue_shutdown
[469091] De-assert (low) EIC_REMAIN_ON
[469139] waiting battery drain
[479281] waiting battery drain
[489644] waiting battery drain
[500132] waiting battery drain

Test 6

[697739] daemon_power_remove
[697805] daemon_shutdown_sequence 2. timeout time 697787
[701334] turn off wifi using rfkill
[703229] notify flash-sync-services: 0
[703452] kill sync-iprf: -1
[703536] syncfs
[768546] rfkill done
[771830] syncfs done
[773853] turn off wifi exited: 0
[776364] sync exited: 0
[776617] shutdown eMMC
[787183] radio_continue_shutdown
[787555] De-assert (low) EIC_REMAIN_ON
[787607] waiting battery drain
[797806] waiting battery drain
[808300] waiting battery drain
[818777] waiting battery drain

Test 7

[804548] daemon_power_remove
[804609] daemon_shutdown_sequence 2. timeout time 804591
[807815] turn off wifi using rfkill
[809523] notify flash-sync-services: 0
[809780] kill sync-iprf: 0
[809831] syncfs
[874516] rfkill done
[878421] syncfs done
[880193] turn off wifi exited: 0
[882608] sync exited: 0
[882757] shutdown eMMC
[893130] radio_continue_shutdown
[893534] De-assert (low) EIC_REMAIN_ON
[893586] waiting battery drain
[903749] waiting battery drain

Test 8

[323196] daemon_power_remove
[323257] daemon_shutdown_sequence 2. timeout time 323241
[326570] turn off wifi using rfkill
[328190] notify flash-sync-services: 0
[328492] kill sync-iprf: -1
[328562] syncfs
[391195] syncfs done
[395181] sync exited: 0
[412920] rfkill done
[416891] turn off wifi exited: 0
[417217] shutdown eMMC
[429104] radio_continue_shutdown
[429485] De-assert (low) EIC_REMAIN_ON
[429531] waiting battery drain
[439673] waiting battery drain
[450129] waiting battery drain

Test 9

[524392] daemon_power_remove
[524453] daemon_shutdown_sequence 2. timeout time 524436
[527688] turn off wifi using rfkill
[529444] notify flash-sync-services: 0
[529667] kill sync-iprf: -1
[529717] syncfs
[588668] syncfs done
[592731] sync exited: 0
[610897] rfkill done
[614888] turn off wifi exited: 0
[615249] shutdown eMMC
[627077] radio_continue_shutdown
[627467] De-assert (low) EIC_REMAIN_ON
[627517] waiting battery drain
[637662] waiting battery drain
[648051] waiting battery drain
[658454] waiting battery drain

Test 10

[638082] daemon_power_remove
[638145] daemon_shutdown_sequence 2. timeout time 638129
[641366] turn off wifi using rfkill
[643084] notify flash-sync-services: 0
[643310] kill sync-iprf: -1
[643360] syncfs
[696345] rfkill done
[700421] turn off wifi exited: 0
[712995] syncfs done
[717037] sync exited: 0
[717327] shutdown eMMC
[727094] radio_continue_shutdown
[727466] De-assert (low) EIC_REMAIN_ON
[727510] waiting battery drain
[737665] waiting battery drain
[748152] waiting battery drain

Test 11

[070910] daemon_power_remove
[070972] daemon_shutdown_sequence 2. timeout time 070956
[074423] turn off wifi using rfkill
[075923] notify flash-sync-services: 0
[076164] kill sync-iprf: -1
[076215] syncfs
[138964] rfkill done
[143185] turn off wifi exited: 0
[152638] syncfs done
[156587] sync exited: 0
[156906] shutdown eMMC
[166864] radio_continue_shutdown
[167295] De-assert (low) EIC_REMAIN_ON
[167341] waiting battery drain
[177479] waiting battery drain
[187897] waiting battery drain
[198338] waiting battery drain

Test 12

[838568] daemon_power_remove
[838626] daemon_shutdown_sequence 2. timeout time 838610
[841784] turn off wifi using rfkill
[843498] notify flash-sync-services: 0
[843722] kill sync-iprf: -1
[843774] syncfs
[914975] syncfs done
[918955] sync exited: 0
[933948] rfkill done
[938239] turn off wifi exited: 0
[938561] shutdown eMMC
[950491] radio_co

Test 13

[804384] daemon_power_remove
[804445] daemon_shutdown_sequence 2. timeout time 804428
[807737] turn off wifi using rfkill
[809463] notify flash-sync-services: 0
[809708] kill sync-iprf: -1
[809761] syncfs
[872554] syncfs done
[876603] sync exited: 0
[894492] rfkill done
[898485] turn off wifi exited: 0
[898787] shutdown eMMC
[910723] radio_continue_shutdown
[911145] De-assert (low) EIC_REMAIN_ON
[911201] waiting battery drain

Test 14

[312163] daemon_power_remove
[312226] daemon_shutdown_sequence 2. timeout time 312208
[315330] turn off wifi using rfkill
[317048] notify flash-sync-services: 0
[317276] kill sync-iprf: -1
[317327] syncfs
[377562] syncfs done
[381490] sync exited: 0
[399700] rfkill done
[403691] turn off wifi exited: 0
[404077] shutdown eMMC
[415991] radio_continue_shutdown
[416395] De-assert (low) EIC_REMAIN_ON
[416439] waiting battery drain


Test 15

[192392] daemon_power_remove
[192479] daemon_shutdown_sequence 2. timeout time 192450
[195770] turn off wifi using rfkill
[197443] notify flash-sync-services: 0
[197804] kill sync-iprf: 0
[197861] syncfs
[268547] rfkill done
[272754] turn off wifi exited: 0
[283723] syncfs done
[287822] sync exited: 0
[288214] shutdown eMMC
[298574] radio_continue_shutdown
[298922] De-assert (low) EIC_REMAIN_ON
[298968] waiting battery drain
[309144] waiting batt

Test 16

[307997] daemon_power_remove
[308119] daemon_shutdown_sequence 2. timeout time 308102
[311227] turn off wifi using rfkill
[312919] notify flash-sync-services: 0
[313194] kill sync-iprf: 0
[313245] syncfs
[357950] rfkill done
[362179] turn off wifi exited: 0
[404550] syncfs done
[408443] sync exited: 0
[408769] shutdown eMMC
[418574] radio_continue_shutdown
[418963] De-assert (low) EIC_REMAIN_ON
[419062] waiting battery drain
[429210] waiting battery drain

Test 17

[613102] daemon_power_remove
[613165] daemon_shutdown_sequence 2. timeout time 613147
[616372] turn off wifi using rfkill
[617897] notify flash-sync-services: 0
[618295] kill sync-iprf: 0
[618349] syncfs
[676577] syncfs done
[680535] sync exited: 0
[696381] rfkill done
[700368] turn off wifi exited: 0
[700722] shutdown eMMC
[712634] radio_continue_shutdown
[713077] De-assert (low) EIC_REMAIN_ON
[713125] waiting battery drain
[723295] waiting battery drain
[733715] waiting battery drain

Test 18

[270494] daemon_power_remove
[270584] daemon_shutdown_sequence 2. timeout time 270554
[273888] turn off wifi using rfkill
[275447] notify flash-sync-services: 0
[275810] kill sync-iprf: 0
[275864] syncfs
[353400] syncfs done
[357345] sync exited: 0

Test 19

[303295] daemon_power_remove
[303392] daemon_shutdown_sequence 2. timeout time 303375
[306713] turn off wifi using rfkill
[317562] notify flash-sync-services: 0
[317782] kill sync-iprf: -1
[317832] syncfs
[380682] rfkill done
[382886] syncfs done
[386523] sync exited: 0
[386942] turn off wifi exited: 0
[386993] shutdown eMMC
[397507] radio_continue_shutdown
[397876] De-assert (low) EIC_REMAIN_ON
[397921] waiting battery drain
[408123] waiting battery drain
[418574] waiting battery drain

Test 20

[871758] daemon_power_remove
[871822] daemon_shutdown_sequence 2. timeout time 871803
[875208] turn off wifi using rfkill
[876911] notify flash-sync-services: 0
[877142] kill sync-iprf: -1
[877193] syncfs
[949188] rfkill done
[952501] syncfs done
[954299] turn off wifi exited: 0
[956740] sync exited: 0
[956973] shutdown eMMC
[966812] radio_continue_shutdown
[967184] De-assert (low) EIC_REMAIN_ON
[967229] waiting battery drain
[977371] waiting battery drain

Test 21

[329981] daemon_power_remove
[330233] daemon_shutdown_sequence 2. timeout time 330185
[333506] turn off wifi using rfkill
[335221] notify flash-sync-services: 0
[335462] kill sync-iprf: -1
[335513] syncfs
[403116] rfkill done
[407284] turn off wifi exited: 0
[426075] syncfs done
[430107] sync exited: 0
[430450] shutdown eMMC

Test 22

[730523] daemon_power_remove
[730584] daemon_shutdown_sequence 2. timeout time 730566
[734073] turn off wifi using rfkill
[735627] notify flash-sync-services: 0
[735941] kill sync-iprf: -1
[735992] syncfs
[794216] rfkill done
[798407] turn off wifi exited: 0
[802299] syncfs done
[806271] sync exited: 0
[806599] shutdown eMMC
[816372] radio_continue_shutdown
[816740] De-assert (low) EIC_REMAIN_ON
[816787] waiting battery drain
[826963] waiting battery drain
[837403] waiting battery drain
[847802] waiting battery drain
[858264] waiting battery drain

Test 23

[986604] daemon_power_remove
[986663] daemon_shutdown_sequence 2. timeout time 986648
[989887] turn off wifi using rfkill
[991639] notify flash-sync-services: 0
[991839] kill sync-iprf: -1
[991889] syncfs
[049940] syncfs done
[052954] rfkill done
[054752] sync exited: 0
[057287] turn off wifi exited: 0
[057597] shutdown eMMC
[067572] radio_continue_shutdown
[067961] De-assert (low) EIC_REMAIN_ON
[068024] waiting battery drain
[078198] waiting battery drain
[088648] waiting battery drain
[099116] waiting battery drain
[109582] waiting battery drain

Test 24

[292182] daemon_power_remove
[292325] daemon_shutdown_sequence 2. timeout time 292243
[295413] turn off wifi using rfkill
[296896] notify flash-sync-services: 0
[297154] kill sync-iprf: -1
[297279] syncfs
[360111] syncfs done
[364181] sync exited: 0
[371187] rfkill done
[375168] turn off wifi exited: 0
[375462] shutdown eMMC
[384770] radio_continue_shutdown
[385208] De-assert (low) EIC_REMAIN_ON
[385267] waiting battery drain
[395430] waiting battery drain
[405846] waiting battery drain
[416289] waiting battery drain

Test 25

[694233] daemon_power_remove
[694295] daemon_shutdown_sequence 2. timeout time 694277
[697574] turn off wifi using rfkill
[699361] notify flash-sync-services: 0
[699664] kill sync-iprf: -1
[699752] syncfs
[765396] syncfs done
[768824] rfkill done
[770687] sync exited: 0
[773210] turn off wifi exited: 0
[773480] shutdown eMMC
[783396] radio_continue_shutdown
[783765] De-assert (low) EIC_REMAIN_ON
[783812] waiting battery drain
[793970] waiting battery drain
[804403] waiting battery drain
[814849] waiting battery drain
[825352] w

## PCO

- Firmware is optimized
- Ping size = 1472
- Default cache is 170/256

Test command:
```
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 10M --dd
```

Test 1

[759219] daemon_power_remove
[759282] daemon_shutdown_sequence 2. timeout time 759265
[762536] turn off wifi using rfkill
[764214] notify flash-sync-services: 0
[764453] kill sync-iprf: -1
[764503] syncfs
[827311] syncfs done
[831421] sync exited: 0
[839795] rfkill done
[843887] turn off wifi exited: 0
[844213] shutdown eMMC
[853516] radio_continue_shutdown
[853891] De-assert (low) EIC_REMAIN_ON
[853936] waiting battery drain
[864120] waiting battery drain
[874544] waiting battery drain
[884940] waiting battery drain
[895381] waiting battery drain

Test 2

[744564] daemon_power_remove
[744624] daemon_shutdown_sequence 2. timeout time 744609
[747872] turn off wifi using rfkill
[749570] notify flash-sync-services: 0
[749795] kill sync-iprf: -1
[749847] syncfs
[806668] syncfs done
[810709] sync exited: 0
[819666] rfkill done
[823664] turn off wifi exited: 0
[823950] shutdown eMMC
[833862] radio_continue_shutdown
[834313] De-assert (low) EIC_REMAIN_ON
[834362] waiting battery drain
[844495] waiting battery drain
[854904] waiting battery drain
[865327] waiting battery drain
[875775] waiting battery drain
[886289] waiting battery drain
[896686] waiting battery drain
[907120] waiting battery drain

Test 3

[807295] daemon_power_remove
[807356] daemon_shutdown_sequence 2. timeout time 807339
[810565] turn off wifi using rfkill
[812271] notify flash-sync-services: 0
[812495] kill sync-iprf: -1
[812550] syncfs
[869930] rfkill done
[873998] turn off wifi exited: 0
[879239] syncfs done
[883129] sync exited: 0
[883402] shutdown eMMC
[893049] radio_continue_shutdown
[893395] De-assert (low) EIC_REMAIN_ON
[893439] waiting battery drain
[903585] waiting battery drain
[914080] waiting battery drain
[924481] waiting battery drain
[934870] waiting battery drain
[945349] waiting battery drain
[955766] waiting battery drain
[966289] waitin�

Test 4

[425284] daemon_power_remove
[425343] daemon_shutdown_sequence 2. timeout time 425328
[428775] turn off wifi using rfkill
[430380] notify flash-sync-services: 0
[430629] kill sync-iprf: -1
[430722] syncfs
[493530] rfkill done
[498275] turn off wifi exited: 0
[504700] syncfs done
[508859] sync exited: 0
[509221] shutdown eMMC
[518599] radio_continue_shutdown
[518989] De-assert (low) EIC_REMAIN_ON
[519070] waiting battery drain
[529218] waiting battery drain
[539622] waiting battery drain
[550127] waiting battery drain
[560580] waiting battery drain
[571089] waiting batt

Test 5

[335504] daemon_power_remove
[335564] daemon_shutdown_sequence 2. timeout time 335548
[339049] turn off wifi using rfkill
[340601] notify flash-sync-services: 0
[340963] kill sync-iprf: -1
[341052] syncfs
[400758] syncfs done
[404888] sync exited: 0
[406258] rfkill done
[410270] turn off wifi exited: 0
[410612] shutdown eMMC
[420513] radio_continue_shutdown
[420853] De-assert (low) EIC_REMAIN_ON
[420899] waiting battery drain
[431096] waiting battery drain
[441560] waiting battery drain
[451988] waiting battery drain
[462450] waiting battery drain
[472892] waiting battery drain
[48337�

Test 6

[526841] daemon_power_remove
[526932] daemon_shutdown_sequence 2. timeout time 526900
[530711] turn off wifi using rfkill
[532436] notify flash-sync-services: 0
[532668] kill sync-iprf: 0
[532720] syncfs
[555564] syncfs done
[559742] sync exited: 0
[599998] rfkill done
[604292] turn off wifi exited: 0
[604640] shutdown eMMC
[616561] radio_continue_shutdown
[616964] De-assert (low) EIC_REMAIN_ON
[617050] waiting battery drain
[627212] waiting battery drain
[637605] waiting battery drain
[648154] waiting battery drain
[658640] waiting battery drain
[669131] waiting battery drain
[679597] waiting battery drain
[690109] waiting battery �

Test 7

[454751] daemon_power_remove
[454844] daemon_shutdown_sequence 2. timeout time 454826
[458136] turn off wifi using rfkill
[459683] notify flash-sync-services: 0
[460155] syncfs
[511215] syncfs done
[515238] sync exited: 0
[532848] rfkill done
[536909] turn off wifi exited: 0
[537366] shutdown eMMC
[549132] radio_continue_shutdown
[549463] De-assert (low) EIC_REMAIN_ON
[549509] waiting battery drain
[559648] waiting battery drain
[570153] waiting battery drain
[580577] waiting battery drain
[591051] waiting battery drain

Test 8

[568621] daemon_power_remove
[568683] daemon_shutdown_sequence 2. timeout time 568667
[571862] turn off wifi using rfkill
[573591] notify flash-sync-services: 0
[573795] kill sync-iprf: -1
[573848] syncfs
[648270] rfkill done
[652389] turn off wifi exited: 0
[654921] syncfs done
[658896] sync exited: 0
[659267] shutdown eMMC
[669062] radio_continue_shutdown
[669441] De-assert (low) EIC_REMAIN_ON
[669487] waiting battery drain
[679630] waiting battery drain
[690088] waiting battery drain
[700560] waiting battery drain
[710956] waiting battery drain

Test 9

[183321] daemon_power_remove
[183382] daemon_shutdown_sequence 2. timeout time 183365
[186550] turn off wifi using rfkill
[188234] notify flash-sync-services: 0
[188454] kill sync-iprf: -1
[188505] syncfs
[245331] syncfs done
[249420] sync exited: 0
[261432] rfkill done
[265455] turn off wifi exited: 0
[265746] shutdown eMMC
[277684] radio_continue_shutdown
[278059] De-assert (low) EIC_REMAIN_ON
[278108] waiting battery drain
[288254] waiting battery drain
[298677] waiting battery drain
[309149] waiting battery drain
[319591] waiting battery drain

Test 10

[893893] daemon_power_remove
[893956] daemon_shutdown_sequence 2. timeout time 893939
[897185] turn off wifi using rfkill
[898869] notify flash-sync-services: 0
[899124] kill sync-iprf: -1
[899176] syncfs
[958437] syncfs done
[962236] rfkill done
[963991] sync exited: 0
[966470] turn off wifi exited: 0
[966729] shutdown eMMC
[977131] radio_continue_shutdown
[977444] De-assert (low) EIC_REMAIN_ON
[977489] waiting battery drain
[987630] waiting battery drain
[998208] waiting battery drain
[008628] waiting battery drain
[019142] waiting battery drain
[029583] waiting battery drain
[040072] waiting battery drain
[050459] waiting battery drain

Test 11

[266633] daemon_power_remove
[266693] daemon_shutdown_sequence 2. timeout time 266676
[269864] turn off wifi using rfkill
[271628] notify flash-sync-services: 0
[271884] kill sync-iprf: -1
[271936] syncfs
[328721] rfkill done
[332770] turn off wifi exited: 0
[333406] syncfs done
[335270] sync exited: 0
[335490] shutdown eMMC
[344829] radio_continue_shutdown
[345218] De-assert (low) EIC_REMAIN_ON
[345263] waiting battery drain
[355425] waiting battery drain
[365867] waiting battery drain
[376369] waiting battery drain
[386779] waiting battery drain
[397251] waiting battery drain
[407646] waiting battery drain

Test 12

[171707] daemon_power_remove
[171768] daemon_shutdown_sequence 2. timeout time 171751
[174956] turn off wifi using rfkill
[176782] notify flash-sync-services: 0
[176986] kill sync-iprf: -1
[177063] syncfs
[248163] rfkill done
[250215] syncfs done
[253740] sync exited: 0
[254182] turn off wifi exited: 0
[254234] shutdown eMMC
[264631] radio_continue_shutdown
[264968] De-assert (low) EIC_REMAIN_ON
[265047] waiting battery drain
[275201] waiting battery drain
[285599] waiting battery drain
[296070] waiting battery drain
[306459] waiting battery drain
[316922] waiting battery drain
[327393] waiting battery drain

Test 13

[165440] daemon_power_remove
[165503] daemon_shutdown_sequence 2. timeout time 165484
[168794] turn off wifi using rfkill
[170553] notify flash-sync-services: 0
[170745] kill sync-iprf: -1
[170794] syncfs
[233636] syncfs done
[237748] sync exited: 0
[259055] rfkill done
[262987] turn off wifi exited: 0
[263308] shutdown eMMC
[275071] radio_continue_shutdown
[275439] De-assert (low) EIC_REMAIN_ON
[275487] waiting battery drain
[285653] waiting battery drain
[296168] waiting battery drain
[306568] waiting battery d�

Test 14

[485385] daemon_power_remove
[485447] daemon_shutdown_sequence 2. timeout time 485430
[488679] turn off wifi using rfkill
[490284] notify flash-sync-services: 0
[490553] kill sync-iprf: -1
[490646] syncfs
[550360] rfkill done
[552290] syncfs done
[555767] sync exited: 0
[556251] turn off wifi exited: 0
[556304] shutdown eMMC
[566193] radio_continue_shutdown
[566575] De-assert (low) EIC_REMAIN_ON
[566621] waiting battery drain
[576772] waiting battery drain
[587242] waiting battery drain
[597682] waiting battery drain
[608212] waiting battery drain
[618662] waiting battery drain
[629216] waiting battery drain
[639617] waiting battery drain
[650063] waiting battery drain

Test 15

[946431] daemon_power_remove
[946498] daemon_shutdown_sequence 2. timeout time 946481
[950072] turn off wifi using rfkill
[951971] notify flash-sync-services: 0
[952250] kill sync-iprf: -1
[952304] syncfs
[017072] rfkill done
[021383] turn off wifi exited: 0
[033950] syncfs done
[038303] sync exited: 0
[038649] shutdown eMMC
[049184] radio_continue_shutdown
[049551] De-assert (low) EIC_REMAIN_ON
[049602] waiting battery drain
ping: sendto: Network is unreachable
[059818] waiting battery drain
ping failed
[070286] waiting battery drain
[080809] waiting battery drain
[091352] waiting battery drain
[101844] waiting battery drain
[112294] waiting battery drain
[122797] waiting battery�

Test 16

[861918] daemon_power_remove
[861985] daemon_shutdown_sequence 2. timeout time 861967
[865730] turn off wifi using rfkill
[867415] notify flash-sync-services: 0
[867822] kill sync-iprf: -1
[867877] syncfs
[933888] syncfs done
[938155] sync exited: 0

Test 17

[396399] daemon_power_remove
[396460] daemon_shutdown_sequence 2. timeout time 396443
[399766] turn off wifi using rfkill
[401472] notify flash-sync-services: 0
[401830] kill sync-iprf: 0
[401922] syncfs
[470445] syncfs done
[474420] sync exited: 0
[525452] rfkill done
[529527] turn off wifi exited: 0
[529842] shutdown eMMC

Test 18

[134445] daemon_power_remove
[134565] daemon_shutdown_sequence 2. timeout time 134549
[137907] turn off wifi using rfkill
[139595] notify flash-sync-services: 0
[139904] kill sync-iprf: -1
[139955] syncfs
[204382] syncfs done
[208490] sync exited: 0
[257818] rfkill done
[261818] turn off wifi exited: 0
[262147] shutdown eMMC
[274123] radio_c�

Test 19

[074572] daemon_power_remove
[074633] daemon_shutdown_sequence 2. timeout time 074615
[078076] turn off wifi using rfkill
[079603] notify flash-sync-services: 0
[079960] kill sync-iprf: 0
[080046] syncfs
[143657] syncfs done
[147700] sync exited: 0
[165089] rfkill done
[169219] turn off wifi exited: 0
[169532] shutdown eMMC
[181552] radio_continue_shutdown
[181906] De-assert (low) EIC_REMAIN_ON
[181950] waiting battery drain
[192129] waiting battery drain
[202535] waiting battery drain
[213062] waiting battery drain

