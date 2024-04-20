class Cav_B_B_Scout_Base_F: Cav_B_Bravo_base_F {
    platoon = 2;
    scope = 0;
    role = "weapons";
};

class Cav_B_B_Scout_Officer_F: Cav_B_B_Scout_Base_F {
    displayName = "Viking Platoon Staff";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_mk18_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["kat_chestSeal",2],["kat_guedel",1],["ACE_splint",1]]],["USP_CRYE_CPC_LEAD_BELT_MC",[["ItemcTabHCam",1],["ACE_EarPlugs",1],["HandGrenade",2,1],["SmokeShell",4,1],["ACE_IR_Strobe_Item",4],["SmokeShellBlue",2,1],["UK3CB_P320_9x19_17Rnd",2,17],["ACE_HandFlare_Yellow",2,1],["rhs_mag_mk3a2",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,30],["30Rnd_556x45_Stanag_red",4,30],["SmokeShellPurple",1,1],["SmokeShellYellow",2,1]]],["USP_TACTICAL_PACK",[["ACE_HuntIR_monitor",1],["ACE_splint",8],["ACE_tourniquet",8],["ACE_SpraypaintGreen",1],["ACE_artilleryTable",1],["ACE_CableTie",5],["ACE_EarPlugs",2],["kat_Painkiller",2,10],["B_IR_Grenade",2,1],["SmokeShellGreen",2,1],["SmokeShellYellow",2,1],["ACE_Chemlight_IR",2,1]]],"USP_OPS_FASTXP_TAN_MC_03","USP_DETCORD_SMG1_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","USP_PVS31_LOW"]];
    icon = "iconManOfficer";
    role = "officer";
};

