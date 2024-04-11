class Cav_B_A_PilotBase_F: Cav_B_Alpha_base_F {
    scope = 0;
    abilityEngineer = 1;
};
class Cav_B_A_Helicopter_Tra_Pilot_F: Cav_B_A_PilotBase_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Helicopter_Tra_Pilot";
    category[] += {"cScripts_Loadout_Cat_Alpha_Rotary"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_bk","ACE_muzzle_mzls_L","acc_pointer_IR","rhsusf_acc_ACOG_RMR",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],"rhsusf_acc_rvg_blk"],[],["UK3CB_P320_BLK","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS2_MC",[["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_splint",4],["ACE_tourniquet",4],["ACE_packingBandage",20],["ACE_Banana",1],["kat_Painkiller",2,10]]],["UK3CB_V_Pilot_Vest",[["ACE_IR_Strobe_Item",2],["kat_chestSeal",2],["kat_guedel",1],["kat_ncdKit",1],["SmokeShellRed",2,1],["SmokeShell",4,1],["SmokeShellPurple",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["UK3CB_P320_9x19_17Rnd",1,17],["ACE_HandFlare_Green",2,1],["SmokeShellBlue",2,1],[["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],1]]],["USP_TACTICAL_PACK",[["ACE_EntrenchingTool",1],["H_Cap_tan",1],["ToolKit",1],["rhsusf_ihadss",1],["rhsusf_m112_mag",1,1]]],"rhsusf_hgu56p_visor","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter","NVGogglesB_blk_F"]];
    role = "rotarypilot";
};
class Cav_B_A_Helicopter_Tra_coPilot_F: Cav_B_A_Helicopter_Tra_Pilot_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Helicopter_Tra_coPilot";
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_bk","ACE_muzzle_mzls_L","acc_pointer_IR","rhsusf_acc_ACOG_RMR",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],"rhsusf_acc_rvg_blk"],[],["UK3CB_P320_BLK","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS2_MC",[["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_splint",4],["ACE_tourniquet",4],["ACE_packingBandage",20],["ACE_Banana",1],["kat_Painkiller",2,10]]],["UK3CB_V_Pilot_Vest",[["ACE_IR_Strobe_Item",2],["kat_chestSeal",2],["kat_guedel",1],["kat_ncdKit",1],["SmokeShellRed",2,1],["SmokeShell",4,1],["SmokeShellPurple",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["UK3CB_P320_9x19_17Rnd",1,17],["ACE_HandFlare_Green",2,1],["SmokeShellBlue",2,1],[["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],1]]],["USP_TACTICAL_PACK",[["ACE_EntrenchingTool",1],["H_Cap_tan",1],["ToolKit",1],["rhsusf_ihadss",1],["rhsusf_m112_mag",1,1]]],"rhsusf_hgu56p_visor","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter","NVGogglesB_blk_F"]];
};
class Cav_B_A_Helicopter_Tra_CrewChief_F: Cav_B_A_PilotBase_F {
    displayName = "Helicopter Crew Chief";
    category[] += {"cScripts_Loadout_Cat_Alpha_Rotary"};
    scope = 2;
    loadout = [["rhs_weap_m249_pip_L_para_vfg2","ACE_muzzle_mzls_L","acc_pointer_IR","rhsusf_acc_ELCAN_ard",["rhsusf_200Rnd_556x45_box",200],[],"rhsusf_acc_grip4_bipod"],[],["UK3CB_P320_BLK","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS2_MC",[["ACE_Banana",1],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_tourniquet",4],["ACE_splint",4],["ACE_packingBandage",20],["kat_Painkiller",2,10]]],["UK3CB_V_Pilot_Vest",[["ACE_IR_Strobe_Item",2],["SmokeShellRed",2,1],["SmokeShell",4,1],["UK3CB_P320_9x19_17Rnd",1,17],["SmokeShellPurple",2,1],["ACE_HandFlare_Green",2,1],["SmokeShellBlue",2,1],["rhsusf_200Rnd_556x45_box",2,200],[["hgun_Pistol_Signal_F","","","",[],[],""],1]]],["USP_TACTICAL_PACK",[["H_Cap_tan",1],["ACE_CableTie",2],["ACE_EntrenchingTool",1],["ToolKit",1],["kat_chestSeal",2],["kat_guedel",1],["kat_ncdKit",1]]],"rhsusf_hgu56p_visor_mask","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ACE_Altimeter","NVGogglesB_blk_F"]];
    role = "rotarycrew";
};

class Cav_B_A_Helicopter_Tra_DoorGunner_F: Cav_B_A_Helicopter_Tra_CrewChief_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Helicopter_Tra_DoorGunner";
    scope = 2;
    abilityMedic = 1;
    role = "rotarycls";
    loadout = [["rhs_weap_m4a1_blockII_grip_bk","ACE_muzzle_mzls_L","acc_pointer_IR","rhsusf_acc_ACOG_RMR",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],"rhsusf_acc_rvg_blk"],[],["UK3CB_P320_BLK","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS2_MC",[["ACE_Banana",1],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_tourniquet",4],["ACE_splint",4],["ACE_packingBandage",20],["kat_Painkiller",2,10]]],["UK3CB_V_Pilot_Vest",[["ACE_IR_Strobe_Item",2],["kat_chestSeal",2],["kat_guedel",1],["kat_ncdKit",1],["kat_Pulseoximeter",1],["ACE_elasticBandage",20],["ACE_quikclot",20],["ACE_splint",2],["ACE_tourniquet",2],["SmokeShellRed",2,1],["SmokeShell",4,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["UK3CB_P320_9x19_17Rnd",1,17],["SmokeShellPurple",2,1],["ACE_HandFlare_Green",2,1],["SmokeShellBlue",2,1],[["hgun_Pistol_Signal_F","","","",[],[],""],1]]],["USP_TACTICAL_PACK",[["H_Cap_tan",1],["ACE_CableTie",2],["ACE_EntrenchingTool",1],["ToolKit",1],["rhsusf_m112_mag",1,1]]],"rhsusf_hgu56p_visor_mask","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ACE_Altimeter","NVGogglesB_blk_F"]];
};

class Cav_B_A_Helicopter_Att_Pilot_F: Cav_B_A_Helicopter_Tra_Pilot_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Helicopter_Att_Pilot";
    category[] += {"cScripts_Loadout_Cat_Alpha_Rotary"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_bk","ACE_muzzle_mzls_L","acc_pointer_IR","rhsusf_acc_ACOG_RMR",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],"rhsusf_acc_rvg_blk"],[],["UK3CB_P320_BLK","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS2_MC",[["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_splint",4],["ACE_tourniquet",4],["ACE_packingBandage",20],["ACE_Banana",1],["kat_Painkiller",2,10]]],["UK3CB_V_Pilot_Vest",[["ACE_IR_Strobe_Item",2],["kat_chestSeal",2],["kat_guedel",1],["kat_ncdKit",1],["SmokeShellRed",2,1],["SmokeShell",4,1],["SmokeShellPurple",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["UK3CB_P320_9x19_17Rnd",1,17],["ACE_HandFlare_Green",2,1],["SmokeShellBlue",2,1],[["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],1]]],["USP_TACTICAL_PACK",[["ACE_EntrenchingTool",1],["H_Cap_tan",1],["ToolKit",1],["rhsusf_ihadss",1],["rhsusf_m112_mag",1,1]]],"rhsusf_hgu56p_visor","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter","NVGogglesB_blk_F"]];
};
class Cav_B_A_Helicopter_Att_coPilot_F: Cav_B_A_Helicopter_Tra_Pilot_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Helicopter_Att_coPilot";
    category[] += {"cScripts_Loadout_Cat_Alpha_Rotary"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_bk","ACE_muzzle_mzls_L","acc_pointer_IR","rhsusf_acc_ACOG_RMR",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],"rhsusf_acc_rvg_blk"],[],["UK3CB_P320_BLK","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["USP_G3C_RS2_MC",[["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_splint",4],["ACE_tourniquet",4],["ACE_packingBandage",20],["ACE_Banana",1],["kat_Painkiller",2,10]]],["UK3CB_V_Pilot_Vest",[["ACE_IR_Strobe_Item",2],["kat_chestSeal",2],["kat_guedel",1],["kat_ncdKit",1],["SmokeShellRed",2,1],["SmokeShell",4,1],["SmokeShellPurple",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["UK3CB_P320_9x19_17Rnd",1,17],["ACE_HandFlare_Green",2,1],["SmokeShellBlue",2,1],[["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],1]]],["USP_TACTICAL_PACK",[["ACE_EntrenchingTool",1],["H_Cap_tan",1],["ToolKit",1],["rhsusf_ihadss",1],["rhsusf_m112_mag",1,1]]],"rhsusf_hgu56p_visor","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter","NVGogglesB_blk_F"]];
};

// Named
class Cav_B_A_Helicopter_Tra_Pilot_B1_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; };
class Cav_B_A_Helicopter_Tra_Pilot_B2_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; };
class Cav_B_A_Helicopter_Tra_Pilot_B3_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; };
class Cav_B_A_Helicopter_Tra_Pilot_B4_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; };
class Cav_B_A_Helicopter_Tra_Pilot_B5_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; };
class Cav_B_A_Helicopter_Tra_Pilot_B6_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; };

