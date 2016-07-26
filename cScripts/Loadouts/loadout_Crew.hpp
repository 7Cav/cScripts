/*
GearVersionDate: 160425
*/

class C_TC {        // TANK COMMANDER
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Grenadier";
    headgear        = "H_HelmetCrew_I";
    goggles         = "rhs_ess_black";
    nvgoggles       = "rhsusf_ANPVS_15";
    backpack        = _GEAR_BACKPACK_RADIO1;
    
    primaryWeapon   = _WEAPON_PRIMARY_GL0;
    primaryWeaponAttachments[] = {
        acc_pointer_IR
    };
    
    secondaryWeapon = "";
    handgunWeapon = "";
    
    items[] = {};
    magazines[] = {};
    addItemsToUniform[] = {
        _QUA1(ACE_EarPlugs),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_CableTie),
        _QUA1(ACE_IR_Strobe_Item),
        _QUA1(ACE_Flashlight_MX991),
        _QUA2(Chemlight_Green),
        _QUA2(Chemlight_Red),
        _QUA2(_MAG_SECONDARY0)    
    };
    addItemsToVest[] = {
        _QUA1(_GRENADE_SMOKE_GREEN),
        _QUA1(_GLSHELLSMOKE),
        _QUA1(_GLSHELLSMOKEGREEN),
        _QUA1(_GLSHELLSMOKERED),
        _QUA1(_GLFLARE_GREEN),
        _QUA1(_GLFLARE_RED),
        _QUA2(_GRENADE),
        _QUA2(_GRENADE_SMOKE),
        _QUA1(_GRENADE_SMOKE_BLUE),
        _QUA1(_GRENADE_SMOKE_YELLOW),
        _QUA6(_MAG_PRIMARY)
    };
    addItemsToBackpack[] = {
        _QUA5(ACE_packingBandage),
        _QUA1(ACE_morphine),
        _QUA1(ACE_epinephrine),
        _QUA1(ACE_microDAGR)
    };
    
    binoculars      = "ACE_Vector";
    map             = "ItemMap";
    gps             = "ItemAndroid";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_TC_1 : C_TC {}; class C_TC_2 : C_TC {}; class C_TC_3 : C_TC {}; class C_TC_4 : C_TC {}; class C_TC_5 : C_TC {}; class C_TC_6 : C_TC {}; class C_TC_7 : C_TC {}; class C_TC_8 : C_TC {}; class C_TC_9 : C_TC {}; class C_TC_10 : C_TC {}; class C_TC_11 : C_TC {}; class C_TC_12 : C_TC {}; class C_TC_13 : C_TC {}; class C_TC_14 : C_TC {}; class C_TC_15 : C_TC {}; class C_TC_16 : C_TC {}; class C_TC_17 : C_TC {}; class C_TC_18 : C_TC {}; class C_TC_19 : C_TC {}; class C_TC_20 : C_TC {}; class C_TC_21 : C_TC {}; class C_TC_22 : C_TC {}; class C_TC_23 : C_TC {}; class C_TC_24 : C_TC {}; class C_TC_25 : C_TC {}; class C_TC_26 : C_TC {}; class C_TC_27 : C_TC {}; class C_TC_28 : C_TC {}; class C_TC_29 : C_TC {}; class C_TC_30 : C_TC {}; class C_TC_31 : C_TC {}; class C_TC_32 : C_TC {}; class C_TC_33 : C_TC {}; class C_TC_34 : C_TC {}; class C_TC_35 : C_TC {}; class C_TC_36 : C_TC {}; class C_TC_37 : C_TC {}; class C_TC_38 : C_TC {}; class C_TC_39 : C_TC {}; class C_TC_40 : C_TC {}; class C_TC_41 : C_TC {}; class C_TC_42 : C_TC {}; class C_TC_43 : C_TC {}; class C_TC_44 : C_TC {}; class C_TC_45 : C_TC {}; class C_TC_46 : C_TC {}; class C_TC_47 : C_TC {}; class C_TC_48 : C_TC {}; class C_TC_49 : C_TC {}; class C_TC_50 : C_TC {};