class Cav_B_B_Scout_PlatoonLeader_F: Cav_B_B_Scout_Officer_F {
    displayName = "Viking Platoon Leader";
    scope = 1;
    loadout = [["rhs_weap_mk18_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["kat_chestSeal",2],["kat_guedel",1],["ACE_splint",1]]],["USP_CRYE_CPC_LEAD_BELT_MC",[["ItemcTabHCam",1],["ACE_EarPlugs",1],["HandGrenade",2,1],["SmokeShell",4,1],["ACE_IR_Strobe_Item",4],["SmokeShellBlue",2,1],["UK3CB_P320_9x19_17Rnd",2,17],["ACE_HandFlare_Yellow",2,1],["rhs_mag_mk3a2",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,30],["30Rnd_556x45_Stanag_red",4,30],["SmokeShellPurple",1,1],["SmokeShellYellow",2,1]]],["USP_TACTICAL_PACK",[["ACE_HuntIR_monitor",1],["ACE_splint",8],["ACE_tourniquet",8],["ACE_SpraypaintGreen",1],["ACE_artilleryTable",1],["ACE_CableTie",5],["ACE_EarPlugs",2],["kat_Painkiller",2,10],["B_IR_Grenade",2,1],["SmokeShellGreen",2,1],["SmokeShellYellow",2,1],["ACE_Chemlight_IR",2,1]]],"USP_OPS_FASTXP_TAN_MC_03","USP_DETCORD_SMG1_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","USP_PVS31_LOW"]];
};
class Cav_B_B_Scout_PlatoonSergeant_F: Cav_B_B_Scout_Officer_F {
    displayName = "Viking Platoon Sergeant";
    scope = 1;
    loadout = [["rhs_weap_mk18_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["kat_chestSeal",2],["kat_guedel",1],["ACE_splint",1]]],["USP_CRYE_CPC_LEAD_BELT_MC",[["ItemcTabHCam",1],["ACE_EarPlugs",1],["HandGrenade",2,1],["SmokeShell",4,1],["ACE_IR_Strobe_Item",4],["SmokeShellBlue",2,1],["UK3CB_P320_9x19_17Rnd",2,17],["ACE_HandFlare_Yellow",2,1],["rhs_mag_mk3a2",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,30],["30Rnd_556x45_Stanag_red",4,30],["SmokeShellPurple",1,1],["SmokeShellYellow",2,1]]],["USP_TACTICAL_PACK",[["ACE_HuntIR_monitor",1],["ACE_splint",8],["ACE_tourniquet",8],["ACE_SpraypaintGreen",1],["ACE_artilleryTable",1],["ACE_CableTie",5],["ACE_EarPlugs",2],["kat_Painkiller",2,10],["B_IR_Grenade",2,1],["SmokeShellGreen",2,1],["SmokeShellYellow",2,1],["ACE_Chemlight_IR",2,1]]],"USP_OPS_FASTXP_TAN_MC_03","USP_DETCORD_SMG1_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","USP_PVS31_LOW"]];
    abilityEngineer = 1;
};

class Cav_B_B_Scout_PlatoonMedic_F: Cav_B_B_Scout_Officer_F {
    displayName = "Viking Platoon Medic";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],""],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_tourniquet",10],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_IR_Strobe_Item",2],["ACE_CableTie",2],["ACE_epinephrine",6],["kat_Painkiller",2,10],["kat_Carbonate",2,10],["ACE_Chemlight_IR",2,1],["kat_Penthrox",4,10]]],["USP_CRYE_CPC_MEDIC_BELT_MC",[["ACE_surgicalKit",1],["kat_IV_16",15],["kat_amiodarone",5],["kat_atropine",5],["ACE_adenosine",3],["kat_chestSeal",10],["kat_EACA",10],["kat_fentanyl",5],["kat_ketamine",5],["kat_larynx",10],["kat_lidocaine",10],["kat_nalbuphine",10],["kat_naloxone",5],["kat_nitroglycerin",10],["kat_norepinephrine",10],["kat_phenylephrine",10],["kat_stethoscope",1],["kat_Pulseoximeter",5],["kat_IO_FAST",5],["kat_aatKit",5],["ACE_splint",2],["kat_accuvac",1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",6,30],["SmokeShellBlue",2,1],["SmokeShellPurple",1,1],["kat_Penthrox",5,10]]],["USP_TACTICAL_PACK",[["ACE_plasmaIV",5],["ACE_plasmaIV_500",4],["ACE_salineIV",1],["ACE_elasticBandage",30],["ACE_packingBandage",10],["ACE_quikclot",30],["ACE_salineIV_250",2],["USP_PVS31",1],["ACE_splint",4]]],"USP_OPS_FASTXP_TAN_MC_03","USP_MFRAME_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 2;
    role = "medic";
    icon = "iconManMedic";
};

class Cav_B_B_Scout_Darter_F_Local: Cav_B_B_Scout_Base_F {
    displayName = "Platoon AR-2 Operator";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR_3d",["30Rnd_556x45_Stanag_red",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["ACE_Chemlight_IR",2,1],["rhs_mag_mk3a2",4,1],["30Rnd_556x45_Stanag_red",9,30],["SmokeShellPurple",1,1],["ACE_CTS9",2,1],["kat_Painkiller",2,10],[["ACE_MX2A","","","",[],[],""],1]]],["rhsusf_assault_eagleaiii_ocp",[["Rev_darter_item",1],["ACE_EntrenchingTool",1],["ACE_UAVBattery",2],["30Rnd_556x45_Stanag_red",4,30],["rhs_mag_mk3a2",2,1],["HandGrenade",2,1]]],"USP_OPS_FASTXP_TAN_MC_03","USP_MFRAME_SMC1_TAN2",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","","ItemCompass","ItemWatch","USP_PVS15"]];
};
class Cav_B_B_Scout_Raven_F_Local: Cav_B_B_Scout_Base_F {
    displayName = "Platoon Raven Operator";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["30Rnd_556x45_Stanag_red",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["ACE_Chemlight_IR",2,1],["rhs_mag_mk3a2",4,1],["30Rnd_556x45_Stanag_red",9,30],["SmokeShellPurple",1,1],["ACE_CTS9",2,1],["kat_Painkiller",2,10],[["ACE_MX2A","","","",[],[],""],1]]],["B_rhsusf_B_BACKPACK",[]],"USP_OPS_FASTXP_TAN_MC_03","USP_MFRAME_SMC1_TAN2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS15"]];
};