class Cav_B_A_Helicopter_Tra_Pilot_Buffalo_1_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Helicopter_Tra_Pilot_Buffalo_2_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Helicopter_Tra_Pilot_Buffalo_3_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Helicopter_Tra_Pilot_Buffalo_4_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Helicopter_Tra_Pilot_Buffalo_5_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Helicopter_Tra_Pilot_Buffalo_6_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet

class Cav_B_A_Helicopter_Tra_Pilot_Grizzly_1_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Helicopter_Tra_Pilot_Grizzly_2_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Helicopter_Tra_Pilot_Grizzly_3_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Helicopter_Tra_Pilot_Grizzly_4_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Helicopter_Tra_Pilot_Grizzly_5_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Helicopter_Tra_Pilot_Grizzly_6_F: Cav_B_A_Helicopter_Tra_Pilot_F { scope = 1; }; // Don't exist yet

class Cav_B_A_Helicopter_Att_Pilot_Raider_1_F: Cav_B_A_Helicopter_Att_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_c";
};
class Cav_B_A_Helicopter_Att_Pilot_Raider_2_F: Cav_B_A_Helicopter_Att_Pilot_F {
    scope = 1; 
    insignia = "cav_insignia_alpha_2_c";
};
class Cav_B_A_Helicopter_Att_Pilot_Raider_3_F: Cav_B_A_Helicopter_Att_Pilot_F {
    scope = 1; 
    insignia = "cav_insignia_alpha_2_c";
};
class Cav_B_A_Helicopter_Att_Pilot_Raider_4_F: Cav_B_A_Helicopter_Att_Pilot_F {
    scope = 1; 
    insignia = "cav_insignia_alpha_2_c";
};

class Cav_B_A_Helicopter_Att_Pilot_Raven_1_F: Cav_B_A_Helicopter_Att_Pilot_F { scope = 1; };
class Cav_B_A_Helicopter_Att_Pilot_Raven_2_F: Cav_B_A_Helicopter_Att_Pilot_F { scope = 1; };
class Cav_B_A_Helicopter_Att_Pilot_Raven_3_F: Cav_B_A_Helicopter_Att_Pilot_F { scope = 1; };
class Cav_B_A_Helicopter_Att_Pilot_Raven_4_F: Cav_B_A_Helicopter_Att_Pilot_F { scope = 1; };
