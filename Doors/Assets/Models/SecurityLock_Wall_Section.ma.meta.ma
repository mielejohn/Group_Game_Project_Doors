//Maya ASCII 2016 scene
//Name: SecurityLock_Wall_Section.ma.meta.ma
//Last modified: Tue, Sep 12, 2017 09:29:22 PM
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
	rename -uid "5BEF15DC-4491-8370-D5A1-8487E5465CB4";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".t" -type "double3" 0.050751309394836429 0.40120094299316406 -0.13631198883056642 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -8.8817841970012525e-018 0 1.7763568394002505e-017 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "pCube2Shape" -p "pCube2";
	rename -uid "DF893A2A-4BB3-31A8-2C4A-4B8A4E225869";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.280705 0.65570498 0.25 0.625 0.96929502 0.65570503
		 0 0.375 0.96929502 0.625 0.22697049 0.65570498 0.22697058 0.625 0.52302945 0.87500006
		 0.22697058 0.625 0.1987735 0.65570498 0.19877358 0.625 0.55122644 0.87500006 0.19877358
		 0.625 0.11418246 0.65570498 0.1141825 0.625 0.63581753 0.875 0.1141825 0.625 0.087930083
		 0.65570498 0.087930121 0.625 0.66206992 0.87500006 0.087930121 0.68805867 0.087930128
		 0.68805867 0.1141825 0.68805867 0.19877359 0.68805867 0.22697058 0.84528983 0.087930121
		 0.84528977 0.1141825 0.84528983 0.19877358 0.84528983 0.22697058 0.84528983 0.19877358
		 0.84528983 0.22697058 0.68805867 0.22697058 0.68805867 0.19877359 0.84528983 0.087930121
		 0.84528977 0.1141825 0.68805867 0.1141825 0.68805867 0.087930128 0.8249715 0.22697058
		 0.8249715 0.19877358 0.82497144 0.1141825 0.8249715 0.087930121 0.7956816 0.22697058
		 0.7956816 0.19877359 0.7956816 0.1141825 0.7956816 0.087930121 0.76693523 0.22697058
		 0.76693523 0.19877359 0.76693523 0.1141825 0.76693523 0.087930128 0.73669869 0.22697058
		 0.73669869 0.19877359 0.73669869 0.1141825 0.73669869 0.087930128 0.70939791 0.22697058
		 0.70939791 0.19877359 0.70939791 0.1141825 0.70939791 0.087930128;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 59 ".vt[0:58]"  -0.0127 -0.012700005 0.012699995 -0.010846321 -0.012700005 0.012699995
		 -0.0127 0.012700005 0.012699995 -0.010846321 0.012700005 0.012699995 -0.0127 0.012700005 0.0021761418
		 -0.010846321 0.012700005 0.0021761323 -0.0127 -0.012700005 0.0021761418 -0.010846321 -0.012700005 0.0021761323
		 -0.010846321 0.012700005 0.011407461 -0.010846321 -0.012700005 0.011407461 -0.0127 -0.012700005 0.011407461
		 -0.010846321 0.010360222 0.012699995 -0.010846321 0.010360222 0.011407461 -0.010846321 0.010360222 0.0021761323
		 -0.010846321 0.0074953842 0.012699995 -0.010846321 0.0074953842 0.011407461 -0.010846321 0.0074953842 0.0021761323
		 -0.010846321 -0.0010990524 0.012699995 -0.010846321 -0.0010990524 0.011407461 -0.010846321 -0.0010990524 0.0021761323
		 -0.010846321 -0.0037662887 0.012699995 -0.010846321 -0.0037662887 0.011407461 -0.010846321 -0.0037662887 0.0021761323
		 -0.010846324 -0.0037662887 0.010045519 -0.010846324 -0.0010990524 0.010045519 -0.010846321 0.0074953842 0.010045519
		 -0.010846321 0.010360222 0.010045519 -0.010846321 -0.0037662887 0.0034267998 -0.010846321 -0.0010990524 0.0034267998
		 -0.010846321 0.0074953842 0.0034267998 -0.010846321 0.010360222 0.0034267998 -0.00028346249 0.0074953842 0.0036707337
		 -0.00028346249 0.010360222 0.0036707337 -0.00039511063 0.010360222 0.0098582571 -0.00039511063 0.0074953842 0.0098582571
		 -0.00034424206 -0.0037662887 0.0036541172 -0.00034424206 -0.0010990524 0.0036541172
		 -0.0002404837 -0.0010990524 0.0097138211 -0.0002404837 -0.0037662887 0.0097138211
		 0.00047656 0.010360222 0.0042821104 0.00047656 0.0074953842 0.0042821104 0.00036079719 -0.0010990524 0.0042821104
		 0.00036079719 -0.0037662887 0.0042821104 0.00095145724 0.010360222 0.0055150818 0.00095145724 0.0074953842 0.0055150818
		 0.00061986566 -0.0010990524 0.0055150818 0.00061986566 -0.0037662887 0.0055150818
		 0.00095145724 0.010360222 0.0067251753 0.00095145724 0.0074953842 0.0067251753 0.0006198652 -0.0010990524 0.0067251753
		 0.0006198652 -0.0037662887 0.0067251753 0.00095145724 0.010360222 0.0079979952 0.00095145724 0.0074953842 0.0079979952
		 0.00061986479 -0.0010990524 0.0079979952 0.00061986479 -0.0037662887 0.0079979952
		 0.00047656 0.010360222 0.0091472315 0.00047656 0.0074953842 0.0091472315 0.00036079544 -0.0010990524 0.0091472315
		 0.00036079544 -0.0037662887 0.0091472315;
	setAttr -s 94 ".ed[0:93]"  20 17 0 17 14 0 14 11 0 11 3 0 3 2 0 2 0 0
		 0 1 0 1 20 0 4 5 0 5 13 0 13 16 0 16 19 0 19 22 0 22 7 0 7 6 0 6 4 0 11 12 0 12 8 0
		 8 3 0 10 9 0 9 1 0 0 10 0 14 15 0 15 12 0 25 26 0 26 12 0 15 25 0 20 21 0 21 18 0
		 18 17 0 23 24 0 24 18 0 21 23 0 9 21 0 7 9 0 10 6 0 22 27 0 27 23 0 35 36 0 36 41 0
		 41 42 0 42 35 0 24 28 0 28 19 0 16 29 0 29 25 0 31 32 0 32 39 0 39 40 0 40 31 0 26 30 0
		 30 13 0 5 8 0 4 2 0 28 27 0 30 29 0 30 32 0 31 29 0 55 51 0 51 47 0 47 43 0 43 39 0
		 26 33 0 33 55 0 25 34 0 34 33 0 40 44 0 44 48 0 48 52 0 52 56 0 56 34 0 28 36 0 35 27 0
		 57 53 0 53 49 0 49 45 0 45 41 0 24 37 0 37 57 0 23 38 0 38 37 0 42 46 0 46 50 0 50 54 0
		 54 58 0 58 38 0 43 44 0 45 46 0 47 48 0 49 50 0 51 52 0 53 54 0 55 56 0 57 58 0;
	setAttr -s 188 ".n";
	setAttr ".n[0:165]" -type "float3"  -2.5318727e-007 0 0.99999994 -2.5318727e-007
		 0 0.99999994 -2.531873e-007 0 1.000000119209 -2.531873e-007 0 1.000000119209 -2.531873e-007
		 0 1.000000119209 -2.531873e-007 0 1.000000119209 -2.531873e-007 0 1.000000119209
		 -2.531873e-007 0 1.000000119209 -5.1903394e-006 0 -1.000000119209 -5.1903394e-006
		 0 -1.000000119209 -5.1903394e-006 0 -1.000000119209 -5.1903394e-006 0 -1.000000119209
		 -5.1903394e-006 0 -0.99999994 -5.1903394e-006 0 -0.99999994 -5.1903394e-006 0 -1.000000119209
		 -5.1903394e-006 0 -1.000000119209 1 0 0 1 1.8494566e-007 0 1 2.4206358e-007 0 1 0
		 0 0 -1 0 0 -1 0 0 -0.99999994 0 0 -0.99999994 0 1 -6.3308462e-008 0 1 -6.3241394e-008
		 0 1 1.8494566e-007 0 1 0 0 1 -6.450891e-008 0 1 2.530964e-007 0 1 1.8494566e-007
		 0 1 -6.3241394e-008 0 1 0 0 1 0 -6.2901641e-008 0.99999994 -6.3417886e-008 -3.3833821e-008
		 0.99999994 -6.348067e-008 0 0.99999994 0 -3.7723691e-008 1.000000119209 -6.4602993e-008
		 -3.4462296e-008 0.99999994 -6.3417886e-008 -3.3833821e-008 1 0 -6.2901641e-008 0.99999982
		 0 0 1 0 0 1 0 -6.2901641e-008 1 0 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1.000000119209 0
		 0 1 0 0 0.99999994 0 0 0.99999994 0 -3.7723691e-008 1 0 -6.2901641e-008 1 0 0 0.66512769
		 0 -0.74672961 0.66512769 0 -0.74672961 0.88791764 0 -0.46000239 0.88791764 0 -0.46000239
		 1.000000119209 -6.4602993e-008 -3.4462296e-008 0.99999994 -6.4707066e-008 0 1 -6.3556257e-008
		 0 0.99999994 -6.3389216e-008 0 0.99999994 -6.462038e-008 0 1 -6.450891e-008 0 1 -6.3241394e-008
		 0 1 -6.3308462e-008 0 0.99999994 -6.348067e-008 0 0.99999994 -6.3417886e-008 -3.3833821e-008
		 0.62679243 0 -0.77918619 0.62679243 0 -0.77918619 0.83093536 0 -0.55636907 0.83093536
		 0 -0.55636907 1 2.530964e-007 0 0.99999994 2.5482109e-007 0 0.99999994 2.3669297e-007
		 0 1 2.7595635e-007 0 1 2.4206358e-007 0 1 1.8494566e-007 0 0 0.99999994 0 0 1 0 0
		 0.99999994 0 0 0.99999994 0 0 0.99999994 0 -1 5.5745719e-009 0 -1 5.5745719e-009
		 0 -1 5.5745719e-009 0 -1 5.5745715e-009 0 -1 5.5745719e-009 0 1 -6.3556257e-008 0
		 0.99999994 -6.4707066e-008 0 0.99999994 0 0 1 0 0 0.99999994 2.3669297e-007 0 0.99999994
		 2.5482109e-007 0 0.99999994 -6.462038e-008 0 0.99999994 -6.3389216e-008 0 0.02308739
		 0 -0.99973345 0.02308739 0 -0.99973345 0.02308739 0 -0.99973345 0.02308739 0 -0.99973345
		 0 1 -1.8238869e-007 0 1 -1.8238866e-007 0 1 -1.8238867e-007 0 1 -1.8238867e-007 0
		 1 -1.8238867e-007 0 0.99999994 -1.8238866e-007 0 0.99999994 -1.8238865e-007 0 0.99999994
		 -1.8238866e-007 0 0.99999994 -1.8238866e-007 0.017914834 0 0.99983954 0.017914834
		 0 0.99983954 0.017914834 0 0.99983954 0.017914834 0 0.99983954 0 -0.99999994 8.1061621e-008
		 0 -1 8.1061621e-008 0 -1 8.1061629e-008 0 -0.99999994 8.1061621e-008 0 -1 8.1061629e-008
		 0 -1 8.1061621e-008 0 -1 8.1061629e-008 0 -1 8.1061629e-008 0 -0.99999988 8.1061621e-008
		 0.021639932 0 -0.99976587 0.021639932 0 -0.99976587 0.021639932 0 -0.99976587 0.021639932
		 0 -0.99976587 0 0.99999994 8.4755118e-009 0 0.99999994 8.4755118e-009 0 1 8.4755127e-009
		 0 0.99999994 8.4755118e-009 0 0.99999994 8.4755127e-009 0 0.99999994 8.4755127e-009
		 0 0.99999994 8.4755118e-009 0 0.99999994 8.4755118e-009 0 0.99999988 8.4755118e-009
		 0.031259671 0 0.9995113 0.031259671 0 0.9995113 0.031259671 0 0.9995113 0.031259671
		 0 0.9995113 0 -0.99999994 -4.1725606e-008 0 -0.99999994 -4.1725603e-008 0 -1 -4.1725606e-008
		 0 -0.99999994 -4.1725606e-008 0 -0.99999994 -4.1725603e-008 0 -1 -4.172561e-008 0
		 -0.99999994 -4.1725606e-008 0 -0.99999994 -4.1725603e-008 0 -0.99999988 -4.1725606e-008
		 0.83093536 0 -0.55636907 0.83093536 0 -0.55636907 0.98162621 0 -0.19081424 0.98162621
		 0 -0.19081424 0.88791764 0 -0.46000239 0.88791764 0 -0.46000239 0.99442446 0 -0.10545097
		 0.99442446 0 -0.10545097 0.98162621 0 -0.19081424 0.98162621 0 -0.19081424 1 0 0
		 1 0 0 0.99442446 0 -0.10545097 0.99442446 0 -0.10545097 1 0 3.600889e-007 1 0 3.600889e-007
		 1 0 0 1 0 0;
	setAttr ".n[166:187]" -type "float3"  0.9813149 0 0.19240829 0.9813149 0 0.19240829
		 1 0 3.600889e-007 1 0 3.600889e-007 0.99432802 0 0.10635606 0.99432802 0 0.10635606
		 0.9813149 0 0.19240829 0.9813149 0 0.19240829 0.81004918 0 0.58636189 0.81004918
		 0 0.58636189 0.99432802 0 0.10635606 0.99432802 0 0.10635606 0.89391917 0 0.44822848
		 0.89391917 0 0.44822848 0.81004918 0 0.58636189 0.81004918 0 0.58636189 0.63208675
		 0 0.77489758 0.63208675 0 0.77489758 0.89391917 0 0.44822848 0.89391917 0 0.44822848
		 0.68580127 0 0.72778893 0.68580127 0 0.72778893;
	setAttr -s 37 -ch 188 ".fc[0:36]" -type "polyFaces" 
		f 8 0 1 2 3 4 5 6 7
		mu 0 8 31 27 23 19 3 2 0 1
		f 8 8 9 10 11 12 13 14 15
		mu 0 8 4 5 21 25 29 33 7 6
		f 4 16 17 18 -4
		mu 0 4 19 20 15 3
		f 4 19 20 -7 21
		mu 0 4 18 16 9 8
		f 4 22 23 -17 -3
		mu 0 4 23 24 20 19
		f 4 24 25 -24 26
		mu 0 4 37 38 20 24
		f 4 27 28 29 -1
		mu 0 4 31 32 28 27
		f 4 30 31 -29 32
		mu 0 4 35 36 28 32
		f 4 -21 33 -28 -8
		mu 0 4 1 17 32 31
		f 4 -15 34 -20 35
		mu 0 4 6 7 16 18
		f 6 -14 36 37 -33 -34 -35
		mu 0 6 10 34 39 35 32 17
		f 4 38 39 40 41
		mu 0 4 47 48 53 54
		f 10 42 43 -12 44 45 -27 -23 -2 -30 -32
		mu 0 10 36 40 30 26 41 37 24 23 27 28
		f 4 46 47 48 49
		mu 0 4 43 44 51 52
		f 6 50 51 -10 52 -18 -26
		mu 0 6 38 42 22 11 15 20
		f 5 -53 -9 53 -5 -19
		mu 0 5 14 5 4 2 3
		f 5 -54 -16 -36 -22 -6
		mu 0 5 2 13 12 18 0
		f 4 -44 54 -37 -13
		mu 0 4 30 40 39 34
		f 4 -52 55 -45 -11
		mu 0 4 22 42 41 26
		f 4 -56 56 -47 57
		mu 0 4 41 42 44 43
		f 9 58 59 60 61 -48 -57 -51 62 63
		mu 0 9 67 63 59 55 51 44 42 38 45
		f 4 -25 64 65 -63
		mu 0 4 38 37 46 45
		f 9 -46 -58 -50 66 67 68 69 70 -65
		mu 0 9 37 41 43 52 56 60 64 68 46
		f 4 -55 71 -39 72
		mu 0 4 39 40 48 47
		f 9 73 74 75 76 -40 -72 -43 77 78
		mu 0 9 69 65 61 57 53 48 40 36 49
		f 4 -31 79 80 -78
		mu 0 4 36 35 50 49
		f 9 -38 -73 -42 81 82 83 84 85 -80
		mu 0 9 35 39 47 54 58 62 66 70 50
		f 4 -49 -62 86 -67
		mu 0 4 52 51 55 56
		f 4 -41 -77 87 -82
		mu 0 4 54 53 57 58
		f 4 -87 -61 88 -68
		mu 0 4 56 55 59 60
		f 4 -88 -76 89 -83
		mu 0 4 58 57 61 62
		f 4 -89 -60 90 -69
		mu 0 4 60 59 63 64
		f 4 -90 -75 91 -84
		mu 0 4 62 61 65 66
		f 4 -91 -59 92 -70
		mu 0 4 64 63 67 68
		f 4 -92 -74 93 -85
		mu 0 4 66 65 69 70
		f 4 -93 -64 -66 -71
		mu 0 4 68 67 45 46
		f 4 -94 -79 -81 -86
		mu 0 4 70 69 49 50;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode materialInfo -n "materialInfo1";
	rename -uid "6B2890E0-45EF-E2B0-B54B-9EA44471350C";
