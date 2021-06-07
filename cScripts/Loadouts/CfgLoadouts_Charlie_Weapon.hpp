class Cav_B_Charlie_Weapons_base_F : Cav_B_Charlie_base_F {
    category[] += {"cScripts_Loadout_Cat_Charlie_Weapons"};
};

class Cav_B_C_Weapons_SquadLeader_F : Cav_B_C_SquadLeader_F {
    displayName = "$STR_cav_troops_charlie_weapons_squadleader";
    scope = 2;
};
class Cav_B_C_Weapons_M240B_Machinegunner_F : Cav_B_Charlie_Weapons_base_F {
    displayName = "$STR_cav_troops_charlie_weapons_m240b_machinegunner";
    scope = 2;
    loadout = [["rhs_weap_m240B","","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ELCAN_ard",["rhsusf_100Rnd_762x51_m62_tracer",100],[],""],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_FMJ",15],[],""],["rhs_uniform_acu_oefcp",[["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_quikclot",15],["ACE_tourniquet",5],["ACRE_PRC343",1],["ACE_DAGR",1]]],["rhsusf_mbav_mg",[["ACE_CableTie",1],["ACE_quikclot",5],["ACE_Flashlight_XL50",1],["SmokeShell",5,1],["rhs_mag_m67",2,1],["ACE_Chemlight_IR",2,1],["B_IR_Grenade",1,1],["rhsusf_100Rnd_762x51_m62_tracer",1,100],["rhsusf_mag_15Rnd_9x19_FMJ",1,15]]],["rhsusf_assault_eagleaiii_ocp",[["ACE_personalAidKit",1],["rhsusf_100Rnd_762x51_m62_tracer",4,100]]],"rhsusf_ach_helmet_headset_ocp_alt","",["rhsusf_bino_m24_ARD","","","",[],[],""],["ItemMap","","","ItemCompass","ACE_Altimeter","rhsusf_ANPVS_14"]];
};
class Cav_B_C_Weapons_M240B_MachinegunnerAmmoBearer_F : Cav_B_Charlie_Weapons_base_F {
    displayName = "$STR_cav_troops_charlie_weapons_m240b_machinegunnerammobearer";
    scope = 2;
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],""],[],[],["rhs_uniform_acu_oefcp",[["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_quikclot",15],["ACE_tourniquet",5],["ACRE_PRC343",1],["ACRE_PRC152",1]]],["rhsusf_mbav_mg",[["ACE_CableTie",1],["ACE_quikclot",5],["ACE_Flashlight_XL50",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,30],["SmokeShell",5,1],["rhs_mag_m67",2,1],["SmokeShellBlue",3,1],["SmokeShellRed",3,1],["ACE_Chemlight_IR",2,1],["B_IR_Grenade",1,1]]],["rhsusf_assault_eagleaiii_ocp",[["ACE_EntrenchingTool",1],["ACE_personalAidKit",1],["rhsusf_100Rnd_762x51_m62_tracer",6,100]]],"rhsusf_ach_helmet_headset_ocp_alt","",["ACE_Vector","","","",[],[],""],["ItemMap","","","ItemCompass","ACE_Altimeter","rhsusf_ANPVS_14"]];
};

