
class Cav_B_B_Scout_Base_F : Cav_B_Bravo_base_F {
    scope = 0;
    role = "weapons";
};

class Cav_B_B_Scout_Officer_F : Cav_B_B_Scout_Base_F {
    displayName = "Viking Platoon Staff";
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    scope = 2;

    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_FMJ",15],[],""],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1]]],["V_CarrierRigKBT_01_light_OCP_F",[["ACRE_PRC152",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],[["ACE_MX2A","","","",[],[],""],1]]],["UK3CB_BAF_B_Bergen_MTP_Radio_L_B",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["ACRE_PRC152",1],["B_IR_Grenade",4,1],["SmokeShellBlue",4,1],["SmokeShellRed",4,1],["SmokeShellYellow",4,1]]],"H_HelmetSpecB","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
    icon = "iconManOfficer";
    role = "officer";
};

class Cav_B_B_Scout_PlatoonLeader_F : Cav_B_B_Scout_Officer_F {
    displayName = "Viking Platoon Leader";
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_FMJ",15],[],""],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1]]],["V_CarrierRigKBT_01_light_OCP_F",[["ACRE_PRC152",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],[["ACE_MX2A","","","",[],[],""],1]]],["UK3CB_BAF_B_Bergen_MTP_Radio_L_B",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["ACRE_PRC152",1],["B_IR_Grenade",4,1],["SmokeShellBlue",4,1],["SmokeShellRed",4,1],["SmokeShellYellow",4,1]]],"H_HelmetSpecB","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
};

class Cav_B_B_Scout_PlatoonSergeant_F : Cav_B_B_Scout_Officer_F {
    displayName = "Viking Platoon Sergeant";
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_FMJ",15],[],""],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1]]],["V_CarrierRigKBT_01_light_OCP_F",[["ACRE_PRC152",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],[["ACE_MX2A","","","",[],[],""],1]]],["UK3CB_BAF_B_Bergen_MTP_Radio_L_B",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["ACRE_PRC152",1],["B_IR_Grenade",4,1],["SmokeShellBlue",4,1],["SmokeShellRed",4,1],["SmokeShellYellow",4,1]]],"H_HelmetSpecB","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
    abilityEngineer = 1;
};

class Cav_B_B_Scout_PlatoonMedic_F : Cav_B_Bravo_Base_F {
    displayName = "Viking Platoon Medic";
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_ocp",[["ACE_tourniquet",10],["kat_IV_16",20],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["kat_Painkiller",2,10],["kat_Carbonate",2,10]]],["rhsusf_spcs_ocp_medic",[["ACE_surgicalKit",1],["ACRE_PRC152",2],["ACRE_PRC343",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30]]],["UK3CB_BAF_B_Bergen_MTP_Medic_H_B",[["ACE_elasticBandage",20],["ACE_splint",6],["ACE_epinephrine",8],["ACE_packingBandage",20],["ACE_bloodIV_500",4],["ACE_plasmaIV_500",4],["ACE_salineIV_500",4],["ACE_quikclot",60],["ACE_morphine",8],["kat_naloxone",4],["SmokeShellBlue",2,1],["SmokeShellRed",2,1],["SmokeShellYellow",2,1],["kat_Painkiller",6,10]]],"H_HelmetSpecB_snakeskin","rhs_googles_clear",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 1;
    role = "medic";
    icon = "iconManMedic";
};