createNode shadingEngine -n "pCube1SG";
	rename -uid "1B2BAEA4-4DCB-331A-3987-74BCA91A3203";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
createNode lambert -n "lambert2";
	rename -uid "EBB458E0-4ADE-31C1-A0F2-86983FF43595";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5F88897B-4B6B-AE83-8229-70A52D3EB638";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
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
connectAttr "pCube1SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert2.oc" "pCube1SG.ss";
connectAttr "pCube2Shape.iog" "pCube1SG.dsm" -na;
connectAttr "pCylinder4Shape.iog.og[0]" "pCube1SG.dsm" -na;
connectAttr "pCylinder4Shape.ciog.cog[0]" "pCube1SG.dsm" -na;
connectAttr "pCube1Shape.iog.og[0]" "pCube1SG.dsm" -na;
connectAttr "pCube1Shape.ciog.cog[0]" "pCube1SG.dsm" -na;
connectAttr "pCylinder5Shape.iog.og[0]" "pCube1SG.dsm" -na;
connectAttr "pCylinder1Shape.iog.og[1]" "pCube1SG.dsm" -na;
connectAttr "pCylinder1Shape.ciog.cog[1]" "pCube1SG.dsm" -na;
connectAttr "pCylinder6Shape.iog.og[0]" "pCube1SG.dsm" -na;
connectAttr "groupId1.msg" "pCube1SG.gn" -na;
connectAttr "groupId2.msg" "pCube1SG.gn" -na;
connectAttr "groupId3.msg" "pCube1SG.gn" -na;
connectAttr "groupId4.msg" "pCube1SG.gn" -na;
connectAttr "groupId5.msg" "pCube1SG.gn" -na;
connectAttr "groupId6.msg" "pCube1SG.gn" -na;
connectAttr "groupId7.msg" "pCube1SG.gn" -na;
connectAttr "groupId8.msg" "pCube1SG.gn" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pCube1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pCube1SG.message" ":defaultLightSet.message";
connectAttr "pCube1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
// End of SecurityLock_Wall_Section.ma.meta.ma
