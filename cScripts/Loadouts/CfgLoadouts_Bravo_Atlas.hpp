class Cav_B_Bravo_Atlas_base_F : Cav_B_Bravo_base_F {
    displayName = "";
    company = "bravo";
    platoon = "3";
};

class Cav_B_Bravo_Medical_Base_Local : Cav_B_Bravo_Atlas_base_F {
    headgear[] = {"rhsusf_ach_bare_tan_headset","rhsusf_ach_bare_tan_headset","rhsusf_ach_bare_tan_headset_ess"};
    vest[] = {"rhsusf_mbav_medic"};
    backpack[] = {"B_Carryall_mcamo","B_Carryall_mcamo","B_Carryall_cbr"};
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",5,
    
        "rhs_mag_m67",
        
        "SmokeShell",4,
        "SmokeShellBlue",2,
        "SmokeShellGreen",2,
        "ACE_Chemlight_HiYellow",4,
        "ACE_Chemlight_HiRed",4,
        "B_IR_Grenade",2
    };

    items[] += {
        // Radio
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_tourniquet",6,
        "ACE_salineIV",10,
        "ACE_salineIV_500",4,
        "ACE_personalAidKit",7,
        "ACE_elasticBandage",40,
        "ACE_morphine",14,
        "ACE_epinephrine",14,
        "ACE_adenosine",2,
        "ACE_splint",8,
        "ACE_CableTie",2,
        "ACE_SurgicalKit",

        // Gear    
        "ACE_EntrenchingTool",
        "ACE_SpraypaintBlue"
    };
    
    gps[] = {"ItemAndroid"};
    
    insignia[] = {"Cav_Insignia_Specialized_CLS"};
    
    preLoadout = "[(_this select 0), 'bravo', 2, 0] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_Bravo_Logi_Base_Local : Cav_B_Bravo_Atlas_base_F {
    headgear[] = {"rhsusf_ach_bare_headset","rhsusf_ach_bare_headset","rhsusf_ach_bare_headset_ess"};
    vest[] = {"rhsusf_spcs_ocp_saw"};
    backpack[] = {"B_Carryall_mcamo","B_Carryall_mcamo","B_Carryall_cbr"};
    binoculars[] = {"ACE_Vector"};

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

    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,
        
        "rhs_mag_m67",2,

        "SmokeShell",4,
        "SmokeShellblue",2,
        "SmokeShellGreen",2,
        "ACE_Chemlight_UltraHiOrange",6,
        "ACE_Chemlight_HiRed",4,
        "B_IR_Grenade",6
    };

    items[] += {
        // Radios
        "ACRE_PRC152",
        
        // Personal Medical Equipment
        "ACE_Splint",2,
        "ACE_CableTie",2,
        
        // Tools
        "ACE_Fortify",
        "ACE_EntrenchingTool",
        "ToolKit"
    };

    gps[] = {"ItemAndroid"};

    preLoadout = "[(_this select 0), 'bravo', 0, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

class Cav_B_B_Atlas_Medic_TeamLeader_F : Cav_B_Bravo_Medical_Base_Local {
    displayName = "Medical Team Leader";

    binoculars[] = {"ACE_Vector"};

    items[] += {
        // Radios
        "ACRE_PRC152"
    };
};
class Cav_B_B_Atlas_Medic_CombatMedic_F : Cav_B_Bravo_Medical_Base_Local {
    displayName = "Combat Medic";
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
        
    items[] += {
        "ACE_elasticBandage",10
    };
};

class Cav_B_B_Atlas_Logistics_Officer_F : Cav_B_Bravo_Atlas_base_F {
    headgear[] = {"rhsusf_ach_bare_headset","rhsusf_ach_bare_headset","rhsusf_ach_bare_headset_ess"};
    vest[] = {"rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"};
    backpack[] = {"B_Carryall_mcamo","B_Carryall_mcamo","B_Carryall_cbr"};
    binoculars[] = {"ACE_Vector"};
    