class Cav_B_B_Scout_SquadLeader_F: Cav_B_B_Scout_Base_F {
    displayName = "Squad Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_mk18_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_g33_xps3",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_Chemlight_Shield",1],["ACE_Chemlight_White",1,1]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["ACE_EarPlugs",1],["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["SmokeShellYellow",2,1],["rhs_mag_mk3a2",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,30],["30Rnd_556x45_Stanag_red",4,30],["SmokeShellPurple",1,1]]],["USP_TACTICAL_PACK",[["ACE_HuntIR_monitor",1],["ACE_splint",8],["ACE_tourniquet",8],["ACE_SpraypaintGreen",1],["ACE_artilleryTable",1],["ACE_CableTie",5],["ACE_EarPlugs",2],["kat_Painkiller",2,10],["B_IR_Grenade",2,1],["ACE_Chemlight_IR",2,1]]],"USP_OPS_FASTXP_TAN_MC_06","UK3CB_G_Ballistic_Black",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS31_HIGH"]];
    role = "squadleader";
    icon = "iconManLeader";
};
class Cav_B_B_Scout_WSL_F_Local: Cav_B_B_Scout_Base_F {
    displayName = "Weapons Squad Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_mk18_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_g33_xps3",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_PlottingBoard",1],["ACE_Chemlight_Shield",1],["ACE_Chemlight_White",1,1]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["ACE_EarPlugs",1],["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["SmokeShellYellow",2,1],["rhs_mag_mk3a2",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,30],["30Rnd_556x45_Stanag_red",4,30],["SmokeShellPurple",1,1]]],["USP_TACTICAL_PACK",[["ACE_HuntIR_monitor",1],["ACE_splint",8],["ACE_tourniquet",8],["ACE_SpraypaintGreen",1],["ACE_artilleryTable",1],["ACE_CableTie",5],["ACE_EarPlugs",2],["kat_Painkiller",2,10],["B_IR_Grenade",2,1],["ACE_Chemlight_IR",2,1]]],"USP_OPS_FASTXP_TAN_MC_06","UK3CB_G_Ballistic_Black",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS31_HIGH"]];
    icon = "iconManLeader";
};

