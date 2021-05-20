class Cav_B_B_Officer_F : Cav_B_Bravo_base_F {
    displayName = "Viking Platoon Staff";
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_mstock","","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1]]],["rhsusf_spcs_ocp_squadleader",[["ACRE_PRC152",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],[["ACE_MX2A","","","",[],[],""],1]]],["rhsusf_assault_eagleaiii_ocp",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["ACRE_PRC152",1],["B_IR_Grenade",4,1],["SmokeShellBlue",4,1],["SmokeShellRed",4,1],["SmokeShellYellow",4,1]]],"rhsusf_ach_helmet_headset_ocp_alt","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
};

class Cav_B_B_PlatoonSergeant_F : Cav_B_B_Officer_F {
    displayName = "$STR_cav_Bravo_Characters_B_PlatoonSergeant";
    scope = 2;
};
class Cav_B_B_PlatoonLeader_F : Cav_B_B_Officer_F {
    displayName = "$STR_cav_Bravo_Characters_B_PlatoonLeader";
    scope = 2;
};
class Cav_B_B_PlatoonMedic_F : Cav_B_Bravo_base_F {
    displayName = "$STR_cav_Bravo_Characters_B_PlatoonMedic";
    scope = 2;
    loadout = [["rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_oefcp",[["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_microDAGR",1],["ACE_CableTie",3],["ACRE_PRC152",1],["ACE_surgicalKit",1]]],["rhsusf_mbav_medic",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",7,30],["SmokeShell",4,1],["rhs_mag_m67",2,1],["ACE_Chemlight_HiYellow",4,1],["ACE_Chemlight_HiRed",4,1],["SmokeShellBlue",2,1]]],["B_Kitbag_mcamo",[["ACE_quikclot",30],["ACE_tourniquet",10],["ACE_personalAidKit",1],["ACE_elasticBandage",30],["ACE_morphine",20],["ACE_epinephrine",20],["ACE_adenosine",6],["ACE_salineIV",12],["ACE_splint",12],["ACE_CableTie",1]]],"rhsusf_ach_helmet_camo_ocp","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"]];
    abilityMedic = 1;
};
 
