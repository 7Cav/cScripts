class Cav_B_C_Officer_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_Officer";
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    scope = 0;
};
class Cav_B_C_PlatoonSergeant_F : Cav_B_C_Officer_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonSergeant";
    scope = 2;
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip3"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_quikclot",14],["ACE_tourniquet",4],["ACRE_PRC152",1],["ACE_microDAGR",1]]],["rhsusf_spcs_ocp_squadleader",[["ACRE_PRC152",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",7,30],["rhs_mag_m67",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["ACE_Chemlight_IR",4,1]]],["B_AssaultPack_mcamo",[["rhsusf_ANPVS_14",1],["ACE_personalAidKit",1],["ACE_SpraypaintGreen",1],["ACE_HuntIR_monitor",1],[["ACE_MX2A","","","",[],[],""],1]]],"rhsusf_ach_helmet_camo_ocp","rhs_googles_black",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_PlatoonLeader_F : Cav_B_C_Officer_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonLeader";
    scope = 2;
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip3"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_quikclot",14],["ACE_tourniquet",4],["ACRE_PRC152",1],["ACE_microDAGR",1]]],["rhsusf_spcs_ocp_squadleader",[["ACRE_PRC152",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",7,30],["rhs_mag_m67",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["ACE_Chemlight_IR",4,1]]],["B_AssaultPack_mcamo",[["rhsusf_ANPVS_14",1],["ACE_personalAidKit",1],["ACE_SpraypaintGreen",1],["ACE_HuntIR_monitor",1],[["ACE_MX2A","","","",[],[],""],1]]],"rhsusf_ach_helmet_camo_ocp","rhs_googles_black",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_PlatoonMedic_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonMedic";
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip3_tan"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACRE_PRC152",1],["ACE_microDAGR",1],["ACE_splint",2],["ACE_CableTie",2]]],["rhsusf_spcs_ocp_medic",[["ACE_surgicalKit",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30],["rhs_mag_m67",2,1],["SmokeShell",4,1],["ACE_Chemlight_HiRed",4,1],["ACE_Chemlight_HiYellow",4,1]]],["B_Kitbag_mcamo",[["ACE_quikclot",24],["ACE_tourniquet",10],["rhsusf_ANPVS_14",1],["ACE_personalAidKit",1],["ACE_elasticBandage",30],["ACE_morphine",20],["ACE_epinephrine",20],["ACE_adenosine",6],["ACE_salineIV",12],["ACE_splint",10]]],"rhsusf_ach_helmet_camo_ocp","rhs_googles_black",["rhsusf_bino_m24_ARD","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 1;
};


