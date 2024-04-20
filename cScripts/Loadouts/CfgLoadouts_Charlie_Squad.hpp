class Cav_B_C_Officer_F: Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_Officer";
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    scope = 0;
    role = "officer";
    icon = "iconManOfficer";
};
class Cav_B_C_PlatoonLeader_F: Cav_B_C_Officer_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonLeader";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR_3d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS2_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["kat_chestSeal",2],["kat_guedel",1],["ACE_EarPlugs",1],["kat_Painkiller",2,10],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",1,30]]],["USP_CRYE_JPC_ASLTB",[["UK3CB_P320_9x19_17Rnd",2,17],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",8,30],["SmokeShell",4,1],["SmokeShellBlue",2,1],["HandGrenade",2,1]]],["USP_TACTICAL_PACK",[["USP_PVS15",1],["ACE_splint",2],["ACE_SpraypaintRed",1],["ACE_EntrenchingTool",1],["ACE_CableTie",2],["SmokeShellPurple",1,1],["SmokeShellRed",2,1],["SmokeShellBlue",2,1]]],"USP_OPSCORE_FASTMTC_CGTW","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_PlatoonSergeant_F: Cav_B_C_Officer_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonSergeant";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR_3d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["UK3CB_P320_DES","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS2_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["kat_chestSeal",2],["kat_guedel",1],["ACE_EarPlugs",1],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_ASLTB",[["UK3CB_P320_9x19_17Rnd",2,17],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",9,30],["SmokeShell",4,1],["SmokeShellBlue",2,1],["HandGrenade",2,1]]],["USP_TACTICAL_PACK",[["USP_PVS15",1],["ACE_splint",2],["ACE_SpraypaintRed",1],["ACE_EntrenchingTool",1],["ACE_CableTie",2],["SmokeShellPurple",1,1],["SmokeShellRed",2,1],["SmokeShellBlue",2,1]]],"USP_OPSCORE_FASTMTC_CGTW","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_PlatoonSergeantVintage_F: Cav_B_C_Officer_F {
    displayName = "Vintage Platoon Sergeant";
    scope = 2;
    loadout = [["UK3CB_M16A1","","","",["rhs_mag_20Rnd_556x45_M855A1_Stanag",20],[],""],[],["rhsusf_weap_m1911a1","","","",["rhsusf_mag_7x45acp_MHP",7],[],""],["USP_G3C_RS2_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["kat_chestSeal",2],["kat_guedel",1],["ACE_EarPlugs",1],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_ASLTB",[["SmokeShell",4,1],["SmokeShellBlue",2,1],["HandGrenade",2,1],["rhs_mag_20Rnd_556x45_M855A1_Stanag",12,20],["rhsusf_mag_7x45acp_MHP",3,7]]],["USP_TACTICAL_PACK",[["USP_PVS15",1],["ACE_splint",2],["ACE_SpraypaintRed",1],["ACE_EntrenchingTool",1],["ACE_CableTie",2],["SmokeShellPurple",1,1],["SmokeShellRed",2,1],["SmokeShellBlue",2,1]]],"USP_OPSCORE_FASTMTC_CGTW","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_PlatoonMedic_F: Cav_B_C_Officer_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonMedic";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],""],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_tourniquet",10],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_IR_Strobe_Item",2],["ACE_CableTie",2],["ACE_epinephrine",6],["kat_PenthroxItem",4],["kat_Painkiller",2,10],["kat_Carbonate",2,10],["ACE_Chemlight_IR",2,1]]],["USP_CRYE_CPC_MEDIC_BELT_MC",[["ACE_surgicalKit",1],["kat_IV_16",15],["kat_amiodarone",5],["kat_atropine",5],["ACE_adenosine",3],["kat_chestSeal",10],["kat_EACA",10],["kat_fentanyl",5],["kat_ketamine",5],["kat_larynx",10],["kat_lidocaine",10],["kat_nalbuphine",10],["kat_naloxone",5],["kat_nitroglycerin",10],["kat_norepinephrine",10],["kat_phenylephrine",10],["kat_stethoscope",1],["kat_Pulseoximeter",5],["kat_IO_FAST",5],["kat_aatKit",5],["ACE_splint",2],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30],["SmokeShellBlue",2,1],["SmokeShellPurple",1,1],["kat_Penthrox",5,10]]],["USP_TACTICAL_PACK",[["ACE_plasmaIV",5],["ACE_plasmaIV_500",4],["ACE_salineIV",1],["ACE_elasticBandage",30],["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_salineIV_250",2],["USP_PVS15",1],["kat_accuvac",1],["ACE_splint",6]]],"USP_OPSCORE_FASTMTC_CTW","USP_MFRAME_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 2;
    role = "medic";
    icon = "iconManMedic";
};
class Cav_B_C_Drone_Operator_F_Local: Cav_B_C_Officer_F {
    displayName = "Platoon Drone Operator";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],[],""],[],[],["USP_G3C_RS_CU_KP_OR_MC",[["ACE_tourniquet",4],["kat_Painkiller",2,10],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["kat_chestSeal",2],["kat_guedel",1],["ACE_splint",2],["ACE_EarPlugs",1]]],["USP_CRYE_JPC_TLB",[["USP_PVS15",1],["ACE_EntrenchingTool",1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",9,30],["HandGrenade",2,1],["SmokeShellBlue",2,1],["SmokeShellPurple",1,1]]],["B_rhsusf_B_BACKPACK",[]],"USP_OPSCORE_FASTMTC_CGSW","",[],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};

class Cav_B_C_SquadLeader_F: Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_SquadLeader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR_3d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],[],""],[],[],["USP_G3C_RS2_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["kat_chestSeal",2],["kat_guedel",1],["ACE_EarPlugs",1],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_TLB",[["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",9,30],["SmokeShell",4,1],["HandGrenade",2,1],["SmokeShellPurple",1,1],["rhs_mag_m713_Red",3,1],["rhs_mag_m714_White",4,1],["SmokeShellBlue",2,1]]],["USP_REEBOW_3DAP_MC",[["ACE_HuntIR_monitor",1],["USP_PVS15",1],["ACE_splint",2],["ACE_SpraypaintRed",1],["ACE_EntrenchingTool",1],["ACE_CableTie",2]]],"USP_OPSCORE_FASTMTC_CMGTW","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    role = "squadleader";
    icon = "iconManLeader";
};
class Cav_B_C_FireTeamLeader_F: Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_FireTeamLeader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR_3d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],[],""],[],[],["USP_G3C_RS2_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["kat_chestSeal",2],["kat_guedel",1],["ACE_EarPlugs",1],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_TLB",[["ACE_IR_Strobe_Item",1],["SmokeShell",4,1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",10,30],["ACE_HuntIR_M203",1,1],["rhs_mag_m713_Red",2,1],["rhs_mag_m714_White",2,1],["SmokeShellPurple",1,1]]],["USP_REEBOW_3DAP_MC",[["ACE_HuntIR_monitor",1],["ACE_splint",2],["ACE_EntrenchingTool",1],["ACE_SpraypaintRed",1],["ACE_CableTie",2],["USP_PVS15",1],["rhsusf_200Rnd_556x45_mixed_soft_pouch",2,200],["SmokeShellBlue",2,1]]],"USP_OPSCORE_FASTMTC_CGSW","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    role = "fireteamleader";
    icon = "iconManLeader";
};
class Cav_B_C_AutomaticRifleman_F: Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_AutomaticRifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m249_light_S_vfg2","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_elcan_3d",["rhsusf_200Rnd_556x45_mixed_soft_pouch",200],[],"rhsusf_acc_grip4_bipod"],[],[],["USP_G3C_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["kat_chestSeal",2],["kat_guedel",1],["ACE_splint",2],["ACE_EarPlugs",1],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_MGB",[["SmokeShell",4,1],["HandGrenade",2,1],["rhsusf_200Rnd_556x45_mixed_soft_pouch",4,200]]],["USP_ZIPON_PANEL_CPC_MC",[["USP_PVS15",1],["rhsusf_200Rnd_556x45_mixed_soft_pouch",2,200]]],"USP_OPSCORE_FASTMTC_CGSW","",[],["ItemMap","","","ItemCompass","ACE_Altimeter",""]];
    icon = "iconManMG";
};
class Cav_B_C_Grenadier_F: Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_Grenadier";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR_3d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],["rhs_mag_M433_HEDP",1],""],[],[],["USP_G3C_RS_CU_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["kat_chestSeal",2],["kat_guedel",1],["ACE_splint",2],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_GRB",[["SmokeShell",4,1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",9,30],["rhs_mag_M433_HEDP",12,1],["rhs_mag_m714_White",4,1],["rhs_mag_m713_Red",2,1]]],["USP_ZIPON_PACK_CPC_MC",[["USP_PVS15",1],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["rhs_mag_M433_HEDP",12,1],["rhs_mag_m714_White",4,1],["rhs_mag_m713_Red",2,1]]],"USP_OPSCORE_FASTMTC_CGSW","",["rhsusf_bino_m24_ARD","","","",[],[],""],["ItemMap","","","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_RiflemanLAT_F: Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_RiflemanLAT";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR_3d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],[],""],["rhs_weap_M136_hedp","","","",[],[],""],[],["USP_G3C_RS_CU_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["kat_chestSeal",2],["kat_guedel",1],["ACE_splint",2],["kat_Painkiller",2,10]]],["USP_CRYE_JPC_ASLTB",[["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",9,30],["HandGrenade",2,1]]],["USP_ZIPON_PACK_CPC_BC_MC",[["USP_PVS15",1],["ACE_EntrenchingTool",1]]],"USP_OPSCORE_FASTMTC_CGSW","",[],["ItemMap","","","ItemCompass","ACE_Altimeter",""]];
    icon = "iconManAT";
};
class Cav_B_C_Marksman_F_Local: Cav_B_Charlie_base_F {
    displayName = "Designated Marksman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_sr25_ec","","rhsusf_acc_anpeq15side_bk","optic_AMS",["rhsusf_20Rnd_762x51_SR25_m118_special_Mag",20],[],"rhsusf_acc_harris_bipod"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["kat_chestSeal",2],["kat_guedel",1],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_Chemlight_Shield",1],["ACE_Chemlight_White",1,1]]],["USP_CRYE_JPC_DMB",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellPurple",1,1],["rhsusf_20Rnd_762x51_SR25_m118_special_Mag",9,20]]],["USP_ZIPON_PACK_CPC_MC",[["USP_PVS15",1],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["ACE_splint",4],["kat_Painkiller",2,10]]],"USP_OPSCORE_FASTMTC_GSW","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};               
