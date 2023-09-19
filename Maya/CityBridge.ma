//Maya ASCII 2022 scene
//Name: CityBridge.ma
//Last modified: Wed, Jan 19, 2022 09:43:34 PM
//Codeset: 1252
requires maya "2022";
requires "mtoa" "4.2.1";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19042)";
fileInfo "UUID" "6E3A8D04-4166-AC40-E48F-A18E1B8BBAA6";
createNode transform -s -n "persp";
	rename -uid "7A68855C-46C6-E74B-38E4-8FB91EAAA406";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6403.3990312315873 5961.6521344909179 291.83238012784068 ;
	setAttr ".r" -type "double3" -42.338352726695859 -808.59999999988906 1.3017892474994202e-13 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "60C3E9BE-48E1-D70E-2C5C-57AE35620A7A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 1;
	setAttr ".fcp" 90000;
	setAttr ".coi" 8593.732246171181;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.6658339500427268 20.762905120849609 77.92503754602032 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0DE82584-4D0B-A4E9-BB41-4C9FBB22CB11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B9C872DA-4998-37D9-BF01-A9A2AEC7B956";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "4CCFCE1F-4A93-49D6-FE14-62AE303852CB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8404B4F1-4F70-1FDC-5C93-6D8EBFDBBCB0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "962446F9-406D-944B-C30C-6F8C8FE238EE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "00745BD1-4FCF-80B3-EDC3-7688EA83D281";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube3";
	rename -uid "B47445D3-4246-9E62-FDC6-0D920E91411D";
	setAttr ".rp" -type "double3" -3.6689175511650873 114.90332394126369 -6.2605789915420473 ;
	setAttr ".sp" -type "double3" -3.6689175511650873 114.90332394126369 -6.2605789915420473 ;
