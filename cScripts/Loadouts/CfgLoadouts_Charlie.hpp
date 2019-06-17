// Charlie Company Loadouts
// By SFC.Atherton.H                        version 0.1

// Squad
class Cav_B_C_AutomaticRifleman_F : Cav_B_Charlie_base_F { //General AR : 28kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_saw"};

    primary[] = {"rhs_weap_m249_pip_S_para","rhsusf_acc_SFMB556","","rhsusf_acc_ELCAN"};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "rhsusf_200rnd_556x45_mixed_box",4,
        "rhs_mag_m67",1,
        "SmokeShell",3
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_XL50",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_RiflemanLAT_F : Cav_B_Charlie_base_F { //General Rifleman AT : 29kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    //primary[] = {};
    //secondary[] = {""};
    launcher[] = {"rhs_weap_M136_hp"};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",4,
        "SmokeShell",6
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_Rifleman_F : Cav_B_Charlie_base_F { //General Rifleman : ??kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",4,
        "SmokeShell",6
    };
    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_FireTeamLeader_F : Cav_B_Charlie_base_F { //General FTL : 27kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_grenadier"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",1,
        "SmokeShellYellow",1,
        "SmokeShellBlue",1,
        "rhs_mag_M433_HEDP",7,
        "1Rnd_Smoke_Grenade_shell",2,
        "1Rnd_SmokeRed_Grenade_shell",2,
        "ACE_HuntIR_M203",2
    };

