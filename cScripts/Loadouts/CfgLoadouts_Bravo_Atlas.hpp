class Cav_B_Bravo_Atlas_base_F : Cav_B_Bravo_base_F {
    scope = 0;
    category[] += {"cScripts_Loadout_Cat_Bravo_Atlas"};
    insignia = "cav_insignia_bravo_3";
    //abilityMedic = 0;
    //abilityEngineer = 0;
    //abilityEOD = 0;
};

class Cav_B_B_Atlas_Logistics_OpsOfficer_F : Cav_B_Bravo_Atlas_base_F {
    displayName = "$STR_cav_troops_bravo_atlas_b_atlas_logistics_opsofficer";
    scope = 2;
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_grip3"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_CableTie",1],["ACE_quikclot",16],["B_IR_Grenade",1,1]]],["rhsusf_spcs_ocp_teamleader_alt",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1],["SmokeShell",2,1],["SmokeShellGreen",2,1],["ACE_Chemlight_UltraHiOrange",6,1],["B_IR_Grenade",5,1]]],["B_Carryall_mcamo",[["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_personalAidKit",1],["rhsusf_ANPVS_14",1],["ACE_splint",2],["ACE_morphine",2],["ACRE_PRC117F",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_EarPlugs",1]]],"rhsusf_ach_bare_headset","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    abilityEngineer = 1;
    abilityEOD = 1;
};
class Cav_B_B_Atlas_Logistics_OpsNCO_F : Cav_B_Bravo_Atlas_base_F {
    displayName = "$STR_cav_troops_bravo_atlas_b_atlas_logistics_opsnco";
    scope = 2;
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_tdstubby_tan"],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_CableTie",1],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_teamleader_alt",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1],["SmokeShell",2,1],["SmokeShellGreen",2,1],["ACE_Chemlight_UltraHiOrange",6,1],["B_IR_Grenade",5,1]]],["B_Carryall_mcamo",[["ACE_personalAidKit",1],["rhsusf_ANPVS_14",1],["ACE_quikclot",10],["ACE_splint",2],["ACE_morphine",2],["ACRE_PRC117F",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_EarPlugs",1],["B_IR_Grenade",1,1]]],"rhsusf_ach_bare_headset","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    abilityEngineer = 1;
    abilityEOD = 1;
};

