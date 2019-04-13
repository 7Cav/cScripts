
//                A L P H A   C O M P A N Y

class Cav_B_A_AirController_F : Cav_B_Alpha_base_F {
    backpack[] = {"B_Kitbag_mcamo"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    gps[] = {"ItemcTab"};

    preLoadout = "[(_this select 0), 'officer'] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_A_JFO_F : Cav_B_Alpha_base_F {
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
        "ACE_Canteen",
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
        "ACE_Canteen",
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
    backpack[] = {"B_Kitbag_mcamo"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    gps[] = {"ItemcTab"};
};
class Cav_B_A_Helicopter_Tra_coPilot_F : Cav_B_Alpha_base_F {
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
        "ACE_Canteen",
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
    nvgs[] = {"rhsusf_ANPVS_15"};
    gps[] = {"ItemAndroid"};
};
class Cav_B_A_Helicopter_Tra_CrewChief_F : Cav_B_Alpha_base_F {
    headgear[] = {"rhsusf_hgu56p_visor_mask_black"};
    backpack[] = {"B_Carryall_cbr"};
    vest[] = {"rhsusf_mbav_mg"};

    primary[] = {"rhs_weap_m249_pip_L_para","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ELCAN_ard"};

    magazines[] = {
        "rhsusf_200Rnd_556x45_box",1,
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

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_morphine",2,
        "ACE_epinephrine",2,
        "ACE_tourniquet",2,

        // Standard
        "ACE_Canteen",
        "ACE_EntrenchingTool",
        "ACE_CableTie",2,
        "ACE_MapTools",
        "ACE_Flashlight_XL50",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ToolKit",
        
        // Misc
        "H_Cap_tan",
        "rhsusf_shemagh_tan"
    };
    nvgs[] = {"NVGogglesB_grn_F"};
    gps[] = {"ItemAndroid"};

    preLoadout = "[(_this select 0), 'alpha', 0, 1] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_A_Helicopter_Tra_DoorGunner_F : Cav_B_Alpha_base_F {
    headgear[] = {"rhsusf_hgu56p_visor_mask_black"};
    backpack[] = {"B_Kitbag_mcamo"};

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_morphine",2,
        "ACE_epinephrine",2,
        "ACE_tourniquet",2,

        // Medical Equipment
        "ACE_quikclot",40,
        "ACE_fieldDressing",40,
        "ACE_morphine",10,
        "ACE_epinephrine",10,
        "ACE_tourniquet",5,

        // Standard
        "ACE_Canteen",
        "ACE_EntrenchingTool",
        "ACE_CableTie",2,
        "ACE_MapTools",
        "ACE_Flashlight_XL50",

        // Electronics
        "ACE_microDAGR",
        
        // Misc
        "H_Cap_tan",
        "rhsusf_shemagh_tan"
    };
    nvgs[] = {"NVGogglesB_grn_F"};
    gps[] = {"ItemAndroid"};
};


class Cav_B_A_Helicopter_Att_Pilot_F : Cav_B_Alpha_base_F {
    headgear[] = {"rhsusf_ihadss"};
    backpack[] = {"B_Kitbag_mcamo"};

    gps[] = {"ItemAndroid"};
};
class Cav_B_A_Helicopter_Att_coPilot_F : Cav_B_Alpha_base_F {
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
        "ACE_Canteen",
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
        "ACRE_PRC152",
        "ACRE_PRC343",
        
        // Personal Medical Equipment
        "ACE_quikclot",5,
        "ACE_tourniquet",2,

        // Standard
        "ACE_Canteen",
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
    backpack[] = {"B_Kitbag_mcamo"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    gps[] = {"ItemcTab"};
};
class Cav_B_A_Plane_Transport_coPilot_F : Cav_B_Alpha_base_F {
    backpack[] = {"B_Kitbag_mcamo"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    gps[] = {"ItemcTab"};
};