class Cav_B_B_Scout_Officer_F : Cav_B_Bravo_base_F {
    displayName = "$STR_cav_troops_bravo_viking_b_scout_officer";
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",30],[],"rhsusf_acc_tdstubby_tan"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",2],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_squadleader",[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",6,30],["rhs_mag_m67",2,1],["SmokeShell",6,1],["B_IR_Grenade",2,1],["SmokeShellBlue",3,1],["SmokeShellRed",3,1]]],["B_AssaultPack_mcamo",[["ACRE_PRC152",2],["ItemAndroid",1],["ACE_HuntIR_monitor",1],["SmokeShellGreen",2,1],["SmokeShellPurple",2,1],["SmokeShellYellow",2,1],[["ACE_MX2A","","","",[],[],""],1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};
class Cav_B_B_Scout_PlatoonLeader_F : Cav_B_B_Scout_Officer_F {
    displayName = "$STR_cav_troops_bravo_viking_b_scout_platoonlead";
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",2],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_squadleader",[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",6,30],["rhs_mag_m67",2,1],["SmokeShell",6,1],["B_IR_Grenade",2,1],["SmokeShellBlue",3,1],["SmokeShellRed",3,1]]],["rhsusf_assault_eagleaiii_ocp",[["ACRE_PRC152",2],["ItemAndroid",1],["ACE_HuntIR_monitor",1],["SmokeShellGreen",4,1],["SmokeShellPurple",4,1],["SmokeShellYellow",4,1],["SmokeShell",4,1],["SmokeShellBlue",3,1],["SmokeShellRed",3,1],[["ACE_MX2A","","","",[],[],""],1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};
class Cav_B_B_Scout_PlatoonMedic_F : Cav_B_Bravo_base_F {
    displayName = "$STR_cav_troops_bravo_viking_b_scout_platoonmedic";
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",3],["ACRE_PRC152",1],["ACE_surgicalKit",1]]],["rhsusf_mbav_medic",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",7,30],["SmokeShell",4,1],["rhs_mag_m67",2,1],["ACE_Chemlight_HiYellow",4,1],["ACE_Chemlight_HiRed",4,1],["SmokeShellBlue",2,1]]],["B_Kitbag_mcamo",[["ACE_quikclot",30],["ACE_tourniquet",10],["ACE_personalAidKit",1],["ACE_elasticBandage",30],["ACE_morphine",20],["ACE_epinephrine",20],["ACE_adenosine",6],["ACE_salineIV",12],["ACE_splint",12],["ACE_CableTie",1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 1;
};

class Cav_B_B_Scout_SquadLeader_F : Cav_B_Bravo_base_F {
    displayName = "$STR_cav_troops_bravo_viking_b_scout_squadleader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",2],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_squadleader",[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",7,30],["rhs_mag_m67",2,1],["SmokeShell",6,1],["B_IR_Grenade",2,1],["SmokeShellBlue",3,1],["SmokeShellRed",1,1]]],["B_AssaultPack_mcamo",[["ACRE_PRC152",2],["ItemAndroid",1],["ACE_HuntIR_monitor",1],["ACE_SpraypaintRed",1],["ACE_SpraypaintGreen",1],["ACE_EntrenchingTool",1],["SmokeShellRed",2,1],["SmokeShellGreen",1,1],[["ACE_MX2A","","","",[],[],""],1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};
class Cav_B_B_Scout_FireTeamLeader_F : Cav_B_Bravo_base_F {
    displayName = "$STR_cav_troops_bravo_viking_b_scout_teamlead";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",30],[],"rhsusf_acc_tdstubby_tan"],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",2],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_teamleader_alt",[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",7,30],["rhs_mag_m67",2,1],["SmokeShell",6,1],["B_IR_Grenade",2,1],["SmokeShellBlue",3,1],["SmokeShellRed",1,1]]],["B_AssaultPack_mcamo",[["ACRE_PRC152",2],["ItemAndroid",1],["ACE_HuntIR_monitor",1],["ACE_SpraypaintRed",1],["ACE_SpraypaintGreen",1],["ACE_EntrenchingTool",1],["SmokeShellRed",2,1],["SmokeShellGreen",1,1],[["ACE_MX2A","","","",[],[],""],1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};
class Cav_B_B_Scout_TeamLead_320_F : Cav_B_Bravo_base_F {
    displayName = "$STR_cav_troops_bravo_viking_b_scout_teamlead_320";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",2],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_teamleader",[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",8,30],["rhs_mag_m67",2,1],["SmokeShell",2,1],["B_IR_Grenade",2,1],["rhs_mag_M441_HE",4,1]]],["B_AssaultPack_mcamo",[["ACRE_PRC152",2],["ItemAndroid",1],["ACE_HuntIR_monitor",1],["ACE_SpraypaintRed",1],["ACE_SpraypaintGreen",1],["ACE_EntrenchingTool",1],["rhs_mag_M441_HE",1,1],["rhs_mag_m713_Red",2,1],["rhs_mag_m714_White",2,1],["ACE_HuntIR_M203",2,1],["SmokeShellBlue",2,1],["SmokeShellRed",1,1],[["ACE_MX2A","","","",[],[],""],1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};
class Cav_B_B_Scout_AutomaticRifleman_F : Cav_B_Bravo_base_F {
    displayName = "$STR_cav_troops_bravo_viking_b_scout_automaticrifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m249_light_L","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",["rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",200],[],"rhsusf_acc_grip4_bipod"],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",2],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_saw",[["rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",3,200]]],["B_AssaultPack_mcamo",[["ACE_SpraypaintGreen",1],["ACE_EntrenchingTool",1],["rhs_mag_m67",2,1],["SmokeShell",3,1],["SmokeShellBlue",1,1],["SmokeShellRed",1,1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};
class Cav_B_B_Scout_Grenadier_F : Cav_B_Bravo_base_F {
    displayName = "$STR_cav_troops_bravo_viking_b_scout_grenadier";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",30],["rhs_mag_M441_HE",1],""],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",2],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_grenadier",[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",9,30],["rhs_mag_m67",2,1],["SmokeShell",2,1],["rhs_mag_M441_HE",5,1],["ACE_HuntIR_M203",1,1]]],["rhsusf_assault_eagleaiii_ocp",[["ACE_SpraypaintGreen",1],["ACE_HuntIR_monitor",1],["ACE_EntrenchingTool",1],["rhs_mag_M441_HE",4,1],["rhs_mag_m713_Red",2,1],["rhs_mag_m714_White",4,1],["ACE_HuntIR_M203",2,1],["SmokeShellBlue",1,1],["SmokeShellRed",1,1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};
class Cav_B_B_Scout_Rifleman_F : Cav_B_Bravo_base_F {
    displayName = "$STR_cav_troops_bravo_viking_b_scout_rifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",2],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",9,30],["rhs_mag_m67",2,1],["SmokeShell",6,1],["SmokeShellRed",2,1],["SmokeShellBlue",1,1]]],["rhsusf_assault_eagleaiii_ocp",[["ACE_SpraypaintGreen",1],["ACE_EntrenchingTool",1],["rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",1,200],["SmokeShellBlue",1,1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};
class Cav_B_B_Scout_CombatLifeSaver_F : Cav_B_Bravo_base_F {
    displayName = "$STR_cav_troops_bravo_viking_b_scout_combatlifesaver";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",30],[],"rhsusf_acc_grip3"],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",2],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_rifleman_alt",[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",9,30],["rhs_mag_m67",2,1],["SmokeShell",4,1],["SmokeShellRed",2,1],["SmokeShellBlue",2,1],["SmokeShellGreen",1,1]]],["rhsusf_assault_eagleaiii_ocp",[["ACE_quikclot",20],["ACE_tourniquet",6],["ACE_SpraypaintGreen",1],["ACE_EntrenchingTool",1],["ACE_splint",8],["SmokeShellGreen",1,1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 0;
};

class Cav_B_B_Scout_Crew_F : Cav_B_Bravo_base_F {
    displayName = "$STR_cav_troops_bravo_viking_b_scout_crew";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_tdstubby_blk"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",2],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_crewman",[["ACRE_PRC152",2],["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["SmokeShell",2,1],["rhs_mag_m67",2,1],["SmokeShellBlue",3,1],["SmokeShellYellow",1,1],["SmokeShellRed",1,1]]],["B_AssaultPack_mcamo",[["rhsusf_shemagh_gogg_tan",1],["ToolKit",1],["ACE_EntrenchingTool",1],["ACE_UAVBattery",2],["ACE_personalAidKit",1]]],"rhsusf_cvc_green_helmet","rhsusf_shemagh_tan",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};