class Cav_B_B_Scout_TeamLeader_F: Cav_B_B_Scout_Base_F {
    displayName = "Team Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["30Rnd_556x45_Stanag_red",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["kat_chestSeal",2],["kat_guedel",1],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_Chemlight_Shield",1],["ACE_Chemlight_White",1,1]]],["USP_VEST_STRANDHOGG2_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["SmokeShellYellow",2,1],["SmokeShellPurple",1,1],["rhs_mag_mk3a2",2,1],["30Rnd_556x45_Stanag_red",6,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",4,30]]],["USP_PACK_BREACHER_MC",[["ACE_HuntIR_monitor",1],["ACE_EntrenchingTool",1],["ACE_SpraypaintGreen",1],["ACE_tourniquet",4],["ACE_CableTie",5],["ACE_splint",2],["kat_Painkiller",2,10],["ACE_Chemlight_IR",2,1]]],"USP_OPS_FASTXP_TAN_MC_05","UK3CB_G_Ballistic_Black_Shemagh_Green",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS31_HIGH"]];
    role = "fireteamleader";
    icon = "iconManLeader";
};
class Cav_B_B_Scout_AutomaticRifleman_F: Cav_B_B_Scout_Base_F {
    displayName = "Automatic Rifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m249_light_S_vfg2","rhsusf_acc_SFMB556","rhsusf_acc_anpeq16a","rhsusf_acc_su230_mrds",["rhsusf_200Rnd_556x45_mixed_soft_pouch",200],[],"rhsusf_acc_grip4_bipod"],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_KP_OR_MC",[["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",10],["ACE_Chemlight_Shield",1],["kat_chestSeal",2],["kat_guedel",1],["ACE_splint",2],["ACE_Chemlight_White",1,1],["kat_Painkiller",2,10]]],["rhsusf_spcs_ocp_saw",[["HandGrenade",2,1],["SmokeShell",2,1],["UK3CB_P320_9x19_17Rnd",2,17],["SmokeShellPurple",1,1],["rhsusf_200Rnd_556x45_mixed_soft_pouch",2,200]]],["UK3CB_B_Backpack_Pocket",[["ACE_WaterBottle",2],["rhsusf_200Rnd_556x45_mixed_soft_pouch",2,200],["rhsusf_100Rnd_556x45_M995_soft_pouch",2,100]]],"USP_OPS_FASTXP_TAN_MC_04","G_Lowprofile",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS15"]];
    icon = "iconManMG";
};
class Cav_B_B_Scout_Grenadier_F: Cav_B_B_Scout_Base_F {
    displayName = "Grenadier";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_mk18_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_EOTECH",["30Rnd_556x45_Stanag_red",30],[],""],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_Chemlight_IR",2,1]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellPurple",1,1],["rhs_mag_M433_HEDP",15,1],["30Rnd_556x45_Stanag_red",7,30],["rhs_mag_m713_Red",5,1],["rhs_mag_M664_red_cluster",2,1],["rhs_mag_m716_yellow",2,1]]],["USP_ZIPON_PACK_CPC_MC",[["ACE_EntrenchingTool",1],["kat_Painkiller",2,10],["rhs_mag_mk3a2",2,1],["ACE_M84",2,1],["rhs_mag_m4009",5,1],["rhs_mag_M397_HET",10,1],["ACE_HuntIR_M203",1,1]]],"USP_OPS_FASTXP_TAN_MC_03","USP_MFRAME_SMC1_TAN2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS15"]];
};
class Cav_B_B_Scout_DMR_F_Local: Cav_B_B_Scout_Base_F {
    displayName = "Designated Marksman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_sr25_ec","","rhsusf_acc_anpeq15side_bk","optic_AMS",["rhsusf_20Rnd_762x51_SR25_m118_special_Mag",20],[],"rhsusf_acc_harris_bipod"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_Chemlight_Shield",1],["ACE_Chemlight_White",1,1]]],["rhsusf_spcs_ocp_sniper",[["ACE_IR_Strobe_Item",1],["HandGrenade",2,1],["SmokeShell",4,1],["ACE_IR_Strobe_Item",1],["ACE_Chemlight_IR",2,1],["rhs_mag_mk3a2",1,1],["SmokeShellPurple",1,1],["kat_Painkiller",2,10],["rhsusf_20Rnd_762x51_SR25_m118_special_Mag",6,20]]],["USP_TACTICAL_PACK",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1]]],"USP_OPS_FASTXP_TAN_MC_03","USP_MFRAME_SMC1_TAN2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS31"]];
};
class Cav_B_B_Scout_Rifleman_F: Cav_B_B_Scout_Base_F {
    displayName = "Rifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["30Rnd_556x45_Stanag_red",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["ACE_Chemlight_IR",2,1],["rhs_mag_mk3a2",4,1],["30Rnd_556x45_Stanag_red",9,30],["SmokeShellPurple",1,1],["ACE_CTS9",2,1],["kat_Painkiller",2,10]]],["USP_ZIPON_PACK_CPC_MC",[["HandGrenade",4,1],["30Rnd_556x45_Stanag_red",3,30]]],"USP_OPS_FASTXP_TAN_MC_03","USP_MFRAME_SMC1_TAN2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS15"]];
};
class Cav_B_B_Scout_RiflemanAT_F: Cav_B_B_Scout_Base_F {
    displayName = "MAAWS Specialist";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    role = "weapons";
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["30Rnd_556x45_Stanag_red",30],[],"rhsusf_acc_grip2"],["launch_MRAWS_green_F","","","",[],[],""],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["kat_chestSeal",2],["kat_guedel",1],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_MapTools",1]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["HandGrenade",2,1],["SmokeShell",4,1],["ACE_Chemlight_IR",2,1],["rhs_mag_mk3a2",4,1],["30Rnd_556x45_Stanag_red",9,30],["SmokeShellPurple",1,1],["ACE_CTS9",2,1],["kat_Painkiller",2,10]]],["rhsusf_falconii_mc",[["ACE_EntrenchingTool",1],["",2,0],["MRAWS_HEAT_F",1,1],["MRAWS_HE_F",2,1]]],"USP_OPS_FASTXP_TAN_MC_03","USP_MFRAME_SMC1_TAN2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS15"]];
};
class Cav_B_B_Scout_CombatLifeSaver_F: Cav_B_B_Scout_Base_F {
    displayName = "Combat Lifesaver";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",4]]],["USP_CRYE_JPC_ASLTB",[["kat_CarbonateItem",1],["ACE_epinephrine",3],["kat_phenylephrineAuto",3],["HandGrenade",4,1],["SmokeShell",4,1],["ACE_Chemlight_IR",2,1],["rhs_mag_mk3a2",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30]]],["USP_DELTA_BAG_MC",[["ACE_EntrenchingTool",1],["ACE_packingBandage",40],["ACE_quikclot",40],["ACE_tourniquet",12],["ACE_splint",8],["ACE_EarPlugs",2],["kat_chestSeal",10],["kat_guedel",10],["kat_ncdKit",5],["kat_pocketBVM",1],["kat_accuvac",1],["kat_Painkiller",3,10]]],"USP_OPS_FASTXP_TAN_MC_03","USP_MFRAME_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS15"]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 1;
    role = "cls";
    icon = "iconManMedic";
};

