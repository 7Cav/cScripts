/* Gear Date 07 FEB 18 */

class CAV_Charlie_OFFCR : CAV_Charlie_Base {  // Leadership positions PSG and up

    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,

        "rhs_mag_m67",4,

        "SmokeShell",4,
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

    preLoadout = "[(_this select 0), 'charlie', 0, true, true] call cScripts_fnc_setPreInitPlayerSettings;";
};

class CAV_Charlie_JFO : CAV_Charlie_Base {  // Joint Fires Observer 36.3kg

    backpack[] = {"B_Carryall_mcamo"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    nvgs[] = {""};
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
        "ACE_MX2A",
        "rhsusf_ANPVS_15",

        // Tools
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemcTab"};

    preLoadout = "[(_this select 0), 'charlie', 0, true] call cScripts_fnc_setPreInitPlayerSettings;";
};

class CAV_Charlie_SL : CAV_Charlie_Base {  // Squad Leader

    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,

        "rhs_mag_m67",4,

        "SmokeShell",4,
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
    gps[] = {"ItemAndroid"};
};

class CAV_Charlie_TL : CAV_Charlie_Base {  // Fire Team Leader

    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,

        "rhs_mag_m67",4,

        "SmokeShell",4,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1,

        "rhs_mag_M441_HE",10,
        "rhs_mag_M397_HET",2,
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

class CAV_Charlie_AR : CAV_Charlie_Base {  // Automatic Rifleman 31.9kg

    primary[] = {"rhs_weap_m249_pip_L_para","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_200rnd_556x45_M_SAW",5,

        "rhs_mag_m67",4,

        "SmokeShell",4
    };
};

class CAV_Charlie_GR : CAV_Charlie_Base {  // Grenadier 28.4kg

    binoculars[] = {"Binocular"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_M441_HE",12,
        "rhs_mag_M397_HET",2,
        "rhs_mag_m714_White",4,
        "ACE_HuntIR_M203",2,

        "rhs_mag_m67",4,

        "SmokeShell",4
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

class CAV_Charlie_RM : CAV_Charlie_Base {  // Rifleman

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",12,

        "rhs_mag_m67",6,

        "SmokeShell",6
    };
};

class CAV_Charlie_CLS : CAV_Charlie_Base {  // Combat Life Saver 24.3kg

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,

        "rhs_mag_m67",4,

        "SmokeShell",4,
        "SmokeShellGreen",
        "SmokeShellRed",
        "SmokeShellYellow"
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

class CAV_Charlie_Weapons_SL : CAV_Charlie_Base {  // Squad Leader 35.3kg
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",4,

        "SmokeShell",4,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1,

        "rhs_mag_M441_HE",10,
        "rhs_mag_M397_HET",2,
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
        "ACE_RangeTable_82mm",
        "ACE_M26_Clacker",
        "ACE_DefusalKit",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "Flagstack_Red",
        "ACE_Fortify",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemAndroid"};

    preLoadout = "[(_this select 0), 'charlie', 0, true, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class CAV_Charlie_Weapons_TL : CAV_Charlie_Base {  // Team Leader 32.4kg, 38.3kg with Mortar Bipod, 39.2kg with M2 Minitripod, 36.4 with Mk19/TOW tripod

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};
    launcher[] = {"tf47_at4_HP"};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,

        "rhs_mag_M441_HE",6,
        "rhs_mag_m714_White",2
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
        "ACE_CableTie",
        "ACE_RangeTable_82mm",
        "ACE_M26_Clacker",
        "ACE_DefusalKit",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemAndroid"};

    preLoadout = "[(_this select 0), 'charlie', 0, true, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class CAV_Charlie_Weapons_AR : CAV_Charlie_Base {  // Automatic Rifleman  30.1kg, 36.0 with Mortar Bipod, 36.9kg with M2 Minitripod, 34.1 with Mk19/TOW tripod

    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m249_pip_L_para","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_200rnd_556x45_M_SAW",4,

        "rhs_mag_m67",2,
        "SmokeShell",2
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
        "Ace_M26_Clacker",
        "ACE_DefusalKit",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };
    gps[] = {"ItemAndroid"};
    preLoadout = "[(_this select 0), 'charlie', 0, true, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class CAV_Charlie_Weapons_GR : CAV_Charlie_Base {  // Grenadier 24.9kg, 39.9kg with Mortar Tube, 40.0kg with M2 Gun Bag, 36.3kg with Mk19/TOW Gun Bag
    backpack[] = {"B_Kitbag_cbr"};
    binoculars[] = {"ACE_Vector"};
    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_M441_HE",8,
        "rhs_mag_m714_White",2,

        "rhs_mag_m67",2,
        "SmokeShell",2
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
        "Ace_M26_Clacker",
        "ACE_DefusalKit",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };
    gps[] = {"ItemAndroid"};
    preLoadout = "[(_this select 0), 'charlie', 0, true, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class CAV_Charlie_Weapons_RM : CAV_Charlie_Base {  // Rifleman 22.8kg, 37.8kg with Mortar Tube, 37.9kg with M2 Gun Bag, 34.3kg with Mk19/TOW Gun Bag
    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};
    backpack[] = {"B_Kitbag_cbr"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,

        "rhs_mag_m67",4,
        "SmokeShell",4
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
        "Ace_M26_Clacker",
        "ACE_DefusalKit",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };
    gps[] = {"ItemAndroid"};
    preLoadout = "[(_this select 0), 'charlie', 0, true, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class CAV_Charlie_Weapons_CLS : CAV_Charlie_Base {  // Combat Life Saver 23.0kg, 37.9kg with Mortar Tube, 38.0kg with M2 Gun Bag, 34.4kg with Mk19/TOW Gun Bag
    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};
    backpack[] = {"B_Kitbag_cbr"};
    binoculars[] = {"ACE_Vector"};


    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellGreen",
        "SmokeShellRed",
        "SmokeShellYellow"
    };
    items[] = {
        // Radios
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",
        "ACE_quikclot",20,
        "ACE_tourniquet",2,
        "ACE_morphine",6,

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "Ace_M26_Clacker",
        "ACE_DefusalKit",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };

    insignia[] = {"CLS_Insignia"};
    gps[] = {"ItemAndroid"};
    preLoadout = "[(_this select 0), 'charlie', 0, true, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
