//Maya ASCII 2016 scene
//Name: WallFrame.ma
//Last modified: Mon, Sep 11, 2017 02:45:06 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "pCube2";
	rename -uid "0C8B315D-4377-5BF6-9A89-FDBF3CCD0859";
	setAttr ".t" -type "double3" -0.16839876923513949 9.5299909969612084 0 ;
	setAttr ".s" -type "double3" 0.35300981000451515 1 38.448320661147889 ;
createNode mesh -n "pCubeShape1" -p "pCube2";
	rename -uid "7A327D5C-4E64-B12D-4FEC-A1A6D4E3B663";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "1D61AED3-48C3-EF7C-ED18-D4A111A2E135";
	setAttr ".ics" -type "componentList" 2 "f[8]" "f[10]";
	setAttr ".ix" -type "matrix" 0.35300981000451515 0 0 0 0 1 0 0 0 0 38.448320661147889 0
		 -16.839876923513948 952.99909969612088 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.16839877 9.0299911 0 ;
	setAttr ".rs" 34253;
	setAttr ".lt" -type "double3" 0 1.4543842796305261e-016 9.5850035500202448 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.34490367423739704 9.0299909969612084 -19.224160330573945 ;
	setAttr ".cbx" -type "double3" 0.00810613576711809 9.0299909969612084 19.224160330573945 ;
createNode polySplit -n "polySplit2";
	rename -uid "03B10185-4695-3DF3-245A-8AB45D089CD1";
	setAttr -s 5 ".e[0:4]"  0.807715 0.807715 0.192285 0.192285 0.807715;
	setAttr -s 5 ".d[0:4]"  -2147483638 -2147483637 -2147483635 -2147483636 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit1";
	rename -uid "1CC764E1-4767-E430-551E-8FBB86AD12DB";
	setAttr -s 5 ".e[0:4]"  0.44259101 0.44259101 0.55740899 0.55740899
		 0.44259101;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483641 -2147483637 -2147483638 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube1";
	rename -uid "0DDDD0B1-433E-2A47-679A-939718BDB35F";
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyExtrudeFace1.out" "pCubeShape1.i";
connectAttr "polySplit2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of WallFrame.ma