class C_C {         // CREWMAN
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Rifleman";
    headgear        = "H_HelmetCrew_I";
    goggles         = "rhs_ess_black";
    nvgoggles       = "rhsusf_ANPVS_15";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
    primaryWeapon   = _WEAPON_PRIMARY0;
    primaryWeaponAttachments[] = {
        "acc_pointer_IR"
    };
    
    secondaryWeapon = "";
    handgunWeapon = "";
    
    items[] = {};
    magazines[] = {};
    addItemsToUniform[] = {
        _QUA1(ACE_EarPlugs),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_CableTie),
        _QUA1(ACE_IR_Strobe_Item),
        _QUA1(ACE_Flashlight_MX991),
        _QUA2(Chemlight_Green),
        _QUA2(Chemlight_Red),
        _QUA2(_MAG_SECONDARY0)
    };
    addItemsToVest[] = {
        _QUA1(_GRENADE_SMOKE_GREEN),
        _QUA2(_GRENADE),
        _QUA2(_GRENADE_SMOKE),
        _QUA1(_GRENADE_SMOKE_BLUE),
        _QUA1(_GRENADE_SMOKE_YELLOW),
        _QUA3(_MAG_PRIMARY)								
    };
    addItemsToBackpack[] = {
        _QUA5(ACE_packingBandage),
        _QUA1(ACE_morphine),
        _QUA1(ACE_epinephrine),
        _QUA1(Toolkit)
    };
    
    binoculars      = "ACE_Vector";
    map             = "ItemMap";
    gps             = "ItemAndroid";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_C_1 : C_C {}; class C_C_2 : C_C {}; class C_C_3 : C_C {}; class C_C_4 : C_C {}; class C_C_5 : C_C {}; class C_C_6 : C_C {}; class C_C_7 : C_C {}; class C_C_8 : C_C {}; class C_C_9 : C_C {}; class C_C_10 : C_C {}; class C_C_11 : C_C {}; class C_C_12 : C_C {}; class C_C_13 : C_C {}; class C_C_14 : C_C {}; class C_C_15 : C_C {}; class C_C_16 : C_C {}; class C_C_17 : C_C {}; class C_C_18 : C_C {}; class C_C_19 : C_C {}; class C_C_20 : C_C {}; class C_C_21 : C_C {}; class C_C_22 : C_C {}; class C_C_23 : C_C {}; class C_C_24 : C_C {}; class C_C_25 : C_C {}; class C_C_26 : C_C {}; class C_C_27 : C_C {}; class C_C_28 : C_C {}; class C_C_29 : C_C {}; class C_C_30 : C_C {}; class C_C_31 : C_C {}; class C_C_32 : C_C {}; class C_C_33 : C_C {}; class C_C_34 : C_C {}; class C_C_35 : C_C {}; class C_C_36 : C_C {}; class C_C_37 : C_C {}; class C_C_38 : C_C {}; class C_C_39 : C_C {}; class C_C_40 : C_C {}; class C_C_41 : C_C {}; class C_C_42 : C_C {}; class C_C_43 : C_C {}; class C_C_44 : C_C {}; class C_C_45 : C_C {}; class C_C_46 : C_C {}; class C_C_47 : C_C {}; class C_C_48 : C_C {}; class C_C_49 : C_C {}; class C_C_50 : C_C {};

class C_TG {        // TANK GUNNER / CLS
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Rifleman";
    headgear        = "H_HelmetCrew_I";
    goggles         = "rhs_ess_black";
    nvgoggles       = "rhsusf_ANPVS_15";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
    primaryWeapon   = _WEAPON_PRIMARY0;
    primaryWeaponAttachments[] = {
        _WEAPON_ATTACHMENT0
    };
    
    secondaryWeapon = "";
    handgunWeapon = "";
    
