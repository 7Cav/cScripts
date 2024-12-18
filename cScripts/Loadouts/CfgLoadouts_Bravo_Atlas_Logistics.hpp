class Cav_B_Bravo_Atlas_L_base_F: Cav_B_Bravo_base_F {
    platoon = 1;
    scope = 0;
    category[] += {"cScripts_Loadout_Cat_Bravo_Atlas_Logistics"};
    insignia = "cav_insignia_bravo_1";
    role = "logistics";
};

class Cav_B_B_LogisticTeamLeader_F: Cav_B_Bravo_Atlas_L_base_F {
    displayName = "Team Leader";
    scope = 2;
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],["rhs_mag_M664_red_cluster",1],""],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_Chemlight_IR",1,1],["kat_Painkiller",2,4]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["HandGrenade",1,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["SmokeShellPurple",1,1],["SmokeShellRed",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",6,30],["rhs_mag_m713_Red",2,1],["rhs_mag_m714_White",6,1]]],["USP_TACTICAL_PACK",[["ACE_EntrenchingTool",1],["ToolKit",1],["ACE_wirecutter",1],["USP_PVS15",1]]],"USP_OPS_FASTXP_TAN_MC_06","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};

class Cav_B_B_LogisticsTeamMember_F: Cav_B_B_LogisticTeamLeader_F {
    displayName = "Team Member";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",16],["ACE_quikclot",8],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_splint",2],["ACE_CableTie",2],["ACE_EarPlugs",1],["kat_Painkiller",2,4]]],["USP_CRYE_JPC_ASLTB_RGR",[["HandGrenade",1,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",6,30]]],["USP_ZIPON_PACK_CPC_MC",[["ACE_EntrenchingTool",1],["ACE_wirecutter",1],["ToolKit",1],["USP_PVS15",1]]],"USP_OPS_FASTXP_TAN_MC_01","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};