class Cav_B_B_Atlas_Medic_TeamLeader_F : Cav_B_Bravo_Atlas_base_F {
    displayName = "$STR_cav_troops_bravo_atlas_b_atlas_logistics_teamleader";
    scope = 2;
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_tdstubby_blk"],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",2],["ACE_MapTools",2],["ACE_Flashlight_XL50",2],["ACE_microDAGR",2],["ACE_EarPlugs",2],["ACE_CableTie",1],["ACRE_PRC152",1],["ACE_epinephrine",1]]],["rhsusf_mbav_medic",[["ACE_epinephrine",3],["ACE_adenosine",6],["ACE_splint",8],["ACE_CableTie",2],["ACE_surgicalKit",1],["rhsusf_ANPVS_14",1],["ACRE_PRC152",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["SmokeShell",4,1],["SmokeShellBlue",2,1],["ACE_Chemlight_HiYellow",4,1],["ACE_Chemlight_HiRed",4,1]]],["B_Carryall_mcamo",[["ACE_quikclot",50],["ACE_tourniquet",14],["ACE_personalAidKit",6],["rhsusf_ANPVS_14",1],["ACE_salineIV",10],["ACE_elasticBandage",40],["ACE_morphine",20],["ACE_epinephrine",16]]],"rhsusf_ach_bare_tan_headset","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    abilityMedic = 2;
};
class Cav_B_B_Atlas_Medic_CombatMedic_F : Cav_B_Bravo_Atlas_base_F {
    displayName = "$STR_cav_troops_bravo_atlas_b_atlas_medic_combatmedic";
    scope = 2;
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_tdstubby_blk"],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",2],["ACE_MapTools",2],["ACE_Flashlight_XL50",2],["ACE_microDAGR",2],["ACE_EarPlugs",2],["ACE_CableTie",1],["ACRE_PRC152",1],["ACE_epinephrine",1]]],["rhsusf_mbav_medic",[["ACE_epinephrine",3],["ACE_adenosine",6],["ACE_splint",8],["ACE_CableTie",2],["ACE_surgicalKit",1],["rhsusf_ANPVS_14",1],["ACE_elasticBandage",10],["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["SmokeShell",4,1],["SmokeShellBlue",2,1],["ACE_Chemlight_HiYellow",4,1],["ACE_Chemlight_HiRed",4,1]]],["B_Carryall_mcamo",[["ACE_quikclot",50],["ACE_tourniquet",14],["ACE_personalAidKit",6],["rhsusf_ANPVS_14",1],["ACE_salineIV",10],["ACE_elasticBandage",40],["ACE_morphine",20],["ACE_epinephrine",16]]],"rhsusf_ach_bare_tan_headset","",[],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    abilityMedic = 2;
};

class Cav_B_B_Atlas_Logistics_TeamLeader_F : Cav_B_Bravo_Atlas_base_F {
    displayName = "$STR_cav_troops_bravo_atlas_b_atlas_logistics_teamleader";
    scope = 2;
    loadout = [["rhs_weap_m4a1_m320","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],["rhs_mag_m714_White",1],""],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_CableTie",1],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_saw",[["ACRE_PRC152",2],["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["SmokeShell",2,1],["SmokeShellGreen",2,1],["ACE_Chemlight_UltraHiOrange",5,1],["B_IR_Grenade",4,1],["rhs_mag_m714_White",1,1],["ACE_HuntIR_M203",3,1]]],["B_Carryall_mcamo",[["ACE_personalAidKit",1],["rhsusf_ANPVS_14",1],["ACE_splint",2],["ACE_morphine",2],["ACE_Fortify",1],["ToolKit",1],["ACRE_PRC152",1]]],"rhsusf_ach_bare_headset","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    abilityEngineer = 2;
    abilityEOD = 1;
};
class Cav_B_B_Atlas_Logistics_TeamMember_F : Cav_B_Bravo_Atlas_base_F {
    displayName = "$STR_cav_troops_bravo_atlas_b_atlas_logistics_teammember";
    scope = 2;
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_tdstubby_blk"],[],[],["rhs_uniform_acu_ocp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_CableTie",1],["ACE_quikclot",20],["ACE_tourniquet",4]]],["rhsusf_spcs_ocp_saw",[["ACRE_PRC152",3],["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["SmokeShell",2,1],["SmokeShellGreen",2,1],["ACE_Chemlight_UltraHiOrange",5,1],["B_IR_Grenade",4,1]]],["B_Carryall_mcamo",[["ACE_personalAidKit",1],["rhsusf_ANPVS_14",1],["ACE_splint",2],["ACE_morphine",2],["ACE_Fortify",1],["ToolKit",1],["ACE_SpraypaintRed",1]]],"rhsusf_ach_bare_headset_ess","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    abilityEngineer = 2;
    abilityEOD = 1;
};

// Named
class Cav_B_B_Atlas_Logistics_OpsNCO_3_5_F : Cav_B_B_Atlas_Logistics_OpsNCO_F { scope = 1; };
class Cav_B_B_Atlas_Logistics_OpsOfficer_3_6_F : Cav_B_B_Atlas_Logistics_OpsOfficer_F { scope = 1; };
class Cav_B_B_Atlas_Medic_TeamLeader_3_1_F : Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };
class Cav_B_B_Atlas_Medic_TeamLeader_3_2_F : Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };
class Cav_B_B_Atlas_Logistics_TeamLeader_3_3_F : Cav_B_B_Atlas_Logistics_TeamLeader_F { scope = 1; };
class Cav_B_B_Atlas_Logistics_TeamLeader_3_4_F : Cav_B_B_Atlas_Logistics_TeamLeader_F { scope = 1; };