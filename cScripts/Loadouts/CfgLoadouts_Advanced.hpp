/*
GearVersionDate: 160908
*/
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
};
