
class CommonBlufor {
    // backpack[] = {""};
    // goggles[] = {"rhs_googles_clear"};
    // headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    // uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    // vest[] = {""};

    // primary[] = {""};
    // secondary[] = {""};
    // launcher[] = {""};

    // binoculars[] = {""};

    // magazines[] = {""};
    // items[] = {""};

    // compass[] = {"ItemCompass"};
    // gps[] = {""};
    // map[] = {"ItemMap"};
    // nvgs[] = {""};
    // watch[] = {"itemWatch"};

    // insignia[] = {""};
    //preLoadout = "";
    //postLoadout = "";
};

class Cav_B_Alpha_base_F : CommonBlufor {
    backpack[] = {""};
    //goggles[] = {""};
    headgear[] = {"rhsusf_hgu56p_visor_green"};
    uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {"rhsusf_mbav_light"};

    primary[] = {"rhs_weap_m4","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR"};
    secondary[] = {"rhsusf_weap_m9"};
    launcher[] = {""};

    binoculars[] = {"Binocular"};

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
        "Chemlight_blue",2
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

        // Standard
        
        "ACE_EntrenchingTool",
        "ACE_MapTools",
        "ACE_Flashlight_MX991",

        // Electronics
        "ACE_microDAGR",
        
        // Misc
        "H_Cap_tan",
        "rhsusf_shemagh_tan"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    watch[] = {"ACE_Altimeter"};

    insignia[] = {""};
    preLoadout = "[(_this select 0), 'alpha', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

// CAVALRY SCOUT BASE CLASS
class Cav_B_B_CavScout_base : CommonBlufor{
    uniform[] = {"rhs_uniform_cu_ocp"};
    vest[] = {""};
    backpack[] = {""};
    primary[] = {"","","","",""};
    secondary[] = {"","","","",""};
    launcher[] = {"","","","",""};
    magazines[] = {};
    items[] = {"ACE_EarPlugs","ACE_CableTie",2,"ACE_Flashlight_MX991","ACE_MapTools","ACE_microDAGR","ACE_quikclot",20,"ACE_tourniquet",2,"ACRE_PRC343"};
    binoculars[] = {"ACE_Vector"};
    compass[] = {"ItemCompass"};
    goggles[] = {"rhsusf_shemagh_tan"};
    gps[] = {"ItemcTab"};
    headgear[] = {""};
    map[] = {"ItemMap"};
    nvgs[] = {"ACE_NVG_Wide"};
    watch[] = {"ItemWatch"};
    insignia[] = {"Cav_Insignia_Bravo_2"};
    lrRadios[] = {};
};

class Cav_B_Bravo_base_F : CommonBlufor {
    backpack[] = {"B_Carryall_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {"rhsusf_iotv_ocp_Squadleader"};

    primary[] = {"rhs_weap_m4a1_grip","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR","rhsusf_acc_grip1"};
    secondary[] = {""};
    launcher[] = {""};

    binoculars[] = {""};

    magazines[] = {""};
    items[] = {
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

    compass[] = {"ItemCompass"};
    gps[] = {""};
    map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    watch[] = {"ItemWatch"};

    insignia[] = {""};
    preLoadout = "[(_this select 0), 'bravo', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_Bravo_Crew_base_F : Cav_B_Bravo_base_F {
    backpack[] = {"B_Carryall_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {"rhsusf_iotv_ocp_Squadleader"};

    primary[] = {"rhs_weap_m4a1_grip","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR","rhsusf_acc_grip1"};
    secondary[] = {""};
    launcher[] = {""};

    binoculars[] = {""};

    magazines[] = {""};
    items[] = {
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

    compass[] = {"ItemCompass"};
    gps[] = {""};
    map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    watch[] = {"ItemWatch"};

    insignia[] = {""};
    preLoadout = "[(_this select 0), 'bravo', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_Bravo_Logi_base_F : Cav_B_Bravo_base_F {
    backpack[] = {"B_Carryall_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_bare_headset"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_saw"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1","rhsusf_acc_anpeq15side","rhsusf_acc_compm4","rhsusf_acc_grip1"};
    secondary[] = {""};
    launcher[] = {""};

    magazines[] = {};

    items[] = {};

    compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    map[] = {"ItemMap"};
    nvgs[] = {""};
    watch[] = {"ItemWatch"};

    preLoadout = "[(_this select 0), 'bravo', 2, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

class Cav_B_Charlie_base_F : CommonBlufor {
    backpack[] = {"B_AssaultPack_khk"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    primary[] = {"rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_tdstubby_blk","rhsusf_acc_compm4"};
    secondary[] = {""};
    launcher[] = {""};

    binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",15,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen"
        
    };
    items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",16,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    compass[] = {"ItemCompass"};
    gps[] = {""};
    map[] = {"ItemMap"};
    nvgs[] = {""};
    watch[] = {"ItemWatch"};

    insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0)] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_Charlie_Weap_base_F : Cav_B_Charlie_base_F {
    // backpack[] = {""};
    // goggles[] = {"rhs_googles_clear"};
    // headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    // uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    // vest[] = {""};

    // primary[] = {""};
    // secondary[] = {""};
    // launcher[] = {""};

    // binoculars[] = {""};

    // magazines[] = {""};
    // items[] = {""};

    // compass[] = {"ItemCompass"};
    // gps[] = {""};
    // map[] = {"ItemMap"};
    // nvgs[] = {""};
    // watch[] = {"itemWatch"};

    // insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0)] call cScripts_fnc_setPostInitPlayerSettings;";
};