    items[] = {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        "ACE_HuntIR_monitor",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_Grenadier_F : Cav_B_Charlie_base_F { //General GRN : 25kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_grenadier"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_compm4"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "rhs_mag_M433_HEDP",7,
        "1Rnd_Smoke_Grenade_shell",2,
        "ACE_HuntIR_M203",2
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_SquadLeader_F : Cav_B_Charlie_base_F { //General SL : 24kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",7,
        "rhs_mag_m67",3,
        "SmokeShell",4,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,
        "SmokeShellBlue",2
    };

    items[] = {
        "ACE_microDAGR",
        "ACRE_PRC152",2,
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        "ACE_HuntIR_monitor",
        "ACE_Chemlight_HiGreen",
        "ACE_Chemlight_HiBlue",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_Marksman_Local : Cav_B_Charlie_base_F { //DMR : 24kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_sniper"};

    primary[] = {"rhs_weap_sr25_ec","rhsusf_acc_anpeq15side_bk","rhsusf_acc_su230a","rhsusf_acc_harris_bipod"};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "rhsusf_20Rnd_762x51_SR25_m993_Mag",7,
        "rhs_mag_m67",2,
        "SmokeShell",4
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_XL50",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

// AT Team
class Cav_B_C_AAT_Local : Cav_B_Charlie_base_F { //MAAWS Assistant : 30kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",4,
        "SmokeShell",6,
        "tf47_m3maaws_HE",1,
        "tf47_m3maaws_HEAT",1
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_AT_Local : Cav_B_Charlie_base_F { //MAAWS Gunner : 37kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    //primary[] = {};
    //secondary[] = {""};
    launcher[] = {"tf47_m3maaws","tf47_optic_m3maaws"};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",3,
        "SmokeShell",4,
        "tf47_m3maaws_HE",1,
        "tf47_m3maaws_HEAT",1
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

// MK19 Team
class Cav_B_C_Support_MK19_TeamLeader_Local : Cav_B_Charlie_base_F { //Mk.19 FTL : 27kg
    backpack[] = {"RHS_Mk19_Tripod_Bag"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_teamleader_alt"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",1,
        "SmokeShellYellow",1,
        "SmokeShellBlue",1
    };

    items[] = {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        "Flagstack_Red",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_Support_MK19_Gunner_Local : Cav_B_Charlie_base_F { //Mk.19 Gun : 35kg
    backpack[] = {"RHS_Mk19_Gun_Bag"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",4,
        "SmokeShell",6
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        "Flagstack_Red",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_Support_MK19_Assistant_Local : Cav_B_Charlie_base_F { //Mk.19 Tri : 28kg
    backpack[] = {"RHS_Mk19_Tripod_Bag"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",4,
        "SmokeShell",6
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        "Flagstack_Red",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

// MMG Team
class CAV_Charlie_Machinegunner_TeamLeader_Local : Cav_B_Charlie_base_F { //MMG FTL : 29kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_teamleader_alt"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,
        "rhsusf_100Rnd_762x51_m62_tracer",3
    };

    items[] = {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "ACE_IR_Strobe_Item",
        "ACE_SpareBarrel",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class CAV_Charlie_Machinegunner_Local : Cav_B_Charlie_base_F { //MMG Gunner : 33kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_machinegunner"};

    primary[] = {"rhs_weap_m240B","rhsusf_acc_ARDEC_M240","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_MDO"};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
    "rhs_mag_m67",1,
    "SmokeShell",4,
    "rhsusf_100Rnd_762x51_m62_tracer",4
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_XL50",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

// Mortar Team
class Cav_B_C_Support_Mortar_AutomaticRifleman_Local : Cav_B_Charlie_base_F { //Mortar AR : 35kg
    backpack[] = {"B_Mortar_01_support_F"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_saw"};

    primary[] = {"rhs_weap_m249_pip_S_para","rhsusf_acc_SFMB556","rhsusf_acc_ELCAN"};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
    "rhs_mag_m67",1,
    "SmokeShell",3,
    "rhsusf_200rnd_556x45_mixed_box",4
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_XL50",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_Support_Mortar_TeamLeader_Local : Cav_B_Charlie_base_F { //Mortar FTL : 30kg
    backpack[] = {"B_Mortar_01_support_F"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_teamleader_alt"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellRed",2,
        "SmokeShellGreen",2
    };

    items[] = {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "ACE_IR_Strobe_Item",
        "ACE_RangeTable_82mm",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_Support_Mortar_Gunner_Local : Cav_B_Charlie_base_F { //Mortar Gunner : 38kg
    backpack[] = {"B_Mortar_01_weapon_F"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
    "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
    "rhs_mag_m67",4,
    "SmokeShell",6
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_RangeTable_82mm",
        "Flagstack_Red",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_Support_Mortar_SquadLeader_Local : Cav_B_Charlie_base_F { //Mortar SL : 24kg
    backpack[] = {"B_Mortar_01_weapon_F"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",8,
        "rhs_mag_m67",3,
        "SmokeShell",4,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,
        "SmokeShellBlue",2
    };

    items[] = {
        "ACE_microDAGR",
        "ACRE_PRC152",2,
        "ACE_IR_Strobe_Item",
        "ACE_RangeTable_82mm",
        "ACE_EntrenchingTool",
        "ACE_HuntIR_monitor",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

// AA Team
class Cav_B_C_AAA_Local : Cav_B_Charlie_base_F { //Stinger Assist : 28kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",4,
        "SmokeShell",6,
        "rhs_fim92_mag",1
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_AA_Local : Cav_B_Charlie_base_F { //Stinger Gunner : 37kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    //primary[] = {};
    //secondary[] = {""};
    launcher[] = {"rhs_weap_fim92"};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",4,
        "SmokeShell",6,
        "rhs_fim92_mag",2
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

// TOW Team
class CAV_Charlie_TOWSFTL : Cav_B_Charlie_base_F { //TOWS FTL : 27kg
    backpack[] = {"rhs_TOW_Tripod_Bag"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_teamleader_alt"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4
    };

    items[] = {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class CAV_Charlie_TOWSGUN : Cav_B_Charlie_base_F { //TOWS Gunner : 35kg
    backpack[] = {"rhs_Tow_Gun_Bag"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",4,
        "SmokeShell",6
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "Flagstack_Red",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class CAV_Charlie_TOWSTRI : Cav_B_Charlie_base_F { //TOWS Tripod : 28kg
    backpack[] = {"rhs_TOW_Tripod_Bag"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"Binocular"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",4,
        "SmokeShell",6
    };

    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "Flagstack_Red",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

// Staff
class Cav_B_C_Officer_F : Cav_B_Charlie_base_F { //Platoon Staff : 27kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",7,
        "rhs_mag_m67",3,
        "SmokeShell",4,
        "SmokeShellRed",3,
        "SmokeShellGreen",3,
        "SmokeShellBlue",3,
        "SmokeShellYellow",3,
        "SmokeShellPurple",3
    };

    items[] = {
        "ACE_microDAGR",
        "ACRE_PRC152",2,
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        "ACE_HuntIR_monitor",
        "ACE_Chemlight_HiGreen",
        "ACE_Chemlight_HiBlue",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_C_PlatoonMedic_F : Cav_B_Charlie_base_F { //Platoon Medic : 34kg
    backpack[] = {"B_Kitbag_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_medic"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
    "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
    "rhs_mag_m67",1,
    "SmokeShell",3,
    "SmokeShellGreen",2,
    "SmokeShellBlue",2,
    "SmokeShellPurple",2
    };

    items[] = {
        "ACE_microDAGR",
        "ACRE_PRC152",2,
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        "ACE_HuntIR_monitor",
        "ACE_Chemlight_HiRed",6,
        "ACE_surgicalKit",
        "ACE_salineIV",10,
        "ACE_morphine",15,
        "ACE_elasticBandage",40,
        "ACE_quikclot",40,
        "ACE_epinephrine",8,
        "ACE_tourniquet",10,
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class CAV_Charlie_CompanyStaff_F : Cav_B_Charlie_base_F { //Company Staff : 27kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",7,
        "rhs_mag_m67",3,
        "SmokeShell",4,
        "SmokeShellRed",3,
        "SmokeShellGreen",3,
        "SmokeShellBlue",3,
        "SmokeShellYellow",3,
        "SmokeShellPurple",3
    };

    items[] = {
        "ACE_microDAGR",
        "ACRE_PRC152",2,
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        "ACE_HuntIR_monitor",
        "ACE_Chemlight_HiGreen",
        "ACE_Chemlight_HiBlue",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemcTab"};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

// Other
class Cav_B_C_CombatLifeSaver_F : Cav_B_Charlie_base_F {
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_m67",4,
        "SmokeShell",6
    };
    items[] = {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools",

        // Medical Equipment
        "ACE_personalAidKit",
        "ACE_quikclot",20,
        "ACE_tourniquet",6,
        "ACE_morphine",6
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
