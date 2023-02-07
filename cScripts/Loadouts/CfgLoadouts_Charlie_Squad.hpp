class Cav_B_C_Officer_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_Officer";
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    scope = 0;
    role = "officer";
    icon = "iconManOfficer";
};
class Cav_B_C_PlatoonSergeant_F : Cav_B_C_Officer_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonSergeant";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",30],[],""],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["USP_G3C_RS2_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14]]],["USP_CRYE_JPC_ASLTB",[["ACE_IR_Strobe_Item",1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",9,30],["SmokeShell",4,1],["ACE_Chemlight_IR",2,1],["SmokeShellBlue",2,1],["HandGrenade",2,1]]],["USP_45L_RUCKSACK_MC",[["USP_PVS15",1],["ACE_splint",2],["ACE_SpraypaintRed",1],["ACE_EntrenchingTool",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["SmokeShellGreen",2,1],["SmokeShellRed",2,1]]],"USP_OPSCORE_FASTMTC_CGTW","USP_MFRAME_TAN",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_PlatoonLeader_F : Cav_B_C_Officer_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonLeader";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",30],[],""],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["USP_G3C_RS2_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14]]],["USP_CRYE_JPC_ASLTB",[["ACE_IR_Strobe_Item",1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",9,30],["HandGrenade",2,1],["SmokeShell",4,1],["ACE_Chemlight_IR",2,1],["SmokeShellBlue",2,1]]],["USP_45L_RUCKSACK_MC",[["USP_PVS15",1],["ACE_splint",2],["ACE_SpraypaintRed",1],["ACE_EntrenchingTool",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["SmokeShellGreen",2,1],["SmokeShellRed",2,1]]],"USP_OPSCORE_FASTMTC_CGTW","USP_MFRAME_TAN",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_Drone_Operator_F_Local : Cav_B_C_Officer_F {
    displayName = "Platoon Drone Operator";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],[],""],[],[],["USP_G3C_RS_CU_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_Chemlight_IR",2,1]]],["USP_CRYE_JPC_TLB",[["USP_PVS15",1],["ACE_EntrenchingTool",1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",9,30],["HandGrenade",2,1],["SmokeShellBlue",2,1],["SmokeShellGreen",1,1]]],["B_rhsusf_B_BACKPACK",[]],"USP_OPSCORE_FASTMTC_GSW","USP_MFRAME_TAN",[],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_PlatoonMedic_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonMedic";
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],[],""],[],[],["USP_G3C_RS_CU_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14]]],["USP_CRYE_CPC_MEDIC_BELT_MC",[["ACE_IR_Strobe_Item",2],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",7,30],["SmokeShell",4,1],["ACE_Chemlight_IR",2,1],["ACE_Chemlight_HiBlue",4,1],["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["rhs_mag_m67",2,1]]],["B_Carryall_mcamo",[["USP_PVS15",1],["ACE_EarPlugs",2],["ACE_packingBandage",30],["ACE_quikclot",20],["kat_IO_FAST",3],["ACE_EntrenchingTool",1],["ACE_splint",8],["ACE_tourniquet",6],["kat_naloxone",4],["ACE_epinephrine",4],["ACE_surgicalKit",1],["ACE_SpraypaintBlue",1],["ACE_elasticBandage",40],["kat_IV_16",20],["ACE_plasmaIV_500",8],["ACE_salineIV_500",4],["ACE_salineIV",2],["ACE_plasmaIV",2],["ACE_bloodIV_500",4],["ACE_adenosine",4],["ACE_morphine",4],["kat_EACA",10],["kat_lidocaine",4],["kat_nitroglycerin",10],["kat_norepinephrine",10],["kat_phenylephrine",10],["kat_TXA",20],["kat_Painkiller",4,10],["kat_Carbonate",2,10]]],"USP_OPSCORE_FASTMTC_CS","USP_MFRAME_TAN",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 1;
    role = "medic";
    icon = "iconManMedic";
};

class Cav_B_C_SquadLeader_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_SquadLeader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",30],[],""],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["USP_G3C_RS2_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["ACE_EarPlugs",1]]],["USP_CRYE_JPC_TLB",[["ACE_IR_Strobe_Item",1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",9,30],["SmokeShell",4,1],["ACE_Chemlight_IR",2,1],["SmokeShellBlue",2,1],["HandGrenade",2,1]]],["USP_45L_RUCKSACK_MC",[["ACE_HuntIR_monitor",1],["USP_PVS15",1],["ACE_splint",2],["ACE_SpraypaintRed",1],["ACE_EntrenchingTool",1],["ACE_CableTie",2],["SmokeShellGreen",2,1],["SmokeShellBlue",2,1]]],"USP_OPSCORE_FASTMTC_MGTW","USP_MFRAME_TAN",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
    role = "squadleader";
    icon = "iconManLeader";
};
class Cav_B_C_FireTeamLeader_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_FireTeamLeader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",30],[],""],[],["rhs_weap_M320","","","",["rhs_mag_M441_HE",1],[],""],["USP_G3C_RS2_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["ACE_EarPlugs",1]]],["USP_CRYE_JPC_TLB",[["ACE_IR_Strobe_Item",1],["SmokeShell",4,1],["HandGrenade",2,1],["ACE_Chemlight_IR",2,1],["SmokeShellBlue",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",9,30],["SmokeShellGreen",2,1],["ACE_HuntIR_M203",1,1],["rhs_mag_m713_Red",2,1],["rhs_mag_m714_White",2,1],["rhs_mag_m715_Green",2,1]]],["USP_45L_RUCKSACK_MC",[["ACE_HuntIR_monitor",1],["ACE_splint",2],["ACE_EntrenchingTool",1],["ACE_SpraypaintRed",1],["ACE_CableTie",2],["USP_PVS15",1],["rhsusf_200Rnd_556x45_mixed_soft_pouch",1,200]]],"USP_OPSCORE_FASTMTC_CGSW","USP_MFRAME_TAN",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
    role = "fireteamleader";
    icon = "iconManLeader";
};
class Cav_B_C_AutomaticRifleman_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_AutomaticRifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m249_light_S_vfg2","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ELCAN_ard",["rhsusf_200Rnd_556x45_mixed_soft_pouch",200],[],"rhsusf_acc_grip4_bipod"],[],[],["USP_G3C_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["ACE_splint",2],["ACE_Chemlight_IR",2,1]]],["USP_CRYE_JPC_MGB",[["SmokeShell",4,1],["HandGrenade",2,1],["rhsusf_200Rnd_556x45_mixed_soft_pouch",3,200],["SmokeShellGreen",1,1]]],["USP_45L_RUCKSACK_MC",[["USP_PVS15",1],["ACE_EarPlugs",1],["rhsusf_200Rnd_556x45_mixed_soft_pouch",1,200]]],"USP_OPSCORE_FASTMTC_CGSW","USP_MFRAME_TAN",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
    icon = "iconManMG";
};
class Cav_B_C_Grenadier_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_Grenadier";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_mk18_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],["rhs_mag_M433_HEDP",1],""],[],[],["USP_G3C_RS_CU_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["ACE_splint",2],["ACE_Chemlight_IR",2,1]]],["USP_CRYE_JPC_GRB",[["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",9,30],["rhs_mag_M433_HEDP",11,1],["rhs_mag_m714_White",4,1],["HandGrenade",2,1],["SmokeShellGreen",1,1]]],["USP_45L_RUCKSACK_MC",[["USP_PVS15",1],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1]]],"USP_OPSCORE_FASTMTC_GSW","USP_MFRAME_TAN",["rhsusf_bino_m24_ARD","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_Rifleman_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_Rifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],[],""],[],[],["USP_G3C_RS_CU_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_Chemlight_IR",2,1]]],["USP_CRYE_JPC_ASLTB",[["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",9,30],["HandGrenade",2,1],["SmokeShellGreen",1,1]]],["USP_45L_RUCKSACK_MC",[["USP_PVS15",1],["ACE_EntrenchingTool",1]]],"USP_OPSCORE_FASTMTC_GSW","USP_MFRAME_TAN",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_RiflemanAT_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_RiflemanAT";
    scope = 0;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],[],""],[],[],["USP_G3C_RS_CU_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_Chemlight_IR",2,1]]],["USP_CRYE_JPC_ASLTB",[["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",9,30],["HandGrenade",2,1],["SmokeShellGreen",1,1]]],["USP_45L_RUCKSACK_MC",[["USP_PVS15",1],["ACE_EntrenchingTool",1]]],"USP_OPSCORE_FASTMTC_GSW","USP_MFRAME_TAN",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
    icon = "iconManAT";
};
class Cav_B_C_RiflemanLAT_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_RiflemanLAT";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],[],""],[],[],["USP_G3C_RS_CU_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_Chemlight_IR",2,1]]],["USP_CRYE_JPC_ASLTB",[["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",9,30],["HandGrenade",2,1],["SmokeShellGreen",1,1]]],["USP_45L_RUCKSACK_MC",[["USP_PVS15",1],["ACE_EntrenchingTool",1]]],"USP_OPSCORE_FASTMTC_GSW","USP_MFRAME_TAN",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
    icon = "iconManAT";
};
class Cav_B_C_CombatLifeSaver_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_CombatLifeSaver";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",30],[],""],[],[],["USP_G3C_CU_KP_OR_MC",[["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_packingBandage",14],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_Chemlight_IR",2,1]]],["USP_CRYE_JPC_DMB",[["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",9,30],["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1]]],["USP_45L_RUCKSACK_MC",[["USP_PVS15",1],["ACE_packingBandage",40],["ACE_quikclot",40],["ACE_EntrenchingTool",1],["ACE_splint",8],["ACE_tourniquet",12],["kat_Painkiller",3,10]]],"USP_OPSCORE_FASTMTC_GSW","USP_MFRAME_TAN",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 0;
    icon = "iconManMedic";
};
// Named
class Cav_B_C_SquadLeader_Bandit_1_F : Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_1";
};
class Cav_B_C_SquadLeader_Bandit_2_F : Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_2";
};
class Cav_B_C_SquadLeader_Bandit_3_F : Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_3";
};
class Cav_B_C_SquadLeader_Bandit_4_F : Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_4";
};

