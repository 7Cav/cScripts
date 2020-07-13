//                A L P H A   C O M P A N Y
 
class Cav_B_A_AirController_F : Cav_B_Alpha_base_F {
    displayName = "Air Controller";

    backpack[] = {"B_Kitbag_mcamo"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    gps[] = {"ItemcTab"};
 
    preLoadout = "[(_this select 0), 'officer'] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_A_JFO_F : Cav_B_Alpha_base_F {
    displayName = "Joint Fires Observer";

    backpack[] = {"B_TacticalPack_oli"};
    headgear[] = {"rhsusf_opscore_ut_pelt_nsw_cam"};
    nvgs[] = {""};
    vest[] = {"rhsusf_iotv_ocp_Grenadier"};
    binoculars[] = {"Laserdesignator"};
 
    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};
 
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",6,
 
        "rhs_mag_m67",2,
 
        "B_IR_Grenade",2,
        "SmokeShell",2,
        "SmokeShellGreen",2,
        "SmokeShellOrange",2,
        "SmokeShellRed",2,
        "SmokeShellYellow",2,
        "ACE_HandFlare_Red",2,
 
        "rhs_mag_M441_HE",4,
        "rhs_mag_m713_Red",2,
        "UGL_FlareCIR_F",2,
        "rhs_mag_m662_red",2,
        "ACE_HuntIR_M203",4
    };
 
    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC117F",
 
        // Personal Medical Equipment
        "ACE_quikclot",16,
        "ACE_tourniquet",4,
 
        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
 
        // Electronics
        "ACE_IR_Strobe_Item",
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        "Laserbatteries",2,
        "ACE_Vector",
        "ItemcTabHCam",
        "ACE_MX2A",
        "rhsusf_ANPVS_15",
 
        // Tools
        "ACE_EntrenchingTool"
    };
 
    gps[] = {"ItemcTab"};
 
    preLoadout = "[(_this select 0), 'officer'] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_A_Officer_F  : Cav_B_Alpha_base_F {
    displayName = "Officer";

    backpack[] = {"B_Carryall_mcamo"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    nvgs[] = {""};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};
    binoculars[] = {"Laserdesignator"};
 
    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};
 
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",4,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,
 
        "rhs_mag_m67",2,
 
        "B_IR_Grenade",2,
        "SmokeShell",2,
        "SmokeShellGreen",1,
        "SmokeShellOrange",1,
        "SmokeShellRed",2,
        "SmokeShellYellow",1,
 
        "rhs_mag_M441_HE",4,
        "rhs_mag_m713_Red",2,
        "UGL_FlareCIR_F",2,
        "rhs_mag_m662_red",2,
        "ACE_HuntIR_M203",4
    };
 
    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",
 
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
 
        // Standard
        
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
 
        // Electronics
        "ACE_IR_Strobe_Item",
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        "Laserbatteries",2,
        "ACE_Vector",
        "ItemcTabHCam",
        "ACE_MX2A",
        "rhsusf_ANPVS_15",
 
        // Tools
        "ACE_EntrenchingTool"
    };
 
    gps[] = {"ItemcTab"};
 
    preLoadout = "[(_this select 0), 'officer'] call cScripts_fnc_setPreInitPlayerSettings;";
};
 
class Cav_B_A_Helicopter_Tra_Pilot_F : Cav_B_Alpha_base_F {
    displayName = "Transport Helicopter Pilot";

    backpack[] = {"B_Kitbag_mcamo"};
    headgear[] = {"rhsusf_hgu56p_visor_green"};
    //goggles[] = {"rhsusf_shemagh_tan"};
    nvgs[] = {"NVGogglesB_grn_F"};
    vest[] = {"rhsusf_mbav_light"};
    binoculars[] = {"Binocular"};
 