class Cav_B_C_Weapons_MAAWS_MAAWSGunner_F : Cav_B_Charlie_Weapons_base_F {
    displayName = "$STR_cav_troops_charlie_weapons_maaws_maawsgunner";
    scope = 2;
    loadout = [["rhs_weap_m4a1","","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],""],["rhs_weap_maaws","","","rhs_optic_maaws",["rhs_mag_maaws_HE",1],[],""],[],["rhs_uniform_acu_oefcp",[["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_quikclot",15],["ACE_tourniquet",5],["ACRE_PRC343",1],["ACE_DAGR",1]]],["rhsusf_mbav_mg",[["ACE_CableTie",1],["ACE_Flashlight_XL50",1],["SmokeShell",5,1],["rhs_mag_m67",2,1],["ACE_Chemlight_IR",2,1],["B_IR_Grenade",1,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30]]],["rhsusf_assault_eagleaiii_ocp",[["ACE_personalAidKit",1],["rhs_mag_maaws_HE",3,1]]],"rhsusf_ach_helmet_headset_ocp_alt","",["rhsusf_bino_m24_ARD","","","",[],[],""],["ItemMap","","","ItemCompass","ACE_Altimeter","rhsusf_ANPVS_14"]];
};
class Cav_B_C_Weapons_MAAWS_MAAWSAssistant_F : Cav_B_Charlie_Weapons_base_F {
    displayName = "$STR_cav_troops_charlie_weapons_maaws_maawsassistant";
    scope = 2;
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],""],[],[],["rhs_uniform_acu_oefcp",[["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_quikclot",15],["ACE_tourniquet",5],["ACRE_PRC343",1],["ACRE_PRC152",1]]],["rhsusf_mbav_mg",[["ACE_CableTie",1],["ACE_Flashlight_XL50",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,30],["SmokeShell",5,1],["rhs_mag_m67",2,1],["SmokeShellBlue",3,1],["SmokeShellRed",3,1],["ACE_Chemlight_IR",2,1],["B_IR_Grenade",1,1]]],["B_Carryall_mcamo",[["ACE_EntrenchingTool",1],["ACE_personalAidKit",1],["rhs_mag_maaws_HE",3,1],["rhs_mag_maaws_HEAT",1,1]]],"rhsusf_ach_helmet_headset_ocp_alt","",["ACE_Vector","","","",[],[],""],["ItemMap","","","ItemCompass","ACE_Altimeter","rhsusf_ANPVS_14"]];
};