createNode mesh -n "pCube3Shape" -p "pCube3";
	rename -uid "994C7425-456A-9352-6ACF-13834E0FDAD4";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "e[90]" "e[93]" "e[103]" "e[105:106]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "e[97]" "e[99:101]" "e[108]" "e[110:111]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:105]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[55]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[56]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[53]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[58]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[57]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[54]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 136 ".uvst[0].uvsp[0:135]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.54166663 0.5 0.54166663 0.75 0.54166663 0 0.54166663
		 1 0.54166663 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.45833331 1 0.45833331
		 0.25 0.375 0.25 0.45833331 0.25 0.45833331 0.5 0.375 0.5 0.54166663 0.5 0.54166663
		 0.25 0.625 0.25 0.625 0.5 0.375 0 0.45833331 0 0.375 0.25 0.54166663 0 0.625 0 0.625
		 0.25 0.54166663 0.25 0.45833331 0.25 0.45833331 0.25 0.375 0.25 0.625 0.25 0.54166663
		 0.25 0.375 0 0.45833331 0 0.375 0.25 0.54166663 0 0.625 0 0.625 0.25 0.54166663 0.25
		 0.45833331 0.25 0.45833331 0.25 0.375 0.25 0.625 0.25 0.54166663 0.25 0.37211952
		 -4.3674401e-05 0.43519557 -0.00040006367 0.3741731 0.16855671 0.56837219 -0.0029911045
		 0.62498605 -0.010173507 0.62499738 0.16856927 0.54166806 0.25 0.45833182 0.25 0.45831969
		 0.25 0.37501192 0.25 0.62498635 0.25 0.54167855 0.25 0.375 0.25 0.45833331 0.25 0.45833331
		 0.5 0.375 0.5 0.375 0.5 0.45833331 0.5 0.45833331 0.75 0.375 0.75 0.45833331 1 0.375
		 1 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.54166663
		 0.5 0.625 0.5 0.625 0.75 0.54166663 0.75 0.54166663 1 0.625 1 0.54166663 0.5 0.54166663
		 0.25 0.625 0.25 0.625 0.5 0.45833331 0.25 0.54166663 0.25 0.45833331 0 0.45833331
		 0 0.375 0 0.375 0.25 0.54166663 0 0.625 0 0.54166663 0 0.625 0.25 0.45833331 0.25
		 0.54166663 0.25 0.45833331 0.25 0.375 0.25 0.625 0.25 0.54166663 0.25 0.45833331
		 0 0.375 0 0.375 0.25 0.625 0 0.54166663 0 0.625 0.25 0.45833331 0.25 0.54166663 0.25
		 0.45833331 0.25 0.375 0.25 0.625 0.25 0.54166663 0.25 0.40786195 -0.002571875 0.37382975
		 -0.0048964778 0.37460056 0.15749283 0.6239379 -0.0038198917 0.54232037 -0.0014832544
		 0.6242739 0.14300358 0.45809808 0.25 0.54142272 0.25 0.4570072 0.25 0.37369975 0.25
		 0.62367427 0.25 0.54036605 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 108 ".pt[0:107]" -type "float3"  345.43149 -284.56946 2537.2065 
		-345.94324 -284.56946 2537.2065 345.43149 -201.58792 2537.2065 -345.94324 -201.58792 
		2537.2065 345.43149 -201.58792 3172.1445 -345.94324 -201.58792 3172.1445 345.43149 
		-284.56946 3172.1445 -345.94324 -284.56946 3172.1445 -313.50424 -201.58792 3172.1445 
		-313.50424 -284.56946 3172.1445 -313.50424 -284.56946 2537.2065 -313.50424 -201.58792 
		2537.2065 312.99246 -201.58792 3172.1445 312.99246 -284.56946 3172.1445 312.99246 
		-284.56946 2537.2065 312.99246 -201.58792 2537.2065 345.43149 -0.77725601 2537.2065 
		312.99246 -0.77725601 2537.2065 312.99246 -0.77710342 3172.1445 345.43149 -0.77710342 
		3172.1445 -313.50424 -0.77725601 2537.2065 -313.50424 -0.77710342 3172.1445 -345.94324 
		-0.77725601 2537.2065 -345.94324 -0.77710342 3172.1445 345.43149 -86.442802 1922.5461 
		312.99246 -86.442802 1922.5461 312.99246 -3.4612923 1922.5461 345.43149 -3.4612923 
		1922.5461 -313.50424 -86.442802 1922.5461 -313.50424 -3.4612923 1922.5461 -345.94324 
		-86.442802 1922.5461 -345.94324 -3.4612923 1922.5461 312.99246 197.34949 1922.5461 
		345.43149 197.34949 1922.5461 -345.94324 197.34949 1922.5461 -313.50424 197.34949 
		1922.5461 345.43149 46.330727 1249.8568 312.99246 46.330727 1249.8568 312.99246 129.31223 
		1249.8568 345.43149 129.31223 1249.8568 -313.50424 46.330727 1249.8568 -313.50424 
		129.31223 1249.8568 -345.94324 46.330727 1249.8568 -345.94324 129.31223 1249.8568 
		312.99246 330.12308 1249.8568 345.43149 330.12308 1249.8568 -345.94324 330.12308 
		1249.8568 -313.50424 330.12308 1249.8568 345.43149 189.05762 -57.762093 312.99246 
		189.05762 -57.762093 312.99246 272.03925 -57.762093 345.43149 272.03925 -57.762093 
		-313.50424 189.05762 -57.762093 -313.50424 272.03925 -57.762093 -345.94324 189.05762 
		-57.762093 -345.94324 272.03925 -57.762093 312.99246 472.85001 -57.762093 345.43149 
		472.85001 -57.762093 -345.94324 472.85001 -57.762093 -313.50424 472.85001 -57.762093 
		-345.43152 -284.56946 -2665.4805 345.94327 -284.56946 -2665.4805 -345.43152 -201.58792 
		-2665.4805 345.94327 -201.58792 -2665.4805 -345.43152 -201.58792 -3300.4175 345.94327 
		-201.58792 -3300.4175 -345.43152 -284.56946 -3300.4175 345.94327 -284.56946 -3300.4175 
		313.50424 -201.58792 -3300.4175 313.50424 -284.56946 -3300.4175 313.50424 -284.56946 
		-2665.4805 313.50424 -201.58792 -2665.4805 -312.99246 -201.58792 -3300.4175 -312.99246 
		-284.56946 -3300.4175 -312.99246 -284.56946 -2665.4805 -312.99246 -201.58792 -2665.4805 
		-345.43152 -0.77725601 -2665.4805 -312.99246 -0.77725601 -2665.4805 -312.99246 -0.77710342 
		-3300.4175 -345.43152 -0.77710342 -3300.4175 313.50424 -0.77725601 -2665.4805 313.50424 
		-0.77710342 -3300.4175 345.94327 -0.77725601 -2665.4805 345.94327 -0.77710342 -3300.4175 
		-345.43152 -86.442802 -2050.8193 -312.99246 -86.442802 -2050.8193 -312.99246 -3.4612923 
		-2050.8193 -345.43152 -3.4612923 -2050.8193 313.50424 -86.442802 -2050.8193 313.50424 
		-3.4612923 -2050.8193 345.94327 -86.442802 -2050.8193 345.94327 -3.4612923 -2050.8193 
		-312.99246 197.34949 -2050.8193 -345.43152 197.34949 -2050.8193 345.94327 197.34949 
		-2050.8193 313.50424 197.34949 -2050.8193 -345.43152 46.330727 -1378.1301 -312.99246 
		46.330727 -1378.1301 -312.99246 129.31223 -1378.1301 -345.43152 129.31223 -1378.1301 
		313.50424 46.330727 -1378.1301 313.50424 129.31223 -1378.1301 345.94327 46.330727 
		-1378.1301 345.94327 129.31223 -1378.1301 -312.99246 330.12308 -1378.1301 -345.43152 
		330.12308 -1378.1301 345.94327 330.12308 -1378.1301 313.50424 330.12308 -1378.1301;
	setAttr -s 108 ".vt[0:107]"  0.49383259 16.19912148 89.22462463 -7.83783531 16.19912148 89.22462463
		 0.49383259 17.19912148 89.22462463 -7.83783531 17.19912148 89.22462463 0.49383259 17.19912148 96.87617493
		 -7.83783531 17.19912148 96.87617493 0.49383259 16.19912148 96.87617493 -7.83783531 16.19912148 96.87617493
		 -7.44691658 17.19912148 96.87617493 -7.44691658 16.19912148 96.87617493 -7.44691658 16.19912148 89.22462463
		 -7.44691658 17.19912148 89.22462463 0.10291386 17.19912148 96.87617493 0.10291386 16.19912148 96.87617493
		 0.10291386 16.19912148 89.22462463 0.10291386 17.19912148 89.22462463 0.49383259 19.61906433 89.22462463
		 0.10291386 19.61906433 89.22462463 0.10291386 19.61906624 96.87617493 0.49383259 19.61906624 96.87617493
		 -7.44691658 19.61906433 89.22462463 -7.44691658 19.61906624 96.87617493 -7.83783531 19.61906433 89.22462463
		 -7.83783531 19.61906624 96.87617493 0.49383259 18.58671951 81.81742859 0.10291386 18.58671951 81.81742859
		 0.10291386 19.58671951 81.81742859 0.49383259 19.58671951 81.81742859 -7.44691658 18.58671951 81.81742859
		 -7.44691658 19.58671951 81.81742859 -7.83783531 18.58671951 81.81742859 -7.83783531 19.58671951 81.81742859
		 0.10291386 22.0066642761 81.81742859 0.49383259 22.0066642761 81.81742859 -7.83783531 22.0066642761 81.81742859
		 -7.44691658 22.0066642761 81.81742859 0.49383259 20.18675804 73.7109375 0.10291386 20.18675804 73.7109375
		 0.10291386 21.18675804 73.7109375 0.49383259 21.18675804 73.7109375 -7.44691658 20.18675804 73.7109375
		 -7.44691658 21.18675804 73.7109375 -7.83783531 20.18675804 73.7109375 -7.83783531 21.18675804 73.7109375
		 0.10291386 23.6067028 73.7109375 0.49383259 23.6067028 73.7109375 -7.83783531 23.6067028 73.7109375
		 -7.44691658 23.6067028 73.7109375 0.49383259 21.9067421 57.95299149 0.10291386 21.9067421 57.95299149
		 0.10291386 22.9067421 57.95299149 0.49383259 22.9067421 57.95299149 -7.44691658 21.9067421 57.95299149
		 -7.44691658 22.9067421 57.95299149 -7.83783531 21.9067421 57.95299149 -7.83783531 22.9067421 57.95299149
		 0.10291386 25.32668686 57.95299149 0.49383259 25.32668686 57.95299149 -7.83783531 25.32668686 57.95299149
		 -7.44691658 25.32668686 57.95299149 -7.8316679 16.19912148 26.52771759 0.5 16.19912148 26.52771759
		 -7.8316679 17.19912148 26.52771759 0.5 17.19912148 26.52771759 -7.8316679 17.19912148 18.87617111
		 0.5 17.19912148 18.87617111 -7.8316679 16.19912148 18.87617111 0.5 16.19912148 18.87617111
		 0.10908127 17.19912148 18.87617111 0.10908127 16.19912148 18.87617111 0.10908127 16.19912148 26.52771759
		 0.10908127 17.19912148 26.52771759 -7.44074917 17.19912148 18.87617111 -7.44074917 16.19912148 18.87617111
		 -7.44074917 16.19912148 26.52771759 -7.44074917 17.19912148 26.52771759 -7.8316679 19.61906433 26.52771759
		 -7.44074917 19.61906433 26.52771759 -7.44074917 19.61906624 18.87617111 -7.8316679 19.61906624 18.87617111
		 0.10908127 19.61906433 26.52771759 0.10908127 19.61906624 18.87617111 0.5 19.61906433 26.52771759
		 0.5 19.61906624 18.87617111 -7.8316679 18.58671951 33.93491745 -7.44074917 18.58671951 33.93491745
		 -7.44074917 19.58671951 33.93491745 -7.8316679 19.58671951 33.93491745 0.10908127 18.58671951 33.93491745
		 0.10908127 19.58671951 33.93491745 0.5 18.58671951 33.93491745 0.5 19.58671951 33.93491745
		 -7.44074917 22.0066642761 33.93491745 -7.8316679 22.0066642761 33.93491745 0.5 22.0066642761 33.93491745
		 0.10908127 22.0066642761 33.93491745 -7.8316679 20.18675804 42.041408539 -7.44074917 20.18675804 42.041408539
		 -7.44074917 21.18675804 42.041408539 -7.8316679 21.18675804 42.041408539 0.10908127 20.18675804 42.041408539
		 0.10908127 21.18675804 42.041408539 0.5 20.18675804 42.041408539 0.5 21.18675804 42.041408539
		 -7.44074917 23.6067028 42.041408539 -7.8316679 23.6067028 42.041408539 0.5 23.6067028 42.041408539
		 0.10908127 23.6067028 42.041408539;
	setAttr -s 212 ".ed";
	setAttr ".ed[0:165]"  0 14 0 4 12 0 6 13 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 5 0 9 7 0 8 9 1 10 1 0 9 10 1 11 8 0 12 8 0 13 9 0 12 13 1 14 10 0
		 13 14 1 15 11 0 15 12 0 2 16 0 15 17 0 16 17 0 12 18 0 17 18 0 4 19 0 19 18 0 16 19 0
		 11 20 0 8 21 0 20 21 0 3 22 0 20 22 0 5 23 0 22 23 0 21 23 0 0 24 0 14 25 0 24 25 0
		 15 26 0 2 27 0 24 27 0 10 28 0 11 29 0 1 30 0 28 30 0 3 31 0 30 31 0 25 28 0 26 29 0
		 17 32 0 26 32 0 16 33 0 33 32 0 27 33 0 22 34 0 31 34 0 20 35 0 35 34 0 29 35 0 24 36 0
		 25 37 0 36 37 0 26 38 0 27 39 0 36 39 0 28 40 0 29 41 0 30 42 0 40 42 0 31 43 0 42 43 0
		 37 40 0 38 41 0 32 44 0 38 44 0 33 45 0 45 44 0 39 45 0 34 46 0 43 46 0 35 47 0 47 46 0
		 41 47 0 36 48 0 37 49 0 48 49 0 38 50 0 39 51 0 48 51 0 40 52 0 41 53 0 42 54 0 52 54 0
		 43 55 0 54 55 0 49 52 0 50 53 0 44 56 0 50 56 0 45 57 0 57 56 0 51 57 0 46 58 0 55 58 0
		 47 59 0 59 58 0 53 59 0 60 74 0 64 72 0 66 73 0 60 62 0 61 63 0 62 64 0 63 65 0 64 66 0
		 65 67 0 66 60 0 67 61 0 68 65 0 69 67 0 68 69 1 70 61 0 69 70 1 71 68 0 72 68 0 73 69 0
		 72 73 1 74 70 0 73 74 1 75 71 0 75 72 0 62 76 0 75 77 0 76 77 0 72 78 0 77 78 0 64 79 0
		 79 78 0 76 79 0 71 80 0 68 81 0 80 81 0 63 82 0 80 82 0 65 83 0 82 83 0 81 83 0 60 84 0
		 74 85 0 84 85 0 75 86 0 62 87 0 84 87 0 70 88 0 71 89 0 61 90 0 88 90 0 63 91 0 90 91 0
		 85 88 0 86 89 0;
	setAttr ".ed[166:211]" 77 92 0 86 92 0 76 93 0 93 92 0 87 93 0 82 94 0 91 94 0
		 80 95 0 95 94 0 89 95 0 84 96 0 85 97 0 96 97 0 86 98 0 87 99 0 96 99 0 88 100 0
		 89 101 0 90 102 0 100 102 0 91 103 0 102 103 0 97 100 0 98 101 0 92 104 0 98 104 0
		 93 105 0 105 104 0 99 105 0 94 106 0 103 106 0 95 107 0 107 106 0 101 107 0 96 54 0
		 97 52 0 98 53 0 99 55 0 100 49 0 101 50 0 102 48 0 103 51 0 104 59 0 105 58 0 106 57 0
		 107 56 0;
	setAttr -s 106 -ch 424 ".fc[0:105]" -type "polyFaces" 
		f 4 26 28 -31 -32
		mu 0 4 24 25 26 27
		f 4 1 19 -3 -8
		mu 0 4 4 19 20 6
		f 4 2 21 -1 -10
		mu 0 4 6 20 22 8
		f 4 -11 -9 -7 -5
		mu 0 4 1 10 11 3
		f 4 9 3 5 7
		mu 0 4 12 0 2 13
		f 4 11 8 -13 -14
		mu 0 4 14 5 7 15
		f 4 -16 12 10 -15
		mu 0 4 17 15 7 9
		f 4 -35 36 38 -40
		mu 0 4 28 29 30 31
		f 4 17 13 -19 -20
		mu 0 4 19 14 15 20
		f 4 -22 18 15 -21
		mu 0 4 22 20 15 17
		f 4 -24 22 16 -18
		mu 0 4 19 23 18 14
		f 4 23 27 -29 -26
		mu 0 4 23 19 26 25
		f 4 -2 29 30 -28
		mu 0 4 19 4 27 26
		f 4 -6 24 31 -30
		mu 0 4 4 2 24 27
		f 4 -17 32 34 -34
		mu 0 4 14 18 29 28
		f 4 6 37 -39 -36
		mu 0 4 3 5 31 30
		f 4 -12 33 39 -38
		mu 0 4 5 14 28 31
		f 4 0 41 -43 -41
		mu 0 4 0 21 33 32
		f 4 -4 40 45 -45
		mu 0 4 2 0 32 34
		f 4 14 48 -50 -47
		mu 0 4 16 1 36 35
		f 4 4 50 -52 -49
		mu 0 4 1 3 37 36
		f 4 20 46 -53 -42
		mu 0 4 21 16 35 33
		f 4 -23 43 53 -48
		mu 0 4 18 23 39 38
		f 4 25 54 -56 -44
		mu 0 4 23 25 40 39
		f 4 -27 56 57 -55
		mu 0 4 25 24 41 40
		f 4 -25 44 58 -57
		mu 0 4 24 2 34 41
		f 4 35 59 -61 -51
		mu 0 4 3 30 42 37
		f 4 -37 61 62 -60
		mu 0 4 30 29 43 42
		f 4 -33 47 63 -62
		mu 0 4 29 18 38 43
		f 4 42 65 -67 -65
		mu 0 4 32 33 45 44
		f 4 -46 64 69 -69
		mu 0 4 34 32 44 46
		f 4 49 72 -74 -71
		mu 0 4 35 36 48 47
		f 4 51 74 -76 -73
		mu 0 4 36 37 49 48
		f 4 52 70 -77 -66
		mu 0 4 33 35 47 45
		f 4 -54 67 77 -72
		mu 0 4 38 39 51 50
		f 4 55 78 -80 -68
		mu 0 4 39 40 52 51
		f 4 -58 80 81 -79
		mu 0 4 40 41 53 52
		f 4 -59 68 82 -81
		mu 0 4 41 34 46 53
		f 4 60 83 -85 -75
		mu 0 4 37 42 54 49
		f 4 -63 85 86 -84
		mu 0 4 42 43 55 54
		f 4 -64 71 87 -86
		mu 0 4 43 38 50 55
		f 4 66 89 -91 -89
		mu 0 4 44 45 57 56
		f 4 -70 88 93 -93
		mu 0 4 46 44 56 58
		f 4 73 96 -98 -95
		mu 0 4 47 48 60 59
		f 4 75 98 -100 -97
		mu 0 4 48 49 61 60
		f 4 76 94 -101 -90
		mu 0 4 45 47 59 57
		f 4 -78 91 101 -96
		mu 0 4 50 51 63 62
		f 4 79 102 -104 -92
		mu 0 4 51 52 64 63
		f 4 -82 104 105 -103
		mu 0 4 52 53 65 64
		f 4 -83 92 106 -105
		mu 0 4 53 46 58 65
		f 4 84 107 -109 -99
		mu 0 4 49 54 66 61
		f 4 -87 109 110 -108
		mu 0 4 54 55 67 66
		f 4 -88 95 111 -110
		mu 0 4 55 50 62 67
		f 4 138 140 -143 -144
		mu 0 4 68 69 70 71
		f 4 113 131 -115 -120
		mu 0 4 72 73 74 75
		f 4 114 133 -113 -122
		mu 0 4 75 74 76 77
		f 4 -123 -121 -119 -117
		mu 0 4 78 79 80 81
		f 4 121 115 117 119
		mu 0 4 82 83 84 85
		f 4 123 120 -125 -126
		mu 0 4 86 87 88 89
		f 4 -128 124 122 -127
		mu 0 4 90 89 88 91
		f 4 -147 148 150 -152
		mu 0 4 92 93 94 95
		f 4 129 125 -131 -132
		mu 0 4 73 86 89 74
		f 4 -134 130 127 -133
		mu 0 4 76 74 89 90
		f 4 -136 134 128 -130
		mu 0 4 73 96 97 86
		f 4 135 139 -141 -138
		mu 0 4 96 73 70 69
		f 4 -114 141 142 -140
		mu 0 4 73 72 71 70
		f 4 -118 136 143 -142
		mu 0 4 72 84 68 71
		f 4 -129 144 146 -146
		mu 0 4 86 97 93 92
		f 4 118 149 -151 -148
		mu 0 4 81 87 95 94
		f 4 -124 145 151 -150
		mu 0 4 87 86 92 95
		f 4 112 153 -155 -153
		mu 0 4 83 98 99 100
		f 4 -116 152 157 -157
		mu 0 4 84 83 100 101
		f 4 126 160 -162 -159
		mu 0 4 102 78 103 104
		f 4 116 162 -164 -161
		mu 0 4 78 81 105 103
		f 4 132 158 -165 -154
		mu 0 4 98 102 104 99
		f 4 -135 155 165 -160
		mu 0 4 97 96 106 107
		f 4 137 166 -168 -156
		mu 0 4 96 69 108 106
		f 4 -139 168 169 -167
		mu 0 4 69 68 109 108
		f 4 -137 156 170 -169
		mu 0 4 68 84 101 109
		f 4 147 171 -173 -163
		mu 0 4 81 94 110 105
		f 4 -149 173 174 -172
		mu 0 4 94 93 111 110
		f 4 -145 159 175 -174
		mu 0 4 93 97 107 111
		f 4 154 177 -179 -177
		mu 0 4 100 99 112 113
		f 4 -158 176 181 -181
		mu 0 4 101 100 113 114
		f 4 161 184 -186 -183
		mu 0 4 104 103 115 116
		f 4 163 186 -188 -185
		mu 0 4 103 105 117 115
		f 4 164 182 -189 -178
		mu 0 4 99 104 116 112
		f 4 -166 179 189 -184
		mu 0 4 107 106 118 119
		f 4 167 190 -192 -180
		mu 0 4 106 108 120 118
		f 4 -170 192 193 -191
		mu 0 4 108 109 121 120
		f 4 -171 180 194 -193
		mu 0 4 109 101 114 121
		f 4 172 195 -197 -187
		mu 0 4 105 110 122 117
		f 4 -175 197 198 -196
		mu 0 4 110 111 123 122
		f 4 -176 183 199 -198
		mu 0 4 111 107 119 123
		f 4 178 201 97 -201
		mu 0 4 113 112 124 125
		f 4 -182 200 99 -204
		mu 0 4 114 113 125 126
		f 4 185 206 90 -205
		mu 0 4 116 115 127 128
		f 4 187 207 -94 -207
		mu 0 4 115 117 129 127
		f 4 188 204 100 -202
		mu 0 4 112 116 128 124
		f 4 -190 202 -102 -206
		mu 0 4 119 118 130 131
		f 4 191 208 -112 -203
		mu 0 4 118 120 132 130
		f 4 -194 209 -111 -209
		mu 0 4 120 121 133 132
		f 4 -195 203 108 -210
		mu 0 4 121 114 126 133
		f 4 196 210 -107 -208
		mu 0 4 117 122 134 129
		f 4 -199 211 -106 -211
		mu 0 4 122 123 135 134
		f 4 -200 205 103 -212
		mu 0 4 123 119 131 135;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2564B324-4983-E47A-0EB2-A0935C13ADD7";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D30DB966-4FBE-A91E-6EFE-518015E77FDA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0D286E4E-429D-8129-A131-758373248F1E";