    primary[] = {"rhs_weap_m4","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR"};
    secondary[] = {"rhsusf_weap_m9"};
 
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,
        "rhsusf_mag_15Rnd_9x19_JHP",3,
        "SmokeShellBlue",2,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,
        "Chemlight_green",2,
        "ACE_Chemlight_HiRed",2,
        "Chemlight_blue",2,
        "SmokeShell",2,
        "B_IR_Grenade",
         
        "SatchelCharge_Remote_Mag",
    };
 
    items[] = {
        // Radios
        "ACRE_PRC343",
        "ACRE_PRC152",
        "ACRE_PRC117F",
 
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_morphine",2,
        "ACE_epinephrine",2,
        "ACE_tourniquet",2,
 
        // Standard
        "ACE_EarPlugs",2,
 
        // Electronics
        "ACE_microDAGR",
 
        // Tools
        "ACE_Flashlight_MX991",
        "ACE_MapTools",
        "ACE_EntrenchingTool",
         
        // Snacks
        "ACE_Banana",
         
        // Main Equipment
        "H_Cap_tan",
        "rhsusf_shemagh_tan"
    };
 
    gps[] = {"ItemcTab"};
 
};
class Cav_B_A_Helicopter_Tra_coPilot_F : Cav_B_Alpha_base_F {
    displayName = "Transport Helicopter coPilot";

    backpack[] = {"B_Kitbag_mcamo"};
    headgear[] = {"rhsusf_hgu56p_visor_green"};
    //goggles[] = {"rhsusf_shemagh_tan"};
    nvgs[] = {"NVGogglesB_grn_F"};
    vest[] = {"rhsusf_mbav_light"};
    binoculars[] = {"Binocular"};
 
    primary[] = {"rhs_weap_m4","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR"};
    secondary[] = {"rhsusf_weap_m9"};
 
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,
        "rhsusf_mag_15Rnd_9x19_JHP",3,
        "SmokeShellBlue",2,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,
        "Chemlight_green",2,
        "ACE_Chemlight_HiRed",2,
        "Chemlight_blue",2,
        "SmokeShell",2,
        "B_IR_Grenade",
         
        "SatchelCharge_Remote_Mag",2
    };
 
    items[] = {
        // Radios
        "ACRE_PRC343",
        "ACRE_PRC152",
        "ACRE_PRC117F",
 
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_morphine",2,
        "ACE_epinephrine",2,
        "ACE_tourniquet",2,
 
        // Standard
        "ACE_EarPlugs",2,
 
        // Electronics
        "ACE_microDAGR",
 
        // Tools
        "ACE_Flashlight_MX991",
        "ACE_MapTools",
        "ACE_EntrenchingTool",
        "ACE_Clacker",
         
        // Snacks
        "ACE_Banana",
         
        // Hats
        "H_Cap_tan",
        "rhsusf_shemagh_tan"
    };
 
    gps[] = {"ItemAndroid"};
};
class Cav_B_A_Helicopter_Tra_CrewChief_F : Cav_B_Alpha_base_F {
    displayName = "Transport Helicopter Crew Chief";

    backpack[] = {"B_Carryall_cbr"};
    headgear[] = {"rhsusf_hgu56p_visor_mask_Empire_black"};
    //goggles[] = {"rhsusf_shemagh_tan"};
    nvgs[] = {"NVGogglesB_blk_F"};
    vest[] = {"rhsusf_mbav_mg"};
    binoculars[] = {"Binocular"};
 
    primary[] = {"rhs_weap_m249_pip_L_para","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ELCAN_ard"};
    secondary[] = {"rhsusf_weap_m9"};
 
    magazines[] = {
        "rhsusf_200Rnd_556x45_box",
        "rhsusf_mag_15Rnd_9x19_JHP",3,
        "SmokeShellBlue",2,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,
        "Chemlight_green",2,
        "ACE_Chemlight_HiRed",2,
        "Chemlight_blue",2,
        "SmokeShell",2,
        "B_IR_Grenade",
         
        "DemoCharge_Remote_Mag",2,
        "rhsusf_m112x4_mag",
    };
 
