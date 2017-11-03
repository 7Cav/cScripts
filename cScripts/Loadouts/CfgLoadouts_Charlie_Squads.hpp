class CAV_Charlie_SquadLeader       : CAV_Charlie_Base {                // Squad Leader
    backpack[] = {"tf_rt1523g_big_rhs"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};
    
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",9,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",2,

        "SmokeShell",6,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1
    };
    items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        "ACE_personalAidKit",
        
        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool",
        
        "DAR_Beret_Mar"
    };
    gps[] = {"ItemAndroid"};
};
class CAV_Charlie_TeamLeader        : CAV_Charlie_Base {                // Fire Team Leader
    backpack[] = {"B_Kitbag_cbr"};

    primary[] = {"rhs_weap_m4a1_m320","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};
    
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",9,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",6,

        "SmokeShell",6,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1,

        "rhs_mag_M441_HE",11,
        "rhs_mag_M433_HEDP",2,
        "rhs_mag_m714_White",2,
        "ACE_HuntIR_M203"
    };
    items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        "ACE_personalAidKit",
        
        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool",
        
        "DAR_Beret_Mar"
    };
};
class CAV_Charlie_AutomaticRifleman : CAV_Charlie_Base {                // Automatic Rifleman
    primary[] = {"rhs_weap_m249_pip_L","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_200rnd_556x45_M_SAW",3,

        "rhs_mag_m67",4,

        "SmokeShell",4
    };
};
class CAV_Charlie_Grenadier         : CAV_Charlie_Base {                // Grenadier
    backpack[] = {"B_Kitbag_cbr"};

    primary[] = {"rhs_weap_m4a1_m320","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",9,

        "rhs_mag_M441_HE",11,
        "rhs_mag_M433_HEDP",4,
        "rhs_mag_m714_White",4,
        
        "rhs_mag_m67",6,

        "SmokeShell",6
    };
};
class CAV_Charlie_Rifleman          : CAV_Charlie_Base {                // Rifleman
    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};
};

class CAV_Charlie_CombatLifesaver   : CAV_Charlie_Base {                // Combat Life Saver
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",9,

        "rhs_mag_m67",2,

        "SmokeShell",4,
        "SmokeShellGreen",
        "SmokeShellRed",
        "SmokeShellYellow",
    };
    items[] = {
        // Medical Equipment
        "ACE_personalAidKit",
        "ACE_quikclot",20,
        "ACE_tourniquet",2,
        "ACE_morphine",6,
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        
        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_DAGR",

        // Tools
        "ACE_EntrenchingTool"
    };
    
    insignia[] = {"CLS_Insignia"};
    
    preLoadout = " \
        (_this select 0) setVariable [""CAV_isCharlieUnit"", true]; \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
    ";
};
