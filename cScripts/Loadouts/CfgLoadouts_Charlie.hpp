// Intermediate Classes
class Cav_B_Charlie_Trooper_Local : Cav_B_Charlie_base_F {
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"rhs_uniform_acu_ocp","rhs_uniform_acu_oefcp","rhs_uniform_acu_oefcp"};
    backpack[] = {"B_AssaultPack_mcamo","B_AssaultPack_mcamo","B_AssaultPack_cbr","rhsusf_assault_eagleaiii_ocp"};

    primary[] = {
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3_tan"}
        };

    magazines[] = {
    };

    items[] = {
        // Radio
        "acre_prc343",

        // Tools
        "ACE_DAGR",
        "ACE_MapTools",
        "ACE_Flashlight_XL50",

        // Medical Equipment
        "ACE_quikclot",14,
        "ACE_tourniquet",4,

        // Gear
        "rhsusf_ANPVS_14"
    };

    watch[] = {"ACE_Altimeter"};

    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0)] call cScripts_fnc_setPostInitPlayerSettings;";
};

class Cav_B_Charlie_Leader_Local : Cav_B_Charlie_base_F {
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"rhs_uniform_acu_ocp","rhs_uniform_acu_oefcp","rhs_uniform_acu_oefcp"};
    backpack[] = {"B_AssaultPack_mcamo","B_AssaultPack_mcamo","B_AssaultPack_cbr","rhsusf_assault_eagleaiii_ocp"};

    primary[] = {
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1_mstock","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3_tan"}
        };

    magazines[] = {
    };

    items[] = {
        // Radio
        "acre_prc343",
        "ACRE_PRC152",

        // Tools
        "ACE_microDAGR",
        "ACE_MapTools",
        "ACE_Flashlight_XL50",

        // Medical Equipment
        "ACE_quikclot",14,
        "ACE_tourniquet",4,

        // Gear
        "rhsusf_ANPVS_14"
    };

    watch[] = {"ACE_Altimeter"};

    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0)] call cScripts_fnc_setPostInitPlayerSettings;";
};

// Platoon Leadership

class Cav_B_C_PlatoonLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Platoon Leader";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"ACE_Vector"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",10,

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellYellow",2,
        "ACE_Chemlight_IR",4
    };

    items[] += {
        // Radio
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",

        // Electronics
        "ACE_HuntIR_monitor",
        "ACE_MX2A"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};

class Cav_B_C_PlatoonSergeant_F : Cav_B_Charlie_Leader_Local {
    displayName = "Platoon Sergeant";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"ACE_Vector"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",10,

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellYellow",2,
        "ACE_Chemlight_IR",4
    };

    items[] += {
        // Radio
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",

        // Electronics
        "ACE_HuntIR_monitor",
        "ACE_MX2A"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};

class Cav_B_C_PlatoonMedic_F : Cav_B_Charlie_Leader_Local {
    displayName = "Platoon Medic";

    primary[] = {
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip3_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip2_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_blk"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_tdstubby_tan"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3"},
        {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556","rhsusf_acc_grip3_tan"}
        };
    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_medic"};
    backpack[] = {"B_Kitbag_mcamo","B_Kitbag_mcamo","B_Kitbag_cbr"};

    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "ACE_Chemlight_HiRed",4,
        "ACE_Chemlight_HiYellow",
    };

    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        "ACE_quikclot",10,
        "ACE_elasticBandage",30,
        "ACE_tourniquet",6,
        "ACE_morphine",20,
        "ACE_epinephrine",20,
        "ACE_adenosine",6,
        "ACE_salineIV",12,
        "ACE_Splint",12,
        "ACE_surgicalKit",
        "ACE_CableTie",2
    };

    // compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
    // preLoadout = "";
    // postLoadout = "";
};

// Infantry Squad

class Cav_B_C_SquadLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Squad Leader";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"ACE_Vector"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",10,

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellYellow",2,
        "ACE_Chemlight_IR",4
    };

    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",

        // Electronics
        "ACE_HuntIR_monitor",
        "ACE_MX2A",
        
        // Tools
        "ACE_SpraypaintBlack",
        "rhs_weap_rsp30_green",2
    };

    // compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};

class Cav_B_C_FireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Fire Team Leader";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    //uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"ACE_Vector"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",10,

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellBlue",2,
        "ACE_Chemlight_IR",4

        "rhsusf_200Rnd_556x45_soft_pouch"};
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",

        // Electronics
        "ACE_HuntIR_monitor",
        
        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};

