class Cav_B_Bravo_Atlas_base_F: Cav_B_Bravo_base_F {
    scope = 0;
    category[] += {"cScripts_Loadout_Cat_Bravo_Atlas"};
    insignia = "cav_insignia_Specialized_Medic0";
    abilityMedic = 2;
    
    role = "medic";
    icon = "iconManMedic";
};

class Cav_B_B_Atlas_Medic_TeamLeader_F: Cav_B_Bravo_Atlas_base_F {
    displayName = "Team Leader";
    scope = 2;
    loadout = [["rhs_weap_mk18_KAC_bk","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],""],[],[],["USP_G3C_RS2_KP_OR_VQ_MC",[["ACE_surgicalKit",1],["ACE_tourniquet",8],["kat_Pulseoximeter",4],["ACE_CableTie",2],["ACE_MapTools",1],["ACE_IR_Strobe_Item",2],["ACE_EarPlugs",1],["kat_Carbonate",2,10],["kat_Painkiller",4,10]]],["USP_CRYE_CPC_MEDIC_BELT_MC",[["kat_IO_FAST",15],["kat_naloxone",5],["kat_norepinephrine",15],["kat_phenylephrine",20],["ACE_packingBandage",10],["ACE_elasticBandage",30],["kat_IV_16",15],["kat_stethoscope",1],["ACE_microDAGR",1],["kat_nitroglycerin",18],["kat_chestSeal",5],["kat_fentanyl",5],["kat_ketamine",5],["kat_nalbuphine",5],["ACE_adenosine",3],["kat_aatKit",5],["kat_TXA",5],["kat_lidocaine",5],["kat_EACA",15],["kat_atropine",10],["kat_amiodarone",5],["ACE_epinephrine",3],["SmokeShellBlue",2,1],["SmokeShellPurple",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",5,30]]],["USP_TACTICAL_PACK",[["kat_AED",1],["ACE_plasmaIV",6],["ACE_plasmaIV_500",6],["ACE_salineIV_250",2],["kat_BVM",1],["kat_larynx",10],["ACE_salineIV",1],["ACE_Chemlight_Shield",1],["kat_accuvac",1],["ACE_Chemlight_White",1,1]]],"USP_OPSCORE_FASTMTC_CMTW","USP_MFRAME_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter","USP_PVS31_COMPACT"]];
};
class Cav_B_B_Atlas_Medic_CombatMedic_F: Cav_B_B_Atlas_Medic_TeamLeader_F {
    displayName = "Team Member";
    scope = 2;
    loadout = [["rhs_weap_mk18_KAC_bk","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],""],[],[],["USP_G3C_RS2_KP_OR_VQ_MC",[["ACE_surgicalKit",1],["ACE_tourniquet",8],["kat_Pulseoximeter",5],["ACE_CableTie",4],["ACE_MapTools",1],["ACE_EarPlugs",1],["kat_Carbonate",2,10],["kat_Painkiller",4,10]]],["USP_CRYE_CPC_MEDIC_BELT_MC",[["kat_IO_FAST",15],["kat_naloxone",5],["kat_norepinephrine",20],["kat_phenylephrine",20],["ACE_packingBandage",10],["ACE_elasticBandage",30],["kat_IV_16",20],["kat_stethoscope",1],["ACE_Chemlight_Shield",1],["ACE_IR_Strobe_Item",2],["ACE_microDAGR",1],["kat_nitroglycerin",20],["kat_chestSeal",5],["kat_fentanyl",5],["kat_ketamine",5],["kat_nalbuphine",5],["ACE_adenosine",3],["ACE_epinephrine",3],["kat_amiodarone",5],["kat_atropine",10],["kat_EACA",10],["kat_TXA",5],["ACE_Chemlight_White",1,1],["SmokeShellBlue",2,1],["SmokeShellPurple",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",5,30]]],["USP_TACTICAL_PACK",[["kat_larynx",10],["ACE_plasmaIV",7],["kat_lidocaine",5],["ACE_salineIV_250",2],["kat_aatKit",5],["ACE_plasmaIV_500",7],["kat_BVM",1],["ACE_salineIV",2],["kat_accuvac",1]]],"USP_OPSCORE_FASTMTC_CMTW","USP_MFRAME_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter","USP_PVS31_COMPACT"]];
};    

class Cav_B_B_Atlas_Medic_Surgeon_F_Local: Cav_B_B_Atlas_Medic_TeamLeader_F {
    displayName = "Surgeon";
    scope = 2;
    loadout = [["rhs_weap_mk18_KAC_bk","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],""],[],[],["USP_G3C_RS2_KP_OR_VQ_MC",[["ACE_surgicalKit",1],["ACE_tourniquet",8],["kat_Pulseoximeter",5],["ACE_CableTie",4],["ACE_MapTools",1],["ACE_EarPlugs",1],["kat_Carbonate",2,10],["kat_Painkiller",4,10]]],["USP_CRYE_CPC_MEDIC_BELT_MC",[["kat_IO_FAST",10],["kat_naloxone",5],["kat_norepinephrine",15],["kat_phenylephrine",15],["ACE_packingBandage",10],["ACE_elasticBandage",30],["kat_IV_16",15],["kat_stethoscope",1],["ACE_Chemlight_Shield",1],["ACE_IR_Strobe_Item",2],["ACE_microDAGR",1],["kat_nitroglycerin",15],["kat_chestSeal",5],["kat_fentanyl",5],["kat_ketamine",5],["kat_nalbuphine",5],["kat_retractor",1],["kat_clamp",1],["kat_plate",5],["ACE_adenosine",3],["kat_aatKit",3],["kat_amiodarone",5],["kat_atropine",5],["kat_EACA",10],["kat_TXA",5],["kat_lidocaine",10],["kat_BVM",1],["ACE_epinephrine",3],["ACE_Chemlight_White",1,1],["SmokeShellBlue",2,1],["SmokeShellPurple",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",5,30]]],["USP_TACTICAL_PACK",[["kat_vacuum",1],["kat_etomidate",20],["kat_flumazenil",5],["kat_larynx",10],["kat_lorazepam",5],["ACE_plasmaIV",6],["ACE_plasmaIV_500",6],["ACE_salineIV_250",5],["kat_scalpel",30],["kat_X_AED",1],["kat_accuvac",1]]],"USP_OPSCORE_FASTMTC_CMTW","USP_MFRAME_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter","USP_PVS31_COMPACT"]];
};

// Named
class Cav_B_B_Atlas_Medic_TeamLeader_3_1_F: Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };
class Cav_B_B_Atlas_Medic_TeamLeader_3_2_F: Cav_B_B_Atlas_Medic_TeamLeader_F { scope = 1; };