class Cav_B_B_Scout_SquadLeader_F : Cav_B_B_Scout_Base_F {
    displayName = "Scout Squad Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1]]],["LV119",[["ACRE_PRC152",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],[["ACE_MX2A","","","",[],[],""],1]]],["UK3CB_BAF_B_Bergen_MTP_SL_L_A",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["B_IR_Grenade",4,1],["SmokeShellBlue",4,1],["SmokeShellRed",4,1],["SmokeShellYellow",4,1],["ACE_Chemlight_HiYellow",2,1],["ACE_Chemlight_HiRed",2,1],["ACE_Chemlight_HiBlue",2,1]]],"H_HelmetSpecB_paint1","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
    icon = "iconManLeader";
};
class Cav_B_B_Scout_TeamLeader_F : Cav_B_B_Scout_Base_F {
    displayName = "Scout Team Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","","rhsusf_acc_anpeq15","rhsusf_acc_g33_xps3",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1]]],["LV1193",[["ACRE_PRC152",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],["rhsusf_mag_15Rnd_9x19_JHP",2,15],[["ACE_MX2A","","","",[],[],""],1]]],["UK3CB_BAF_B_Bergen_MTP_Rifleman_H_C",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["B_IR_Grenade",4,1],["SmokeShellBlue",2,1],["SmokeShellRed",2,1],["SmokeShellYellow",2,1],["ACE_Chemlight_HiRed",2,1],["ACE_Chemlight_HiBlue",2,1],["ACE_Chemlight_HiYellow",2,1]]],"H_HelmetSpecB_paint1","rhsusf_oakley_goggles_clr",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
    icon = "iconManLeader";
};
class Cav_B_B_Scout_AutomaticRifleman_F : Cav_B_Bravo_base_F {
    displayName = "Scout Automatic Rifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m249_light_S","rhsusf_acc_SFMB556","rhsusf_acc_anpeq16a","rhsusf_acc_ELCAN_ard",["rhsusf_200Rnd_556x45_mixed_soft_pouch",200],[],"rhsusf_acc_saw_lw_bipod"],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],["rhs_uniform_acu_ocp",[["ACE_quikclot",10],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1],["ACE_packingBandage",6],["kat_Painkiller",1,10]]],["JPC24",[["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhsusf_200Rnd_556x45_mixed_soft_pouch",2,200],["rhsusf_mag_15Rnd_9x19_JHP",2,15]]],["UK3CB_B_Backpack_Pocket",[["rhsusf_200Rnd_556x45_mixed_soft_pouch",2,200]]],"H_HelmetSpecB_snakeskin","rhsusf_shemagh_gogg_tan",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
    icon = "iconManMG";
};
class Cav_B_B_Scout_Grenadier_F : Cav_B_B_Scout_Base_F {
    displayName = "Scout Grenadier";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],["rhs_weap_M320","","","",["rhs_mag_M433_HEDP",1],[],""],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1]]],["rhsusf_spcs_ocp_grenadier",[["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",1,1],["SmokeShell",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",6,30],["rhs_mag_M433_HEDP",6,1],["ACE_HuntIR_M203",4,1]]],["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C",[["ACE_EntrenchingTool",1],["rhs_mag_M397_HET",5,1],["ACE_HuntIR_M203",1,1],["rhs_mag_m713_Red",5,1],["ACE_40mm_Flare_ir",5,1],["rhs_mag_M664_red_cluster",5,1]]],"H_HelmetSpecB_paint1","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
};
class Cav_B_B_Scout_Rifleman_F : Cav_B_B_Scout_Base_F {
    displayName = "Scout Rifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_g33_xps3",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC152",1]]],["JPC25",[["ItemAndroid",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30]]],["UK3CB_BAF_B_Bergen_MTP_JTAC_H_A",[["ACE_EntrenchingTool",1],["ACE_wirecutter",1],["Rev_darter_item",1]]],"H_HelmetSpecB_snakeskin","rhsusf_shemagh_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
};
class Cav_B_B_Scout_RiflemanAT_F : Cav_B_B_Scout_Base_F {
    displayName = "Drone Operator";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_g33_xps3",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC152",1]]],["JPC25",[["ItemAndroid",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30]]],["UK3CB_BAF_B_Bergen_MTP_JTAC_H_A",[["ACE_EntrenchingTool",1],["ACE_wirecutter",1],["Rev_darter_item",1]]],"H_HelmetSpecB_snakeskin","rhsusf_shemagh_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
};
class Cav_B_B_Scout_CombatLifeSaver_F : Cav_B_Bravo_Base_F {
    displayName = "Scout Combat Lifesaver";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","","rhsusf_acc_anpeq15","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1]]],["V_CarrierRigKBT_01_light_OCP_F",[["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30]]],["UK3CB_BAF_B_Bergen_MTP_Medic_L_B",[["ACE_EntrenchingTool",1],["ACE_quikclot",32],["ACE_splint",18],["ACE_tourniquet",18],["ACE_epinephrine",9],["Chemlight_yellow",2,1],["ACE_Chemlight_IR",2,1],["SmokeShellRed",4,1],["SmokeShellYellow",4,1],["Chemlight_red",2,1]]],"H_HelmetSpecB","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 0;
    icon = "iconManMedic";
};

//Weapons Squad Loadouts

class Cav_B_Bravo_Weapons_base_F : Cav_B_Bravo_base_F {
    role = "weapons";
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Weapons"};
};

class Cav_B_B_Scout_WSL_F_Local : Cav_B_Bravo_base_F {
    displayName = "Weapons Squad Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],["rhs_weap_M320","","","",["rhs_mag_m713_Red",1],[],""],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_artilleryTable",1],["ACRE_PRC343",1]]],["rhsusf_mbav_grenadier",[["ACRE_PRC152",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],["rhs_mag_m713_Red",2,1],[["ACE_MX2A","","","",[],[],""],1]]],["UK3CB_BAF_B_Bergen_MTP_SL_L_A",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["B_IR_Grenade",4,1],["SmokeShellBlue",4,1],["SmokeShellRed",4,1],["SmokeShellYellow",4,1],["ACE_Chemlight_HiYellow",2,1],["ACE_Chemlight_HiRed",2,1],["ACE_Chemlight_HiBlue",2,1],["rhs_mag_m714_White",5,1],["rhs_mag_M664_red_cluster",4,1]]],"H_HelmetSpecB_paint1","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
};
class Cav_B_B_Scout_WeaponsTeamLeader_F_Local : Cav_B_Bravo_Weapons_base_F {
    displayName = "Weapons Team Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],["rhs_weap_M320","","","",["rhs_mag_m713_Red",1],[],""],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_artilleryTable",1],["ACRE_PRC343",1]]],["rhsusf_mbav_grenadier",[["ACRE_PRC152",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],["rhs_mag_m713_Red",2,1],[["ACE_MX2A","","","",[],[],""],1]]],["UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["B_IR_Grenade",4,1],["SmokeShellBlue",4,1],["SmokeShellRed",4,1],["SmokeShellYellow",4,1],["ACE_Chemlight_HiYellow",2,1],["ACE_Chemlight_HiRed",2,1],["ACE_Chemlight_HiBlue",2,1],["rhs_mag_m714_White",5,1],["rhs_mag_M664_red_cluster",4,1]]],"H_HelmetSpecB_paint1","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
};
class Cav_B_B_Scout_MMG_F_Local : Cav_B_Bravo_Weapons_base_F {
    displayName = "Weapons M240 Gunner";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m240B","rhsusf_acc_ARDEC_M240","rhsusf_acc_anpeq16a","rhsusf_acc_su230a_mrds",["rhsusf_100Rnd_762x51_m62_tracer",100],[],""],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_FMJ",15],[],""],["rhs_uniform_acu_ocp",[["ACRE_PRC343",1],["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1]]],["rhsusf_spcs_ocp_machinegunner",[["SmokeShellGreen",1,1],["HandGrenade",1,1],["SmokeShell",2,1],["rhsusf_100Rnd_762x51_m62_tracer",3,100],["rhsusf_mag_15Rnd_9x19_FMJ",2,15]]],["UK3CB_B_Backpack_Pocket",[]],"H_HelmetSpecB","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
};


//Stryker Crew
class Cav_B_B_Crew_F : Cav_B_Bravo_base_F {
    displayName = "Crew";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1]]],["rhsusf_spcs_ocp_rifleman",[["ACRE_PRC152",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30]]],["B_Kitbag_tan",[["ACE_EntrenchingTool",1],["ToolKit",1]]],"rhsusf_cvc_green_helmet","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
    abilityEngineer = 1;
};
class Cav_B_B_Ifv_Driver_F : Cav_B_B_Crew_F {
    displayName = "Stryker Driver";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACRE_PRC343",1]]],["rhsusf_spcs_ocp_rifleman",[["ACRE_PRC152",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30]]],["B_Kitbag_tan",[["ACE_EntrenchingTool",1],["ToolKit",1]]],"rhsusf_cvc_green_helmet","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
    abilityEngineer = 1;
};
class Cav_B_B_Ifv_Commander_F : Cav_B_B_Crew_F {
    displayName = "Stryker Vehicle Commander";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["rhs_uniform_acu_ocp",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1]]],["rhsusf_spcs_ocp_teamleader",[["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],[["ACE_MX2A","","","",[],[],""],1]]],["UK3CB_BAF_B_Bergen_MTP_Engineer_L_A",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["ToolKit",1],["B_IR_Grenade",4,1],["SmokeShellBlue",2,1],["SmokeShellRed",2,1],["SmokeShellYellow",2,1]]],"rhsusf_cvc_green_alt_helmet","rhsusf_shemagh2_gogg_od",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
    abilityEngineer = 1;
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

class Cav_B_B_Scout_Alpha_TeamLeader_F : Cav_B_B_Scout_TeamLeader_F { scope = 1; };
class Cav_B_B_Scout_Alpha_AutomaticRifleman_F : Cav_B_B_Scout_AutomaticRifleman_F { scope = 1; };
class Cav_B_B_Scout_Alpha_Grenadier_F : Cav_B_B_Scout_Grenadier_F { scope = 1; };
class Cav_B_B_Scout_Alpha_Rifleman_F : Cav_B_B_Scout_Rifleman_F { scope = 1; };
class Cav_B_B_Scout_Alpha_RiflemanAT_F : Cav_B_B_Scout_RiflemanAT_F { scope = 1; };
class Cav_B_B_Scout_Alpha_CombatLifeSaver_F : Cav_B_B_Scout_CombatLifeSaver_F { scope = 1; };

class Cav_B_B_Scout_Bravo_TeamLeader_F : Cav_B_B_Scout_TeamLeader_F { scope = 1; };
class Cav_B_B_Scout_Bravo_AutomaticRifleman_F  : Cav_B_B_Scout_AutomaticRifleman_F { scope = 1; };
class Cav_B_B_Scout_Bravo_Grenadier_F  : Cav_B_B_Scout_Grenadier_F { scope = 1; };
class Cav_B_B_Scout_Bravo_Rifleman_F  : Cav_B_B_Scout_Rifleman_F { scope = 1; };
class Cav_B_B_Scout_Bravo_RiflemanAT_F : Cav_B_B_Scout_RiflemanAT_F { scope = 1; };
class Cav_B_B_Scout_Bravo_CombatLifeSaver_F  : Cav_B_B_Scout_CombatLifeSaver_F { scope = 1; };

// Depricated (Will be removed eventually)
class Cav_B_B_Scout_Bravo_TeamLead_F : Cav_B_B_Scout_Bravo_TeamLeader_F {};
class Cav_B_B_Scout_Alpha_TeamLead_F : Cav_B_B_Scout_Alpha_TeamLeader_F {};