class Cav_B_C_CombatLifeSaver_F: Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_CombatLifeSaver";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],[],""],[],[],["USP_G3C_CU_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_Chemlight_IR",2,1]]],["USP_CRYE_JPC_DMB",[["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",9,30],["HandGrenade",2,1],["SmokeShellBlue",1,1],["SmokeShellPurple",1,1]]],["USP_DELTA_BAG_MC",[["USP_PVS15",1],["ACE_packingBandage",40],["ACE_quikclot",40],["ACE_EntrenchingTool",1],["ACE_splint",8],["ACE_tourniquet",12],["kat_chestSeal",10],["ACE_epinephrine",3],["kat_guedel",10],["kat_ncdKit",5],["kat_pocketBVM",1],["kat_accuvac",1],["kat_phenylephrineAuto",3],["kat_CarbonateItem",1],["kat_Painkiller",7,10]]],"USP_OPSCORE_FASTMTC_GSW","USP_MFRAME_TAN",[],["ItemMap","","","ItemCompass","ACE_Altimeter",""]];    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 1;
    role = "cls";
    icon = "iconManMedic";
};
// Named
class Cav_B_C_SquadLeader_Bandit_1_F: Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_1";
};
class Cav_B_C_SquadLeader_Bandit_2_F: Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_2";
};
class Cav_B_C_SquadLeader_Bandit_3_F: Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_3";
};
class Cav_B_C_SquadLeader_Bandit_4_F: Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_4";
};