createNode displayLayerManager -n "layerManager";
	rename -uid "909A91D5-4C6B-33E7-E76E-669311F21EB8";
createNode displayLayer -n "defaultLayer";
	rename -uid "13D32B32-4B33-DA4C-2AC5-25962AE9D117";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "33E0E6BB-4A48-1186-1A87-4A89D66D68EE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9C1FB18E-4394-1CA3-573B-7EA898ED5AAE";
	setAttr ".g" yes;
createNode materialInfo -n "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:materialInfo1";
	rename -uid "B272DC22-4420-374D-F479-818A4AB9DEF4";
createNode shadingEngine -n "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:lambert2SG";
	rename -uid "BD65DCE5-4BF3-2DAE-6C6E-748E9C63015B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:Person6FT";
	rename -uid "FAFB5265-4473-19B0-0724-B89B2B0AE927";
	setAttr ".ic" -type "float3" 1 0 0 ;
createNode script -n "BigTent_Proxy:uiConfigurationScriptNode";
	rename -uid "7326B590-4431-4A01-D55E-B69A25E56C4E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2252\n            -height 1557\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2252\\n    -height 1557\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2252\\n    -height 1557\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 500 -size 5000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "BigTent_Proxy:sceneConfigurationScriptNode";
	rename -uid "A8401D88-48BB-5E18-B024-B9808423799E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode objectSet -n "BigTent_Proxy:set1";
	rename -uid "B5DA28BF-4622-512E-BF5D-7C9032EC3ED5";
	setAttr ".ihi" 0;
