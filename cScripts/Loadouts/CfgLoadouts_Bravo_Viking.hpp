class Cav_B_B_Scout_Base_F: Cav_B_Bravo_base_F {
    platoon = 2;
    scope = 0;
    role = "weapons";
};

class Cav_B_B_Scout_Officer_F: Cav_B_B_Scout_Base_F {
    displayName = "Viking Platoon Staff";
    scope = 1;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_m4a1_blockII","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG3",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["kat_chestSeal",2],["kat_guedel",1],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_CableTie",2],["ACE_Chemlight_IR",2,1],["kat_Painkiller",2,10]]],["USP_CRYE_CPC_LEAD_BELT_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["UK3CB_P320_9x19_17Rnd",2,17],["SmokeShellPurple",1,1],["SmokeShellRed",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",9,30]]],["USP_TACTICAL_PACK",[["USP_PVS31_LOW",1],["KNB_PanelRed",1],["ACE_EntrenchingTool",1]]],"USP_OPS_FASTXP_TAN_MC_04","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]];
    icon = "iconManOfficer";
    role = "officer";
};

class Cav_B_B_Scout_PlatoonLeader_F: Cav_B_B_Scout_Officer_F {
    displayName = "Platoon Leader";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG3",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["kat_chestSeal",2],["kat_guedel",1],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_CableTie",2],["ACE_Chemlight_IR",2,1],["kat_Painkiller",2,10]]],["USP_CRYE_CPC_LEAD_BELT_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["UK3CB_P320_9x19_17Rnd",2,17],["SmokeShellPurple",1,1],["SmokeShellRed",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",9,30]]],["USP_TACTICAL_PACK",[["USP_PVS31_LOW",1],["KNB_PanelRed",1],["ACE_EntrenchingTool",1]]],"USP_OPS_FASTXP_TAN_MC_04","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]];
};
class Cav_B_B_Scout_PlatoonSergeant_F: Cav_B_B_Scout_Officer_F {
    displayName = "Platoon Sergeant";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_T1_high",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS2_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",16],["kat_chestSeal",2],["kat_guedel",1],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_quikclot",8],["ACE_CableTie",2],["kat_Painkiller",2,10],["ACE_Chemlight_IR",1,1]]],["USP_CRYE_JPC_ASLTB",[["UK3CB_P320_9x19_17Rnd",2,17],["SmokeShell",4,1],["SmokeShellBlue",2,1],["HandGrenade",2,1],["SmokeShellPurple",1,1],["SmokeShellRed",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",7,30]]],["USP_TACTICAL_PACK",[["USP_PVS15",1],["ACE_EntrenchingTool",1],["KNB_PanelYellow",1],["ToolKit",1]]],"USP_OPSCORE_FASTMTC_CSW","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    abilityEngineer = 1;
};