    magazines[] += {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",5,
        
        "rhs_mag_m67",

        "SmokeShell",2,
        "SmokeShellBlue",2,
        "ACE_Chemlight_UltraHiOrange",6,
        "ACE_Chemlight_HiRed",4,
        "B_IR_Grenade",6
    };
    items[] += {

        // Personal Medical Equipment
        "ACE_Splint",2,
        "ACE_morphine",2,
        "ACE_epinephrine",
        
        // Radios
        "ACRE_PRC117F",
        "ACRE_PRC117F",
        
        // Tools
        "ACE_Fortify",
        "ACE_SpraypaintBlue",
        "ACE_SpraypaintRed"
    };

    gps[] = {"ItemcTab"};
    
    preLoadout = "[(_this select 0), 'bravo', 1, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_B_Atlas_Logistics_OpsOfficer_F : Cav_B_B_Atlas_Logistics_Officer_F {
    displayName = "Ops Officer";
};
class Cav_B_B_Atlas_Logistics_OpsNCO_F : Cav_B_B_Atlas_Logistics_Officer_F {
    displayName = "Ops NCO";
};

class Cav_B_B_Atlas_Logistics_TeamLeader_F : Cav_B_Bravo_Logi_Base_Local {
    displayName = "Logistical Team Leader";

    primary[] = {
        {"rhs_weap_m4a1_m320","rhsusf_acc_compm4","rhsusf_acc_anpeq15_bk","rhsusf_acc_sfmb556",""},
        {"rhs_weap_m4a1_m320","rhsusf_acc_compm4","rhsusf_acc_anpeq15","rhsusf_acc_sfmb556",""}
    };
        
    magazines[] += {
        "rhs_mag_m714_White",2,
        "ACE_HuntIR_M203",3
    };

    items[] += {
        // Radios
        "ACRE_PRC152",

        // Tools
        "ACE_HuntIR_monitor",
        "ACE_SpraypaintRed"
    };
};
class Cav_B_B_Atlas_Logistics_TeamMember_F : Cav_B_Bravo_Logi_Base_Local {
    displayName = "Logistical Team Member";

    items[] += {
        // Radios
        "ACRE_PRC152",

        // Tools
        "ACE_SpraypaintRed"
    };
};

// Named
class Cav_B_B_Atlas_Medic_TeamLeader_3_1_F : Cav_B_B_Atlas_Medic_TeamLeader_F {displayName = "";};
class Cav_B_B_Atlas_Medic_TeamLeader_3_2_F : Cav_B_B_Atlas_Medic_TeamLeader_F {displayName = "";};
class Cav_B_B_Atlas_Logistics_TeamLeader_3_3_F : Cav_B_B_Atlas_Logistics_TeamLeader_F {displayName = "";};
class Cav_B_B_Atlas_Logistics_TeamLeader_3_4_F : Cav_B_B_Atlas_Logistics_TeamLeader_F {displayName = "";};
class Cav_B_B_Atlas_Logistics_OpsNCO_3_5_F : Cav_B_B_Atlas_Logistics_OpsNCO_F {displayName = "";};
class Cav_B_B_Atlas_Logistics_OpsOfficer_3_6_F : Cav_B_B_Atlas_Logistics_OpsOfficer_F {displayName = "";};

// Depircated
class Cav_B_B_TeamLeader_Mustang_F : Cav_B_B_Atlas_Medic_TeamLeader_F {displayName = "";};
class Cav_B_B_Mustang_CombatMedic_F : Cav_B_B_Atlas_Medic_TeamLeader_F {displayName = "";};
class Cav_B_B_LogisticsOpsOfficer_F : Cav_B_B_Atlas_Logistics_OpsOfficer_F {displayName = "";};
class Cav_B_B_LogisticsOpsNCO_F : Cav_B_B_Atlas_Logistics_OpsNCO_F {displayName = "";};
class Cav_B_B_LogisticTeamLeader_F : Cav_B_B_Atlas_Logistics_TeamLeader_F {displayName = "";};
class Cav_B_B_LogisticsTeamMember_F : Cav_B_B_Atlas_Logistics_TeamMember_F {displayName = "";};
