/* Gear Date 15 NOV 17 */

// M E D I C A L   P L A T O O N

class CAV_Medical_OFFCR : CAV_Medical_Base {  // Medical Team Leader or SL and up leadership positions

    backpack[] = {"B_Carryall_mcamo"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhsusf_mag_15Rnd_9x19_JHP",2,

        "rhs_mag_m67",

        "ACE_Chemlight_HiOrange",2,
        "SmokeShell",2,
        "SmokeShellBlue",2,
        "SmokeShellOrange",2
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",6,
        "ACE_surgicalKit",
        "ACE_tourniquet",10,

        "ACE_quikclot",25,
        "ACE_elasticBandage",20,

        "ACE_adenosine",5,
        "ACE_epinephrine",20,
        "ACE_morphine",20,

        "ACE_salineIV",6,

        // Standard
        "ACE_Canteen",
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };
};

class CAV_Medical_BONESAW : CAV_Medical_Base {  // Medical Team Member

    backpack[] = {"B_Carryall_mcamo"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhsusf_mag_15Rnd_9x19_JHP",2,

        "rhs_mag_m67",

        "ACE_Chemlight_HiOrange",2,
        "SmokeShell",2,
        "SmokeShellBlue",2,
        "SmokeShellOrange",2
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",6,
        "ACE_surgicalKit",
        "ACE_tourniquet",10,

        "ACE_quikclot",25,
        "ACE_elasticBandage",20,

        "ACE_adenosine",5,
        "ACE_epinephrine",20,
        "ACE_morphine",20,

        "ACE_salineIV",6,

        // Standard
        "ACE_Canteen",
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };
};

class CAV_Medical_PLMEDIC : CAV_Medical_Base {  // Platoon Medics
    backpack[] = {"B_Carryall_mcamo"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",5,
        "rhsusf_mag_15Rnd_9x19_JHP",2,

        "rhs_mag_m67",2,

        "SmokeShell",4,
        "SmokeShellGreen",
        "SmokeShellRed",
        "SmokeShellYellow"
    };
    items[] = {
        // Radios
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",2,
        "ACE_surgicalKit",
        "ACE_quikclot",35,
        "ACE_tourniquet",2,
        "ACE_salineIV",8,
        "ACE_morphine",20 ,
        "ACE_epinephrine",20,

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        "ACE_Canteen",
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_MicroDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };

    preLoadout = "[(_this select 0), 'medical', 1, 0] call cScripts_fnc_setPreInitPlayerSettings;";
};