class Cav_B_B_Scout_Driver_F : Cav_B_B_Scout_Crew_F {
    displayName = "$str_cav_troops_bravo_viking_b_scout_driver";
    scope = 1;
};
class Cav_B_B_Scout_Gunner_F : Cav_B_B_Scout_Crew_F {
    displayName = "$str_cav_troops_bravo_viking_b_scout_gunner";
    scope = 1;
};

// Named
class Cav_B_B_Scout_SquadLeader_2_1_F : Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_1";
};
class Cav_B_B_Scout_SquadLeader_2_2_F : Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_2";
};
class Cav_B_B_Scout_SquadLeader_2_3_F : Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    //insignia = "cav_insignia_charlie_1_3";
};
class Cav_B_B_Scout_SquadLeader_2_4_F : Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    //insignia = "cav_insignia_charlie_1_4";
};

// Teams
class Cav_B_B_Scout_PlatoonLead_2_5_F : Cav_B_B_Scout_PlatoonLeader_F {
    scope = 1;
    insignia = "cav_insignia_bravo_2";
};
class Cav_B_B_Scout_PlatoonLead_2_6_F : Cav_B_B_Scout_PlatoonLeader_F {
    scope = 1;
    insignia = "cav_insignia_bravo_2";
};
class Cav_B_B_Scout_PlatoonMedic_2_7_F : Cav_B_B_Scout_PlatoonMedic_F { scope = 1; };