class Cav_B_C_Weapons_Mortar_FireTeamLeader_F : Cav_B_Charlie_Weapons_base_F {
    displayName = "$STR_cav_troops_charlie_weapons_mortar_fireteamleader";
    scope = 2;
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR_3d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_harris_bipod"],[],["rhs_weap_rsp30_green","","","",[],[],""],["rhs_uniform_acu_oefcp",[["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_quikclot",15],["ACE_tourniquet",5],["ACRE_PRC343_ID_1",1],["ACRE_PRC152_ID_1",1]]],["rhsusf_mbav_mg",[["ACE_CableTie",1],["ACE_quikclot",5],["ACE_Flashlight_XL50",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,30],["SmokeShell",5,1],["rhs_mag_m67",2,1],["SmokeShellBlue",3,1],["SmokeShellRed",3,1],["ACE_Chemlight_IR",2,1],["B_IR_Grenade",1,1]]],["B_Kitbag_mcamo",[["ACE_EntrenchingTool",1],["ACE_SpraypaintRed",1],["rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",1,200],["NDS_M_6Rnd_60mm_HE",2,6],[["rhs_weap_rsp30_green","","","",["rhs_mag_rsp30_green",1],[],""],1],[["rhs_weap_rsp30_green","","","",["rhs_mag_rsp30_green",1],[],""],1],[["rhs_weap_rsp30_green","","","",["rhs_mag_rsp30_green",1],[],""],1],[["rhs_weap_rsp30_red","","","",[],[],""],1],[["rhs_weap_rsp30_red","","","",[],[],""],1],[["rhs_weap_rsp30_red","","","",[],[],""],1]]],"rhsusf_ach_helmet_headset_ocp_alt","rhsusf_oakley_goggles_clr",["ACE_Vector","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","rhsusf_ANPVS_14"]];
};
class Cav_B_C_Weapons_Mortar_M224_F : Cav_B_Charlie_Weapons_base_F {
    displayName = "$STR_cav_troops_charlie_weapons_mortar_m224";
    scope = 2;
    loadout = [["rhs_weap_m4a1","","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_oefcp",[["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACRE_PRC343",1],["ACE_quikclot",20],["ACE_tourniquet",5],["ACE_artilleryTable",1],["ACE_CableTie",1]]],["rhsusf_mbav_rifleman",[["ACE_Flashlight_XL50",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",9,30],["SmokeShell",6,1],["rhs_mag_m67",2,1],["ACE_Chemlight_IR",2,1]]],["NDS_B_M224_mortar",[]],"rhsusf_ach_helmet_headset_ocp_alt","",["rhsusf_bino_m24_ARD","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};
class Cav_B_C_Weapons_Mortar_Assistant_F : Cav_B_Charlie_Weapons_base_F {
    displayName = "$STR_cav_troops_charlie_weapons_mortar_assistant";
    scope = 2;
    loadout = [["rhs_weap_m4a1","","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_oefcp",[["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACRE_PRC343",1],["ACE_quikclot",20],["ACE_tourniquet",5]]],["rhsusf_mbav_rifleman",[["ACE_CableTie",1],["ACE_artilleryTable",1],["ACE_Flashlight_XL50",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,30],["SmokeShell",6,1],["rhs_mag_m67",2,1],["ACE_Chemlight_IR",2,1]]],["B_Kitbag_mcamo",[["ACE_EntrenchingTool",1],["NDS_M_6Rnd_60mm_HE_0",1,6],["NDS_M_6Rnd_60mm_HE",3,6]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};
class Cav_B_C_Weapons_Mortar_AutomaticRifleman_F : Cav_B_Charlie_Weapons_base_F {
    displayName = "$STR_cav_troops_charlie_weapons_mortar_automaticrifleman";
    scope = 2;
    loadout = [["rhs_weap_m249_pip_S","rhsusf_acc_SFMB556","rhsusf_acc_anpeq16a_light","rhsusf_acc_ELCAN_ard",["rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",200],[],"rhsusf_acc_saw_lw_bipod"],[],[],["rhs_uniform_acu_oefcp",[["ACE_microDAGR",1],["ACRE_PRC343",1],["ACE_quikclot",20],["ACE_EarPlugs",1],["ACE_tourniquet",5]]],["rhsusf_mbav_mg",[["ACE_Flashlight_XL50",1],["rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",2,200],["SmokeShell",5,1],["rhs_mag_m67",3,1],["ACE_Chemlight_IR",2,1]]],["B_AssaultPack_mcamo",[["rhsusf_acc_eotech_xps3",1],["rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",3,200],["B_IR_Grenade",1,1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};


// Named
class Cav_B_C_Weapons_SquadLeader_1_4_F : Cav_B_C_Weapons_SquadLeader_F { scope = 1; };
class Cav_B_C_Weapons_SquadLeader_2_4_F : Cav_B_C_Weapons_SquadLeader_F { scope = 1; };

class Cav_B_C_Weapons_Alpha_FireTeamLeader_F : Cav_B_C_Weapons_M240B_MachinegunnerAmmoBearer_F { scope = 1; };
class Cav_B_C_Weapons_Alpha_Trooper_2_F : Cav_B_C_Weapons_M240B_Machinegunner_F { scope = 1; };
class Cav_B_C_Weapons_Alpha_Trooper_3_F : Cav_B_C_Weapons_M240B_MachinegunnerAmmoBearer_F { scope = 1; };
class Cav_B_C_Weapons_Alpha_Trooper_4_F : Cav_B_C_Weapons_MAAWS_MAAWSGunner_F { scope = 1; };

class Cav_B_C_Weapons_Bravo_FireTeamLeader_F : Cav_B_C_Weapons_M240B_MachinegunnerAmmoBearer_F { scope = 1; };
class Cav_B_C_Weapons_Bravo_Trooper_2_F : Cav_B_C_Weapons_M240B_Machinegunner_F { scope = 1; };
class Cav_B_C_Weapons_Bravo_Trooper_3_F : Cav_B_C_Weapons_M240B_MachinegunnerAmmoBearer_F { scope = 1; };
class Cav_B_C_Weapons_Bravo_Trooper_4_F : Cav_B_C_Weapons_MAAWS_MAAWSGunner_F { scope = 1; };