/*
GearVersionDate: 160801
*/
class rhsusf_army_ocp_squadleader : CommonBlufor {      // Squad Leader
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
        //ACE_packingBandage, 10,   // Changed
        //ACE_morphine, 2,
        //ACE_epinephrine, 2,
        //ACE_tourniquet,
        ACE_packingBandage, 4,
        ACE_morphine,
        ACE_tourniquet,
        
        ACE_EarPlugs,
        //ACE_CableTie, 2           // Changed
        ACE_CableTie,
        ACE_Flashlight_MX991,
        ACE_microDAGR,
        ACE_MapTools,
        ACE_IR_Strobe_Item,
        ACE_HuntIR_monitor
        //itemcTabHCam
    };
};
class rhsusf_army_ocp_teamleader : CommonBlufor {       // Fire Team Leader
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
        //ACE_packingBandage, 10,   // Changed
        //ACE_morphine, 2,
        //ACE_epinephrine, 2,
        //ACE_tourniquet,
        ACE_packingBandage, 4,
        ACE_morphine,
        ACE_tourniquet,
        
        ACE_EarPlugs,
        //ACE_CableTie, 2           // Changed
        ACE_CableTie,
        ACE_Flashlight_MX991,
        ACE_microDAGR,
        ACE_MapTools,
        ACE_IR_Strobe_Item,
        ACE_HuntIR_monitor
    };
};
class rhsusf_army_ocp_rifleman : CommonBlufor {         // Rifleman
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};
    primary[] = {
        {"rhs_weap_m4a1_carryhandle", "acc_pointer_IR", "rhsusf_acc_ACOG"}
    };
};
class rhsusf_army_ocp_grenadier : CommonBlufor {        // Grenadier
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
};
class rhsusf_army_ocp_autorifleman : CommonBlufor {     // Autorifleman (Bandit)
    vest[] = {"rhsusf_iotv_ocp_SAW"};
    primary[] = {
        {"rhs_weap_m249_pip_L", "acc_pointer_IR", "rhsusf_acc_ACOG"}
    };
    secondary[] = {"rhsusf_weap_m9"};
    magazines[] = {
        _MAG_AR0, 4,
        rhsusf_mag_15Rnd_9x19_JHP, 2,

        _GRENADE, 6,
        _GRENADE_SMOKE, 8,

        Chemlight_Blue, 2,
        Chemlight_Red, 2
    };
};
class rhsusf_army_ocp_machinegunner : CommonBlufor {    // Autorifleman (Gunslinger)
    vest[] = {"rhsusf_iotv_ocp_SAW"};
    primary[] = {
        {"rhs_weap_m240B", "acc_pointer_IR", "rhsusf_acc_ACOG"}
    };
    secondary[] = {"rhsusf_weap_m9"};
    magazines[] = {
        _MAG_AR1, 5,
        rhsusf_mag_15Rnd_9x19_JHP, 2,

        _GRENADE, 6,
        _GRENADE_SMOKE, 8,

        Chemlight_Blue, 2,
        Chemlight_Red, 2
    };
};
class rhsusf_army_ocp_medic : CommonBlufor {            // Combat Life Saver
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
        //ACE_CableTie, 2,           // Changed
        ACE_CableTie,
        ACE_Flashlight_MX991,
        ACE_DAGR,
        ACE_MapTools,
        ACE_IR_Strobe_Item
    };
};