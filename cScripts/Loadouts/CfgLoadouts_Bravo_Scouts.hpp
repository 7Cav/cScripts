class Cav_B_Bravo_Scout_base_F : Cav_B_Bravo_base_F {
    displayName = "";
    company = "bravo";
    platoon = "2";

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
}

class Cav_B_Bravo_Scout_Base_Local : Cav_B_Scout_base_F {
    category[] += {"cScriptQuickSelection_Bravo_Viking_Squad"};
    
    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",7,
        "rhs_mag_m67",2,
        "SmokeShell",2
    };

    gps[] = {""};
};
class Cav_B_Bravo_Scout_Leader_Local : Cav_B_Bravo_Scout_Base_Local {
    category[] += {"cScriptQuickSelection_Bravo_Viking_Lead"};

    magazines[] += {
        "B_IR_Grenade",2
    };
    
    items[] += {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",
        
        "ItemAndroid",
        "ACE_MX2A",
        "ACE_HuntIR_monitor"
    };

    gps[] = {"B_UavTerminal"};
};
class Cav_B_Bravo_Scout_Crew_Base_Local : Cav_B_Scout_base_F {
    category[] += {"cScriptQuickSelection_Bravo_Viking_Crew"};

    
    headgear[] = {"rhsusf_cvc_green_helmet","rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"};
    
    vest[] = {"rhsusf_iotv_ocp_Repair"};

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
        
    binoculars[] = {"ACE_Vector"};
    
    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "SmokeShell",2,
        "rhs_mag_m67",2,

        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };
    items[] += {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Clothing
        "rhsusf_shemagh_gogg_tan", 
        
        //Tools
        "ToolKit"
    };

    gps[] = {"ItemAndroid"};

    preLoadout = "[(_this select 0), 'bravo', 0, 1] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

class Cav_B_B_Scout_Officer_F : Cav_B_Bravo_Scout_Leader_Local {
    displayName = "Officer";

    magazines[] += {
        "SmokeShell",4,
        "SmokeShellBlue",3,
        "SmokeShellRed",3,
        "SmokeShellGreen",2,
        "SmokeShellPurple",2,
        "SmokeShellYellow",2
    };
};
class Cav_B_B_Scout_PlatoonLead_F : Cav_B_B_Scout_Officer_F {
    displayName = "Platoon Staff";

    magazines[] += {
        "SmokeShell",4,
        "SmokeShellBlue",3,
        "SmokeShellRed",3,
        "SmokeShellGreen",2,
        "SmokeShellPurple",2,
        "SmokeShellYellow",2
    };
};
class Cav_B_B_Scout_PlatoonMedic_F : Cav_B_Bravo_Scout_base_F {
    displayName = "Platoon Medic";
    
    vest[] = {"rhsusf_mbav_medic"};
    backpack[] = {"B_Kitbag_mcamo"};
    
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
        
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,

        "SmokeShell",4,
        "rhs_mag_m67",2,
        "ACE_Chemlight_HiYellow",4,
        "ACE_Chemlight_HiRed",4,
        "SmokeShellBlue",2
    };

    items[] += {
        // Radios
        "ACRE_PRC152",

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

    gps[] = {"ItemAndroid"};

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
    preLoadout = "[(_this select 0), 'bravo', 1, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

class Cav_B_B_Scout_SquadLeader_F : Cav_B_Bravo_Scout_Leader_Local {
    displayName = "Squad Leader";
    
    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",1,
        "SmokeShell",4,
        "SmokeShellBlue",3,
        "SmokeShellRed",3,
        "SmokeShellGreen"
    };

    items[] += {
        "ACE_SpraypaintRed",
        "ACE_SpraypaintGreen",
        "ACE_EntrenchingTool"
    };
};
class Cav_B_B_Scout_TeamLead_F : Cav_B_Bravo_Scout_Leader_Local {
    displayName = "Team Leader";

    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",1,
        "SmokeShell",4,
        "SmokeShellBlue",3,
        "SmokeShellRed",3,
        "SmokeShellGreen"
    };

    items[] += {
        "ACE_SpraypaintRed",
        "ACE_SpraypaintGreen",
        "ACE_EntrenchingTool"
    };
};
class Cav_B_B_Scout_TeamLead_320_F : Cav_B_Bravo_Scout_Leader_Local {
    displayName = "Team Leader (320)";

    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",2,
        "rhs_mag_M441_HE",5,
        "rhs_mag_m713_Red",2,
        "rhs_mag_m714_White",2,
        "ACE_HuntIR_M203",2,
        "SmokeShellBlue",2,
        "SmokeShellRed"
    };

    items[] += {
        "ACE_SpraypaintRed",
        "ACE_SpraypaintGreen",
        "ACE_EntrenchingTool"
    };
};
class Cav_B_B_Scout_AutomaticRifleman_F : Cav_B_Bravo_Scout_Base_Local {
    displayName = "Automatic Rifleman";

    vest[] = {"rhsusf_spcs_ocp_saw"};
    
    primary[] = {
        {"rhs_weap_m249_light_L","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15side_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"},
        {"rhs_weap_m249_light_L","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15side","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"}
        };
    magazines[] = {
        "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",4,
        
        "rhs_mag_m67",2,
        "SmokeShell",3,
        "SmokeShellBlue",
        "SmokeShellRed"
    };

    items[] += {
        "ACE_SpraypaintGreen",
        "ACE_EntrenchingTool"
    };
};
class Cav_B_B_Scout_Grenadier_F : Cav_B_Bravo_Scout_Base_Local {
    displayName = "Grenadier";

