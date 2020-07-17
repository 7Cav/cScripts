// Intermediate Classes
class Cav_B_Charlie_Trooper_Local : Cav_B_Charlie_base_F {
    
    vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"};
    
    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,

        "rhs_mag_m67",2,
        "SmokeShell",4,
    };

    items[] += {
        // Tools
        "ACE_DAGR"
    };
};

class Cav_B_Charlie_Leader_Local : Cav_B_Charlie_base_F {
    vest[] = {"rhsusf_spcs_ocp_squadleader"};

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
    binoculars[] = {"ACE_Vector"};
    
    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellBlue",2,
        "ACE_Chemlight_IR",4
    };

    items[] += {
        // Radios
        "ACRE_PRC152",

        // Electronics
        "ACE_microDAGR"
    };
};

// Platoon Leadership

class Cav_B_C_PlatoonStaff_F : Cav_B_Charlie_Leader_Local {
    displayName = "Platoon Leader";

    items[] += {
        // Radio
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",

        // Tools
        "ACE_SpraypaintGreen",
        
        // Electronics
        "ACE_MX2A",
        "ACE_HuntIR_monitor"
    };

    gps[] = {"ItemAndroid"};
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

    vest[] = {"rhsusf_spcs_ocp_medic"};
    backpack[] = {"B_Kitbag_mcamo"};

    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,

        "rhs_mag_m67",2,
        "SmokeShell",4,
        "ACE_Chemlight_HiRed",4,
        "ACE_Chemlight_HiYellow",4,
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

    gps[] = {"ItemAndroid"};

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
    preLoadout = "[(_this select 0), 'charlie', 1, 0] call cScripts_fnc_setPreInitPlayerSettings;";
};

// Infantry Squad

class Cav_B_C_SquadLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Squad Leader";


    items[] += {
        // Radios
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",

        // Electronics
        "ACE_MX2A",
        "ACE_HuntIR_monitor",
        
        // Tools
        "ACE_SpraypaintBlack",
        "rhs_weap_rsp30_red",2
    };

    gps[] = {"ItemAndroid"};
};

class Cav_B_C_FireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Fire Team Leader";

    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};

    magazines[] += {"rhsusf_200Rnd_556x45_soft_pouch"};
    
    items[] += {
        // Medical Equipment
        "ACE_personalAidKit",
        
        // Electronics
        "ACE_HuntIR_monitor",
        
        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };
};

class Cav_B_C_Bravo_FireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "";

    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};

    magazines[] += {"rhsusf_200Rnd_556x45_soft_pouch"};
    
    items[] += {
        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "ACE_SpraypaintBlue",
        "ACE_EntrenchingTool"
    };
};

class Cav_B_C_AutomaticRifleman_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Automatic Rifleman";

    vest[] = {"rhsusf_spcs_ocp_saw"};

    primary[] = {
        {"rhs_weap_m249_light_S","rhsusf_acc_elcan","rhsusf_acc_anpeq15side_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"},
        {"rhs_weap_m249_light_S","rhsusf_acc_elcan","rhsusf_acc_anpeq15side","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"},
        {"rhs_weap_m249_light_S","rhsusf_acc_elcan_ard","rhsusf_acc_anpeq15side_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"},
        {"rhs_weap_m249_light_S","rhsusf_acc_elcan_ard","rhsusf_acc_anpeq15side","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"}
    };

    magazines[] = {
        "rhsusf_200Rnd_556x45_soft_pouch",5,

        "rhs_mag_m67",2,
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };
};

class Cav_B_C_Grenadier_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Grenadier";

    vest[] = {"rhsusf_spcs_ocp_grenadier"};

    primary[] = {
        {"rhs_weap_m4a1_m320","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556",""},
        {"rhs_weap_m4a1_m320","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556",""}
        };
    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",2,
        
        "rhs_mag_M433_HEDP",12,
        "rhs_mag_m714_White",4,
        "ACE_40mm_Flare_ir",4,
        "ACE_HuntIR_M203",2,
        
        "rhs_mag_m67",2
    };
    
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "ACE_EntrenchingTool"
    };
};

class Cav_B_C_Rifleman_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Rifleman";

    launcher[] = {"rhs_weap_M136_hp"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",2,
        "rhs_mag_m67",2
    };
    
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "ACE_EntrenchingTool"
    };
};

// Specialized

class Cav_B_C_CombatLifeSaver_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Combat Life Saver";

    vest[] = {"rhsusf_spcs_ocp_medic"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",2,

        "ACE_Chemlight_HiRed",4,
        "rhs_mag_m67",2
    };
    
    items[] += {

        // Medical Equipment
        "ACE_quikclot",20,
        "ACE_tourniquet",4,
        "ACE_personalAidKit",5,
        "ACE_Splint",8,
        
        // Tools
        "ACE_EntrenchingTool"
    };
    
    insignia[] = {"Cav_Insignia_Specialized_CLS"};
};