    items[] = {
        // Radios
        "ACRE_PRC343",
        "ACRE_PRC152",2,
 
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_morphine",2,
        "ACE_epinephrine",2,
        "ACE_tourniquet",2,
 
        // Standard
        "ACE_EarPlugs",2,
 
        // Electronics
        "ACE_microDAGR",
 
        // Tools
        "ACE_Flashlight_MX991",
        "ACE_MapTools",
        "ACE_EntrenchingTool",
        "ACE_Clacker",
        "ToolKit",
        "ACE_CableTie",2,
         
        // Snacks
        "ACE_Banana",
         
        // Hats
        "H_Booniehat_mcamo",
        "rhsusf_shemagh_tan"
    };
 
    gps[] = {"ItemAndroid"};
};
class Cav_B_A_Helicopter_Tra_CrewChiefM240_Local : Cav_B_Alpha_base_F {
    displayName = "Transport Helicopter Crew Chief (M240)";

    headgear[] = {"rhsusf_hgu56p_visor_mask_black"};
    nvgs[] = {"NVGogglesB_blk_F"};
    backpack[] = {"B_Carryall_cbr"};
    vest[] = {"rhsusf_mbav_mg"};
 
    primary[] = {"rhs_weap_m240B","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ELCAN_ard"};
 
    magazines[] = {
        "rhsusf_100Rnd_762x51_m62_tracer",4,
        "rhsusf_mag_15Rnd_9x19_JHP",2,
 
        "B_IR_Grenade",1,
        "SmokeShell",2,
        "SmokeShellBlue",2,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,
        "SmokeShellYellow",2,
 
        "Chemlight_green",2,
        "ACE_Chemlight_HiRed",2,
        "Chemlight_blue",2,
 
        "DemoCharge_Remote_Mag",2
    };
 
    items[] = {
        // Radios
        "ACRE_PRC152",
 
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_morphine",5,
        "ACE_epinephrine",2,
        "ACE_tourniquet",2,
 
        // Standard
        
        "ACE_EntrenchingTool",
        "ACE_CableTie",2,
        "ACE_MapTools",
        "ACE_Flashlight_XL50",
 
        // Electronics
        "ACE_microDAGR",
 
        // Tools
        "ToolKit",
         
        // Misc
        "H_Booniehat_mcamo",
        "rhsusf_shemagh_tan"
    };
    //nvgs[] = {"NVGogglesB_grn_F"};
    gps[] = {"ItemAndroid"};
 
    preLoadout = "[(_this select 0), 'alpha', 0, 1] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_A_Helicopter_Tra_DoorGunner_F : Cav_B_Alpha_base_F {
    displayName = "Transport Helicopter Door Gunner";

    backpack[] = {"B_Kitbag_mcamo"};
    headgear[] = {"rhsusf_hgu56p_visor_mask_black"};
    //goggles[] = {"rhsusf_shemagh_tan"};
    nvgs[] = {"NVGogglesB_blk_F"};
    vest[] = {"rhsusf_mbav_light"};
    binoculars[] = {"Binocular"};
 
    primary[] = {"rhs_weap_m4","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR"};
    secondary[] = {"rhsusf_weap_m9"};
 
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,
        "rhsusf_mag_15Rnd_9x19_JHP",2,
        "SmokeShellBlue",2,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,
        "Chemlight_green",2,
        "ACE_Chemlight_HiRed",2,
        "Chemlight_blue",2,
        "SmokeShell",2,
        "B_IR_Grenade",
         
    };
 
    items[] = {
        // Radios
        "ACRE_PRC343",
        "ACRE_PRC152",
        "ACRE_PRC117F",
 
        // Personal Medical Equipment
        "ACE_fieldDressing",40,
        "ACE_quikclot",40,
        "ACE_morphine",10,
        "ACE_epinephrine",10,
        "ACE_tourniquet",5,
 
        // Standard
        "ACE_EarPlugs",2,
        "ACE_CableTie",2,
 
        // Electronics
        "ACE_microDAGR",
 
        // Tools
        "ACE_Flashlight_MX991",
        "ACE_MapTools",
        "ACE_EntrenchingTool",
         
        // Snacks
        "ACE_Banana",
         
        // Hats
        "H_Cap_tan",
        "rhsusf_shemagh_tan",
        "NVGogglesB_grn_F",
        "rhsusf_hgu56p_visor_mask_Empire_black"
    };
 
    gps[] = {"ItemAndroid"};
};
 
 
class Cav_B_A_Helicopter_Att_Pilot_F : Cav_B_Alpha_base_F {
    displayName = "Attack Helicopter Pilot";