class Cav_B_B_Scout_Alpha_FireTeamLeader_F : Cav_B_B_Scout_FireTeamLeader_F { scope = 1; };
class Cav_B_B_Scout_Alpha_TeamLead_320_F : Cav_B_B_Scout_TeamLead_320_F { scope = 1; };
class Cav_B_B_Scout_Alpha_AutomaticRifleman_F : Cav_B_B_Scout_AutomaticRifleman_F { scope = 1; };
class Cav_B_B_Scout_Alpha_Grenadier_F : Cav_B_B_Scout_Grenadier_F { scope = 1; };
class Cav_B_B_Scout_Alpha_Rifleman_F : Cav_B_B_Scout_Rifleman_F { scope = 1; };
class Cav_B_B_Scout_Alpha_CombatLifeSaver_F : Cav_B_B_Scout_CombatLifeSaver_F { scope = 1; };

class Cav_B_B_Scout_Bravo_FireTeamLeader_F : Cav_B_B_Scout_FireTeamLeader_F { scope = 1; };
class Cav_B_B_Scout_Bravo_TeamLead_320_F : Cav_B_B_Scout_TeamLead_320_F { scope = 1; };
class Cav_B_B_Scout_Bravo_AutomaticRifleman_F  : Cav_B_B_Scout_AutomaticRifleman_F { scope = 1; };
class Cav_B_B_Scout_Bravo_Grenadier_F  : Cav_B_B_Scout_Grenadier_F { scope = 1; };
class Cav_B_B_Scout_Bravo_Rifleman_F  : Cav_B_B_Scout_Rifleman_F { scope = 1; };
class Cav_B_B_Scout_Bravo_CombatLifeSaver_F  : Cav_B_B_Scout_CombatLifeSaver_F { scope = 1; };