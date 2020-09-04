
class Cav_B_C_Officer_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_Officer";
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip3"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_quikclot",14],["ACE_tourniquet",4],["ACRE_PRC152",1],["ACE_microDAGR",1]]],["rhsusf_spcs_ocp_squadleader",[["ACRE_PRC152",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",7,30],["rhs_mag_m67",2,1],["SmokeShell",4,1],["SmokeShellBlue",2,1],["ACE_Chemlight_IR",4,1]]],["B_AssaultPack_mcamo",[["rhsusf_ANPVS_14",1],["ACE_personalAidKit",1],["ACE_SpraypaintGreen",1],["ACE_HuntIR_monitor",1],[["ACE_MX2A","","","",[],[],""],1]]],"rhsusf_ach_helmet_camo_ocp","rhsusf_shemagh_tan",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};
class Cav_B_C_PlatoonSergeant_F : Cav_B_C_Officer_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonSergeant";
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    scope = 1;
};
class Cav_B_C_PlatoonLeader_F : Cav_B_C_Officer_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonLeader";
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    scope = 1;
};
class Cav_B_C_PlatoonMedic_F : Cav_B_Charlie_base_F {
    displayName = "$STR_Cav_Charlie_Characters_C_PlatoonMedic";
    category[] += {"cScripts_Loadout_Cat_Charlie_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip3_tan"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACRE_PRC152",1],["ACE_microDAGR",1],["ACE_splint",2],["ACE_CableTie",2]]],["rhsusf_spcs_ocp_medic",[["ACE_surgicalKit",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30],["rhs_mag_m67",2,1],["SmokeShell",4,1],["ACE_Chemlight_HiRed",4,1],["ACE_Chemlight_HiYellow",4,1]]],["B_Kitbag_mcamo",[["ACE_quikclot",24],["ACE_tourniquet",10],["rhsusf_ANPVS_14",1],["ACE_personalAidKit",1],["ACE_elasticBandage",30],["ACE_morphine",20],["ACE_epinephrine",20],["ACE_adenosine",6],["ACE_salineIV",12],["ACE_splint",10]]],"rhsusf_ach_helmet_camo_ocp","rhsusf_shemagh_tan",["rhsusf_bino_m24_ARD","","","",[],[],""],["ItemMap","","","ItemCompass","ACE_Altimeter",""]];
};