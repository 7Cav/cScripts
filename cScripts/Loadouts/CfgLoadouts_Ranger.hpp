/*
GearVersionDate: 161109
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

// Exported from Arsenal by CPL.Brostrom.A
uniform = "rhs_uniform_cu_ocp_1stcav";
backpack = "tf_rt1523g";
weapons[] = {"rhs_weap_m4a1_carryhandle","ACE_Vector","Leupold_Mk4","Throw","Put"};
magazines[] = {"rhs_mag_m67","rhs_mag_m67","rhs_mag_an_m8hc","rhs_mag_an_m8hc","rhs_mag_an_m8hc","rhs_mag_an_m8hc","rhs_mag_an_m8hc","rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer","rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer","rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer","rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer","rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_m67","rhs_mag_m67","rhs_mag_an_m8hc"};
items[] = {"ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_EarPlugs","ACE_EarPlugs","ACE_ATragMX","ACE_tourniquet","ACE_morphine","ACE_morphine","ACE_Flashlight_MX991","ACE_Kestrel4500","ACE_microDAGR","ACE_MapTools","ACE_RangeCard","ACE_personalAidKit","Leupold_Mk4"};
linkedItems[] = {"rhsusf_spcs_ocp","rhsusf_ach_helmet_ocp","","ItemMap","ItemCompass","ACE_Altimeter","tf_anprc152_5","ItemAndroid"};

// Exported from Arsenal by CPL.Brostrom.A
uniform = "rhs_uniform_cu_ocp_1stcav";
backpack = "B_AssaultPack_cbr";
weapons[] = {"rhs_weap_sr25_d","ACE_Vector","Leupold_Mk4","Throw","Put"};
magazines[] = {"rhs_mag_m67","rhs_mag_m67","rhs_mag_an_m8hc","rhs_mag_an_m8hc","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_20Rnd_762x51_m118_special_Mag","rhs_mag_m67","rhs_mag_m67","rhs_mag_an_m8hc","rhs_mag_an_m8hc","rhs_mag_an_m8hc","rhs_mag_an_m8hc","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_20Rnd_762x51_m118_special_Mag"};
items[] = {"ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_EarPlugs","ACE_EarPlugs","ACE_ATragMX","ACE_tourniquet","ACE_morphine","ACE_morphine","ACE_Flashlight_MX991","ACE_Kestrel4500","ACE_microDAGR","ACE_MapTools","ACE_RangeCard","ACE_personalAidKit","Leupold_Mk4"};
linkedItems[] = {"rhsusf_spcs_ocp","rhsusf_ach_helmet_ocp","","ItemMap","ItemCompass","ACE_Altimeter","tf_anprc152_5","ItemAndroid"};