createNode objectSet -n "BigTent_Proxy:set2";
	rename -uid "833FB05A-4BD7-D677-CA77-1BA83F80E695";
	setAttr ".ihi" 0;
createNode objectSet -n "BigTent_Proxy:set5";
	rename -uid "E354DD2C-468F-6F22-68F2-1EA5323810A4";
	setAttr ".ihi" 0;
createNode objectSet -n "BigTent_Proxy:set8";
	rename -uid "03DDA55A-49B3-E770-3C83-DF8A9E801586";
	setAttr ".ihi" 0;
createNode objectSet -n "BigTent_Proxy:set10";
	rename -uid "93F65111-41E6-074D-C33F-1BB01D62E7BA";
	setAttr ".ihi" 0;
createNode objectSet -n "BigTent_Proxy:set11";
	rename -uid "D551E403-4CEF-BC5D-0C15-F48318B2A26D";
	setAttr ".ihi" 0;
createNode objectSet -n "set1";
	rename -uid "AF20A1B1-45FB-2A6D-E7A9-F8AE3F5E3645";
	setAttr ".ihi" 0;
createNode objectSet -n "set2";
	rename -uid "AE81D92F-4046-ECDC-C8C8-2ABBC7B575BA";
	setAttr ".ihi" 0;
createNode objectSet -n "set3";
	rename -uid "5AACF62D-4145-000A-91DC-F881C7DD1A21";
	setAttr ".ihi" 0;
