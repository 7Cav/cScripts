class Cav_B_A_Officer_F : Cav_B_Alpha_base_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Officer";
    category[] += {"cScripts_Loadout_Cat_Alpha_Leadership"};
    scope = 2;
    loadout = [[],[],[],["rhs_uniform_acu_oefcp",[["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],[],[],"rhsusf_patrolcap_ocp","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
    role = "officer";
};
class Cav_B_A_AirController_F : Cav_B_Alpha_base_F {
    displayName = "$STR_Cav_Alpha_Characters_A_AirController";
    category[] += {"cScripts_Loadout_Cat_Alpha_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4","","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",30],[],""],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],["rhs_uniform_cu_ocp_1stcav",[["ACE_quikclot",10],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_tourniquet",2],["ACE_MapTools",1],["ACE_Flashlight_MX991",1],["ACE_microDAGR",1],["H_Cap_tan",1],["rhsusf_shemagh_tan",1]]],["rhsusf_mbav_light",[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,30],["rhsusf_mag_15Rnd_9x19_JHP",2,15],["B_IR_Grenade",1,1],["SmokeShell",2,1],["SmokeShellBlue",2,1],["SmokeShellRed",2,1],["SmokeShellGreen",2,1],["Chemlight_green",2,1],["ACE_Chemlight_HiRed",2,1],["Chemlight_blue",2,1]]],["B_Kitbag_mcamo",[["ACE_EntrenchingTool",1]]],"rhsusf_hgu56p_visor_green","",["Binocular","","","",[],[],""],["ItemMap","ItemcTab","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","rhsusf_ANPVS_15"]];
    role = "officer";
};
class Cav_B_A_JFO_F : Cav_B_Alpha_base_F {
    displayName = "$STR_Cav_Alpha_Characters_A_JFO";
    category[] += {"cScripts_Loadout_Cat_Alpha_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_su230_mrds_c_3d",["rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan",30],[],"rhsusf_acc_grip2_tan"],[],["rhs_weap_M320","","","",["ACE_40mm_Flare_ir",1],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",16],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_splint",2],["ACE_Chemlight_Shield",1],["ACE_Chemlight_White",1,1]]],["USP_VEST_STRANDHOGG2_CBR",[["ACE_IR_Strobe_Item",5],["rhs_mag_m67",2,1],["SmokeShellGreen",1,1],["SmokeShell",4,1],["rhs_mag_M664_red_cluster",9,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,30],["rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan",4,30],["rhs_mag_M663_green_cluster",5,1],["ACE_HuntIR_M203",2,1],["ACE_40mm_Flare_ir",1,1],[["ACE_Vector","","","",[],[],""],1]]],["USP_TACTICAL_PACK_CCT3",[["kat_phenylephrine_inject",2],["ACE_epinephrine",2],["Rev_darter_item",1],["rhs_mag_100Rnd_556x45_M855A1_cmag_mixed",1,100],["rhs_mag_m716_yellow",4,1]]],"USP_CRYE_AIRFRAME_CMWTV","USP_BALACLAVA_OAK_SMC1_CBR2",["Laserdesignator_03","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","USP_PVS15"]];
    role = "officer";
};

// Named
class Cav_B_A_AirController_Pegasus_1_F : Cav_B_A_AirController_F { scope = 1; };
class Cav_B_A_AirController_Pegasus_2_F : Cav_B_A_AirController_F { scope = 1; };

class Cav_B_A_JFO_Infidel_1_F : Cav_B_A_JFO_F { scope = 1; };
class Cav_B_A_JFO_Infidel_2_F : Cav_B_A_JFO_F { scope = 1; };