class Cav_B_C_SquadLeader_Misfit_1_F: Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_1";
};
class Cav_B_C_SquadLeader_Misfit_2_F: Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_2";
};
class Cav_B_C_SquadLeader_Misfit_3_F: Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_3";
};
class Cav_B_C_SquadLeader_Misfit_4_F: Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_4";
};

class Cav_B_C_PlatoonSergeant_Bandit_5_F: Cav_B_C_PlatoonSergeant_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1";
};
class Cav_B_C_PlatoonSergeant_Misfit_5_F: Cav_B_C_PlatoonSergeant_F {
    scope = 1;
    insignia = "cav_insignia_charlie_2";
};
class Cav_B_C_PlatoonLeader_Bandit_6_F: Cav_B_C_PlatoonLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1";
};
class Cav_B_C_PlatoonLeader_Misfit_6_F: Cav_B_C_PlatoonLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_2";
};
class Cav_B_C_PlatoonMedic_Bandit_7_F: Cav_B_C_PlatoonMedic_F { scope = 1; };
class Cav_B_C_PlatoonMedic_Misfit_7_F: Cav_B_C_PlatoonMedic_F { scope = 1; };

// Teams
class Cav_B_C_Alpha_FireTeamLeader_F: Cav_B_C_FireTeamLeader_F { scope = 1; };
class Cav_B_C_Alpha_AutomaticRifleman_F: Cav_B_C_AutomaticRifleman_F { scope = 1; };
class Cav_B_C_Alpha_Grenadier_F: Cav_B_C_Grenadier_F { scope = 1; };
class Cav_B_C_Alpha_RiflemanLAT_F: Cav_B_C_RiflemanLAT_F { scope = 1; };
class Cav_B_C_Alpha_CombatLifeSaver_F: Cav_B_C_CombatLifeSaver_F { scope = 1; };

class Cav_B_C_Bravo_FireTeamLeader_F: Cav_B_C_FireTeamLeader_F { scope = 1; };
class Cav_B_C_Bravo_AutomaticRifleman_F: Cav_B_C_AutomaticRifleman_F { scope = 1; };
class Cav_B_C_Bravo_Grenadier_F: Cav_B_C_Grenadier_F { scope = 1; };
class Cav_B_C_Bravo_RiflemanLAT_F: Cav_B_C_RiflemanLAT_F { scope = 1; };
class Cav_B_C_Bravo_CombatLifeSaver_F: Cav_B_C_CombatLifeSaver_F { scope = 1; };