class Cav_B_B_Scout_PlatoonMedic_F: Cav_B_B_Scout_Officer_F {
    displayName = "Platoon Medic";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],""],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_tourniquet",10],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_IR_Strobe_Item",2],["ACE_CableTie",2],["ACE_epinephrine",6],["kat_Painkiller",2,10],["kat_Carbonate",2,10],["ACE_Chemlight_IR",2,1],["kat_Penthrox",4,10]]],["USP_CRYE_CPC_MEDIC_BELT_MC",[["ACE_surgicalKit",1],["kat_IV_16",15],["kat_amiodarone",5],["kat_atropine",5],["ACE_adenosine",3],["kat_chestSeal",10],["kat_EACA",10],["kat_fentanyl",5],["kat_ketamine",5],["kat_larynx",10],["kat_lidocaine",10],["kat_nalbuphine",10],["kat_naloxone",5],["kat_nitroglycerin",10],["kat_norepinephrine",10],["kat_phenylephrine",10],["kat_stethoscope",1],["kat_Pulseoximeter",5],["kat_IO_FAST",5],["kat_aatKit",5],["ACE_splint",2],["kat_accuvac",1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",6,30],["SmokeShellBlue",2,1],["SmokeShellPurple",1,1],["kat_Penthrox",5,10]]],["USP_TACTICAL_PACK",[["ACE_plasmaIV",5],["ACE_plasmaIV_500",4],["ACE_salineIV",1],["ACE_elasticBandage",30],["ACE_packingBandage",10],["ACE_quikclot",30],["ACE_salineIV_250",2],["USP_PVS31",1],["ACE_splint",4]]],"USP_OPS_FASTXP_TAN_MC_03","USP_MFRAME_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 2;
    role = "medic";
    icon = "iconManMedic";
};

class Cav_B_B_Scout_SquadLeader_F: Cav_B_B_Scout_Base_F {
    displayName = "Squad Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],["rhs_mag_M664_red_cluster",1],""],[],["UK3CB_P320_DES","","","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["kat_Painkiller",2,10],["ACE_Chemlight_IR",1,1]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["SmokeShellPurple",1,1],["SmokeShellRed",2,1],["UK3CB_P320_9x19_17Rnd",2,17],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",7,30]]],["USP_TACTICAL_PACK",[["ACE_HuntIR_monitor",1],["USP_PVS31_HIGH",1],["ACE_SpraypaintGreen",1],["rhs_mag_M664_red_cluster",1,1],["rhs_mag_m713_Red",4,1],["rhs_mag_m714_White",4,1]]],"USP_OPS_FASTXP_TAN_MC_06","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    role = "squadleader";
    icon = "iconManLeader";
};

class Cav_B_B_Scout_TeamLeader_F: Cav_B_B_Scout_Base_F {
    displayName = "Team Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Rifle_Squad"};
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",29],["rhs_mag_M664_red_cluster",1],""],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_Chemlight_IR",1,1],["kat_Painkiller",2,10]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["SmokeShellPurple",1,1],["SmokeShellRed",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],["rhs_mag_m713_Red",2,1],["rhs_mag_m714_White",6,1],["ACE_HuntIR_M203",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30],["UK3CB_P320_9x19_17Rnd",2,17],["rhs_mag_M664_red_cluster",1,1]]],["USP_TACTICAL_PACK",[["ACE_HuntIR_monitor",1],["USP_PVS31_HIGH",1],["ACE_EntrenchingTool",1],["rhsusf_200Rnd_556x45_soft_pouch",2,200]]],"USP_OPS_FASTXP_TAN_MC_06","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    role = "fireteamleader";
    icon = "iconManLeader";
};
class Cav_B_B_Scout_AutomaticRifleman_F: Cav_B_B_Scout_Base_F {
    displayName = "Automatic Rifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Rifle_Squad"};
    loadout = [["rhs_weap_m249_light_S_vfg2","rhsusf_acc_SFMB556","rhsusf_acc_anpeq16a","rhsusf_acc_ACOG_RMR_3d",["rhsusf_200Rnd_556x45_mixed_soft_pouch",200],[],"rhsusf_acc_grip4_bipod"],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_KP_OR_MC",[["ACE_quikclot",8],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",16],["kat_chestSeal",2],["kat_guedel",1],["ACE_splint",2],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_Flashlight_XL50",1],["kat_Painkiller",4,10]]],["USP_CRYE_JPC_MGB_RGR",[["HandGrenade",2,1],["SmokeShell",2,1],["rhsusf_200Rnd_556x45_mixed_soft_pouch",4,200]]],["USP_ZIPON_PANEL_CPC_MC",[["USP_PVS31",1],["rhsusf_200Rnd_556x45_mixed_soft_pouch",2,200]]],"USP_OPS_FASTXP_TAN_MC_04","",[],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    icon = "iconManMG";
};
class Cav_B_B_Scout_Grenadier_F: Cav_B_B_Scout_Base_F {
    displayName = "Grenadier";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Rifle_Squad"};
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],["rhs_mag_M433_HEDP",1],""],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_Chemlight_IR",2,1],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_GRB_RGR",[["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_M433_HEDP",9,1],["rhs_mag_m713_Red",2,1],["ACE_HuntIR_M203",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30],["rhs_mag_m714_White",6,1]]],["USP_ZIPON_PACK_CPC_MC",[["ACE_EntrenchingTool",1],["USP_PVS15",1],["rhs_mag_M433_HEDP",12,1]]],"USP_OPS_FASTXP_TAN_MC_01","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_B_Scout_Rifleman_F: Cav_B_B_Scout_Base_F {
    displayName = "Rifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Rifle_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_splint",2],["ACE_CableTie",2],["ACE_EarPlugs",1],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_ASLTB_RGR",[["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",9,30]]],["USP_ZIPON_PACK_CPC_MC",[["USP_PVS31",1],["ACE_EntrenchingTool",1]]],"USP_OPS_FASTXP_TAN_MC_01","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_B_Scout_CombatLifeSaver_F: Cav_B_B_Scout_Base_F {
    displayName = "Combat Lifesaver";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Rifle_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_CableTie",2],["kat_chestSeal",2],["kat_guedel",1],["kat_Painkiller",2,10]]],["USP_CRYE_CPC_MEDIC_MC",[["HandGrenade",4,1],["SmokeShell",4,1],["ACE_Chemlight_IR",2,1],["ACE_Chemlight_HiBlue",2,1],["SmokeShellBlue",2,1],["SmokeShellPurple",1,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30]]],["USP_DELTA_BAG_MC",[["ACE_EntrenchingTool",1],["ACE_packingBandage",40],["ACE_quikclot",40],["ACE_splint",8],["kat_chestSeal",10],["kat_guedel",10],["kat_ncdKit",5],["kat_pocketBVM",1],["kat_accuvac",1],["USP_PVS15",1],["ACE_epinephrine",6],["kat_phenylephrineAuto",6],["ACE_tourniquet",4],["kat_Painkiller",3,10],["kat_Carbonate",1,10]]],"USP_OPS_FASTXP_TAN_MC_02","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 1;
    role = "cls";
    icon = "iconManMedic";
};
class Cav_B_B_Scout_DMR_F_Local: Cav_B_B_Scout_Base_F {
    displayName = "Designated Marksman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Rifle_Squad"};
    loadout = [["rhs_weap_sr25_ec","","rhsusf_acc_anpeq15side_bk","optic_AMS",["rhsusf_20Rnd_762x51_SR25_m118_special_Mag",20],[],"rhsusf_acc_harris_bipod"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_splint",2],["ACE_EarPlugs",1],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_DMB_RGR",[["HandGrenade",2,1],["SmokeShell",4,1],["rhsusf_20Rnd_762x51_SR25_m118_special_Mag",6,20],["rhsusf_20Rnd_762x51_SR25_m62_Mag",3,20]]],["USP_ZIPON_PANEL_CPC_SMK_MC",[["ACE_EntrenchingTool",1],["USP_PVS31",1]]],"USP_OPS_FASTXP_TAN_MC_04","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};

//Stryker Crew
class Cav_B_B_Ifv_Commander_F: Cav_B_B_Scout_Base_F {
    displayName = "Stryker Vehicle Commander";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Rifle_Squad"};
    loadout = [["rhs_weap_mk18_grip2_bk","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15A","rhsusf_acc_T1_high",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_CableTie",2],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_packingBandage",16],["ACE_quikclot",8],["kat_chestSeal",2],["kat_guedel",1],["kat_PainkillerItem",2],["ACE_splint",2],["ACE_tourniquet",4]]],["USP_CRYE_JPC_FS",[["HandGrenade",2,1],["SmokeShell",2,1],["SmokeShellPurple",1,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",3,30]]],["USP_TACTICAL_PACK",[["USP_ACC_PVS31_BLK",1],["ACE_EntrenchingTool",1],["ToolKit",1]]],"rhsusf_cvc_green_ess","",[],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    abilityEngineer = 1;
    role = "strykercrew";
};
class Cav_B_B_Ifv_Driver_F: Cav_B_B_Scout_Base_F {
    displayName = "Stryker Driver";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Rifle_Squad"};
    loadout = [["rhs_weap_mk18_grip2_bk","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15A","rhsusf_acc_T1_high",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_CableTie",2],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_packingBandage",16],["ACE_quikclot",8],["kat_chestSeal",2],["kat_guedel",1],["kat_PainkillerItem",2],["ACE_splint",2],["ACE_tourniquet",4]]],["USP_CRYE_JPC_FS",[["HandGrenade",2,1],["SmokeShell",2,1],["SmokeShellPurple",1,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",3,30]]],["USP_TACTICAL_PACK",[["USP_ACC_PVS31_BLK",1],["ACE_EntrenchingTool",1],["ToolKit",1]]],"rhsusf_cvc_green_ess","",[],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    abilityEngineer = 1;
    role = "strykercrew";
};

// Named
class Cav_B_B_Scout_SquadLeader_2_1_F: Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_1";
};
class Cav_B_B_Scout_SquadLeader_2_2_F: Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_2";
};
class Cav_B_B_Scout_SquadLeader_2_3_F: Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    //insignia = "cav_insignia_charlie_1_3";
};
class Cav_B_B_Scout_SquadLeader_2_4_F: Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    //insignia = "cav_insignia_charlie_1_4";
};

// Teams
class Cav_B_B_Scout_PlatoonLead_2_6_F: Cav_B_B_Scout_PlatoonLeader_F {
    scope = 1;
    insignia = "cav_insignia_bravo_2";
};
class Cav_B_B_Scout_PlatoonLead_2_5_F: Cav_B_B_Scout_PlatoonSergeant_F {
    scope = 1;
    insignia = "cav_insignia_bravo_2";
};
class Cav_B_B_Scout_PlatoonMedic_2_7_F: Cav_B_B_Scout_PlatoonMedic_F { scope = 1; };

class Cav_B_B_Scout_Alpha_TeamLeader_F: Cav_B_B_Scout_TeamLeader_F { scope = 1; };
class Cav_B_B_Scout_Alpha_AutomaticRifleman_F: Cav_B_B_Scout_AutomaticRifleman_F { scope = 1; };
class Cav_B_B_Scout_Alpha_Grenadier_F: Cav_B_B_Scout_Grenadier_F { scope = 1; };
class Cav_B_B_Scout_Alpha_Rifleman_F: Cav_B_B_Scout_Rifleman_F { scope = 1; };
class Cav_B_B_Scout_Alpha_CombatLifeSaver_F: Cav_B_B_Scout_CombatLifeSaver_F { scope = 1; };

class Cav_B_B_Scout_Bravo_TeamLeader_F: Cav_B_B_Scout_TeamLeader_F { scope = 1; };
class Cav_B_B_Scout_Bravo_AutomaticRifleman_F: Cav_B_B_Scout_AutomaticRifleman_F { scope = 1; };
class Cav_B_B_Scout_Bravo_Grenadier_F: Cav_B_B_Scout_Grenadier_F { scope = 1; };
class Cav_B_B_Scout_Bravo_Rifleman_F: Cav_B_B_Scout_Rifleman_F { scope = 1; };
class Cav_B_B_Scout_Bravo_CombatLifeSaver_F: Cav_B_B_Scout_CombatLifeSaver_F { scope = 1; };

// Depricated (Will be removed eventually)
class Cav_B_B_Scout_Bravo_TeamLead_F: Cav_B_B_Scout_Bravo_TeamLeader_F {};
class Cav_B_B_Scout_Alpha_TeamLead_F: Cav_B_B_Scout_Alpha_TeamLeader_F {};
