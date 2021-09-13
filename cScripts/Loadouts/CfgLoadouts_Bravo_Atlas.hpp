class Cav_B_Bravo_Atlas_base_F : Cav_B_Bravo_base_F {
    scope = 0;
    category[] += {"cScripts_Loadout_Cat_Bravo_Atlas"};
    insignia = "cav_insignia_bravo_3";
    //abilityMedic = 0;
    //abilityEngineer = 0;
    //abilityEOD = 0;
};

class Cav_B_B_Atlas_Medic_TeamLeader_F : Cav_B_Bravo_Atlas_base_F {
    displayName = "Team Leader";
    scope = 2;
    loadout = [["rhs_weap_hk416d10","rhsusf_acc_SFMB556","","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhs_acc_grip_ffg2"],[],[],["rhs_uniform_g3_mc",[["kat_IV_16",10],["ACE_tourniquet",8],["ACE_SpraypaintBlue",1],["ACRE_PRC343",1],["ACRE_PRC152",1]]],["rhsusf_mbav_medic",[["ACE_morphine",8],["ACE_adenosine",4],["ACE_epinephrine",16],["ACE_surgicalKit",1],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_IR_Strobe_Item",4],["SmokeShell",6,1],["SmokeShellGreen",4,1],["SmokeShellBlue",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",5,30],["kat_Painkiller",6,10]]],["B_Carryall_cbr",[["ACE_elasticBandage",30],["ACE_splint",8],["ACE_packingBandage",30],["ACE_salineIV_500",30],["kat_TXA",20],["kat_naloxone",10],["kat_carbonate",4],["kat_AED",1],["ACE_personalAidKit",2]]],"rhsusf_opscore_ut_pelt_nsw_cam","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
    insignia = "cav_insignia_specialized_cls";
    icon = "iconManMedic";
    abilityMedic = 2;
};
class Cav_B_B_Atlas_Medic_CombatMedic_F : Cav_B_B_Atlas_Medic_TeamLeader_F {
    displayName = "Team Member";
    scope = 2;
    loadout =  [["rhs_weap_hk416d10","rhsusf_acc_SFMB556","","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhs_acc_grip_ffg2"],[],[],["rhs_uniform_g3_mc",[["kat_IV_16",10],["ACE_tourniquet",8],["ACE_SpraypaintBlue",1],["ACRE_PRC343",1],["ACRE_PRC152",1]]],["rhsusf_mbav_medic",[["ACE_morphine",8],["ACE_adenosine",4],["ACE_epinephrine",16],["ACE_surgicalKit",1],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["SmokeShell",6,1],["SmokeShellGreen",4,1],["SmokeShellBlue",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",5,30],["kat_Painkiller",6,10]]],["B_Carryall_cbr",[["ACE_elasticBandage",30],["ACE_splint",8],["ACE_packingBandage",30],["ACE_personalAidKit",4],["ACE_salineIV_500",30],["kat_TXA",20],["kat_naloxone",10],["kat_carbonate",4],["ACE_IR_Strobe_Item",4]]],"rhsusf_opscore_ut_pelt_nsw_cam","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};

// Named
class Cav_B_B_Atlas_Medic_TeamLeader_3_1_F : Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };
class Cav_B_B_Atlas_Medic_TeamLeader_3_2_F : Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };