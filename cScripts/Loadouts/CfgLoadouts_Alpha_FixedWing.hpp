
class Cav_B_A_Plane_Fighter_Pilot_F : Cav_B_Alpha_base_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Plane_Fighter_Pilot";
    category[] += {"cScripts_Loadout_Cat_Alpha_FixedWing"};
    scope = 2;
    loadout = [[],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","optic_MRD_black",["11Rnd_45ACP_Mag",15],[],""],["B_CWU_coverall_od_usaf",[]],["UK3CB_V_Pilot_Vest",[["ACE_EarPlugs",1],["ACE_tourniquet",4],["ACE_splint",4],["ACE_microDAGR",1],["ACE_IR_Strobe_Item",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ToolKit",1],["NVGogglesB_blk_F",1],["ACE_Chemlight_IR",1,1],["kat_Painkiller",10,10],["SmokeShellBlue",1,1],["SmokeShellRed",1,1]]],["UK3CB_UN_B_B_ASS",[["B_UavTerminal",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["rhs_mag_an_m8hc",2,1],["ACE_Chemlight_IR",1,1],["SmokeShellBlue",2,1],["SmokeShellGreen",1,1],["SmokeShellOrange",1,1],["SmokeShellRed",1,1],["SmokeShellYellow",1,1],["rhsusf_m112_mag",1,1]]],"H_PilotHelmetFighter_I_E","G_Shades_Black",["Laserdesignator_01_khk_F","","","",["Laserbatteries",1],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    role = "pilotfighter";
};
class Cav_B_A_Plane_Transport_Pilot_F : Cav_B_Alpha_base_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Plane_Transport_Pilot";
    category[] += {"cScripts_Loadout_Cat_Alpha_FixedWing"};
    scope = 2;
    loadout = [[],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","optic_MRD_black",["11Rnd_45ACP_Mag",15],[],""],["B_CWU_coverall_od_usaf",[]],["UK3CB_V_Pilot_Vest",[["ACE_EarPlugs",1],["ACE_tourniquet",4],["ACE_splint",4],["ACE_microDAGR",1],["ACE_IR_Strobe_Item",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ToolKit",1],["NVGogglesB_blk_F",1],["ACE_Chemlight_IR",1,1],["kat_Painkiller",10,10],["SmokeShellBlue",1,1],["SmokeShellRed",1,1]]],["UK3CB_UN_B_B_ASS",[["B_UavTerminal",1],["rhsusf_hgu56p_visor_green",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_CableTie",1],["ACE_EntrenchingTool",1],["rhsusf_m112_mag",1,1],["ACE_Chemlight_IR",1,1],["SmokeShellBlue",2,1],["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["SmokeShellOrange",1,1],["SmokeShellYellow",1,1],["rhs_mag_an_m8hc",2,1]]],"H_Cap_headphones","G_Shades_Black",["Laserdesignator_01_khk_F","","","",["Laserbatteries",1],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    role = "pilot";
};
class Cav_B_A_Plane_Transport_coPilot_F : Cav_B_A_Plane_Transport_Pilot_F {
    displayName = "$STR_Cav_Alpha_Characters_A_Plane_Transport_coPilot";
    scope = 2;
    loadout = [[],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","optic_MRD_black",["11Rnd_45ACP_Mag",15],[],""],["B_CWU_coverall_od_usaf",[]],["UK3CB_V_Pilot_Vest",[["ACE_EarPlugs",1],["ACE_tourniquet",4],["ACE_splint",4],["ACE_microDAGR",1],["ACE_IR_Strobe_Item",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ToolKit",1],["NVGogglesB_blk_F",1],["ACE_Chemlight_IR",1,1],["kat_Painkiller",10,10],["SmokeShellBlue",1,1],["SmokeShellRed",1,1]]],["UK3CB_UN_B_B_ASS",[["B_UavTerminal",1],["rhsusf_hgu56p_visor_green",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_CableTie",1],["ACE_EntrenchingTool",1],["rhsusf_m112_mag",1,1],["ACE_Chemlight_IR",1,1],["SmokeShellBlue",2,1],["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["SmokeShellOrange",1,1],["SmokeShellYellow",1,1],["rhs_mag_an_m8hc",2,1]]],"H_Cap_headphones","G_Shades_Black",["Laserdesignator_01_khk_F","","","",["Laserbatteries",1],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
};


// Named
class Cav_B_A_Plane_Transport_Pilot_Titan_1_F : Cav_B_A_Plane_Transport_Pilot_F { scope = 1; };
class Cav_B_A_Plane_Transport_Pilot_Titan_2_F : Cav_B_A_Plane_Transport_Pilot_F { scope = 1; };
class Cav_B_A_Plane_Transport_Pilot_Titan_3_F : Cav_B_A_Plane_Transport_Pilot_F { scope = 1; };
class Cav_B_A_Plane_Transport_Pilot_Titan_4_F : Cav_B_A_Plane_Transport_Pilot_F { scope = 1; };

class Cav_B_A_Plane_Fighter_Pilot_Eagle_1_F : Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_2_F : Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_3_F : Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_4_F : Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_5_F : Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_6_F : Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_7_F : Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_8_F : Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet
class Cav_B_A_Plane_Fighter_Pilot_Eagle_9_F : Cav_B_A_Plane_Fighter_Pilot_F { scope = 1; }; // Don't exist yet

class Cav_B_A_Plane_Fighter_Pilot_Hog_1_F : Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_2_F : Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_3_F : Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_4_F : Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_5_F : Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_6_F : Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_7_F : Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_8_F : Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
class Cav_B_A_Plane_Fighter_Pilot_Hog_9_F : Cav_B_A_Plane_Fighter_Pilot_F {
    scope = 1;
    insignia = "cav_insignia_alpha_2_b";
};
