class Cav_B_Bravo_Weapons_base_F : Cav_B_Bravo_base_F {
    role = "weapons";
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Weapons"};
};

class Cav_B_B_Scout_WSL_F_Local : Cav_B_Weapons_base_F {
    displayName = "Weapons Squad Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],["rhs_weap_M320","","","",["rhs_mag_m713_Red",1],[],""],["USP_G3C_KP_OR_MC",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_artilleryTable",1],["ACRE_PRC343",1]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACRE_PRC152",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],["rhs_mag_m713_Red",2,1],[["ACE_MX2A","","","",[],[],""],1]]],["UK3CB_BAF_B_Bergen_MTP_SL_L_A",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["B_IR_Grenade",4,1],["SmokeShellBlue",4,1],["SmokeShellRed",4,1],["SmokeShellYellow",4,1],["ACE_Chemlight_HiYellow",2,1],["ACE_Chemlight_HiRed",2,1],["ACE_Chemlight_HiBlue",2,1],["rhs_mag_m714_White",5,1],["rhs_mag_M664_red_cluster",4,1]]],"USP_OPS_FASTXP_TAN_MC_08","USP_MFRAME_SMG1_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","USP_PVS31"]];
    icon = "iconManLeader"
};

class Cav_B_B_Scout_MMG_F_Local : Cav_B_Bravo_Weapons_base_F {
    displayName = "Weapons M240 Gunner";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Weapons"};
    loadout = [["rhs_weap_m240B","rhsusf_acc_ARDEC_M240","rhsusf_acc_anpeq16a","rhsusf_acc_su230a_mrds",["rhsusf_100Rnd_762x51_m62_tracer",100],[],""],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["USP_G3C_KP_OR_MC",[["ACRE_PRC343",1],["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1]]],["rhsusf_spcs_ocp_machinegunner",[["SmokeShellGreen",1,1],["HandGrenade",1,1],["SmokeShell",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhsusf_100Rnd_762x51_m62_tracer",3,100]]],["UK3CB_B_Backpack_Pocket",[["rhsusf_100Rnd_762x51_m62_tracer",3,100]]],"USP_OPS_FASTXP_TAN_MC_04","USP_BALACLAVA_OAK_SMG1_CBR2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS15"]];
    icon = "iconManMG"
};