createNode objectSet -n "set4";
	rename -uid "429ECAA4-44F8-BA51-01B9-70A9938E3990";
	setAttr ".ihi" 0;
createNode objectSet -n "set5";
	rename -uid "CEF6B5F8-421B-82C7-5FED-4896A5941345";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1";
	rename -uid "BD217DC4-44D4-78C1-D5D3-3F9F5F447C78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "978E81FA-405D-487C-B705-FC9786C3AE13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "36E0B768-48DF-FA01-2DCB-61B9F5957C15";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya-legacy/config.ocio";
	setAttr ".vtn" -type "string" "sRGB gamma (legacy)";
	setAttr ".vn" -type "string" "sRGB gamma";
	setAttr ".dn" -type "string" "legacy";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "sRGB gamma (legacy)";
	setAttr ".potn" -type "string" "sRGB gamma (legacy)";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "pCube3Shape.iog.og[0].gid";
connectAttr "set1.mwc" "pCube3Shape.iog.og[0].gco";
connectAttr "groupId2.id" "pCube3Shape.iog.og[1].gid";
connectAttr "set5.mwc" "pCube3Shape.iog.og[1].gco";
connectAttr "groupId3.id" "pCube3Shape.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCube3Shape.iog.og[2].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:lambert2SG.msg" "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:materialInfo1.sg"
		;
connectAttr "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:Person6FT.msg" "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:materialInfo1.m"
		;
connectAttr "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:Person6FT.oc" "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:lambert2SG.ss"
		;
connectAttr "groupId1.msg" "set1.gn" -na;
connectAttr "pCube3Shape.iog.og[0]" "set1.dsm" -na;
connectAttr "groupId2.msg" "set5.gn" -na;
connectAttr "pCube3Shape.iog.og[1]" "set5.dsm" -na;
connectAttr "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:lambert2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "BigTent_Proxy:HeightMeasurement:measureScaleTools_6ft_cm:Person6FT.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCube3Shape.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
// End of CityBridge.ma