class Cav_B_C_SquadLeader_Misfit_1_F : Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_1";
};
class Cav_B_C_SquadLeader_Misfit_2_F : Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_2";
};
class Cav_B_C_SquadLeader_Misfit_3_F : Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_3";
};
class Cav_B_C_SquadLeader_Misfit_4_F : Cav_B_C_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_4";
};

class Cav_B_C_PlatoonSergeant_Bandit_5_F : Cav_B_C_PlatoonSergeant_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1";
};
class Cav_B_C_PlatoonSergeant_Misfit_5_F : Cav_B_C_PlatoonSergeant_F {
    scope = 1;
    insignia = "cav_insignia_charlie_2";
};
class Cav_B_C_PlatoonLeader_Bandit_6_F : Cav_B_C_PlatoonLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1";
};
class Cav_B_C_PlatoonLeader_Misfit_6_F : Cav_B_C_PlatoonLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_2";
};
class Cav_B_C_PlatoonMedic_Bandit_7_F : Cav_B_C_PlatoonMedic_F { scope = 1; };
class Cav_B_C_PlatoonMedic_Misfit_7_F : Cav_B_C_PlatoonMedic_F { scope = 1; };

// Teams
class Cav_B_C_Alpha_FireTeamLeader_F : Cav_B_C_FireTeamLeader_F { scope = 1; };
class Cav_B_C_Alpha_AutomaticRifleman_F : Cav_B_C_AutomaticRifleman_F { scope = 1; };
class Cav_B_C_Alpha_Grenadier_F : Cav_B_C_Grenadier_F { scope = 1; };
class Cav_B_C_Alpha_Rifleman_F : Cav_B_C_Rifleman_F { scope = 1; };
class Cav_B_C_Alpha_RiflemanAT_F  : Cav_B_C_RiflemanAT_F { scope = 1; };
class Cav_B_C_Alpha_RiflemanLAT_F  : Cav_B_C_RiflemanLAT_F { scope = 1; };
class Cav_B_C_Alpha_CombatLifeSaver_F : Cav_B_C_CombatLifeSaver_F { scope = 1; };

class Cav_B_C_Bravo_FireTeamLeader_F : Cav_B_C_FireTeamLeader_F { scope = 1; };
class Cav_B_C_Bravo_AutomaticRifleman_F  : Cav_B_C_AutomaticRifleman_F { scope = 1; };
class Cav_B_C_Bravo_Grenadier_F  : Cav_B_C_Grenadier_F { scope = 1; };
class Cav_B_C_Bravo_Rifleman_F  : Cav_B_C_Rifleman_F { scope = 1; };
class Cav_B_C_Bravo_RiflemanAT_F  : Cav_B_C_RiflemanAT_F { scope = 1; };
class Cav_B_C_Bravo_RiflemanLAT_F  : Cav_B_C_RiflemanLAT_F { scope = 1; };
class Cav_B_C_Bravo_CombatLifeSaver_F  : Cav_B_C_CombatLifeSaver_F { scope = 1; };
