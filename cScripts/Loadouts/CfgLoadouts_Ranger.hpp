/*
GearVersionDate: 170723
*/

class CAV_Ranger : CommonBlufor {
};

class CAV_Sniper : CommonBlufor {
    backpack[] = {"B_AssaultPack_cbr"};
    vest[] = {"rhsusf_spcs_ocp"};

    primary[] = {"rhs_weap_sr25_d","Leupold_Mk4"};
    
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhsusf_20Rnd_762x51_m118_special_Mag",10,
        
        "rhs_mag_m67",4,
        
        "rhs_mag_an_m8hc",6
    };
    items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_morphine",2,
        "ACE_tourniquet",1,
        "ACE_personalAidKit",
        
        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",

        // Electronics
        "ACE_microDAGR",
        
        "ACE_ATragMX",
        "ACE_Kestrel4500",
        
        // Tools        
        "ACE_RangeCard",
        "ACE_Flashlight_MX991"
    };
    gps[] = {"ItemAndroid"};
    watch[] = {"ACE_Altimeter"};
};
class CAV_Spotter : CAV_Sniper {
    backpack[] = {"tf_rt1523g"};

    primary[] = {"rhs_weap_m4a1_carryhandle","Leupold_Mk4"};
    
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,
        
        "rhs_mag_m67",4,
        
        "rhs_mag_an_m8hc",6
    };
    gps[] = {"ItemAndroid"};
    watch[] = {"ACE_Altimeter"};
};