class Cav_B_C_SquadLeader_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_SquadLeader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2_tan"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_quikclot",14],["ACE_tourniquet",4],["ACRE_PRC152",1],["ACE_microDAGR",1]]],["rhsusf_spcs_ocp_squadleader",[["ACRE_PRC152",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",7,30],["rhs_mag_m67",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["ACE_Chemlight_IR",4,1]]],["rhsusf_assault_eagleaiii_ocp",[["rhsusf_ANPVS_14",1],["ACE_personalAidKit",1],["ACE_HuntIR_monitor",1],["ACE_SpraypaintBlack",1],[["ACE_MX2A","","","",[],[],""],1],[["rhs_weap_rsp30_red","","","",[],[],""],1],[["rhs_weap_rsp30_red","","","",[],[],""],1]]],"rhsusf_ach_helmet_camo_ocp","rhs_googles_black",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};

class Cav_B_C_FireTeamLeader_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_FireTeamLeader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_tdstubby_tan"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_quikclot",14],["ACE_tourniquet",4],["ACRE_PRC152",1],["ACE_microDAGR",1]]],["rhsusf_spcs_ocp_teamleader",[["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",7,30],["rhs_mag_m67",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["ACE_Chemlight_IR",4,1]]],["rhsusf_assault_eagleaiii_ocp",[["rhsusf_ANPVS_14",1],["ACE_personalAidKit",1],["ACE_HuntIR_monitor",1],["ACE_SpraypaintRed",1],["ACE_EntrenchingTool",1],["rhsusf_200Rnd_556x45_soft_pouch",1,200]]],"rhsusf_ach_helmet_camo_ocp","rhs_googles_black",["ACE_Vector","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_AutomaticRifleman_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_AutomaticRifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m249_light_S","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ELCAN",["rhsusf_200Rnd_556x45_soft_pouch",200],[],"rhsusf_acc_grip4_bipod"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_DAGR",1]]],["rhsusf_spcs_ocp_saw",[["rhsusf_200Rnd_556x45_soft_pouch",3,200]]],["rhsusf_assault_eagleaiii_ocp",[["rhsusf_ANPVS_14",1],["ACE_personalAidKit",1],["rhsusf_200Rnd_556x45_soft_pouch",1,200],["rhs_mag_m67",2,1],["SmokeShell",4,1]]],"rhsusf_ach_helmet_camo_ocp","rhs_googles_black",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_Grenadier_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_Grenadier";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],["rhs_mag_M433_HEDP",1],""],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_DAGR",1]]],["rhsusf_spcs_ocp_grenadier",[["rhs_mag_30Rnd_556x45_M855A1_PMAG",9,30],["rhs_mag_m67",2,1],["SmokeShell",4,1],["rhs_mag_M433_HEDP",4,1]]],["B_AssaultPack_mcamo",[["rhsusf_ANPVS_14",1],["ACE_personalAidKit",1],["ACE_EntrenchingTool",1],["rhs_mag_M433_HEDP",7,1],["rhs_mag_m714_White",4,1],["ACE_40mm_Flare_ir",4,1],["ACE_HuntIR_M203",2,1],["rhs_mag_m67",2,1]]],"rhsusf_ach_helmet_camo_ocp","rhs_googles_black",["rhsusf_bino_m24_ARD","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_Rifleman_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_Rifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2_tan"],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_DAGR",1]]],["rhsusf_spcs_ocp_rifleman_alt",[["rhs_mag_30Rnd_556x45_M855A1_PMAG",9,30],["rhs_mag_m67",4,1],["SmokeShell",4,1]]],["B_AssaultPack_mcamo",[["rhsusf_ANPVS_14",1],["ACE_personalAidKit",1],["ACE_EntrenchingTool",1]]],"rhsusf_ach_helmet_camo_ocp","rhs_googles_black",[],["ItemMap","","","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_RiflemanAT_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_RiflemanAT";
    scope = 0;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
};
class Cav_B_C_RiflemanLAT_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_RiflemanLAT";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2_tan"],["rhs_weap_M136_hp","","","",[],[],""],[],["rhs_uniform_acu_ocp",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_DAGR",1],["ACRE_PRC343_ID_3",1]]],["rhsusf_spcs_ocp_rifleman_alt",[["rhs_mag_30Rnd_556x45_M855A1_PMAG",9,30],["rhs_mag_m67",4,1],["SmokeShell",4,1]]],["B_AssaultPack_mcamo",[["rhsusf_ANPVS_14",1],["ACE_personalAidKit",1],["ACE_EntrenchingTool",1]]],"rhsusf_ach_helmet_camo_ocp","rhs_googles_black",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_CombatLifeSaver_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_CombatLifeSaver";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Charlie_Squad"};
    insignia = "cav_insignia_specialized_cls";
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_tdstubby_tan"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_DAGR",1]]],["rhsusf_spcs_ocp_medic",[["rhs_mag_30Rnd_556x45_M855A1_PMAG",9,30],["rhs_mag_m67",3,1],["SmokeShell",4,1],["ACE_Chemlight_HiRed",4,1]]],["B_AssaultPack_mcamo",[["rhsusf_ANPVS_14",1],["ACE_quikclot",20],["ACE_tourniquet",4],["ACE_personalAidKit",5],["ACE_splint",8],["ACE_EntrenchingTool",1],["rhs_mag_m67",1,1]]],"rhsusf_ach_helmet_camo_ocp","rhs_googles_black",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""]];
    abilityMedic = 0;
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