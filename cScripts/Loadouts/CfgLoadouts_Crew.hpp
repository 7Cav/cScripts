/*
GearVersionDate: 160818
*/

class rhsusf_army_ocp_crewman : CommonBlufor {                  // Crewman
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};
    headgear[] = {"H_HelmetCrew_I"};
    goggles[] = {"rhs_ess_black"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    binoculars[] = {"ACE_Vector"};
    primary[] = {
        {"rhs_weap_m4a1_carryhandle", "acc_pointer_IR"}
    };
    magazines[] = {
        _MAG_PRIMARY, 3,
        
        _GRENADE, 2,
        _GRENADE_SMOKE, 2,
        _GRENADE_SMOKE_BLUE,
        _GRENADE_SMOKE_YELLOW,
        _GRENADE_SMOKE_GREEN,

        Chemlight_Green, 2,
        Chemlight_Red, 2
    };
    items[] = {
        ACE_packingBandage, 10,
        ACE_morphine, 2,
        ACE_epinephrine, 2,
        ACE_tourniquet,
        
        ACE_EarPlugs,
        ACE_CableTie,
        ACE_Flashlight_MX991,
        ACE_microDAGR,
        ACE_MapTools,
        ACE_IR_Strobe_Item,
        
        Toolkit
    };
    gps[] = {"ItemAndroid"};
    watch[] = {"tf_microdagr"};
};
class CAV_TankCommander : CommonBlufor {                        // Tank Commander
    vest[] = {"rhsusf_iotv_ocp_Grenadier"};
    headgear[] = {"H_HelmetCrew_I"};
    goggles[] = {"rhs_ess_black"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    binoculars[] = {"ACE_Vector"};
    backpack[] = {"tf_rt1523g_big_rhs"};
    primary[] = {
        {"rhs_weap_m4a1_m320", "acc_pointer_IR"}
    };
    magazines[] = {
        _MAG_PRIMARY, 6,
        
        _GRENADE, 2,
        _GRENADE_SMOKE, 2,
        _GRENADE_SMOKE_BLUE,
        _GRENADE_SMOKE_YELLOW,
        _GRENADE_SMOKE_GREEN,
        
        _GLSHELLSMOKE,
        _GLSHELLSMOKEGREEN,
        _GLSHELLSMOKERED,
        _GLFLARE_GREEN,
        _GLFLARE_RED,

        Chemlight_Green, 2,
        Chemlight_Red, 2
    };
    items[] = {
        ACE_packingBandage, 10,
        ACE_morphine, 2,
        ACE_epinephrine, 2,
        ACE_tourniquet,
        
        ACE_EarPlugs,
        ACE_CableTie,
        ACE_Flashlight_MX991,
        ACE_microDAGR,
        ACE_MapTools,
        ACE_IR_Strobe_Item
    };
    gps[] = {"ItemAndroid"};
    watch[] = {"tf_microdagr"};
};
class CAV_TankGunner : CommonBlufor {                           // Tank Gunner 
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};
    headgear[] = {"H_HelmetCrew_I"};
    goggles[] = {"rhs_ess_black"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    binoculars[] = {"ACE_Vector"};
    primary[] = {
        {"rhs_weap_m4a1_carryhandle", "acc_pointer_IR"}
    };
    magazines[] = {
        _MAG_PRIMARY, 3,
        
        _GRENADE, 2,
        _GRENADE_SMOKE, 2,
        _GRENADE_SMOKE_BLUE,
        _GRENADE_SMOKE_YELLOW,
        _GRENADE_SMOKE_GREEN,

        Chemlight_Green, 2,
        Chemlight_Red, 2
    };
    items[] = {
        ACE_packingBandage, 10,
        ACE_morphine, 2,
        ACE_epinephrine, 2,
        ACE_tourniquet,
        
        ACE_EarPlugs,
        ACE_CableTie,
        ACE_Flashlight_MX991,
        ACE_microDAGR,
        ACE_MapTools,
        ACE_IR_Strobe_Item,
        
        Toolkit
    };
    gps[] = {"ItemAndroid"};
    watch[] = {"tf_microdagr"};
};
class CAV_TankLoader : CommonBlufor {                           // Tank Loader
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};
    headgear[] = {"H_HelmetCrew_I"};
    goggles[] = {"rhs_ess_black"};
    nvgs[] = {"rhsusf_ANPVS_15"};
    binoculars[] = {"ACE_Vector"};
    backpack[] = {"tf_rt1523g_big_rhs"};
    primary[] = {
        {"rhs_weap_m240B"}
    };
    magazines[] = {
        _MAG_AR1, 1,
        
        _GRENADE, 2,
        _GRENADE_SMOKE, 2,
        _GRENADE_SMOKE_BLUE,
        _GRENADE_SMOKE_YELLOW,
        _GRENADE_SMOKE_GREEN,

        Chemlight_Green, 2,
        Chemlight_Red, 2
    };
    items[] = {
        ACE_packingBandage, 10,
        ACE_morphine, 2,
        ACE_epinephrine, 2,
        ACE_tourniquet,
        
        ACE_EarPlugs,
        ACE_CableTie,
        ACE_Flashlight_MX991,
        ACE_microDAGR,
        ACE_MapTools,
        ACE_IR_Strobe_Item,
        
        Toolkit
    };
    gps[] = {"ItemAndroid"};
    watch[] = {"tf_microdagr"};
};
