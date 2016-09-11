/*
GearVersionDate: 160911
*/
class CAV_TankCommander : CommonBlufor {            // Tank Commander
    headgear[] = {"H_HelmetCrew_I"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","RH_ta31rmr_2D"};
    
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6,

        "rhs_mag_m67",2,

        "rhs_mag_an_m8hc",4,
        "rhs_mag_m18_green",2,
        "rhs_mag_m18_red",2,
        "rhs_mag_m18_yellow",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",        

        // Electronics
        "ACE_microDAGR",
        "ACE_IR_Strobe_Item"
    };
    
    nvgs[] = {"rhsusf_ANPVS_15"};
};
class CAV_TankGunner : CommonBlufor {               // Tank Gunner
    headgear[] = {"H_HelmetCrew_I"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","RH_ta31rmr_2D"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6,

        "rhs_mag_m67",2,

        "rhs_mag_an_m8hc",4,
        "rhs_mag_m18_green",2,
        "rhs_mag_m18_red",2,
        "rhs_mag_m18_yellow",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",        

        // Electronics
        "ACE_microDAGR",
        "ACE_IR_Strobe_Item",
        
        //Tools
        "ToolKit"
    };
    
    nvgs[] = {"rhsusf_ANPVS_15"};
};
class CAV_TankDriver : CommonBlufor {               // Tank Driver
    headgear[] = {"H_HelmetCrew_I"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};

    primary[] = {"rhs_weap_m4a1_carryhandle","acc_pointer_IR","RH_ta31rmr_2D"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6,

        "rhs_mag_m67",2,

        "rhs_mag_an_m8hc",4,
        "rhs_mag_m18_green",2,
        "rhs_mag_m18_red",2,
        "rhs_mag_m18_yellow",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",25,
        "ACE_tourniquet",5,
        "ACE_morphine",10,
        "ACE_salineIV_500",4,
        "ACE_personalAidKit",5,
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",        

        // Electronics
        "ACE_microDAGR",
        "ACE_IR_Strobe_Item",
        
        //Tools
        "ToolKit"
    };
    
    nvgs[] = {"rhsusf_ANPVS_15"};
};
class CAV_TankLoader : CommonBlufor {               // Tank Loader
    headgear[] = {"H_HelmetCrew_I"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};

    primary[] = {"rhs_weap_m240G","rhsusf_acc_ELCAN"};

    magazines[] = {
        "rhsusf_50Rnd_762x51_m62_tracer",3,

        "rhs_mag_m67",2,

        "rhs_mag_an_m8hc",4,
        "rhs_mag_m18_green",2,
        "rhs_mag_m18_red",2,
        "rhs_mag_m18_yellow",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",        

        // Electronics
        "ACE_microDAGR",
        "ACE_IR_Strobe_Item"
    };
    
    nvgs[] = {"rhsusf_ANPVS_15"};
};

class CAV_HeloPilot : CommonBlufor {                // Helo Pilot
    headgear[] = {"H_PilotHelmetHeli_B"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};

    primary[] = {"rhs_weap_m4a1_carryhandle","RH_ta31rmr"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6,

        "rhs_mag_m67",2,

        "rhs_mag_an_m8hc",7,
        "rhs_mag_m18_red",2,
        "rhs_mag_m18_green",2,
        "rhs_mag_m18_yellow",2,

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
        "ACE_CableTie",2,
        
        // Electronics
        "ACE_microDAGR",
        "ACE_IR_Strobe_Item"
    };

    nvgs[] = {"rhsusf_ANPVS_15"};
};