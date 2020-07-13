
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
    company = "alpha";

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

class Cav_B_Bravo_base_F : CommonBlufor {
    company = "bravo";

    nvgs[] = {""};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_headset_ocp_alt","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_headset_ocp_alt","rhsusf_ach_helmet_headset_ess_ocp","rhsusf_ach_helmet_headset_ess_ocp_alt"};
    uniform[] = {"rhs_uniform_acu_ocp","rhs_uniform_acu_oefcp","rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};
    backpack[] = {"B_AssaultPack_mcamo","B_AssaultPack_mcamo","B_AssaultPack_cbr","rhsusf_assault_eagleaiii_ocp"};
    
    primary[] = {
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3"}
        };
    secondary[] = {""};
    launcher[] = {""};
    binoculars[] = {""};
    
    magazines[] = {};
    items[] = {
        // Radio
        "acre_prc343",

        // Tools
        "ACE_MapTools",
        "ACE_Flashlight_XL50",
        "ACE_microDAGR",
        "ACE_EarPlugs",
        "ACE_CableTie",

        // Medical Equipment
        "ACE_quikclot",20,
        "ACE_tourniquet",4,
        "ACE_personalAidKit",

        // Gear
        "rhsusf_ANPVS_14"
    };

    compass[] = {"ItemCompass"};
    gps[] = {""};
    map[] = {"ItemMap"};
    watch[] = {"ItemWatch"};

    preLoadout = "[(_this select 0), 'bravo', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0)] call cScripts_fnc_setPostInitPlayerSettings;";
};

class Cav_B_Scout_base_F : CommonBlufor {
    company = "bravo";

    nvgs[] = {"rhsusf_ANPVS_14"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"rhs_uniform_acu_ocp","rhs_uniform_acu_oefcp","rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};
    backpack[] = {"B_AssaultPack_mcamo","B_AssaultPack_mcamo","B_AssaultPack_cbr","rhsusf_assault_eagleaiii_ocp"};
    
    primary[] = {
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3"}
        };
    secondary[] = {""};
    launcher[] = {""};
    binoculars[] = {"ACE_Vector"};
    
    magazines[] = {};
    items[] = {
        // Radio
        "acre_prc343",

        // Tools
        "ACE_MapTools",
        "ACE_Flashlight_XL50",
        "ACE_microDAGR",
        "ACE_CableTie",2,

        // Medical Equipment
        "ACE_quikclot",20,
        "ACE_tourniquet",4,
    };

    compass[] = {"ItemCompass"};
    gps[] = {""};
    map[] = {"ItemMap"};
    watch[] = {"ItemWatch"};

    preLoadout = "[(_this select 0), 'bravo', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0)] call cScripts_fnc_setPostInitPlayerSettings;";
};

class Cav_B_Charlie_base_F : CommonBlufor {
    company = "charlie";

    nvgs[] = {""};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"rhs_uniform_acu_ocp","rhs_uniform_acu_oefcp","rhs_uniform_acu_oefcp"};
    vest[] = {""};
    backpack[] = {"B_AssaultPack_mcamo","B_AssaultPack_mcamo","B_AssaultPack_cbr","rhsusf_assault_eagleaiii_ocp"};
    
    primary[] = {
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3"}
        };
    secondary[] = {""};
    launcher[] = {""};
    binoculars[] = {""};
    
    magazines[] = {};
    items[] = {
        // Radio
        "acre_prc343",

        // Tools
        "ACE_MapTools",
        "ACE_Flashlight_XL50",

        // Medical Equipment
        "ACE_quikclot",14,
        "ACE_tourniquet",4,

        // Gear
        "rhsusf_ANPVS_14"
    };

    compass[] = {"ItemCompass"};
    gps[] = {""};
    map[] = {"ItemMap"};
    watch[] = {"ACE_Altimeter"};

    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0)] call cScripts_fnc_setPostInitPlayerSettings;";
};
