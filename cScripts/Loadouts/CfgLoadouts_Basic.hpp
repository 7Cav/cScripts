/*
GearVersionDate: 160818
*/
class rhsusf_army_ocp_squadleader : CommonBlufor {              // Squad Leader
    vest[] = {"rhsusf_iotv_ocp_Squadleader"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    binoculars[] = {"ACE_Vector"};
    primary[] = {
        {"rhs_weap_m4a1_carryhandle", "acc_pointer_IR", "rhsusf_acc_ACOG"}
    };
    magazines[] = {
        _MAG_PRIMARY, 8,
        _MAG_PRIMARY_TRACER, 4,
        
        _GRENADE, 6,
        _GRENADE_SMOKE, 4,

        Chemlight_Blue, 2,
        Chemlight_Red, 2
        
    };
    items[] = {
        ACE_packingBandage, 10,
        ACE_morphine, 2,
        ACE_epinephrine, 2,
        ACE_tourniquet,
        
        ACE_EarPlugs,
        ACE_CableTie, 2,
        ACE_Flashlight_MX991,
        ACE_microDAGR,
        ACE_MapTools,
        ACE_IR_Strobe_Item,
        ACE_HuntIR_monitor,
        itemcTabHCam
    };
    gps[] = {"ItemAndroid"};
};
class rhsusf_army_ocp_teamleader : CommonBlufor {               // Fire Team Leader
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    binoculars[] = {"ACE_Vector"};
    primary[] = {
        {"rhs_weap_m4a1_m320", "acc_pointer_IR", "rhsusf_acc_ACOG"}
    };
    magazines[] = {
        _MAG_PRIMARY, 8,
        _MAG_PRIMARY_TRACER, 4,
        
        _GLSHELL0, 8,
        _GLSHELL1, 8,
        _GLSHELLSMOKE, 8,
        _GLSHELLHUNTIR, 8,
        
        _GRENADE, 6,
        _GRENADE_SMOKE, 8,
        _GLFLARE, 2,

        Chemlight_Blue, 2,
        Chemlight_Red, 2
        
    };
    items[] = {
        ACE_packingBandage, 10,
        ACE_morphine, 2,
        ACE_epinephrine, 2,
        ACE_tourniquet,
        
        ACE_EarPlugs,
        ACE_CableTie, 2,
        ACE_Flashlight_MX991,
        ACE_microDAGR,
        ACE_MapTools,
        ACE_IR_Strobe_Item,
        ACE_HuntIR_monitor
    };
    watch[] = {"tf_microdagr"};
};
class rhsusf_army_ocp_rifleman : CommonBlufor {                 // Rifleman
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};
    primary[] = {
        {"rhs_weap_m4a1_carryhandle", "acc_pointer_IR", "rhsusf_acc_ACOG"}
    };
    watch[] = {"tf_microdagr"};
};
class rhsusf_army_ocp_grenadier : CommonBlufor {                // Grenadier
    vest[] = {"rhsusf_iotv_ocp_Grenadier"};
    primary[] = {
        {"rhs_weap_m4a1_m320", "acc_pointer_IR", "rhsusf_acc_ACOG"}
    };
    magazines[] = {
        _MAG_PRIMARY, 8,
        _MAG_PRIMARY_TRACER, 4,
        
        _GLSHELL0, 8,
        _GLSHELL1, 8,
        _GLSHELLSMOKE, 8,
        _GLSHELLHUNTIR, 8,
        
        _GRENADE, 6,
        _GRENADE_SMOKE, 8,
        _GLFLARE, 2,

        Chemlight_Blue, 2,
        Chemlight_Red, 2
        
    };
    watch[] = {"tf_microdagr"};
};
class rhsusf_army_ocp_autorifleman : CommonBlufor {             // Autorifleman (Bandit)
    vest[] = {"rhsusf_iotv_ocp_SAW"};
    primary[] = {
        {"rhs_weap_m249_pip_L", "acc_pointer_IR", "rhsusf_acc_ACOG"}
    };
    secondary[] = {"rhsusf_weap_m9"};
    magazines[] = {
        _MAG_AR0, 4,
        _MAG_SECONDARY0, 2,

        _GRENADE, 6,
        _GRENADE_SMOKE, 8,

        Chemlight_Blue, 2,
        Chemlight_Red, 2
    };
    watch[] = {"tf_microdagr"};
};
class rhsusf_army_ocp_machinegunner : CommonBlufor {            // Autorifleman (Gunslinger)
    vest[] = {"rhsusf_iotv_ocp_SAW"};
    primary[] = {
        {"rhs_weap_m240B", "acc_pointer_IR", "rhsusf_acc_ACOG"}
    };
    secondary[] = {"rhsusf_weap_m9"};
    magazines[] = {
        _MAG_AR1, 5,
        _MAG_SECONDARY0, 2,

        _GRENADE, 6,
        _GRENADE_SMOKE, 8,

        Chemlight_Blue, 2,
        Chemlight_Red, 2
    };
    watch[] = {"tf_microdagr"};
};
class rhsusf_army_ocp_medic : CommonBlufor {                    // Combat Life Saver
    vest[] = {"rhsusf_iotv_ocp_Medic"};
    primary[] = {
        {"rhs_weap_m4a1_carryhandle", "acc_pointer_IR", "rhsusf_acc_ACOG"}
    };
    magazines[] = {
        _MAG_PRIMARY, 8,

        _GRENADE, 6,
        _GRENADE_SMOKE, 8,

        Chemlight_Blue, 2,
        Chemlight_Red, 2
    };
    items[] = {
        ACE_packingBandage, 15,
        ACE_elasticBandage, 15,
        ACE_salineIV, 2,
        ACE_salineIV_500, 2,
        ACE_morphine, 2,
        ACE_epinephrine,  2,
        ACE_tourniquet, 1,
        
        ACE_EarPlugs,
        ACE_CableTie, 2,
        ACE_Flashlight_MX991,
        ACE_DAGR,
        ACE_MapTools,
        ACE_IR_Strobe_Item
    };
    watch[] = {"tf_microdagr"};
};

class CAV_RiflemanLAT : rhsusf_army_ocp_rifleman {              // Rifleman (Light Anti Tank)
};
class CAV_RiflemanAT : rhsusf_army_ocp_rifleman {               // Rifleman (Anti Tank)
};
class CAV_RiflemanAA : rhsusf_army_ocp_rifleman {               // Rifleman (Anti Air)
};

class CAV_RiflemanAmmoBearer : rhsusf_army_ocp_rifleman {       // Rifleman (Ammo Bearer)
};