//Maya ASCII 2017 scene
//Name: RoomBoundaries.ma
//Last modified: Wed, Sep 13, 2017 04:21:20 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "pCube1";
	rename -uid "B63BDB0E-46C3-02B3-3041-72BF4FE97DDD";
	setAttr ".t" -type "double3" 0.42430020386627787 0.75790591587249201 0 ;
	setAttr ".s" -type "double3" 9.368703982456136 0.03179019307351915 4.0312455734062587 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "2F9BC289-407B-4988-3E89-93834898F76E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51999999582767487 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "6D69C23B-4880-C66E-FAF9-928DDECD8D23";
	setAttr ".ics" -type "componentList" 3 "f[15]" "f[18]" "f[21:24]";
	setAttr ".ix" -type "matrix" 9.368703982456136 0 0 0 0 0.079252893196311486 0 0 0 0 5.4027046619823693 0
		 42.430020386627788 82.021162767484626 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1737965 0.78058517 0 ;
	setAttr ".rs" 57016;
	setAttr ".lt" -type "double3" 2.8421709430404008e-016 -1.1954845215295802e-015 1.974028511469212 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.7610591501688084 0.7805851810766905 -2.0530277715533005 ;
	setAttr ".cbx" -type "double3" 5.1086521950943462 0.7805851810766905 2.0530277715533005 ;
createNode polySplit -n "polySplit7";
	rename -uid "2AE9DD77-4994-91D8-C21C-AF8FDB9E4D64";
	setAttr -s 7 ".e[0:6]"  0.80000001 0.80000001 0.80000001 0.80000001
		 0.2 0.80000001 0.80000001;
	setAttr -s 7 ".d[0:6]"  -2147483645 -2147483620 -2147483626 -2147483631 -2147483612 -2147483617 
		-2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "009AA3D0-49C8-7F13-5A1B-EFB67C61D44C";
	setAttr -s 7 ".e[0:6]"  0.2 0.2 0.2 0.2 0.80000001 0.2 0.2;
	setAttr -s 7 ".d[0:6]"  -2147483645 -2147483620 -2147483626 -2147483631 -2147483623 -2147483617 
		-2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "F6402274-4B12-FBF4-ED9D-1B9B055A330F";
	setAttr -s 2 ".e[0:1]"  0.2 0.2;
	setAttr -s 2 ".d[0:1]"  -2147483624 -2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "1B41AAFE-41C0-9EC1-1C45-10B117033FF1";
	setAttr -s 2 ".e[0:1]"  0.80000001 0.80000001;
	setAttr -s 2 ".d[0:1]"  -2147483638 -2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "59C519D7-4962-E473-A935-64BE7AD97624";
	setAttr -s 2 ".e[0:1]"  0.69999999 0.69999999;
	setAttr -s 2 ".d[0:1]"  -2147483634 -2147483635;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "88DCE62F-411A-B022-BC9F-8F92CDD26B80";
	setAttr -s 2 ".e[0:1]"  0.30000001 0.30000001;
	setAttr -s 2 ".d[0:1]"  -2147483638 -2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit1";
	rename -uid "20349B88-4F1C-84D1-BC64-FB9E22FAE862";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483638 -2147483637 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube1";
	rename -uid "7DF1D5F8-49B7-56B2-0E4F-9A8F3B5611F8";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyExtrudeFace1.out" "pCubeShape1.i";
connectAttr "polySplit7.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of RoomBoundaries.ma
