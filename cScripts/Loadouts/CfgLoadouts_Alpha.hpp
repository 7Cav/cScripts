class Cav_B_A_Officer_F : Cav_B_Alpha_base_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Officer";
    category[] += {"cScripts_Loadout_Cat_Alpha_Leadership"};
    scope = 2;
    loadout = [[],[],[],["rhs_uniform_acu_oefcp",[["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1],["ACRE_PRC152",1]]],[],[],"rhsusf_patrolcap_ocp","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
};
class Cav_B_A_AirController_F : Cav_B_Alpha_base_F {
    displayName = "$STR_Cav_Alpha_Characters_A_AirController";
    category[] += {"cScripts_Loadout_Cat_Alpha_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4","","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",30],[],""],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],["rhs_uniform_cu_ocp_1stcav",[["ACRE_PRC152",1],["ACE_quikclot",10],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_tourniquet",2],["ACE_MapTools",1],["ACE_Flashlight_MX991",1],["ACE_microDAGR",1],["H_Cap_tan",1],["rhsusf_shemagh_tan",1]]],["rhsusf_mbav_light",[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,30],["rhsusf_mag_15Rnd_9x19_JHP",2,15],["B_IR_Grenade",1,1],["SmokeShell",2,1],["SmokeShellBlue",2,1],["SmokeShellRed",2,1],["SmokeShellGreen",2,1],["Chemlight_green",2,1],["ACE_Chemlight_HiRed",2,1],["Chemlight_blue",2,1]]],["B_Kitbag_mcamo",[["ACRE_PRC117F",1],["ACE_EntrenchingTool",1]]],"rhsusf_hgu56p_visor_green","",["Binocular","","","",[],[],""],["ItemMap","ItemcTab","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","rhsusf_ANPVS_15"]];
};
class Cav_B_A_JFO_F : Cav_B_Alpha_base_F {
    displayName = "$STR_Cav_Alpha_Characters_A_JFO";
    category[] += {"cScripts_Loadout_Cat_Alpha_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_mstock_grip2","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_top","rhsusf_acc_ACOG3",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["rhs_weap_M320","","","",["rhs_mag_M433_HEDP",1],[],""],["rhs_uniform_g3_mc",[["ACE_MapTools",1],["ACE_quikclot",10],["ACE_morphine",1],["ACE_microDAGR",1],["ACE_tourniquet",4],["ACRE_PRC152",1],["ACRE_PRC152",1],["Laserbatteries",1,1]]],["rhsusf_plateframe_grenadier",[["ACRE_PRC152",1],["rhs_mag_m716_yellow",2,1],["rhs_mag_m713_Red",2,1],["ACE_Chemlight_HiRed",2,1],["SmokeShell",2,1],["SmokeShellBlue",2,1],["SmokeShellPurple",2,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",5,30],["B_IR_Grenade",2,1],["rhs_mag_M664_red_cluster",2,1],[["Laserdesignator","","","",[],[],""],1],[["ACE_Vector","","","",[],[],""],1]]],["B_TacticalPack_oli",[["ACE_HuntIR_monitor",1],["rhs_mag_m716_yellow",4,1],["SmokeShellBlue",2,1],["SmokeShellOrange",2,1],["SmokeShellYellow",2,1],["rhs_mag_m713_Red",2,1],["ACE_HuntIR_M203",5,1],["rhs_mag_M664_red_cluster",5,1]]],"rhsusf_opscore_ut_pelt_nsw_cam","rhs_googles_clear",["ACE_MX2A","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
};

// Named
class Cav_B_A_AirController_Pegasus_1_F : Cav_B_A_AirController_F { scope = 1; };
class Cav_B_A_AirController_Pegasus_2_F : Cav_B_A_AirController_F { scope = 1; };

class Cav_B_A_JFO_Infidel_1_F : Cav_B_A_JFO_F { scope = 1; };
class Cav_B_A_JFO_Infidel_2_F : Cav_B_A_JFO_F { scope = 1; };