    items[] = {};
    magazines[] = {};
    addItemsToUniform[] = {
        _QUA1(ACE_EarPlugs),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_CableTie),
        _QUA1(ACE_IR_Strobe_Item),
        _QUA1(ACE_Flashlight_MX991),
        _QUA2(Chemlight_Green),
        _QUA2(Chemlight_Red),
        _QUA2(_MAG_SECONDARY0)
    };
    addItemsToVest[] = {
        _QUA1(_GRENADE_SMOKE_GREEN),
        _QUA2(_GRENADE),
        _QUA2(_GRENADE_SMOKE),
        _QUA1(_GRENADE_SMOKE_BLUE),
        _QUA1(_GRENADE_SMOKE_YELLOW),
        _QUA3(_MAG_PRIMARY)
    };
    addItemsToBackpack[] = {
        _QUA5(ACE_packingBandage),
        _QUA1(ACE_morphine),
        _QUA1(ACE_epinephrine),
        _QUA1(Toolkit)
    };
    
    binoculars      = "ACE_Vector";
    map             = "ItemMap";
    gps             = "ItemAndroid";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_TG_1 : C_TG {}; class C_TG_2 : C_TG {}; class C_TG_3 : C_TG {}; class C_TG_4 : C_TG {}; class C_TG_5 : C_TG {}; class C_TG_6 : C_TG {}; class C_TG_7 : C_TG {}; class C_TG_8 : C_TG {}; class C_TG_9 : C_TG {}; class C_TG_10 : C_TG {}; class C_TG_11 : C_TG {}; class C_TG_12 : C_TG {}; class C_TG_13 : C_TG {}; class C_TG_14 : C_TG {}; class C_TG_15 : C_TG {}; class C_TG_16 : C_TG {}; class C_TG_17 : C_TG {}; class C_TG_18 : C_TG {}; class C_TG_19 : C_TG {}; class C_TG_20 : C_TG {}; class C_TG_21 : C_TG {}; class C_TG_22 : C_TG {}; class C_TG_23 : C_TG {}; class C_TG_24 : C_TG {}; class C_TG_25 : C_TG {}; class C_TG_26 : C_TG {}; class C_TG_27 : C_TG {}; class C_TG_28 : C_TG {}; class C_TG_29 : C_TG {}; class C_TG_30 : C_TG {}; class C_TG_31 : C_TG {}; class C_TG_32 : C_TG {}; class C_TG_33 : C_TG {}; class C_TG_34 : C_TG {}; class C_TG_35 : C_TG {}; class C_TG_36 : C_TG {}; class C_TG_37 : C_TG {}; class C_TG_38 : C_TG {}; class C_TG_39 : C_TG {}; class C_TG_40 : C_TG {}; class C_TG_41 : C_TG {}; class C_TG_42 : C_TG {}; class C_TG_43 : C_TG {}; class C_TG_44 : C_TG {}; class C_TG_45 : C_TG {}; class C_TG_46 : C_TG {}; class C_TG_47 : C_TG {}; class C_TG_48 : C_TG {}; class C_TG_49 : C_TG {}; class C_TG_50 : C_TG {};

class C_TL {        // TANK LOADER
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Rifleman";
    headgear        = "H_HelmetCrew_I";
    goggles         = "rhs_ess_black";
    nvgoggles       = "rhsusf_ANPVS_15";
    backpack        = _GEAR_BACKPACK_RADIO1;
    
    primaryWeapon   = _WEAPON_PRIMARY_AR1;
    primaryWeaponAttachments[] = {
    };
    
    secondaryWeapon = "";
    handgunWeapon = "";
    
    items[] = {};
    magazines[] = {};
    addItemsToUniform[] = {	
    _QUA1(_ITEM_EARPLUGS),
    _QUA1(_ITEM_MAPTOOL),
    _QUA1(_ITEM_CABLETIE),
    _QUA1(_ITEM_STROBE),
    _QUA1(_ITEM_FLASHLIGHT),
    _QUA2(_CHEMLIGHT_GREEN),
    _QUA2(_CHEMLIGHT_RED),
    _QUA2(_MAG_SECONDARY0)	  
    };
    addItemsToVest[] = {	
    _QUA1(_GRENADE_SMOKE_GREEN),
    _QUA2(_GRENADE),
    _QUA2(_GRENADE_SMOKE),
    _QUA1(_GRENADE_SMOKE_BLUE),
    _QUA1(_GRENADE_SMOKE_YELLOW),
    _QUA1(_MAG_AR1)	
    };
    addItemsToBackpack[] = {	
    };
    