class Cav_B_C_Marksman_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Marksman";

    vest[] = {"rhsusf_spcs_ocp_sniper"};

    primary[] = {
        {"rhs_weap_m14ebrri","rhsusf_acc_su230a","rhsusf_acc_anpeq15side_bk","","rhsusf_acc_harris_bipod"},
        {"rhs_weap_m14ebrri","rhsusf_acc_su230a","rhsusf_acc_anpeq15side","","rhsusf_acc_harris_bipod"},
        {"rhs_weap_m14ebrri","rhsusf_acc_su230a_c","rhsusf_acc_anpeq15side_bk","","rhsusf_acc_harris_bipod"},
        {"rhs_weap_m14ebrri","rhsusf_acc_su230a_c","rhsusf_acc_anpeq15side","","rhsusf_acc_harris_bipod"}
    };

    magazines[] = {
        "rhsusf_20Rnd_762x51_m993_Mag",10,

        "SmokeShell",4,
        "rhs_mag_m67",2
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };
};

class Cav_B_C_Crew_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Crew";

    headgear[] = {"rhsusf_cvc_green_helmet","rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"};
    vest[] = {"rhsusf_spcs_ocp_crewman"};

    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",2,

        "rhs_mag_m67",2
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "ToolKit",
        "ACE_EntrenchingTool"
    };
};

// Machinegun Team

class Cav_B_C_MMGFireTeamLeader_F : Cav_B_Charlie_Leader_Local {
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

class Cav_B_C_MMGMachineGunner_F : Cav_B_Charlie_Trooper_Local {
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

class Cav_B_C_MMGAssistantGunner_F : Cav_B_Charlie_Trooper_Local {
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

// MAAWS Team

class Cav_B_C_SLMFireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "MAAWS Team Leader";

    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    backpack[] = {"B_Kitbag_mcamo"};

    magazines[] += {
        "rhs_mag_maaws_HE",3,
        "rhs_mag_maaws_HEAT",
    };
    
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };
};

class Cav_B_C_SLMGunner_F : Cav_B_Charlie_Trooper_Local {
    displayName = "MAAWS Gunner";

    launcher[] = {"rhs_weap_maaws","rhs_optic_maaws"};

    magazines[] += {
        "rhs_mag_maaws_HE",
        "rhs_mag_maaws_HEAT"
    };
    
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };
};

class Cav_B_C_SLMAmmoBearer_F : Cav_B_Charlie_Trooper_Local {
    displayName = "MAAWS Ammo Bearer";

    backpack[] = {"B_Kitbag_mcamo"};

    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] += {
        "rhs_mag_maaws_HE",3,
        "rhs_mag_maaws_HEAT",
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };
};

// Stinger Team Team

class Cav_B_C_FIMFireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Stinger Team Leader";

    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    backpack[] = {"B_TacticalPack_mcamo"};

    magazines[] += {
        "rhs_fim92_mag",2,
    };
    
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };
};

class Cav_B_C_FIMGunner_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Stinger Gunner";

    launcher[] = {"rhs_weap_fim92"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_fim92_mag",2,
        
        "SmokeShell",4
    };
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };
};

class Cav_B_C_FIMAmmoBearer_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Stinger Ammo Bearer";

    backpack[] = {"B_TacticalPack_mcamo"};

    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] += {
        "rhs_fim92_mag",2,
    };
    
    items[] += {
        // Medical Equipment
        "ACE_personalAidKit"
    };
};

// Javelin Team

class Cav_B_C_CCMSFireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Javelin Team Leader";

    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    backpack[] = {"B_Carryall_mcamo","B_Carryall_mcamo","B_Carryall_cbr"};

    magazines[] += {
        "rhs_fgm148_magazine_AT",
    };
    
    items[] += {

        // Medical Equipment
        "ACE_personalAidKit"
    };
};

class Cav_B_C_CCMSGunner_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Javelin Gunner";

    backpack[] = {"B_Carryall_mcamo","B_Carryall_mcamo","B_Carryall_cbr"};

    launcher[] = {"rhs_weap_fgm148"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_fgm148_magazine_AT",

        "SmokeShell",4
    };
    
    items[] += {
        // Medical Equipment
        "ACE_personalAidKit"
    };
};

class Cav_B_C_CCMSAmmoBearer_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Javelin Ammo Bearer";

    backpack[] = {"B_Carryall_mcamo","B_Carryall_mcamo","B_Carryall_cbr"};

    binoculars[] = {"rhsusf_bino_m24","rhsusf_bino_m24_ARD"};

    magazines[] += {
        "rhs_fgm148_magazine_AT"
    };
    
    items[] += {
        // Medical Equipment
        "ACE_personalAidKit"
    };
};

// 60mm Mortar Team

class Cav_B_C_60mmFireTeamLeader_F : Cav_B_Charlie_Leader_Local {
    displayName = "Mortar Team Leader";

    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    backpack[] = {"B_Kitbag_mcamo"};

    magazines[] += {
        "NDS_M_6Rnd_60mm_HE_0",2,
        "NDS_M_6Rnd_60mm_HE",
        "NDS_M_6Rnd_60mm_SMOKE"
    };
    
    items[] += {
        // Medical Equipment
        "ACE_personalAidKit",
        
        // Tools
        "ACE_EntrenchingTool"
    };
};

class Cav_B_C_60mmGunner_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Mortar Gunner";

    backpack[] = {"NDS_B_M224_mortar"};

    items[] += {
        // Medical Equipment
        "ACE_personalAidKit"
    };
};

class Cav_B_C_60mmAmmoBearer_F : Cav_B_Charlie_Trooper_Local {
    displayName = "Mortar Ammo Bearer";

    backpack[] = {"B_TacticalPack_mcamo"};

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
};