class Cav_B_C_AutomaticRifleman_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Automatic Rifleman";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_saw"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {
        {"rhs_weap_m249_light_S","rhsusf_acc_elcan","rhsusf_acc_anpeq15side_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"},
        {"rhs_weap_m249_light_S","rhsusf_acc_elcan","rhsusf_acc_anpeq15side","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"},
        {"rhs_weap_m249_light_S","rhsusf_acc_elcan_ard","rhsusf_acc_anpeq15side_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"},
        {"rhs_weap_m249_light_S","rhsusf_acc_elcan_ard","rhsusf_acc_anpeq15side","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"}
        };
    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {""};

    magazines[] = {
        "rhsusf_200Rnd_556x45_soft_pouch",5,

        "rhs_mag_m67",2,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

class Cav_B_C_Grenadier_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Grenadier";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_grenadier"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {
        {"rhs_weap_m4a1_m320","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556",""},
        {"rhs_weap_m4a1_m320","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556",""}
        };
    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",10,

        "rhs_mag_m67",2,
        "SmokeShell",4,
        
        "rhs_mag_M433_HEDP",12,
        "rhs_mag_m714_White",4,
        "rhs_mag_m662_red",2,
        "ACE_HuntIR_M203",2
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "ACE_EntrenchingTool"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

class Cav_B_C_Rifleman_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Rifleman";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    launcher[] = {"tf47_at4_HP"};
    binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",10,

        "rhs_mag_m67",4,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "ACE_EntrenchingTool"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

// Specialized

class Cav_B_C_CombatLifeSaver_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Combat Life Saver";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_medic"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    //launcher[] = {""};
    binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",10,

        "rhs_mag_m67",4,
        "SmokeShell",4,
        "ACE_Chemlight_HiRed",4
    };
    items[] += {

        // Medical Equipment
        "ACE_quikclot",20,
        "ACE_tourniquet",4,
        "ACE_personalAidKit",5,
        "ACE_Splint",4,
        
        // Tools
        "ACE_EntrenchingTool"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
    // preLoadout = "";
    // postLoadout = "";
}