    binoculars      = "ACE_Vector";
    map             = "ItemMap";
    gps             = "ItemAndroid";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_TL_1 : C_TL {}; class C_TL_2 : C_TL {}; class C_TL_3 : C_TL {}; class C_TL_4 : C_TL {}; class C_TL_5 : C_TL {}; class C_TL_6 : C_TL {}; class C_TL_7 : C_TL {}; class C_TL_8 : C_TL {}; class C_TL_9 : C_TL {}; class C_TL_10 : C_TL {}; class C_TL_11 : C_TL {}; class C_TL_12 : C_TL {}; class C_TL_13 : C_TL {}; class C_TL_14 : C_TL {}; class C_TL_15 : C_TL {}; class C_TL_16 : C_TL {}; class C_TL_17 : C_TL {}; class C_TL_18 : C_TL {}; class C_TL_19 : C_TL {}; class C_TL_20 : C_TL {}; class C_TL_21 : C_TL {}; class C_TL_22 : C_TL {}; class C_TL_23 : C_TL {}; class C_TL_24 : C_TL {}; class C_TL_25 : C_TL {}; class C_TL_26 : C_TL {}; class C_TL_27 : C_TL {}; class C_TL_28 : C_TL {}; class C_TL_29 : C_TL {}; class C_TL_30 : C_TL {}; class C_TL_31 : C_TL {}; class C_TL_32 : C_TL {}; class C_TL_33 : C_TL {}; class C_TL_34 : C_TL {}; class C_TL_35 : C_TL {}; class C_TL_36 : C_TL {}; class C_TL_37 : C_TL {}; class C_TL_38 : C_TL {}; class C_TL_39 : C_TL {}; class C_TL_40 : C_TL {}; class C_TL_41 : C_TL {}; class C_TL_42 : C_TL {}; class C_TL_43 : C_TL {}; class C_TL_44 : C_TL {}; class C_TL_45 : C_TL {}; class C_TL_46 : C_TL {}; class C_TL_47 : C_TL {}; class C_TL_48 : C_TL {}; class C_TL_49 : C_TL {}; class C_TL_50 : C_TL {};

class C_P {         // HELICOPTER PILOT
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Teamleader";
    headgear        = "H_PilotHelmetHeli_B";
    nvgoggles       = "rhsusf_ANPVS_15";
    backpack        = "";
    
    primaryWeapon   = _WEAPON_PRIMARY0;
    primaryWeaponAttachments[] = {
        "acc_pointer_IR",
        "RH_ta31rmr_2D"
    };
    
    secondaryWeapon = "";
    handgunWeapon = "";
    
    items[] = {};
    magazines[] = {};
    addItemsToUniform[] = {
        _QUA10(ACE_packingBandage),
        _QUA2(ACE_morphine),
        _QUA2(ACE_epinephrine),
        _QUA1(ACE_tourniquet),
        
        _QUA2(ACE_CableTie),
        
        //_QUA1(_ITEM_RADIO1),
        //_QUA1(_ITEM_RADIOADD),
        
        _QUA1(ACE_EarPlugs),
        _QUA1(ACE_Flashlight_MX991),
        _QUA1(ACE_DAGR),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_IR_Strobe_Item),	
        _QUA2(_GRENADE_SMOKE)						
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA2(_GRENADE_SMOKE_GREEN),	
        _QUA2(_GRENADE_SMOKE_YELLOW),	
        _QUA2(_GRENADE_SMOKE_RED),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA1(itemcTabHCam)								
    };
    
    binoculars      = "Binocular";
    map             = "ItemMap";
    gps             = "ItemcTab";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_P_1 : C_P {}; class C_P_2 : C_P {}; class C_P_3 : C_P {}; class C_P_4 : C_P {}; class C_P_5 : C_P {}; class C_P_6 : C_P {}; class C_P_7 : C_P {}; class C_P_8 : C_P {}; class C_P_9 : C_P {}; class C_P_10 : C_P {}; class C_P_11 : C_P {}; class C_P_12 : C_P {}; class C_P_13 : C_P {}; class C_P_14 : C_P {}; class C_P_15 : C_P {}; class C_P_16 : C_P {}; class C_P_17 : C_P {}; class C_P_18 : C_P {}; class C_P_19 : C_P {}; class C_P_20 : C_P {}; class C_P_21 : C_P {}; class C_P_22 : C_P {}; class C_P_23 : C_P {}; class C_P_24 : C_P {}; class C_P_25 : C_P {}; class C_P_26 : C_P {}; class C_P_27 : C_P {}; class C_P_28 : C_P {}; class C_P_29 : C_P {}; class C_P_30 : C_P {}; class C_P_31 : C_P {}; class C_P_32 : C_P {}; class C_P_33 : C_P {}; class C_P_34 : C_P {}; class C_P_35 : C_P {}; class C_P_36 : C_P {}; class C_P_37 : C_P {}; class C_P_38 : C_P {}; class C_P_39 : C_P {}; class C_P_40 : C_P {}; class C_P_41 : C_P {}; class C_P_42 : C_P {}; class C_P_43 : C_P {}; class C_P_44 : C_P {}; class C_P_45 : C_P {}; class C_P_46 : C_P {}; class C_P_47 : C_P {}; class C_P_48 : C_P {}; class C_P_49 : C_P {}; class C_P_50 : C_P {};

class C_PC {        // HELICOPTER CREW
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Teamleader";
    headgear        = "H_CrewHelmetHeli_B";
    nvgoggles       = "rhsusf_ANPVS_15";
    backpack        = "";
    
    primaryWeapon   = _WEAPON_PRIMARY0;
    primaryWeaponAttachments[] = {
        "acc_pointer_IR",
        "RH_ta31rmr_2D"
    };
    
    secondaryWeapon = "";
    handgunWeapon = "";
    
    items[] = {};
    magazines[] = {};
    addItemsToUniform[] = {
        _QUA10(ACE_packingBandage),
        _QUA2(ACE_morphine),
        _QUA2(ACE_epinephrine),
        _QUA1(ACE_tourniquet),
        
        _QUA2(ACE_CableTie),
        
        //_QUA1(_ITEM_RADIO1),
        //_QUA1(_ITEM_RADIOADD),
        
        _QUA1(ACE_EarPlugs),
        _QUA1(ACE_Flashlight_MX991),
        _QUA1(ACE_DAGR),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_IR_Strobe_Item),	
        _QUA2(_GRENADE_SMOKE)						
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA2(_GRENADE_SMOKE_GREEN),	
        _QUA2(_GRENADE_SMOKE_YELLOW),	
        _QUA2(_GRENADE_SMOKE_RED),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA1(itemcTabHCam)								
    };
    
    binoculars      = "Binocular";
    map             = "ItemMap";
    gps             = "ItemcTab";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_PC_1 : C_PC {}; class C_PC_2 : C_PC {}; class C_PC_3 : C_PC {}; class C_PC_4 : C_PC {}; class C_PC_5 : C_PC {}; class C_PC_6 : C_PC {}; class C_PC_7 : C_PC {}; class C_PC_8 : C_PC {}; class C_PC_9 : C_PC {}; class C_PC_10 : C_PC {}; class C_PC_11 : C_PC {}; class C_PC_12 : C_PC {}; class C_PC_13 : C_PC {}; class C_PC_14 : C_PC {}; class C_PC_15 : C_PC {}; class C_PC_16 : C_PC {}; class C_PC_17 : C_PC {}; class C_PC_18 : C_PC {}; class C_PC_19 : C_PC {}; class C_PC_20 : C_PC {}; class C_PC_21 : C_PC {}; class C_PC_22 : C_PC {}; class C_PC_23 : C_PC {}; class C_PC_24 : C_PC {}; class C_PC_25 : C_PC {}; class C_PC_26 : C_PC {}; class C_PC_27 : C_PC {}; class C_PC_28 : C_PC {}; class C_PC_29 : C_PC {}; class C_PC_30 : C_PC {}; class C_PC_31 : C_PC {}; class C_PC_32 : C_PC {}; class C_PC_33 : C_PC {}; class C_PC_34 : C_PC {}; class C_PC_35 : C_PC {}; class C_PC_36 : C_PC {}; class C_PC_37 : C_PC {}; class C_PC_38 : C_PC {}; class C_PC_39 : C_PC {}; class C_PC_40 : C_PC {}; class C_PC_41 : C_PC {}; class C_PC_42 : C_PC {}; class C_PC_43 : C_PC {}; class C_PC_44 : C_PC {}; class C_PC_45 : C_PC {}; class C_PC_46 : C_PC {}; class C_PC_47 : C_PC {}; class C_PC_48 : C_PC {}; class C_PC_49 : C_PC {}; class C_PC_50 : C_PC {};

class C_PG {        // PILOT
    uniform         = "U_B_PilotCoveralls";
    vest            = "V_TacVest_blk";
    headgear        = "H_PilotHelmetFighter_B";
    nvgoggles       = "rhsusf_ANPVS_15";
    backpack        = "ACE_NonSteerableParachute";
    
