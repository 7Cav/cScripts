
//                C H A R L I E   C O M P A N Y

class Cav_B_C_PlatoonSergeant_F : Cav_B_Charlie_base_F {

    //backpack[] = {"B_AssaultPack_mcamo"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,

        "rhs_mag_m67",4,
        "ACE_HandFlare_Red",4,

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
        "ACE_Canteen",
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        "ItemAndroid",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemcTab"};

    preLoadout = "[(_this select 0), 'charlie', 0, 2, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_C_PlatoonLeader_F : Cav_B_Charlie_base_F {

    //backpack[] = {"B_AssaultPack_mcamo"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,

        "rhs_mag_m67",4,
        "ACE_HandFlare_Red",4,

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
        "ACE_Canteen",
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        "ItemAndroid",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemcTab"};

    preLoadout = "[(_this select 0), 'charlie', 0, 2, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_C_PlatoonMedic_F : Cav_B_Charlie_base_F {
    backpack[] = {"B_Carryall_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_mbav_medic"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_grip","rhsusf_acc_anpeq15side","rhsusf_acc_compm4","rhsusf_acc_grip3"};
    secondary[] = {"rhsusf_weap_m9"};
    launcher[] = {""};

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

    compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    map[] = {"ItemMap"};
    nvgs[] = {""};
    watch[] = {"ItemWatch"};

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
    preLoadout = "[(_this select 0), 'charlie', 1, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

// S Q U A D
class Cav_B_C_SquadLeader_F : Cav_B_Charlie_base_F {

    headgear[] = {"rhsusf_ach_helmet_headset_ess_ocp"};
    //backpack[] = {"B_AssaultPack_mcamo"};
    vest[] = {"rhsusf_spcs_ocp_teamleader_alt"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,

        "rhs_mag_m67",4,
        "ACE_Handflare_Red",4,

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
        "ACE_Canteen",
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

class Cav_B_C_Alpha_FireTeamLeader_F : Cav_B_Charlie_base_F {

    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    vest[] = {"rhsusf_spcs_ocp_grenadier"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,

        "rhs_mag_m67",4,
        "ACE_HandFlare_Red",2,

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
        "ACE_Canteen",
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
class Cav_B_C_Alpha_AutomaticRifleman_F : Cav_B_Charlie_base_F {

    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    vest[] = {"rhsusf_spcs_ocp_saw"};
    primary[] = {"rhs_weap_m249_pip_L_para","rhsusf_acc_anpeq15A","rhsusf_acc_ELCAN_ard"};

    magazines[] = {
        "rhs_200rnd_556x45_M_SAW",5,

        "rhs_mag_m67",4,

        "SmokeShell",4
    };
};
class Cav_B_C_Alpha_Grenadier_F : Cav_B_Charlie_base_F {

    headgear[] = {"rhsusf_ach_helmet_ocp_norotos"};
    vest[] = {"rhsusf_spcs_ocp_grenadier"};
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
        "ACE_Canteen",
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        //Electronics
        "ACE_DAGR",

        // Tools
        "ACE_EntrenchingTool"
    };

};
class Cav_B_C_Alpha_Rifleman_F : Cav_B_Charlie_base_F {

    headgear[] = {"rhsusf_ach_helmet_ocp_norotos"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",12,

        "rhs_mag_m67",6,

        "SmokeShell",6
    };
};
class Cav_B_C_Alpha_RiflemanAT_F : Cav_B_Charlie_base_F {

    headgear[] = {"rhsusf_ach_helmet_ocp_norotos"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",12,

        "rhs_mag_m67",6,

        "SmokeShell",6
    };
};
class Cav_B_C_Alpha_RiflemanLAT_F : Cav_B_Charlie_base_F {

    headgear[] = {"rhsusf_ach_helmet_ocp_norotos"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",12,

        "rhs_mag_m67",6,

        "SmokeShell",6
    };
};
class Cav_B_C_Alpha_CombatLifeSaver_F : Cav_B_Charlie_base_F {
    
    headgear[] = {"rhsusf_ach_helmet_ESS_ocp"};
    vest[] = {"rhsusf_spcs_ocp_medic"};

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
        "ACE_Canteen",
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        //Electronics
        "ACE_DAGR",

        // Tools
        "ACE_EntrenchingTool"
    };

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
};
class Cav_B_C_Bravo_FireTeamLeader_F : Cav_B_C_Alpha_FireTeamLeader_F {
};
class Cav_B_C_Bravo_AutomaticRifleman_F : Cav_B_C_Alpha_AutomaticRifleman_F {
};
class Cav_B_C_Bravo_Grenadier_F : Cav_B_C_Alpha_Grenadier_F {
};
class Cav_B_C_Bravo_Rifleman_F : Cav_B_C_Alpha_Rifleman_F {
};
class Cav_B_C_Bravo_RiflemanAT_F : Cav_B_C_Alpha_RiflemanAT_F {
};
class Cav_B_C_Bravo_RiflemanLAT_F : Cav_B_C_Alpha_RiflemanLAT_F {
};
class Cav_B_C_Bravo_CombatLifeSaver_F : Cav_B_C_Alpha_CombatLifeSaver_F {
};

// W E A P O N S   S Q U A D
class Cav_B_C_Weap_SquadLeader_F : Cav_B_Charlie_Weap_base_F {
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
        "ACE_Canteen",
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

    preLoadout = "[(_this select 0), 'charlie', 0, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_C_Weap_Alpha_FireTeamLeader_F : Cav_B_Charlie_Weap_base_F {

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR"};
    launcher[] = {"rhs_weap_M136_hp"};

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
        "ACE_Canteen",
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

    preLoadout = "[(_this select 0), 'charlie', 0, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_C_Weap_Alpha_AutomaticRifleman_F : Cav_B_Charlie_Weap_base_F {

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
        "ACE_Canteen",
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
    preLoadout = "[(_this select 0), 'charlie', 0, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_C_Weap_Alpha_Grenadier_F : Cav_B_Charlie_Weap_base_F {
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
        "ACE_Canteen",
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
    preLoadout = "[(_this select 0), 'charlie', 0, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_C_Weap_Alpha_Rifleman_F : Cav_B_Charlie_Weap_base_F {
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
        "ACE_Canteen",
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
    preLoadout = "[(_this select 0), 'charlie', 0, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_C_Weap_Alpha_RiflemanAT_F : Cav_B_Charlie_Weap_base_F {
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
        "ACE_Canteen",
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
    preLoadout = "[(_this select 0), 'charlie', 0, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_C_Weap_Alpha_RiflemanLAT_F : Cav_B_Charlie_Weap_base_F {
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
        "ACE_Canteen",
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
    preLoadout = "[(_this select 0), 'charlie', 0, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_C_Weap_Alpha_CombatLifeSaver_F : Cav_B_Charlie_Weap_base_F {
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
        "ACE_Canteen",
        "ACE_EarPlugs",
        "ACE_MapTools",
        "Ace_M26_Clacker",
        "ACE_DefusalKit",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
    gps[] = {"ItemAndroid"};
    preLoadout = "[(_this select 0), 'charlie', 0, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_C_Weap_Bravo_FireTeamLeader_F : Cav_B_C_Weap_Alpha_FireTeamLeader_F {
};
class Cav_B_C_Weap_Bravo_AutomaticRifleman_F : Cav_B_C_Weap_Alpha_AutomaticRifleman_F {
};
class Cav_B_C_Weap_Bravo_Grenadier_F : Cav_B_C_Weap_Alpha_Grenadier_F {
};
class Cav_B_C_Weap_Bravo_Rifleman_F : Cav_B_C_Weap_Alpha_Rifleman_F {
};
class Cav_B_C_Weap_Bravo_RiflemanAT_F : Cav_B_C_Weap_Alpha_RiflemanAT_F {
};
class Cav_B_C_Weap_Bravo_RiflemanLAT_F : Cav_B_C_Weap_Alpha_RiflemanLAT_F {
};
class Cav_B_C_Weap_Bravo_CombatLifeSaver_F : Cav_B_C_Weap_Alpha_CombatLifeSaver_F {
};
