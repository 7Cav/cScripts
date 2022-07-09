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
    loadout = [["rhs_weap_mk18_KAC_bk","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],"rhsusf_acc_kac_grip"],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],["B_ACU_crye_ocp_SH_vest_1",[["ACE_surgicalKit",1],["ACE_tourniquet",10],["ACE_microDAGR",1],["ACE_IR_Strobe_Item",4],["kat_Painkiller",4,10],["kat_Carbonate",2,10]]],["LV1193",[["kat_IV_16",20],["kat_IO_FAST",10],["ACE_morphine",10],["ACE_EarPlugs",2],["ACE_elasticBandage",20],["ACE_packingBandage",20],["kat_nitroglycerin",15],["kat_norepinephrine",10],["kat_phenylephrine",10],["kat_TXA",10],["kat_naloxone",6],["ACE_splint",8],["kat_lidocaine",6],["kat_AED",1],["kat_EACA",10],["ACE_CableTie",4],["ACE_Chemlight_Shield",1],["ACRE_PRC152",1],["ACRE_PRC343",1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["ACE_Chemlight_IR",2,1],["kat_Painkiller",2,10],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",7,30],["rhsusf_mag_15Rnd_9x19_JHP",2,15],["ACE_Chemlight_White",1,1]]],["UK3CB_TKA_B_B_ASS",[["ACE_bloodIV_500",18],["ACE_salineIV_250",10]]],"rhsusf_opscore_ut_pelt_nsw_cam","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    insignia = "cav_insignia_Specialized_Medic0";
    icon = "iconManMedic";
    abilityMedic = 2;
};
class Cav_B_B_Atlas_Medic_CombatMedic_F : Cav_B_B_Atlas_Medic_TeamLeader_F {
    displayName = "Team Member";
    scope = 2;
    loadout = [["rhs_weap_mk18_KAC_bk","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],"rhsusf_acc_kac_grip"],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],["B_ACU_crye_ocp_SH_vest_1",[["ACE_surgicalKit",1],["ACE_tourniquet",10],["ACE_microDAGR",1],["ACE_IR_Strobe_Item",4],["kat_Painkiller",4,10],["kat_Carbonate",2,10]]],["LV1193",[["kat_IV_16",20],["kat_IO_FAST",10],["ACE_morphine",10],["ACE_EarPlugs",2],["ACE_elasticBandage",20],["ACE_packingBandage",20],["kat_nitroglycerin",15],["kat_norepinephrine",10],["kat_phenylephrine",10],["kat_TXA",10],["kat_naloxone",6],["ACE_splint",8],["kat_lidocaine",6],["kat_AED",1],["kat_EACA",10],["ACE_CableTie",4],["ACE_Chemlight_Shield",1],["ACRE_PRC152",1],["ACRE_PRC343",1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["ACE_Chemlight_IR",2,1],["kat_Painkiller",2,10],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",7,30],["rhsusf_mag_15Rnd_9x19_JHP",2,15],["ACE_Chemlight_White",1,1]]],["UK3CB_TKA_B_B_ASS",[["ACE_bloodIV_500",18],["ACE_salineIV_250",10]]],"rhsusf_opscore_ut_pelt_nsw_cam","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
};

// Named
class Cav_B_B_Atlas_Medic_TeamLeader_3_1_F : Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };
class Cav_B_B_Atlas_Medic_TeamLeader_3_2_F : Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };
