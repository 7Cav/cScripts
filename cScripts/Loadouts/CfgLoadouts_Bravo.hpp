// Intermediate Classes
class Cav_B_Bravo_Trooper_Local : Cav_B_Bravo_base_F {
    
    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",2,
        "SmokeShell",4
    };

    items[] += {
    };
}; 
class Cav_B_Bravo_Leader_Local : Cav_B_Bravo_base_F {
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};

    binoculars[] = {"ACE_Vector"};
    
    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",8,

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellBlue",2,
        "ACE_Chemlight_IR",4
    };

    items[] += {
        // Radios
        "ACRE_PRC152",
        
        // Electronics
        "ACE_HuntIR_monitor"
    };
    
    gps[] = {"ItemAndroid"};
};

class Cav_B_Bravo_Crew_Base_Local : Cav_B_Scout_base_F {
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

// Platoon Leadership

class Cav_B_B_PlatoonStaff_F : Cav_B_Bravo_Leader_Local {
    displayName = "Platoon Staff";

    items[] += {
        // Radio
        "ACRE_PRC152",

        // Tools
        "ACE_SpraypaintGreen",
        
        // Electronics
        "ACE_MX2A"
    };
};
class Cav_B_B_PlatoonMedic_F : Cav_B_Bravo_base_F {
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
    
// Infantry Squad

class Cav_B_B_SquadLeader_F : Cav_B_Bravo_Leader_Local {
    displayName = "Squad Leader";
    
    vest[] = {"rhsusf_iotv_ocp_Squadleader"};

    items[] += {
        // Radios
        "ACRE_PRC152",
        
        // Electronics
        "ACE_MX2A",
        
        // Tools
        "ACE_SpraypaintBlack",
        "rhs_weap_rsp30_red",2
    };
};
class Cav_B_B_FireTeamLeader_F : Cav_B_Bravo_Leader_Local {
    displayName = "Fire Team Leader";
    
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};

    binoculars[] = {"ACE_Vector"};

    magazines[] += {
        "rhsusf_200rnd_556x45_mixed_box",
    };

    items[] += {
        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };
};
class Cav_B_B_AutomaticRifleman_F : Cav_B_Bravo_Trooper_Local {
    displayName = "Automatic Rifleman";
    
    vest[] = {"rhsusf_iotv_ocp_SAW"};

    primary[] = {
        {"rhs_weap_m249_light_L","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15side_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"},
        {"rhs_weap_m249_light_L","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15side","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"}
    };

    magazines[] = {
        "rhsusf_200rnd_556x45_mixed_box",5,

        "rhs_mag_m67",2,
        "SmokeShell",4
    };
};
class Cav_B_B_Grenadier_F : Cav_B_Bravo_Trooper_Local {
    displayName = "Grenadier";

    vest[] = {"rhsusf_iotv_ocp_Grenadier"};
    
    primary[] = {
        {"rhs_weap_m4a1_m320","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556",""},
        {"rhs_weap_m4a1_m320","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556",""}
    };
        
    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] += {
        "rhs_mag_m67",2,
        
        "rhs_mag_M433_HEDP",12,
        "rhs_mag_m714_White",4,
        "ACE_40mm_Flare_ir",4,
        "ACE_HuntIR_M203",2,
    };
    
    items[] += {
        "ACE_EntrenchingTool"
    };
};
class Cav_B_B_Rifleman_F : Cav_B_Bravo_Trooper_Local {
    displayName = "Rifleman";

    launcher[] = {"rhs_weap_M136_hp"};

    magazines[] += {
        "rhs_mag_m67",2
    };
    
    items[] += {
        "ACE_EntrenchingTool"
    };
};
class Cav_B_B_RiflemanAT_F : Cav_B_B_Rifleman_F {   // Not Used
    displayName = "";
};
class Cav_B_B_RiflemanLAT_F : Cav_B_B_Rifleman_F {  // Not Used
    displayName = "";
};
class Cav_B_B_CombatLifeSaver_F : Cav_B_Bravo_Trooper_Local {
    displayName = "Combat Life Saver";

    vest[] = {"rhsusf_iotv_ocp_Medic"};

    magazines[] += {
        "rhs_mag_m67",2,
        "ACE_Chemlight_HiRed",4
    };

    items[] += {

        // Medical Equipment
        "ACE_quikclot",20,
        "ACE_tourniquet",4,
        "ACE_Splint",8,
        
        "ACE_EntrenchingTool"
    };

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
};

// Machinegun Team
class Cav_B_B_MMGFireTeamLeader_Local : Cav_B_Bravo_Leader_Local {
    displayName = "Machinegun Team Leader";

    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    backpack[] = {"B_Kitbag_mcamo"};

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
};
class Cav_B_B_MMGMachineGunner_Local : Cav_B_Bravo_Trooper_Local {
    displayName = "Machinegunner";
    
    vest[] = {"rhsusf_spcs_ocp_machinegunner"};

    primary[] = {
        {"rhs_weap_m240B","rhsusf_acc_elcan","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ardec_m240",""},
        {"rhs_weap_m240B","rhsusf_acc_elcan","rhsusf_acc_anpeq15side","rhsusf_acc_ardec_m240",""},
        {"rhs_weap_m240B","rhsusf_acc_elcan_ard","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ardec_m240",""},
        {"rhs_weap_m240B","rhsusf_acc_elcan_ard","rhsusf_acc_anpeq15side","rhsusf_acc_ardec_m240",""}
    };
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
};
class Cav_B_C_MMGAssistantGunner_Local : Cav_B_Bravo_Trooper_Local {
    displayName = "Machinegun Ammo Bearer";
    
    backpack[] = {"B_Kitbag_mcamo"};

    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhsusf_100Rnd_762x51_m61_ap",2,
        "rhsusf_100Rnd_762x51_m62_tracer",5,
        
        "ACE_SpareBarrel",
        
        "rhs_mag_m67",2,
        "SmokeShell",4,
    };
    
    items[] += {
        // Medical Equipment
        "ACE_personalAidKit"
    };
};

// Crew

class Cav_B_B_Tank_Commander_F : Cav_B_Bravo_Crew_Base_Local {
    displayName = "Commander";

    primary[] = {
        {"rhs_weap_m4a1_m320","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556",""},
        {"rhs_weap_m4a1_m320","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556",""}
        };

    magazines[] += {
        "rhs_mag_m714_White",
        "rhs_mag_m713_Red",
        "rhs_mag_m715_Green",
        "rhs_mag_m662_red",
        "rhs_mag_m661_green"
    };
};
class Cav_B_B_Tank_Gunner_F : Cav_B_Bravo_Crew_Base_Local {
    displayName = "Gunner";

    items[] += {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4
    };
};
class Cav_B_B_Tank_Driver_F : Cav_B_B_Tank_Gunner_F {
    displayName = "Driver";
};
class Cav_B_B_Tank_Loader_F : Cav_B_B_Tank_Gunner_F {
    displayName = "Loader";
};

class Cav_B_B_Ifv_Commander_F : Cav_B_Bravo_Crew_Base_Local {
    displayName = "Commander";

    backpack[] = {"B_Carryall_mcamo","B_Carryall_mcamo","B_Carryall_cbr"};

    primary[] = {
        {"rhs_weap_m4a1_m320","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556",""},
        {"rhs_weap_m4a1_m320","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556",""}
    };

    magazines[] += {
        "rhs_mag_m714_White",
        "rhs_mag_m713_Red",
        "rhs_mag_m715_Green",
        "rhs_mag_m662_red",
        "rhs_mag_m661_green"
    };
};
class Cav_B_B_Ifv_Driver_F : Cav_B_Bravo_Crew_Base_Local {
    displayName = "Driver";

    items[] += {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4
    };
};
class Cav_B_B_Ifv_Gunner_F : Cav_B_B_Ifv_Driver_F {
    displayName = "Gunner";
};
