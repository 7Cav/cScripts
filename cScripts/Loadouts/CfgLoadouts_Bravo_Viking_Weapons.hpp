class cScripts_B_B_Weapons_Rifleman_F: Cav_B_Bravo_base_F {
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Weapons"};
    role = "weapons";
};

class Cav_B_B_Weapons_M240B_FireTeamLeader_F: cScripts_B_B_Weapons_Rifleman_F {
    displayName = "Machine Gun Fireteam Leader ";
    scope = 2;
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",29],["rhs_mag_M664_red_cluster",1],""],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_Flashlight_XL50",1],["ACE_Chemlight_IR",1,1],["kat_Painkiller",2,10]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["SmokeShellPurple",1,1],["SmokeShellRed",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],["rhs_mag_m713_Red",2,1],["rhs_mag_m714_White",6,1],["ACE_HuntIR_M203",2,1],["rhs_mag_M664_red_cluster",1,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30]]],["USP_TACTICAL_PACK",[["ACE_HuntIR_monitor",1],["USP_PVS31_HIGH",1],["ACE_EntrenchingTool",1],["rhsusf_100Rnd_762x51_m62_tracer",3,100]]],"USP_OPS_FASTXP_TAN_MC_06","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];    
    icon = "iconManLeader";
};
class Cav_B_B_Weapons_M240B_Machinegunner_F: cScripts_B_B_Weapons_Rifleman_F {
    displayName = "Machine Gunner";
    scope = 2;
    loadout = [["rhs_weap_m240B","rhsusf_acc_ARDEC_M240","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_MDO",["rhsusf_100Rnd_762x51_m62_tracer",100],[],""],[],["UK3CB_P320_DES","","","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS2_KP_OR_MC",[["ACE_quikclot",8],["kat_chestSeal",2],["kat_guedel",1],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_packingBandage",16],["ACE_splint",2],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_MGB",[["SmokeShell",2,1],["rhsusf_100Rnd_762x51_m62_tracer",4,100],["HandGrenade",2,1],["UK3CB_P320_9x19_17Rnd",2,17]]],["USP_PACK_POINTMAN",[["USP_PVS15",1],["rhsusf_100Rnd_762x51_m62_tracer",2,100]]],"USP_OPSCORE_FASTMTC_CW","",[],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    icon = "iconManMG";
};

class Cav_B_B_Weapons_M240B_MachinegunnerAmmoBearer_F: cScripts_B_B_Weapons_Rifleman_F {
    displayName = "Machine Gun Assistant";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],""],["dzn_MG_Tripod_M122A1_M240Mount_Carry","","","",[],[],""],[],["USP_G3C_RS2_KP_OR_MC",[["ACE_quikclot",8],["kat_chestSeal",2],["kat_guedel",1],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_splint",2],["ACE_packingBandage",16],["ACE_EarPlugs",1],["ACE_CableTie",2],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_MGB",[["SmokeShell",4,1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30]]],["B_Kitbag_mcamo",[["USP_PVS15",1],["ACE_EntrenchingTool",1],["rhsusf_100Rnd_762x51_m62_tracer",6,100],["ACE_SpareBarrel",1,1]]],"USP_OPSCORE_FASTMTC_CW","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};

class Cav_B_B_Weapons_MAAWS_MAAWSGunner_F: cScripts_B_B_Weapons_Rifleman_F {
    displayName = "MAAWS Gunner";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],["launch_MRAWS_green_F","","","",["MRAWS_HEAT_F",1],[],""],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["kat_chestSeal",2],["kat_guedel",1],["ACE_quikclot",8],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_Flashlight_XL50",1],["kat_PainkillerItem",2],["kat_Painkiller",1,10]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["HandGrenade",2,1],["SmokeShell",3,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30]]],["rhsusf_falconii_mc",[["ACE_EntrenchingTool",1],["USP_PVS15",1],["MRAWS_HE_F",2,1],["MRAWS_HEAT_F",1,1]]],"USP_OPS_FASTXP_TAN_MC_04","",[],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    icon = "iconManAT";
};

class Cav_B_B_Weapons_MAAWS_MAAWSAssistant_F: cScripts_B_B_Weapons_Rifleman_F {
    displayName = "MAAWS Assistant";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],""],[],[],["USP_G3C_RS2_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",16],["kat_chestSeal",2],["kat_guedel",1],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_quikclot",8],["ACE_CableTie",2],["kat_Painkiller",2,10],["ACE_Chemlight_IR",1,1]]],["USP_CRYE_JPC_ASLTB",[["SmokeShell",4,1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30]]],["B_Carryall_mcamo",[["USP_PVS15",1],["ACE_EntrenchingTool",1],["MRAWS_HEAT_F",3,1],["MRAWS_HE_F",2,1]]],"USP_OPSCORE_FASTMTC_CTW","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};

class Cav_B_B_Weapons_Mortar_FireTeamLeader_F: cScripts_B_B_Weapons_Rifleman_F {
    displayName = "Mortar Team Leader";
    scope = 2;
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],["rhs_mag_M664_red_cluster",1],""],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_EarPlugs",1],["ACE_CableTie",2],["ACE_splint",2],["ACE_Flashlight_XL50",1],["ACE_Chemlight_IR",1,1],["kat_Painkiller",2,10]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["SmokeShellPurple",1,1],["SmokeShellRed",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],["rhs_mag_m713_Red",2,1],["rhs_mag_m714_White",6,1],["ACE_HuntIR_M203",2,1],["rhs_mag_M664_red_cluster",1,1],["UK3CB_P320_9x19_17Rnd",2,17],["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30]]],["USP_TACTICAL_PACK",[["ACE_HuntIR_monitor",1],["USP_PVS31_HIGH",1],["ACE_EntrenchingTool",1],["NDS_M_6Rnd_60mm_HE",3,6]]],"USP_OPS_FASTXP_TAN_MC_06","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_B_Weapons_Mortar_M224_F: cScripts_B_B_Weapons_Rifleman_F {
    displayName = "Mortar Gunner";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],""],[],[],["USP_G3C_RS2_KP_OR_MC",[["ACE_quikclot",8],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_packingBandage",16],["kat_chestSeal",2],["kat_guedel",1],["ACE_CableTie",2],["ACE_splint",2],["kat_Painkiller",2,10],["ACE_Chemlight_IR",2,1]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["USP_PVS15",1],["SmokeShell",2,1],["HandGrenade",2,1],["SmokeShellPurple",1,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30]]],["NDS_B_M224_mortar",[]],"USP_OPSCORE_FASTMTC_CW","",[],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    icon = "iconStaticMortar";
};
class Cav_B_B_Weapons_Mortar_Assistant_F: cScripts_B_B_Weapons_Rifleman_F {
    displayName = "Mortar Assistant";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],""],[],[],["USP_G3C_RS2_KP_OR_MC",[["ACE_quikclot",8],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_PlottingBoard",1],["ACE_microDAGR",1],["ACE_packingBandage",16],["kat_chestSeal",2],["kat_guedel",1],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_artilleryTable",1],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_ASLTB",[["SmokeShell",4,1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30]]],["B_Carryall_mcamo",[["USP_PVS15",1],["ACE_EntrenchingTool",1],["NDS_M_6Rnd_60mm_HE",3,6],["NDS_M_6Rnd_60mm_HE_0",2,6]]],"USP_OPSCORE_FASTMTC_CW","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};
