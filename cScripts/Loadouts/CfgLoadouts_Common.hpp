
class CommonBlufor {
    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    // vest[] = {""};
    // backpack[] = {""};

    // primary[] = {""};
    // secondary[] = {""};
    // launcher[] = {""};
    // binoculars[] = {""};

    // magazines[] = {""};
    // items[] = {""};

    // compass[] = {"ItemCompass"};
    // gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"itemWatch"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};
class Cav_B_Alpha_base_F : CommonBlufor {
    company = "alpha";

    nvgs[] = {""};
    headgear[] = {"rhsusf_hgu56p_visor_green"};
    uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {"rhsusf_mbav_light"};
    backpack[] = {""};

    primary[] = {"rhs_weap_m4","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR"};
    secondary[] = {"rhsusf_weap_m9"};
    launcher[] = {""};
    binoculars[] = {"Binocular"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,
        "rhsusf_mag_15Rnd_9x19_JHP",3,

        "SmokeShell",2,
        "SmokeShellBlue",2,
        "SmokeShellRed",2,
        "SmokeShellGreen",2,

        "Chemlight_blue",2,
        "Chemlight_green",2,
        "ACE_Chemlight_HiRed",2,
        "B_IR_Grenade",1
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
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
        "ACE_EntrenchingTool",

        // Electronics
        "ACE_microDAGR",
        
        // Misc
        "H_Cap_tan",
        "rhsusf_shemagh_tan"
    };

    compass[] = {"ItemCompass"};
    gps[] = {""};
    map[] = {"ItemMap"};
    watch[] = {"ACE_Altimeter"};

    insignia[] = {""};
    preLoadout = "[(_this select 0), 'alpha', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_Bravo_base_F : CommonBlufor {
    company = "bravo";

    nvgs[] = {"rhsusf_ANPVS_14"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {"rhsusf_iotv_ocp_Squadleader"};
    backpack[] = {"B_Carryall_mcamo"};

    primary[] = {"rhs_weap_m4a1_grip","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR","rhsusf_acc_grip1"};
    secondary[] = {""};
    launcher[] = {""};
    binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6
    };
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
    watch[] = {"ACE_Altimeter"};

    insignia[] = {""};
    preLoadout = "[(_this select 0), 'bravo', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_Charlie_base_F : CommonBlufor {
    company = "charlie";

    nvgs[] = {""};
    headgear[] = {"rhsusf_patrolcap_ocp"};
    uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_iotv_ocp"};
    backpack[] = {""};

    primary[] = {"rhs_weap_m4a1_carryhandle"};
    secondary[] = {""};
    launcher[] = {""};
    binoculars[] = {""};

    magazines[] = {};
    items[] = {};

    compass[] = {"ItemCompass"};
    gps[] = {""};
    map[] = {"ItemMap"};
    watch[] = {"ItemWatch"};

    insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0)] call cScripts_fnc_setPostInitPlayerSettings;";
};