class Cav_B_C_Marksman_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Marksman";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_sniper"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {
    {"rhs_weap_m14ebrri","rhsusf_acc_su230a","rhsusf_acc_anpeq15side_bk","","rhsusf_acc_harris_bipod"},
    {"rhs_weap_m14ebrri","rhsusf_acc_su230a","rhsusf_acc_anpeq15side","","rhsusf_acc_harris_bipod"},
    {"rhs_weap_m14ebrri","rhsusf_acc_su230a_c","rhsusf_acc_anpeq15side_bk","","rhsusf_acc_harris_bipod"},
    {"rhs_weap_m14ebrri","rhsusf_acc_su230a_c","rhsusf_acc_anpeq15side","","rhsusf_acc_harris_bipod"}
    };
    // secondary[] = {""};
    //launcher[] = {""};
    binoculars[] = {""};

    magazines[] = {
        "rhsusf_20Rnd_762x51_m993_Mag",10,

        "rhs_mag_m67",2,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

class Cav_B_C_Driver_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Driver";

    // nvgs[] = {""};
    headgear[] = {"rhsusf_cvc_green_helmet","rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_crewman"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",10,

        "rhs_mag_m67",4,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "ToolKit",
        "ACE_EntrenchingTool"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

class Cav_B_C_Gunner_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Gunner";

    // nvgs[] = {""};
    headgear[] = {"rhsusf_cvc_green_helmet","rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_crewman"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",10,

        "rhs_mag_m67",4,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "ToolKit",
        "ACE_EntrenchingTool"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

// Machinegun Team

class Cav_B_C_MMGFireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Machinegun Team Leader";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    //uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    backpack[] = {"B_Kitbag_mcamo","B_Kitbag_mcamo","B_Kitbag_cbr"};

    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhsusf_100Rnd_762x51_m61_ap",2,
        "rhsusf_100Rnd_762x51_m62_tracer",5,

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",2,
        "ACE_Chemlight_IR",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "ACE_SpraypaintGreen",
        "ACE_EntrenchingTool"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};

class Cav_B_C_MMGMachineGunner_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Machinegunner";
    
    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_machinegunner"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {
        {"rhs_weap_m240B","rhsusf_acc_elcan","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ardec_m240",""},
        {"rhs_weap_m240B","rhsusf_acc_elcan","rhsusf_acc_anpeq15side","rhsusf_acc_ardec_m240",""},
        {"rhs_weap_m240B","rhsusf_acc_elcan_ard","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ardec_m240",""},
        {"rhs_weap_m240B","rhsusf_acc_elcan_ard","rhsusf_acc_anpeq15side","rhsusf_acc_ardec_m240",""}
    };
    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {""};

    magazines[] = {
        "rhsusf_100Rnd_762x51_m62_tracer",4,
        "rhsusf_100Rnd_762x51_m61_ap",2,

        "SmokeShell",2
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "rhsusf_acc_acog_mdo",
        "rhsusf_acc_anpas13gv1"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

class Cav_B_C_MMGAssistantGunner_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Machinegun Ammo Bearer";
    
    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};
    backpack[] = {"B_Kitbag_mcamo","B_Kitbag_mcamo","B_Kitbag_cbr"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    //launcher[] = {""};
    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhsusf_100Rnd_762x51_m61_ap",2,
        "rhsusf_100Rnd_762x51_m62_tracer",5,
        "ACE_SpareBarrel"

        "rhs_mag_m67",2,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

// MAAWS Team

class Cav_B_C_SLMFireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "MAAWS Team Leader";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    //uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    backpack[] = {"B_Kitbag_mcamo","B_Kitbag_mcamo","B_Kitbag_cbr"};

    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"ACE_Vector"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "tf47_m3maaws_HE",3,
        "Cav_m3maaws_HEAT_CS",

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",2,
        "ACE_Chemlight_IR",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};

class Cav_B_C_SLMGunner_F : Cav_B_Charlie_Trooper_Local {
    displayName = "MAAWS Gunner";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    launcher[] = {"tf47_m3maaws","tf47_optic_m3maaws"};
    binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "tf47_m3maaws_HE",
        "Cav_m3maaws_HEAT_CS",

        "rhs_mag_m67",2,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

class Cav_B_C_SLMAmmoBearer_F : Cav_B_Charlie_Trooper_Local {
    displayName = "MAAWS Ammo Bearer";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};
    backpack[] = {"B_Kitbag_mcamo","B_Kitbag_mcamo","B_Kitbag_cbr"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "tf47_m3maaws_HE",3,
        "Cav_m3maaws_HEAT_CS",

        "rhs_mag_m67",2,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

// Stinger Team Team

class Cav_B_C_FIMFireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Stinger Team Leader";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    //uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    backpack[] = {"B_TacticalPack_mcamo"};

    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"ACE_Vector"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_fim92_mag",2,

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",2
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};

class Cav_B_C_FIMGunner_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Stinger Gunner";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    launcher[] = {"rhs_weap_fim92"};
    binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_fim92_mag",2,
        
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

class Cav_B_C_FIMAmmoBearer_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Stinger Ammo Bearer";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};
    backpack[] = {"B_TacticalPack_mcamo"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_fim92_mag",2,

        "rhs_mag_m67",2,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

// Javelin Team

class Cav_B_C_CCMSFireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Javelin Team Leader";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    //uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    backpack[] = {"B_Carryall_mcamo","B_Carryall_mcamo","B_Carryall_cbr"};

    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {""};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_fgm148_magazine_AT",

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",2,
        "ACE_Chemlight_IR",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};

class Cav_B_C_CCMSGunner_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Javelin Gunner";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};
    backpack[] = {""};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    launcher[] = {"rhs_weap_fgm148"};
    binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_fgm148_magazine_AT",

        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

class Cav_B_C_CCMSAmmoBearer_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Javelin Ammo Bearer";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};
    backpack[] = {"B_Carryall_mcamo","B_Carryall_mcamo","B_Carryall_cbr"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_fgm148_magazine_AT",

        "rhs_mag_m67",2,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

// 60mm Mortar Team

class Cav_B_C_60mmFireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Mortar Team Leader";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    //uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    backpack[] = {"B_Kitbag_mcamo","B_Kitbag_mcamo","B_Kitbag_cbr"};

    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"ACE_Vector"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "NDS_M_6Rnd_60mm_HE_0",2,
        "NDS_M_6Rnd_60mm_HE",
        "NDS_M_6Rnd_60mm_SMOKE",

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",2,
        "ACE_Chemlight_IR",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "ACE_EntrenchingTool"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};

class Cav_B_C_60mmGunner_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Mortar Gunner";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};
    backpack[] = {"NDS_B_M224_mortar"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,

        "rhs_mag_m67",2,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}

class Cav_B_C_60mmAmmoBearer_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Mortar Ammo Bearer";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};
    backpack[] = {"B_TacticalPack_mcamo"};

    //primary[] = {"rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip2"};
    // secondary[] = {""};
    //launcher[] = {""};
    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "NDS_M_6Rnd_60mm_HE_0",2,
        "NDS_M_6Rnd_60mm_HE",
        "NDS_M_6Rnd_60mm_SMOKE",

        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };

    // compass[] = {"ItemCompass"};
    gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}
