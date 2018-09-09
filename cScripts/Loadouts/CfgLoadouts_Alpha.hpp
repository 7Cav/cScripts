/* Gear Date 07 FEB 18 */

//  P E G A S U S   A N D   H E L I C O P T E R   C R E W


//DEVNOTES:
// "Helmet types?
// "2x Earplugs" Airframe have 10 and you have 1, need extra?
// Chemlight types?
// "1x Soft Cover" what is that? Barret?
// "1x Shemagh" Glasses variant and Color?
// "1x 117F Radio" airframe have 1, share ability, have additional more?

class CAV_Alpha_Helo_PILOT : CAV_Alpha_Base {  // Use for Helo pilots and Pegasus
    gps[] = {"ItemcTab"};
};

class CAV_Alpha_Helo_COPILOT : CAV_Alpha_Base {  // Use for CoPilots
    items[] = {
        // Radios
        "ACRE_PRC152",

        // Personal and additional medical equipment
        "ACE_quikclot",20,
        "ACE_morphine",7,
        "ACE_epinephrine",7,
        "ACE_tourniquet",7,

        // Standard
        "ACE_MapTools",
        "ACE_Flashlight_XL50",

        // Electronics
        "ACE_microDAGR"
    };

    gps[] = {"ItemcTab"};
};

class CAV_Alpha_Helo_CHIEF : CAV_Alpha_Base {  // Crew Chief
    headgear[] = {"rhsusf_hgu56p_visor_mask_black"};
    vest[] = {"rhsusf_mbav_mg"};

    primary[] = {"rhs_weap_m249_pip_S","rhsusf_acc_anpeq15A","rhsusf_acc_eotech_552"};

    magazines[] = {
        "rhs_200rnd_556x45_M_SAW",3,
        "rhsusf_mag_15Rnd_9x19_JHP",2,

        "B_IR_Grenade",2,
        "SmokeShellBlue",2,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,

        "Chemlight_green",2,
        "Chemlight_red",2,
        "ACE_Chemlight_HiYellow",2
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
        "ACE_MapTools",
        "ACE_Flashlight_XL50",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ToolKit"
    };

    preLoadout = "[(_this select 0), 'alpha', 0, true] call cScripts_fnc_setPreInitPlayerSettings;";
};

class CAV_Alpha_Helo_GNR : CAV_Alpha_Base {  // Door Gunner
    headgear[] = {"rhsusf_hgu56p_visor_mask_black"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",3,
        "rhsusf_mag_15Rnd_9x19_JHP",2,

        "B_IR_Grenade",2,
        "SmokeShellBlue",2,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,

        "Chemlight_green",2,
        "Chemlight_red",2,
        "ACE_Chemlight_HiYellow",2
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",20,
        "ACE_fieldDressing",10,
        "ACE_elasticBandage",10,
        "ACE_packingBandage",10,
        "ACE_morphine",10,
        "ACE_epinephrine",10,
        "ACE_tourniquet",7,

        // Standard
        "ACE_MapTools",
        "ACE_Flashlight_XL50",

        // Electronics
        "ACE_microDAGR"
    };
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
		
        // Personal Medical Equipment
        "ACE_quikclot",5,
        "ACE_tourniquet",2,

        // Standard
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_MX991",

        // Electronics
        "ACE_microDAGR",
        "ACRE_PRC343",
        "ACRE_PRC152"

    };

    preLoadout = "[(_this select 0), 'alpha', 0, true] call cScripts_fnc_setPreInitPlayerSettings;";

};
