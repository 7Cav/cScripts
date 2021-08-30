class Cav_B_Bravo_Atlas_base_F : Cav_B_Bravo_base_F {
    scope = 0;
    category[] += {"cScripts_Loadout_Cat_Bravo_Atlas"};
    insignia = "cav_insignia_bravo_3";
    //abilityMedic = 0;
    //abilityEngineer = 0;
    //abilityEOD = 0;
};

class Cav_B_B_Atlas_Medic_TeamLeader_F : Cav_B_Bravo_Atlas_base_F {
    displayName = "$STR_cav_troops_bravo_atlas_b_atlas_logistics_teamleader";
    scope = 1;
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_tdstubby_blk"],[],[],["rhs_uniform_acu_ocp",[["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_CableTie",4],["ACE_EarPlugs",1],["ACRE_PRC343",1],["ACRE_PRC152",1]]],["rhsusf_mbav_medic",[["ACE_morphine",20],["ACE_epinephrine",20],["ACE_adenosine",6],["ACE_surgicalKit",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["SmokeShell",4,1],["SmokeShellBlue",2,1],["ACE_Chemlight_HiYellow",4,1],["ACE_Chemlight_HiRed",4,1]]],["B_Carryall_mcamo",[["ACE_quikclot",50],["ACE_tourniquet",14],["ACE_splint",8],["ACE_elasticBandage",50],["ACE_salineIV",10],["ACE_personalAidKit",6],["rhsusf_ANPVS_14",1]]],"rhsusf_ach_bare_tan_headset","",[],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 2;
};
class Cav_B_B_Atlas_Medic_CombatMedic_F : Cav_B_B_Atlas_Medic_TeamLeader_F {
    displayName = "$STR_cav_troops_bravo_atlas_b_atlas_medic_combatmedic";
    scope = 2;
};

// Named
class Cav_B_B_Atlas_Medic_TeamLeader_3_1_F : Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };
class Cav_B_B_Atlas_Medic_TeamLeader_3_2_F : Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };