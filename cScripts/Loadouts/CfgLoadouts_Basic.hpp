/*
GearVersionDate: 161109
*/
class CAV_SquadLeader : CommonBlufor {              // Squad Leader
    backpack[] = {"tf_rt1523g_big_rhs"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    vest[] = {"rhsusf_iotv_ocp_Squadleader"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","RH_ta31rmr_2D"};
    
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",7,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,

        "rhs_mag_m67",6,

        "rhs_mag_an_m8hc",8,
        "rhs_mag_m18_green",4,
        "rhs_mag_m18_red",2,
        "rhs_mag_m18_yellow",2,

        "Chemlight_red",2,
        "Chemlight_blue",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",
        "ACE_personalAidKit",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,
        

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        "ItemcTabHCam",
        "ACE_IR_Strobe_Item",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };
    gps[] = {"ItemAndroid"};
};
class CAV_TeamLeader : CommonBlufor {               // Fire Team Leader
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};

    primary[] = {"rhs_weap_m4_m320","acc_pointer_IR","RH_ta31rmr_2D"};
    
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",7,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,

        "rhs_mag_m67",6,

        "rhs_mag_an_m8hc",8,
        "rhs_mag_m18_green",
        "rhs_mag_m18_red",
        "rhs_mag_m18_yellow",
        
        "rhs_mag_M441_HE",2,
        "rhs_mag_M433_HEDP",2,
        "rhs_mag_m714_White",2,
        "ACE_HuntIR_M203",2,

        "Chemlight_red",2,
        "Chemlight_blue",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,
        

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        //"ItemcTabHCam",
        "ACE_IR_Strobe_Item",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };
};
class CAV_AutomaticRifleman : CommonBlufor {        // Automatic Rifleman
    vest[] = {"rhsusf_iotv_ocp_SAW"};

    primary[] = {"rhs_weap_m249_pip_L","acc_pointer_IR","RH_ta31rmr_2D"};

    magazines[] = {
        "rhs_200rnd_556x45_M_SAW",4,

        "rhs_mag_m67",6,

        "rhs_mag_an_m8hc",8,

        "Chemlight_red",2,
        "Chemlight_blue",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,
        

        // Electronics
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",

        // Tools
        "ACE_EntrenchingTool"
    };
};
class CAV_Grenadier : CommonBlufor {                // Grenadier
    vest[] = {"rhsusf_iotv_ocp_Grenadier"};

    primary[] = {"rhs_weap_m4_m320","acc_pointer_IR","RH_ta31rmr_2D"};
    
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",7,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,

        "rhs_mag_M441_HE",4,
        "rhs_mag_M433_HEDP",4,
        "rhs_mag_m714_White",4,
        "ACE_HuntIR_M203",4,
        
        "rhs_mag_m67",6,

        "rhs_mag_an_m8hc",8,
        "rhs_mag_m18_green",
        "rhs_mag_m18_red",
        "rhs_mag_m18_yellow",

        "Chemlight_red",2,
        "Chemlight_blue",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,
        

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        "ACE_IR_Strobe_Item",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };
};
class CAV_Rifleman : CommonBlufor {                 // Rifleman
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","RH_ta31rmr_2D"};
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",9,

        "rhs_mag_m67",6,

        "rhs_mag_an_m8hc",8,

        "Chemlight_red",2,
        "Chemlight_blue",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,
        

        // Electronics
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",

        // Tools
        "ACE_EntrenchingTool"
    };
};

class CAV_CombatLifesaver : CommonBlufor {          // Combat Life Saver
    vest[] = {"rhsusf_iotv_ocp_Medic"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","RH_ta31rmr_2D"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",9,

        "rhs_mag_m67",6,

        "rhs_mag_an_m8hc",8,

        "Chemlight_red",2,
        "Chemlight_blue",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",25,
        "ACE_morphine",10,
        "ACE_tourniquet",4,
        "ACE_salineIV_500",4,
        "ACE_personalAidKit",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,
        

        // Electronics
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",

        // Tools
        "ACE_EntrenchingTool"
    };
    
    insignia[] = {"CLS_Insignia"};
    
    preLoadout = "(_this select 0) setVariable [""ACE_medical_medicClass"", 1, true]";
};
class CAV_PlatoonMedic : CommonBlufor {             // Platoon Medic
    backpack[] = {"tf_rt1523g_big_rhs"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    vest[] = {"rhsusf_iotv_ocp_Medic"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","RH_ta31rmr_2D"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6,

        "rhs_mag_m67",2,

        "rhs_mag_an_m8hc",6,

        "Chemlight_red",2,
        "Chemlight_blue",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",45,
        "ACE_morphine",20,
        "ACE_epinephrine",20,
        "ACE_tourniquet",4,
        "ACE_salineIV_500",14,
        "ACE_personalAidKit",2,
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,

        // Electronics
        "ACE_microDAGR",
        "ACE_IR_Strobe_Item",

        // Tools
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemAndroid"};

    insignia[] = {"CLS_Insignia"};
    preLoadout = "(_this select 0) setVariable [""ACE_medical_medicClass"", 2, true]";
};

class CAV_Engineer : CommonBlufor {                 // Engineer
    vest[] = {"rhsusf_iotv_ocp_Repair"};

    primary[] = {"rhs_weap_m4a1_carryhandle","RH_ta31rmr_2D"};
    
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
        // Medical Equipment
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

    preLoadout = "(_this select 0) setVariable [""ACE_isEngineer"", true]";
};

class CAV_Officer : CommonBlufor {                  // Officer
    backpack[] = {"tf_rt1523g_big_rhs"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    vest[] = {"rhsusf_iotv_ocp_Squadleader"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","RH_ta31rmr_2D"};
    
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",7,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,

        "rhs_mag_m67",6,

        "rhs_mag_an_m8hc",8,
        "rhs_mag_m18_green",4,
        "rhs_mag_m18_red",2,
        "rhs_mag_m18_yellow",2,

        "Chemlight_red",2,
        "Chemlight_blue",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",
        "ACE_personalAidKit",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,
        

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        "ItemcTabHCam",
        "ACE_IR_Strobe_Item",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };
    gps[] = {"ItemcTab"};
};
