/* Gear Date 15 NOV 17 */

//  P E G A S U S   A N D   H E L I C O P T E R   C R E W

class CAV_Alpha_Helo_PILOT : CAV_Alpha_Base {  // Use for Helo pilots and Pegasus

    backpack[] = {"tf_rt1523g_rhs"};
    headgear[] = {"rhsusf_hgu56p_visor"};

    gps[] = {"ItemcTab"};

};

class CAV_Alpha_Helo_CHIEF : CAV_Alpha_Base {  // Crew Chief

    backpack[] = {"tf_rt1523g_big_rhs"};
    headgear[] = {"rhsusf_hgu56p_visor_mask_Empire_black"};

    items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",26,
        "ACE_tourniquet",8,
        "ACE_morphine",8,

        // Standard
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ToolKit"
    };
    preLoadout = "[(_this select 0), 'alpha', 0, true] call cScripts_fnc_setPreInitPlayerSettings;";
};

class CAV_Alpha_Helo_GNR : CAV_Alpha_Base {  // Door Gunner

    backpack[] = {"B_Kitbag_mcamo"};
    headgear[] = {"rhsusf_hgu56p_visor_mask_black_skull"};

    items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ToolKit"
    };

    preLoadout = "[(_this select 0), 'alpha', 0, true] call cScripts_fnc_setPreInitPlayerSettings;";
};

//  F I X E D   W I N G

class CAV_Alpha_Fixed_PILOT : CAV_Alpha_Base {

    nvgs[] = {""};
    backpack[] = {"tf_rt1523g_rhs"};
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
        "ACE_Chemlight_HiRed",
        "ACE_Chemlight_HiYellow",
        "SmokeShell",
        "SmokeShellGreen",
        "SmokeShellRed",
        "B_IR_Grenade",2
    };

    items[] = {
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
};