    headgear[] = {"rhsusf_ihadss"};
    backpack[] = {"B_Kitbag_mcamo"};
 
    gps[] = {"ItemAndroid"};
};
class Cav_B_A_Helicopter_Att_coPilot_F : Cav_B_Alpha_base_F {
    displayName = "Attack Helicopter coPilot";

    headgear[] = {"rhsusf_ihadss"};
    backpack[] = {"B_Kitbag_mcamo"};
 
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,
        "rhsusf_mag_15Rnd_9x19_JHP",3,
 
        "B_IR_Grenade",1,
        "SmokeShell",2,
        "SmokeShellBlue",2,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,
 
        "Chemlight_green",2,
        "ACE_Chemlight_HiRed",2,
        "Chemlight_blue",2,
 
        "DemoCharge_Remote_Mag",2
    };
 
    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC117F",
 
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_morphine",2,
        "ACE_epinephrine",2,
        "ACE_tourniquet",2,
 
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_morphine",5,
        "ACE_epinephrine",5,
        "ACE_tourniquet",5,
 
        // Standard
        
        "ACE_EntrenchingTool",
        "ACE_MapTools",
        "ACE_Flashlight_XL50",
 
        // Electronics
        "ACE_microDAGR",
 
        // Tools
        "ACE_Clacker",
         
        // Misc
        "H_Cap_tan",
        "rhsusf_shemagh_tan"
    };
 
    gps[] = {"ItemcTab"};
};
 
 
class Cav_B_A_Plane_Fighter_Pilot_F : Cav_B_Alpha_base_F {
    displayName = "Fixed Wing Fighter Pilot";

    nvgs[] = {""};
    backpack[] = {"B_AssaultPack_mcamo"};
    headgear[] = {"H_PilotHelmetFighter_B"};
    uniform[] = {"U_B_PilotCoveralls"};
    vest[] = {""};
 
    primary[] = {""};
    secondary[] = {"rhsusf_weap_m9"};
    launcher[] = {""};
 
    binoculars[] = {""};
 
    magazines[] = {
        "rhsusf_mag_15Rnd_9x19_JHP",3,
 
        "Chemlight_green",
        "Chemlight_red",
        "ACE_Chemlight_HiYellow",
        "SmokeShell",
        "SmokeShellGreen",
        "SmokeShellRed",
        "B_IR_Grenade",2
    };
 
    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",
        "ACRE_PRC343",
         
        // Personal Medical Equipment
        "ACE_quikclot",5,
        "ACE_tourniquet",2,
 
        // Standard
        
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_MX991",
 
        // Electronics
        "ACE_microDAGR"
    };
 
    gps[] = {"ItemAndroid"};
    preLoadout = "[(_this select 0), 'alpha', 0, 1] call cScripts_fnc_setPreInitPlayerSettings;";
 
};
 
 
class Cav_B_A_Plane_Transport_Pilot_F : Cav_B_Alpha_base_F {
    displayName = "Fixed Wing Transport Pilot";

    backpack[] = {"B_Kitbag_mcamo"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    gps[] = {"ItemcTab"};
};
class Cav_B_A_Plane_Transport_coPilot_F : Cav_B_Alpha_base_F {
    displayName = "Fixed Wing Transport coPilot";

    backpack[] = {"B_Kitbag_mcamo"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    gps[] = {"ItemcTab"};
};
