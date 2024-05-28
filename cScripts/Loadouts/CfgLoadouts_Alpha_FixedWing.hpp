
class Cav_B_A_Plane_Fighter_Pilot_F: Cav_B_Alpha_base_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Plane_Fighter_Pilot";
    category[] += {"cScripts_Loadout_Cat_Alpha_FixedWing"};
    scope = 2;
    abilityEngineer = 1;
    loadout = [["rhs_weap_m4a1_blockII_grip_bk","ACE_muzzle_mzls_L","acc_pointer_IR","rhsusf_acc_ACOG_RMR",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],"rhsusf_acc_rvg_blk"],[],["UK3CB_P320_BLK","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["U_B_PilotCoveralls",[["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_splint",4],["ACE_packingBandage",20],["ACE_EarPlugs",2],["ACE_Banana",1],["kat_chestSeal",2],["kat_guedel",1],["kat_ncdKit",1],["kat_Painkiller",2,10],["acex_intelitems_notepad",1,1]]],["UK3CB_V_Pilot_Vest_Black",[["ACE_CableTie",2],["ACE_IR_Strobe_Item",2],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["HandGrenade",1,1],["SmokeShell",4,1],["UK3CB_P320_9x19_17Rnd",2,17],["SmokeShellBlue",2,1],["SmokeShellRed",2,1],["ACE_HandFlare_Green",2,1],["SmokeShellPurple",2,1],["ACE_Chemlight_UltraHiOrange",1,1],[["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],1]]],["USP_TACTICAL_PACK_MCB",[["ToolKit",1],["USP_BASEBALL_CAP_ABU_BS",1],["NVGogglesB_blk_F",1],["ACE_EntrenchingTool",1]]],"H_PilotHelmetFighter_B","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    role = "pilotfighter";
};
class Cav_B_A_Plane_Transport_Pilot_F: Cav_B_Alpha_base_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Plane_Transport_Pilot";
    category[] += {"cScripts_Loadout_Cat_Alpha_FixedWing"};
    scope = 2;
    abilityEngineer = 1;
    loadout = [["rhs_weap_m4a1_blockII_bk","ACE_muzzle_mzls_L","acc_pointer_IR","rhsusf_acc_ACOG_RMR",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],"rhsusf_acc_rvg_blk"],[],["UK3CB_P320_BLK","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["B_CWU_coverall_od_usaf",[["ACE_packingBandage",20],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_splint",4],["ACE_tourniquet",4],["ACE_Banana",1],["ACE_Chemlight_UltraHiOrange",1,1],["acex_intelitems_notepad",1,1]]],["UK3CB_V_Pilot_Vest_Black",[["ACE_CableTie",2],["ACE_IR_Strobe_Item",2],["kat_chestSeal",2],["kat_guedel",1],["kat_ncdKit",1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["SmokeShell",4,1],["UK3CB_P320_9x19_17Rnd",2,17],["ACE_HandFlare_Green",2,1],["kat_Painkiller",2,10],["SmokeShellPurple",2,1],["SmokeShellBlue",2,1],["SmokeShellRed",2,1],["HandGrenade",1,1],[["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],1]]],["USP_TACTICAL_PACK_MCT",[["ToolKit",1],["NVGogglesB_blk_F",1],["ACE_EntrenchingTool",1],["rhsusf_m112_mag",1,1]]],"USP_BASEBALL_CAP_CT3_OD","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
    role = "pilottransport";
};
class Cav_B_A_Plane_Transport_coPilot_F: Cav_B_A_Plane_Transport_Pilot_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Plane_Transport_coPilot";
    abilityEngineer = 1;
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_bk","ACE_muzzle_mzls_L","acc_pointer_IR","rhsusf_acc_ACOG_RMR",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],"rhsusf_acc_rvg_blk"],[],["UK3CB_P320_BLK","","acc_flashlight_pistol","",["UK3CB_P320_9x19_17Rnd",17],[],""],["B_CWU_coverall_od_usaf",[["ACE_packingBandage",20],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_splint",4],["ACE_tourniquet",4],["ACE_Banana",1],["ACE_Chemlight_UltraHiOrange",1,1],["acex_intelitems_notepad",1,1]]],["UK3CB_V_Pilot_Vest_Black",[["ACE_CableTie",2],["ACE_IR_Strobe_Item",2],["kat_chestSeal",2],["kat_guedel",1],["kat_ncdKit",1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["SmokeShell",4,1],["UK3CB_P320_9x19_17Rnd",2,17],["ACE_HandFlare_Green",2,1],["kat_Painkiller",2,10],["SmokeShellPurple",2,1],["SmokeShellBlue",2,1],["SmokeShellRed",2,1],["HandGrenade",1,1],[["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],1]]],["USP_TACTICAL_PACK_MCT",[["ToolKit",1],["NVGogglesB_blk_F",1],["ACE_EntrenchingTool",1],["rhsusf_m112_mag",1,1]]],"USP_BASEBALL_CAP_CT3_OD","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]];
};


// Named
class Cav_B_A_Plane_Transport_Pilot_Titan_1_F: Cav_B_A_Plane_Transport_Pilot_F { scope = 1; };
class Cav_B_A_Plane_Transport_Pilot_Titan_2_F: Cav_B_A_Plane_Transport_Pilot_F { scope = 1; };
class Cav_B_A_Plane_Transport_Pilot_Titan_3_F: Cav_B_A_Plane_Transport_Pilot_F { scope = 1; };
class Cav_B_A_Plane_Transport_Pilot_Titan_4_F: Cav_B_A_Plane_Transport_Pilot_F { scope = 1; };

class Cav_B_A_Plane_Fighter_Pilot_Eagle_1_F: Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_2_F: Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_3_F: Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_4_F: Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_5_F: Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_6_F: Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_7_F: Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_8_F: Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_9_F: Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet

class Cav_B_A_Plane_Fighter_Pilot_Hog_1_F: Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_2_F: Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_3_F: Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_4_F: Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_5_F: Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_6_F: Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_7_F: Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_8_F: Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_9_F: Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};