//Stryker Crew
class Cav_B_B_Crew_F: Cav_B_B_Scout_Base_F {
    displayName = "Stryker Crew";
    scope = 0;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_mk18_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_T1_high",["rhs_mag_30Rnd_556x45_Mk262_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["rhsusf_iotv_ocp_Repair",[["HandGrenade",2,1],["SmokeShellPurple",1,1],["SmokeShell",4,1],["ACE_IR_Strobe_Item",2],["ACE_Chemlight_IR",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30]]],["USP_TACTICAL_PACK",[["ToolKit",1],["ACE_tourniquet",8],["ACE_quikclot",10],["ACE_packingBandage",10]]],"rhsusf_cvc_green_helmet","USP_BALACLAVA_ADV_SMC1_RGR2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS15"]];
    abilityEngineer = 1;
    role = "strykercrew";
};
class Cav_B_B_Ifv_Driver_F: Cav_B_B_Scout_Base_F {
    displayName = "Stryker Driver";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_mk18_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_T1_high",["rhs_mag_30Rnd_556x45_Mk262_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["rhsusf_iotv_ocp_Repair",[["HandGrenade",2,1],["SmokeShellPurple",1,1],["SmokeShell",4,1],["ACE_IR_Strobe_Item",2],["ACE_Chemlight_IR",2,1],["30Rnd_556x45_Stanag_red",4,30]]],["USP_TACTICAL_PACK",[["ToolKit",1],["ACE_tourniquet",8],["ACE_quikclot",10],["ACE_packingBandage",10]]],"rhsusf_cvc_green_helmet","USP_BALACLAVA_ADV_SMC1_RGR2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS15"]];
    abilityEngineer = 1;
    role = "strykercrew";
};
class Cav_B_B_Ifv_Commander_F: Cav_B_B_Scout_Base_F {
    displayName = "Stryker Vehicle Commander";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_mk18_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_T1_high",["rhs_mag_30Rnd_556x45_Mk262_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_CRYE_CPC_MEDIC_MC",[["HandGrenade",2,1],["SmokeShellPurple",1,1],["SmokeShell",4,1],["ACE_IR_Strobe_Item",2],["ACE_Chemlight_IR",2,1],["30Rnd_556x45_Stanag_red",4,30]]],["USP_TACTICAL_PACK",[["ToolKit",1],["ACE_tourniquet",8],["ACE_quikclot",10],["ACE_packingBandage",10]]],"rhsusf_cvc_green_helmet","USP_BALACLAVA_ADV_SMC1_RGR2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS15"]];
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
class Cav_B_B_Scout_PlatoonLead_2_5_F: Cav_B_B_Scout_PlatoonLeader_F {
    scope = 1;
    insignia = "cav_insignia_bravo_2";
};
class Cav_B_B_Scout_PlatoonLead_2_6_F: Cav_B_B_Scout_PlatoonLeader_F {
    scope = 1;
    insignia = "cav_insignia_bravo_2";
};
class Cav_B_B_Scout_PlatoonMedic_2_7_F: Cav_B_B_Scout_PlatoonMedic_F { scope = 1; };

class Cav_B_B_Scout_Alpha_TeamLeader_F: Cav_B_B_Scout_TeamLeader_F { scope = 1; };
class Cav_B_B_Scout_Alpha_AutomaticRifleman_F: Cav_B_B_Scout_AutomaticRifleman_F { scope = 1; };
class Cav_B_B_Scout_Alpha_Grenadier_F: Cav_B_B_Scout_Grenadier_F { scope = 1; };
class Cav_B_B_Scout_Alpha_Rifleman_F: Cav_B_B_Scout_Rifleman_F { scope = 1; };
class Cav_B_B_Scout_Alpha_RiflemanAT_F: Cav_B_B_Scout_RiflemanAT_F { scope = 1; };
class Cav_B_B_Scout_Alpha_CombatLifeSaver_F: Cav_B_B_Scout_CombatLifeSaver_F { scope = 1; };

class Cav_B_B_Scout_Bravo_TeamLeader_F: Cav_B_B_Scout_TeamLeader_F { scope = 1; };
class Cav_B_B_Scout_Bravo_AutomaticRifleman_F: Cav_B_B_Scout_AutomaticRifleman_F { scope = 1; };
class Cav_B_B_Scout_Bravo_Grenadier_F: Cav_B_B_Scout_Grenadier_F { scope = 1; };
class Cav_B_B_Scout_Bravo_Rifleman_F: Cav_B_B_Scout_Rifleman_F { scope = 1; };
class Cav_B_B_Scout_Bravo_RiflemanAT_F: Cav_B_B_Scout_RiflemanAT_F { scope = 1; };
class Cav_B_B_Scout_Bravo_CombatLifeSaver_F: Cav_B_B_Scout_CombatLifeSaver_F { scope = 1; };

// Depricated (Will be removed eventually)
class Cav_B_B_Scout_Bravo_TeamLead_F: Cav_B_B_Scout_Bravo_TeamLeader_F {};
class Cav_B_B_Scout_Alpha_TeamLead_F: Cav_B_B_Scout_Alpha_TeamLeader_F {};
