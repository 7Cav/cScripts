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
    loadout = [["rhs_weap_mk18_KAC_bk","rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk","rhsusf_acc_g33_xps3",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS2_KP_OR_VQ_MC",[["ACE_IR_Strobe_Item",4],["ACE_microDAGR",1],["ACE_surgicalKit",1],["ACE_tourniquet",10],["ACE_EarPlugs",2],["kat_Painkiller",4,10],["kat_Carbonate",2,10]]],["USP_CRYE_CPC_MEDIC_MC",[["kat_IV_16",20],["ACE_elasticBandage",20],["ACE_packingBandage",20],["ACE_CableTie",4],["ACE_Chemlight_Shield",1],["kat_EACA",20],["kat_IO_FAST",10],["kat_lidocaine",6],["ACE_morphine",10],["kat_naloxone",4],["kat_nitroglycerin",20],["kat_norepinephrine",20],["kat_phenylephrine",20],["ACE_splint",8],["kat_TXA",20],["ACE_Chemlight_IR",2,1],["ACE_Chemlight_White",1,1],["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",5,30]]],["USP_CRYE_BELT_PACK_MC",[["kat_AED",1],["ACE_bloodIV_500",10],["ACE_plasmaIV_500",8],["ACE_salineIV_250",8]]],"USP_OPSCORE_FASTMTC_CMTW","USP_RAID_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS31_HIGH"]];
    insignia = "cav_insignia_Specialized_Medic0";
    icon = "iconManMedic";
    abilityMedic = 2;
};
class Cav_B_B_Atlas_Medic_CombatMedic_F : Cav_B_B_Atlas_Medic_TeamLeader_F {
    displayName = "Team Member";
    scope = 2;
    loadout = [["rhs_weap_mk18_KAC_bk","rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk","rhsusf_acc_g33_xps3",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS2_KP_OR_VQ_MC",[["ACE_IR_Strobe_Item",4],["ACE_microDAGR",1],["ACE_surgicalKit",1],["ACE_tourniquet",10],["ACE_EarPlugs",2],["kat_Painkiller",4,10],["kat_Carbonate",2,10]]],["USP_CRYE_CPC_MEDIC_MC",[["kat_IV_16",20],["ACE_elasticBandage",20],["ACE_packingBandage",20],["ACE_CableTie",4],["ACE_Chemlight_Shield",1],["kat_EACA",20],["kat_IO_FAST",10],["kat_lidocaine",6],["ACE_morphine",10],["kat_naloxone",4],["kat_nitroglycerin",20],["kat_norepinephrine",20],["kat_phenylephrine",20],["ACE_splint",8],["kat_TXA",20],["ACE_Chemlight_IR",2,1],["ACE_Chemlight_White",1,1],["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",5,30]]],["USP_CRYE_BELT_PACK_MC",[["kat_AED",1],["ACE_bloodIV_500",10],["ACE_plasmaIV_500",8],["ACE_salineIV_250",8]]],"USP_OPSCORE_FASTMTC_CMTW","USP_RAID_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS31_HIGH"]];
};

class Cav_B_B_Atlas_Medic_Surgeon_F_Local : Cav_B_B_Atlas_Medic_TeamLeader_F {
    displayName = "Surgeon";
    scope = 2;
    loadout = [["rhs_weap_mk18_KAC_bk","rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk","rhsusf_acc_g33_xps3",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS2_KP_OR_VQ_MC",[["ACE_IR_Strobe_Item",4],["ACE_microDAGR",1],["ACE_surgicalKit",1],["ACE_tourniquet",10],["ACE_EarPlugs",2],["kat_Painkiller",4,10],["kat_Carbonate",2,10]]],["USP_CRYE_CPC_MEDIC_MC",[["kat_IV_16",20],["ACE_elasticBandage",20],["ACE_packingBandage",20],["ACE_CableTie",4],["ACE_Chemlight_Shield",1],["kat_EACA",20],["kat_IO_FAST",10],["kat_lidocaine",6],["ACE_morphine",10],["kat_naloxone",4],["kat_nitroglycerin",20],["kat_norepinephrine",20],["kat_phenylephrine",20],["ACE_splint",8],["kat_TXA",20],["ACE_Chemlight_IR",2,1],["ACE_Chemlight_White",1,1],["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",5,30]]],["USP_CRYE_BELT_PACK_MC",[["kat_AED",1],["ACE_bloodIV_500",10],["ACE_plasmaIV_500",8],["ACE_salineIV_250",8]]],"USP_OPSCORE_FASTMTC_CMTW","USP_RAID_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS31_HIGH"]];
};

// Named
class Cav_B_B_Atlas_Medic_TeamLeader_3_1_F : Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };
class Cav_B_B_Atlas_Medic_TeamLeader_3_2_F : Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };
