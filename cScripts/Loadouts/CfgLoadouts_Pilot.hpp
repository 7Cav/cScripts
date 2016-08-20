/*
GearVersionDate: 160801
*/

class WhateverPilotClass : CommonBlufor {              // Helicopter Pilot
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

class WhateverPilotCrewClass : WhateverPilotClass {              // Helicopter Crew
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

