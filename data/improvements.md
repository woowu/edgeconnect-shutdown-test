# Shutdown improvements

## baseline

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

## 256 KB cache

Test command:
```
mkbusy --ssid woody-FX503VD --passwd abc12345 --gw 10.42.0.1 --cpu 2 --file-sz 10M --dd --cache 256 
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

## exec(rmmod cc33xx)

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

Test 03

[132782] daemon_power_remove
[132841] daemon_shutdown_sequence 2. timeout time 132842
[135469] turn off wifi using rmmod
[136741] notify flash-sync-services: 0
[136954] syncfs
[137366] stop watchdogd
[209520] turn off wifi exited: 0
[247872] syncfs done
[252368] sync exited: 0
[252722] shutdown eMMC

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
[831281] De-assert (low) EIC_REMAIN_O

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

## rfkill

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