    vest[] = {"rhsusf_spcs_ocp_grenadier"};

    primary[] = {
        {"rhs_weap_m4a1_m320","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556",""},
        {"rhs_weap_m4a1_m320","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556",""}
        };
        
    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",3,
        "rhs_mag_M441_HE",10,
        "rhs_mag_m713_Red",2,
        "rhs_mag_m714_White",4,
        "ACE_HuntIR_M203",3,
        "SmokeShellBlue",
        "SmokeShellRed"
    };

    items[] += {
        "ACE_SpraypaintGreen",
        "ACE_HuntIR_monitor",
        "ACE_EntrenchingTool"
    };
};
class Cav_B_B_Scout_Rifleman_F : Cav_B_Bravo_Scout_Base_Local {
    displayName = "Rifleman";

    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",3,
        "SmokeShell",4,
        "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",
        "SmokeShellRed",2,
        "SmokeShellBlue",2
    };

    items[] += {
        "ACE_SpraypaintGreen",
        "ACE_EntrenchingTool"
    };
};
class Cav_B_B_Scout_CombatLifeSaver_F : Cav_B_Bravo_Scout_Base_Local {
    displayName = "Combat Lifesaver";

    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",3,
        "SmokeShell",2,
        "SmokeShellRed",2,
        "SmokeShellBlue",2,
        "SmokeShellGreen",2
    };

    items[] += {
        "ACE_quikclot",20,
        "ACE_tourniquet",6,
        "ACE_SpraypaintGreen",
        "ACE_EntrenchingTool",
        "ACE_splint",8
    };
};

class Cav_B_B_Scout_Crew_F : Cav_B_Bravo_Scout_Crew_Base_Local {
    displayName = "Crewman";

    goggles[] = {"rhsusf_shemagh_tan"};
    headgear[] = {"rhsusf_cvc_green_helmet","rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"};
    vest[] = {"rhsusf_spcs_ocp_crewman"};

    magazines[] += {
        "SmokeShellBlue",2,
        "SmokeShellRed"
    };

    items[] += {
        "ACE_EntrenchingTool",
        "ACE_UAVBattery",2,
        "ToolKit",
        "ACE_personalAidKit"
    };
};
class Cav_B_B_Scout_Gunner_F : Cav_B_B_Scout_Crew_F {
    displayName = "";
};
class Cav_B_B_Scout_Driver_F : Cav_B_B_Scout_Crew_F {
    displayName = "";
};

// Named squads
class Cav_B_B_Scout_Alpha_TeamLead_F : Cav_B_B_Scout_TeamLead_F {displayName = "";};
class Cav_B_B_Scout_Alpha_TeamLead_320_F : Cav_B_B_Scout_TeamLead_320_F {displayName = "";};
class Cav_B_B_Scout_Alpha_AutomaticRifleman_F : Cav_B_B_Scout_AutomaticRifleman_F {displayName = "";};
class Cav_B_B_Scout_Alpha_Grenadier_F : Cav_B_B_Scout_Grenadier_F {displayName = "";};
class Cav_B_B_Scout_Alpha_Rifleman_F : Cav_B_B_Scout_Rifleman_F {displayName = "";};
class Cav_B_B_Scout_Alpha_CombatLifeSaver_F : Cav_B_B_Scout_CombatLifeSaver_F {displayName = "";};
class Cav_B_B_Scout_Bravo_TeamLead_F : Cav_B_B_Scout_TeamLead_F {displayName = "";};
class Cav_B_B_Scout_Bravo_TeamLead_320_F : Cav_B_B_Scout_TeamLead_320_F {displayName = "";};
class Cav_B_B_Scout_Bravo_AutomaticRifleman_F : Cav_B_B_Scout_AutomaticRifleman_F {displayName = "";};
class Cav_B_B_Scout_Bravo_Grenadier_F : Cav_B_B_Scout_Grenadier_F {displayName = "";};
class Cav_B_B_Scout_Bravo_Rifleman_F : Cav_B_B_Scout_Rifleman_F {displayName = "";};
class Cav_B_B_Scout_Bravo_CombatLifeSaver_F : Cav_B_B_Scout_CombatLifeSaver_F {displayName = "";};


class Cav_B_B_Scout_SquadLeader_2_1_F : Cav_B_B_Scout_SquadLeader_F {displayName = "";};
class Cav_B_B_Scout_SquadLeader_2_2_F : Cav_B_B_Scout_SquadLeader_F {displayName = "";};
class Cav_B_B_Scout_SquadLeader_2_3_F : Cav_B_B_Scout_SquadLeader_F {displayName = "";};
class Cav_B_B_Scout_SquadLeader_2_4_F : Cav_B_B_Scout_SquadLeader_F {displayName = "";};

class Cav_B_B_Scout_PlatoonLead_2_5_F : Cav_B_B_Scout_PlatoonLead_F {displayName = "";};
class Cav_B_B_Scout_PlatoonLead_2_6_F : Cav_B_B_Scout_PlatoonLead_F {displayName = "";};
class Cav_B_B_Scout_PlatoonMedic_2_7_F : Cav_B_B_Scout_PlatoonMedic_F {displayName = "";};


class Cav_B_B_Scout_Team_Leader_F : Cav_B_B_Scout_TeamLead_F {displayName = "";};
class Cav_B_B_Scout_Trooper_F : Cav_B_B_Scout_Bravo_Rifleman_F {displayName = "";};
class Cav_B_B_Scout_Platoon_Medic_F : Cav_B_B_Scout_PlatoonMedic_F {displayName = "";};