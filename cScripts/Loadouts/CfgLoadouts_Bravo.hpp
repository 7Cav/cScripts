/* Gear Date 07 FEB 18 */

//  O F F I C E R   A N D   C R E W

class CAV_Bravo_OFFCR : CAV_Bravo_Base {  // Leadership positions PSG and up

    goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",2,

        "SmokeShell",6,
        "SmokeShellBlue",1,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        "ACE_personalAidKit",

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemcTab"};
    preLoadout = "[(_this select 0), 'bravo', 0, true, true] call cScripts_fnc_setPreInitPlayerSettings;";
};

class CAV_Bravo_Crew_CDR : CAV_Bravo_Base {  // Crew Commander

    headgear[] = {"rhsusf_cvc_green_helmet"};
    goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    secondary[] = {"rhsusf_weap_m9"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",4,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,
        "rhsusf_mag_15Rnd_9x19_JHP",4,

        "rhs_mag_m714_White",
        "rhs_mag_m713_Red",
        "rhs_mag_m715_Green",
        "rhs_mag_m662_red",
        "rhs_mag_m661_green",

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",6,
        "ACE_tourniquet",2,

        // Standard
        "ACE_MapTools",
        "ACE_CableTie",
        "ToolKit",

        // Electronics
        "ACE_microDAGR"
    };

    gps[] = {"ItemAndroid"};
    preLoadout = "[(_this select 0), 'bravo', 0, true] call cScripts_fnc_setPreInitPlayerSettings;";
};

class CAV_Bravo_Crew_GNR : CAV_Bravo_Base {  // Crew Gunner (acts as CLS also)

    headgear[] = {"rhsusf_cvc_green_helmet"};
    goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",
        "ACE_quikclot",20,
        "ACE_tourniquet",6,
        "ACE_morphine",6,

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR"
    };

    insignia[] = {"CLS_Insignia"};
    gps[] = {"ItemAndroid"};

};

class CAV_Bravo_Crew_CREW : CAV_Bravo_Base {  // Driver-Loader (acts as Engineer also)

    headgear[] = {"rhsusf_cvc_green_helmet"};
    goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        "ACE_MapTools",
        "ACE_CableTie",
        "ToolKit",

        // Electronics
        "ACE_microDAGR"
    };

    insignia[] = {"CLS_Insignia"};
    gps[] = {"ItemAndroid"};
    preLoadout = "[(_this select 0), 'bravo', 0, true] call cScripts_fnc_setPreInitPlayerSettings;";
};

//  I N F A N T R Y   S Q U A D

class CAV_Bravo_SL : CAV_Bravo_Base {  // Squad Leader

    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",4,

        "SmokeShell",6,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1,
        "SmokeShellBlue",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        "ACE_personalAidKit",

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemAndroid"};
};

class CAV_Bravo_TL : CAV_Bravo_Base {  // Fire Team Leader
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",4,

        "SmokeShell",6,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1,
        "SmokeShellBlue",1,

        "rhs_mag_M441_HE",10,
        "rhs_mag_M433_HEDP",2,
        "rhs_mag_m714_White",2,
        "ACE_HuntIR_M203",2
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        "ACE_personalAidKit",

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };
};

class CAV_Bravo_AR : CAV_Bravo_Base {  // Automatic Rifleman
    vest[] = {"rhsusf_iotv_ocp_SAW"};

    primary[] = {"rhs_weap_m249_pip_S","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_200rnd_556x45_M_SAW",4,

        "rhs_mag_m67",4,

        "SmokeShell",4
    };
};

class CAV_Bravo_GR : CAV_Bravo_Base {  // Grenadier

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_M441_HE",10,
        "rhs_mag_M433_HEDP",4,
        "rhs_mag_m714_White",4,
        "ACE_HuntIR_M203",2,

        "rhs_mag_m67",6,

        "SmokeShell",6
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };

};

class CAV_Bravo_RM : CAV_Bravo_Base {  // Rifleman

    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",6,

        "SmokeShell",6,

        "rhs_200rnd_556x45_M_SAW",2
    };
};

class CAV_Bravo_CLS : CAV_Bravo_Base {  // Combat Life Saver 24.3kg

    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",6,

        "SmokeShell",6,
        "SmokeShellGreen",
        "SmokeShellRed",
        "SmokeShellYellow",

        "rhs_200rnd_556x45_M_SAW"
    };

    items[] = {
        // Medical Equipment
        "ACE_personalAidKit",
        "ACE_quikclot",20,
        "ACE_tourniquet",6,
        "ACE_morphine",6,

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };

    insignia[] = {"CLS_Insignia"};
};

//  W E A P O N S   T E A M

class CAV_Bravo_Weapons_TL : CAV_Bravo_Base {  // Team Leader

    vest[] = {"rhsusf_iotv_ocp_SAW"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,

        "rhs_mag_m67",5,

        "SmokeShell",5,

        "rhsusf_100Rnd_762x51_m80a1epr",4
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        "ACE_personalAidKit",

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemAndroid"};
};
class CAV_Bravo_Weapons_MG : CAV_Bravo_Base {  // HW Machine Gunner
    vest[] = {"rhsusf_iotv_ocp_SAW"};

    primary[] = {"rhs_weap_m240B","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_MDO"};

    magazines[] = {
        "rhsusf_100Rnd_762x51_m62_tracer",3,

        "rhs_mag_m67",2,
        "SmokeShell",4
    };
};
class CAV_Bravo_Weapons_GNR : CAV_Bravo_Base {  // Gunner AND Assistant Gunner

    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};
    vest[] = {"rhsusf_iotv_ocp_SAW"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,

        "rhs_mag_m67",2,

        "SmokeShell",3
    };
};
