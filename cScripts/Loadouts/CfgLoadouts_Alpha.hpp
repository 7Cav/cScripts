/* Gear Date 180930 */

//  P E G A S U S   A N D   H E L I C O P T E R   C R E W

class CAV_Alpha_Helo_PILOT : CAV_Alpha_Base {  // Use for Helo pilots and Pegasus
    backpack[] = {"B_Kitbag_mcamo"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    gps[] = {"ItemcTab"};
};

class CAV_Alpha_Helo_COPILOT : CAV_Alpha_Base {  // Use for CoPilots
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

class CAV_Alpha_Helo_CHIEF : CAV_Alpha_Base {  // Crew Chief
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

class CAV_Alpha_Helo_GNR : CAV_Alpha_Base {  // Door Gunner
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

class CAV_Alpha_Helo_PILOT_ATT : CAV_Alpha_Base {  // Use for Attack Rotary
    headgear[] = {"rhsusf_ihadss"};
    backpack[] = {"B_Kitbag_mcamo"};

    gps[] = {"ItemAndroid"};
};

class CAV_Alpha_Helo_COPILOT_ATT : CAV_Alpha_Base {  // Use for Attack Rotary
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


//  F I X E D   W I N G

class CAV_Alpha_Fixed_PILOT : CAV_Alpha_Base {
    nvgs[] = {""};
    backpack[] = {"B_AssaultPack_mcamo"};
    headgear[] = {"H_PilotHelmetFighter_B"};  // This has been tested by CPT.Blackburn.J
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
