/*
GearVersionDate: 170412
*/
class CAV_SquadLeader : CommonBlufor {                  // Squad Leader
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
class CAV_TeamLeader : CommonBlufor {                   // Fire Team Leader
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
class CAV_AutomaticRifleman : CommonBlufor {            // Automatic Rifleman
    primary[] = {"rhs_weap_m249_pip_L","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_200rnd_556x45_M_SAW",3,

        "rhs_mag_m67",4,

        "SmokeShell",4
    };
};
class CAV_Grenadier : CommonBlufor {                    // Grenadier
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
class CAV_Rifleman : CommonBlufor {                     // Rifleman
    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};
};

class CAV_CombatLifesaver : CommonBlufor {              // Combat Life Saver
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
    
    preLoadout = "(_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]";
};
class CAV_PlatoonMedic : CommonBlufor {                 // Platoon Medic
    backpack[] = {"B_Kitbag_cbr"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5,

        "rhs_mag_m67",2,

        "SmokeShell",4,
        "SmokeShellGreen",
        "SmokeShellRed",
        "SmokeShellYellow",
    };
    items[] = {
        // Medical Equipment
        "ACE_personalAidKit",2,
        "ACE_surgicalKit",
        "ACE_quikclot",35,
        "ACE_tourniquet",2,
        "ACE_salineIV",8,
        "ACE_morphine",20 ,
        "ACE_epinephrine",20,
        
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

    gps[] = {"ItemAndroid"};

    insignia[] = {"CLS_Insignia"};
    preLoadout = "(_this select 0) setVariable [""ACE_medical_medicClass"", 1, true]";
};
class CAV_Starlight : CommonBlufor {                    // Mobile Medic Team
    backpack[] = {"B_Kitbag_cbr"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5,

        "rhs_mag_m67",2,

        "SmokeShell",4,
        "SmokeShellGreen",
        "SmokeShellRed",
        "SmokeShellYellow",
    };
    items[] = {
        // Medical Equipment
        "ACE_personalAidKit",2,
        "ACE_surgicalKit",
        "ACE_quikclot",35,
        "ACE_tourniquet",2,
        "ACE_salineIV",8,
        "ACE_morphine",20 ,
        "ACE_epinephrine",20,
        
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

    gps[] = {"ItemAndroid"};

    insignia[] = {"CLS_Insignia"};
    preLoadout = "(_this select 0) setVariable [""ACE_medical_medicClass"", 2, true]";
};

class CAV_Engineer : CommonBlufor {                     // Engineer
    vest[] = {"rhsusf_iotv_ocp_Repair"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_ACOG_RMR"};
    
    binoculars[] = {"ACE_Vector"};
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",9,

        "rhs_mag_m67",6,

        "rhs_mag_an_m8hc",8,
        
        "DemoCharge_Remote_Mag",

        "Chemlight_red",2,
        "Chemlight_blue",2
    };
    items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",

        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,

        // Electronics
        "ACE_microDAGR",
        "ACE_IR_Strobe_Item",

        // Tools
        "ACE_M26_Clacker",
        "ACE_DefusalKit",
        "ACE_SpraypaintRed",
        "ACE_wirecutter",
        "ACE_EntrenchingTool"
    };

    //preLoadout = "(_this select 0) setVariable [""ACE_isEngineer"", true]";
};

class CAV_JavelinSpecialist : CommonBlufor {            // Javelin Specialist
    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};
    launcher[] = {"rhs_weap_fgm148"};
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8,

        "rhs_mag_m67",2,

        "rhs_fgm148_magazine_AT"		
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_DAGR"
    };
};
class CAV_JavelinAssistantSpecialist : CommonBlufor {   // Javelin Specialist Asst.
    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};
    
    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8,

        "rhs_mag_m67",2,

        "rhs_fgm148_magazine_AT"
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_DAGR",

        // Tools
        "ACE_EntrenchingTool"
    };
};
class CAV_MAAWSSpecialist : CommonBlufor {              // MAAWS Specialist
    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};
    
    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};
	launcher[] = {"tf47_m3maaws"};
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8,

        "rhs_mag_m67",2,

        "tf47_m3maaws_HEAT",
        "tf47_m3maaws_HEDP"
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_DAGR"
    };
};
class CAV_MAAWSAssistantSpecialist : CommonBlufor {     // MAAWS Specialist Asst.
    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};
    
    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8,

        "rhs_mag_m67",2,

        "tf47_m3maaws_HEAT",
        "tf47_m3maaws_HEDP"
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_DAGR",

        // Tools
        "ACE_EntrenchingTool"
    };
};
class CAV_AASpecialist : CommonBlufor {                 // AA Specialist
    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};
    
    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};
	launcher[] = {"rhs_weap_fim92"};
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8,

        "rhs_mag_m67",2,

        "rhs_fim92_mag"
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_DAGR"
    };
};
class CAV_AAAssistantSpecialist : CommonBlufor {        // AA Specialist Asst.
    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};
    
    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8,

        "rhs_mag_m67",2,

        "rhs_fim92_mag"
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_DAGR",

        // Tools
        "ACE_EntrenchingTool"
    };
};

class CAV_Officer : CommonBlufor {                      // Officer
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
        "ACE_EntrenchingTool"
    };
    gps[] = {"ItemcTab"};
};
class CAV_JTAC : CommonBlufor {                         // JTAC
    backpack[] = {"tf_rt1523g_big_rhs"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","rhsusf_acc_ACOG_RMR"};
    
    binoculars[] = {"Laserdesignator"};

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
        "Laserbatteries",2,

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };
    gps[] = {"ItemcTab"};
};