    primaryWeapon   = _WEAPON_PRIMARY0;
    primaryWeaponAttachments[] = {
        "acc_pointer_IR"
    };
    
    secondaryWeapon = "";
    handgunWeapon = "";
    
    items[] = {};
    magazines[] = {};
    addItemsToUniform[] = {
        _QUA10(ACE_packingBandage),
        _QUA2(ACE_morphine),
        _QUA2(ACE_epinephrine),
        _QUA1(ACE_tourniquet),
        
        _QUA2(ACE_CableTie),
        
        //_QUA1(_ITEM_RADIO1),
        //_QUA1(_ITEM_RADIOADD),
        
        _QUA1(ACE_EarPlugs),
        _QUA1(ACE_Flashlight_MX991),
        _QUA1(ACE_DAGR),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_IR_Strobe_Item),	
        _QUA2(_GRENADE_SMOKE)						
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA2(_GRENADE_SMOKE_GREEN),	
        _QUA2(_GRENADE_SMOKE_YELLOW),	
        _QUA2(_GRENADE_SMOKE_RED),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA1(itemcTabHCam)								
    };
    
    binoculars      = "Binocular";
    map             = "ItemMap";
    gps             = "ItemcTab";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_PG_1 : C_PG {}; class C_PG_2 : C_PG {}; class C_PG_3 : C_PG {}; class C_PG_4 : C_PG {}; class C_PG_5 : C_PG {}; class C_PG_6 : C_PG {}; class C_PG_7 : C_PG {}; class C_PG_8 : C_PG {}; class C_PG_9 : C_PG {}; class C_PG_10 : C_PG {}; class C_PG_11 : C_PG {}; class C_PG_12 : C_PG {}; class C_PG_13 : C_PG {}; class C_PG_14 : C_PG {}; class C_PG_15 : C_PG {}; class C_PG_16 : C_PG {}; class C_PG_17 : C_PG {}; class C_PG_18 : C_PG {}; class C_PG_19 : C_PG {}; class C_PG_20 : C_PG {}; class C_PG_21 : C_PG {}; class C_PG_22 : C_PG {}; class C_PG_23 : C_PG {}; class C_PG_24 : C_PG {}; class C_PG_25 : C_PG {}; class C_PG_26 : C_PG {}; class C_PG_27 : C_PG {}; class C_PG_28 : C_PG {}; class C_PG_29 : C_PG {}; class C_PG_30 : C_PG {}; class C_PG_31 : C_PG {}; class C_PG_32 : C_PG {}; class C_PG_33 : C_PG {}; class C_PG_34 : C_PG {}; class C_PG_35 : C_PG {}; class C_PG_36 : C_PG {}; class C_PG_37 : C_PG {}; class C_PG_38 : C_PG {}; class C_PG_39 : C_PG {}; class C_PG_40 : C_PG {}; class C_PG_41 : C_PG {}; class C_PG_42 : C_PG {}; class C_PG_43 : C_PG {}; class C_PG_44 : C_PG {}; class C_PG_45 : C_PG {}; class C_PG_46 : C_PG {}; class C_PG_47 : C_PG {}; class C_PG_48 : C_PG {}; class C_PG_49 : C_PG {}; class C_PG_50 : C_PG {};
