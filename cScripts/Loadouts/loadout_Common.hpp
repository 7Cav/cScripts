/*
GearVersionDate: 160426
*/

class C_SL {            // SQUAD LEADER
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Squadleader";
    headgear        = "rhsusf_ach_helmet_headset_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
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
        _QUA1(ACE_microDAGR),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_IR_Strobe_Item),
        _QUA2(_GRENADE),		
        _QUA2(_GRENADE_SMOKE_GREEN)						
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA2(_GRENADE),	
        _QUA2(_GRENADE_SMOKE_GREEN),	
        _QUA2(_GRENADE_SMOKE_YELLOW),	
        _QUA2(_GRENADE_SMOKE_RED),	
        _QUA4(_GRENADE_SMOKE),		
        _QUA1(ACE_HuntIR_monitor),	
        _QUA1(itemcTabHCam)								
    };
    addItemsToBackpack[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red)						
    };
    
    binoculars      = "ACE_Vector";
    map             = "ItemMap";
    gps             = "ItemAndroid";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_SL_1 : C_SL {}; class C_SL_2 : C_SL {}; class C_SL_3 : C_SL {}; class C_SL_4 : C_SL {}; class C_SL_5 : C_SL {}; class C_SL_6 : C_SL {}; class C_SL_7 : C_SL {}; class C_SL_8 : C_SL {}; class C_SL_9 : C_SL {}; class C_SL_10 : C_SL {}; class C_SL_11 : C_SL {}; class C_SL_12 : C_SL {}; class C_SL_13 : C_SL {}; class C_SL_14 : C_SL {}; class C_SL_15 : C_SL {}; class C_SL_16 : C_SL {}; class C_SL_17 : C_SL {}; class C_SL_18 : C_SL {}; class C_SL_19 : C_SL {}; class C_SL_20 : C_SL {}; class C_SL_21 : C_SL {}; class C_SL_22 : C_SL {}; class C_SL_23 : C_SL {}; class C_SL_24 : C_SL {}; class C_SL_25 : C_SL {}; class C_SL_26 : C_SL {}; class C_SL_27 : C_SL {}; class C_SL_28 : C_SL {}; class C_SL_29 : C_SL {}; class C_SL_30 : C_SL {}; class C_SL_31 : C_SL {}; class C_SL_32 : C_SL {}; class C_SL_33 : C_SL {}; class C_SL_34 : C_SL {}; class C_SL_35 : C_SL {}; class C_SL_36 : C_SL {}; class C_SL_37 : C_SL {}; class C_SL_38 : C_SL {}; class C_SL_39 : C_SL {}; class C_SL_40 : C_SL {}; class C_SL_41 : C_SL {}; class C_SL_42 : C_SL {}; class C_SL_43 : C_SL {}; class C_SL_44 : C_SL {}; class C_SL_45 : C_SL {}; class C_SL_46 : C_SL {}; class C_SL_47 : C_SL {}; class C_SL_48 : C_SL {}; class C_SL_49 : C_SL {}; class C_SL_50 : C_SL {};

class C_FTL {           // FIRE TEAM LEADER
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Teamleader";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
    primaryWeapon   = _WEAPON_PRIMARY_GL0;
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
        _QUA1(ACE_microDAGR),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_IR_Strobe_Item),
        _QUA2(_GRENADE)
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA4(_GLSHELL0),	
        _QUA4(_GLSHELL1),	
        _QUA4(_GLSHELLSMOKE),	
        _QUA4(_GLSHELLHUNTIR),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA4(_GLSHELL0),	
        _QUA4(_GLSHELL1),	
        _QUA4(_GLSHELLSMOKE),	
        _QUA4(_GLSHELLHUNTIR),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(_GLFLARE),
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red)						
    };
    
    binoculars      = "ACE_Vector";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_FTL_1 : C_FTL {}; class C_FTL_2 : C_FTL {}; class C_FTL_3 : C_FTL {}; class C_FTL_4 : C_FTL {}; class C_FTL_5 : C_FTL {}; class C_FTL_6 : C_FTL {}; class C_FTL_7 : C_FTL {}; class C_FTL_8 : C_FTL {}; class C_FTL_9 : C_FTL {}; class C_FTL_10 : C_FTL {}; class C_FTL_11 : C_FTL {}; class C_FTL_12 : C_FTL {}; class C_FTL_13 : C_FTL {}; class C_FTL_14 : C_FTL {}; class C_FTL_15 : C_FTL {}; class C_FTL_16 : C_FTL {}; class C_FTL_17 : C_FTL {}; class C_FTL_18 : C_FTL {}; class C_FTL_19 : C_FTL {}; class C_FTL_20 : C_FTL {}; class C_FTL_21 : C_FTL {}; class C_FTL_22 : C_FTL {}; class C_FTL_23 : C_FTL {}; class C_FTL_24 : C_FTL {}; class C_FTL_25 : C_FTL {}; class C_FTL_26 : C_FTL {}; class C_FTL_27 : C_FTL {}; class C_FTL_28 : C_FTL {}; class C_FTL_29 : C_FTL {}; class C_FTL_30 : C_FTL {}; class C_FTL_31 : C_FTL {}; class C_FTL_32 : C_FTL {}; class C_FTL_33 : C_FTL {}; class C_FTL_34 : C_FTL {}; class C_FTL_35 : C_FTL {}; class C_FTL_36 : C_FTL {}; class C_FTL_37 : C_FTL {}; class C_FTL_38 : C_FTL {}; class C_FTL_39 : C_FTL {}; class C_FTL_40 : C_FTL {}; class C_FTL_41 : C_FTL {}; class C_FTL_42 : C_FTL {}; class C_FTL_43 : C_FTL {}; class C_FTL_44 : C_FTL {}; class C_FTL_45 : C_FTL {}; class C_FTL_46 : C_FTL {}; class C_FTL_47 : C_FTL {}; class C_FTL_48 : C_FTL {}; class C_FTL_49 : C_FTL {}; class C_FTL_50 : C_FTL {};

class C_R {             // RIFLEMAN
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Rifleman";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
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
        _QUA2(_GRENADE)
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red)						
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_R_1 : C_R {}; class C_R_2 : C_R {}; class C_R_3 : C_R {}; class C_R_4 : C_R {}; class C_R_5 : C_R {}; class C_R_6 : C_R {}; class C_R_7 : C_R {}; class C_R_8 : C_R {}; class C_R_9 : C_R {}; class C_R_10 : C_R {}; class C_R_11 : C_R {}; class C_R_12 : C_R {}; class C_R_13 : C_R {}; class C_R_14 : C_R {}; class C_R_15 : C_R {}; class C_R_16 : C_R {}; class C_R_17 : C_R {}; class C_R_18 : C_R {}; class C_R_19 : C_R {}; class C_R_20 : C_R {}; class C_R_21 : C_R {}; class C_R_22 : C_R {}; class C_R_23 : C_R {}; class C_R_24 : C_R {}; class C_R_25 : C_R {}; class C_R_26 : C_R {}; class C_R_27 : C_R {}; class C_R_28 : C_R {}; class C_R_29 : C_R {}; class C_R_30 : C_R {}; class C_R_31 : C_R {}; class C_R_32 : C_R {}; class C_R_33 : C_R {}; class C_R_34 : C_R {}; class C_R_35 : C_R {}; class C_R_36 : C_R {}; class C_R_37 : C_R {}; class C_R_38 : C_R {}; class C_R_39 : C_R {}; class C_R_40 : C_R {}; class C_R_41 : C_R {}; class C_R_42 : C_R {}; class C_R_43 : C_R {}; class C_R_44 : C_R {}; class C_R_45 : C_R {}; class C_R_46 : C_R {}; class C_R_47 : C_R {}; class C_R_48 : C_R {}; class C_R_49 : C_R {}; class C_R_50 : C_R {};

class C_G {             // GRENADIER
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Grenadier";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
    primaryWeapon   = _WEAPON_PRIMARY_GL0;
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
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA4(_GLSHELL0),	
        _QUA4(_GLSHELL1),	
        _QUA4(_GLSHELLSMOKE),	
        _QUA4(_GLSHELLHUNTIR),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA4(_GLSHELL0),	
        _QUA4(_GLSHELL1),	
        _QUA4(_GLSHELLSMOKE),	
        _QUA4(_GLSHELLHUNTIR),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(_GLFLARE),
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red)						
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_G_1 : C_G {}; class C_G_2 : C_G {}; class C_G_3 : C_G {}; class C_G_4 : C_G {}; class C_G_5 : C_G {}; class C_G_6 : C_G {}; class C_G_7 : C_G {}; class C_G_8 : C_G {}; class C_G_9 : C_G {}; class C_G_10 : C_G {}; class C_G_11 : C_G {}; class C_G_12 : C_G {}; class C_G_13 : C_G {}; class C_G_14 : C_G {}; class C_G_15 : C_G {}; class C_G_16 : C_G {}; class C_G_17 : C_G {}; class C_G_18 : C_G {}; class C_G_19 : C_G {}; class C_G_20 : C_G {}; class C_G_21 : C_G {}; class C_G_22 : C_G {}; class C_G_23 : C_G {}; class C_G_24 : C_G {}; class C_G_25 : C_G {}; class C_G_26 : C_G {}; class C_G_27 : C_G {}; class C_G_28 : C_G {}; class C_G_29 : C_G {}; class C_G_30 : C_G {}; class C_G_31 : C_G {}; class C_G_32 : C_G {}; class C_G_33 : C_G {}; class C_G_34 : C_G {}; class C_G_35 : C_G {}; class C_G_36 : C_G {}; class C_G_37 : C_G {}; class C_G_38 : C_G {}; class C_G_39 : C_G {}; class C_G_40 : C_G {}; class C_G_41 : C_G {}; class C_G_42 : C_G {}; class C_G_43 : C_G {}; class C_G_44 : C_G {}; class C_G_45 : C_G {}; class C_G_46 : C_G {}; class C_G_47 : C_G {}; class C_G_48 : C_G {}; class C_G_49 : C_G {}; class C_G_50 : C_G {};


// AR
class C_AR {            // AUTOMATIC RIFLEMAN LIGHT
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_SAW";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
    primaryWeapon   = _WEAPON_PRIMARY_AR0;
    primaryWeaponAttachments[] = {
        "acc_pointer_IR",
        "rhsusf_acc_ACOG"
    };
    
    secondaryWeapon = "";
    handgunWeapon = _WEAPON_SECONDARY0;
    
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
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA2(_MAG_AR0),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {
        _QUA2(_MAG_AR0),
        _QUA2(rhsusf_mag_15Rnd_9x19_JHP),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red)						
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_AR_1 : C_AR {}; class C_AR_2 : C_AR {}; class C_AR_3 : C_AR {}; class C_AR_4 : C_AR {}; class C_AR_5 : C_AR {}; class C_AR_6 : C_AR {}; class C_AR_7 : C_AR {}; class C_AR_8 : C_AR {}; class C_AR_9 : C_AR {}; class C_AR_10 : C_AR {}; class C_AR_11 : C_AR {}; class C_AR_12 : C_AR {}; class C_AR_13 : C_AR {}; class C_AR_14 : C_AR {}; class C_AR_15 : C_AR {}; class C_AR_16 : C_AR {}; class C_AR_17 : C_AR {}; class C_AR_18 : C_AR {}; class C_AR_19 : C_AR {}; class C_AR_20 : C_AR {}; class C_AR_21 : C_AR {}; class C_AR_22 : C_AR {}; class C_AR_23 : C_AR {}; class C_AR_24 : C_AR {}; class C_AR_25 : C_AR {}; class C_AR_26 : C_AR {}; class C_AR_27 : C_AR {}; class C_AR_28 : C_AR {}; class C_AR_29 : C_AR {}; class C_AR_30 : C_AR {}; class C_AR_31 : C_AR {}; class C_AR_32 : C_AR {}; class C_AR_33 : C_AR {}; class C_AR_34 : C_AR {}; class C_AR_35 : C_AR {}; class C_AR_36 : C_AR {}; class C_AR_37 : C_AR {}; class C_AR_38 : C_AR {}; class C_AR_39 : C_AR {}; class C_AR_40 : C_AR {}; class C_AR_41 : C_AR {}; class C_AR_42 : C_AR {}; class C_AR_43 : C_AR {}; class C_AR_44 : C_AR {}; class C_AR_45 : C_AR {}; class C_AR_46 : C_AR {}; class C_AR_47 : C_AR {}; class C_AR_48 : C_AR {}; class C_AR_49 : C_AR {}; class C_AR_50 : C_AR {};
class C_ARL : C_AR {}; 
class C_ARL_1 : C_ARL {}; class C_ARL_2 : C_ARL {}; class C_ARL_3 : C_ARL {}; class C_ARL_4 : C_ARL {}; class C_ARL_5 : C_ARL {}; class C_ARL_6 : C_ARL {}; class C_ARL_7 : C_ARL {}; class C_ARL_8 : C_ARL {}; class C_ARL_9 : C_ARL {}; class C_ARL_10 : C_ARL {}; class C_ARL_11 : C_ARL {}; class C_ARL_12 : C_ARL {}; class C_ARL_13 : C_ARL {}; class C_ARL_14 : C_ARL {}; class C_ARL_15 : C_ARL {}; class C_ARL_16 : C_ARL {}; class C_ARL_17 : C_ARL {}; class C_ARL_18 : C_ARL {}; class C_ARL_19 : C_ARL {}; class C_ARL_20 : C_ARL {}; class C_ARL_21 : C_ARL {}; class C_ARL_22 : C_ARL {}; class C_ARL_23 : C_ARL {}; class C_ARL_24 : C_ARL {}; class C_ARL_25 : C_ARL {}; class C_ARL_26 : C_ARL {}; class C_ARL_27 : C_ARL {}; class C_ARL_28 : C_ARL {}; class C_ARL_29 : C_ARL {}; class C_ARL_30 : C_ARL {}; class C_ARL_31 : C_ARL {}; class C_ARL_32 : C_ARL {}; class C_ARL_33 : C_ARL {}; class C_ARL_34 : C_ARL {}; class C_ARL_35 : C_ARL {}; class C_ARL_36 : C_ARL {}; class C_ARL_37 : C_ARL {}; class C_ARL_38 : C_ARL {}; class C_ARL_39 : C_ARL {}; class C_ARL_40 : C_ARL {}; class C_ARL_41 : C_ARL {}; class C_ARL_42 : C_ARL {}; class C_ARL_43 : C_ARL {}; class C_ARL_44 : C_ARL {}; class C_ARL_45 : C_ARL {}; class C_ARL_46 : C_ARL {}; class C_ARL_47 : C_ARL {}; class C_ARL_48 : C_ARL {}; class C_ARL_49 : C_ARL {}; class C_ARL_50 : C_ARL {};

class C_AR2 {           // AUTOMATIC RIFLEMAN MEDIUM
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_SAW";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
    primaryWeapon   = _WEAPON_PRIMARY_AR1;
    primaryWeaponAttachments[] = {
        "acc_pointer_IR",
        "rhsusf_acc_ELCAN"
    };
    
    secondaryWeapon = "";
    handgunWeapon = _WEAPON_SECONDARY0;
    
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
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA2(_MAG_AR1),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {
        _QUA3(_MAG_AR1),
        _QUA2(rhsusf_mag_15Rnd_9x19_JHP),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red)						
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_AR2_1 : C_AR2 {}; class C_AR2_2 : C_AR2 {}; class C_AR2_3 : C_AR2 {}; class C_AR2_4 : C_AR2 {}; class C_AR2_5 : C_AR2 {}; class C_AR2_6 : C_AR2 {}; class C_AR2_7 : C_AR2 {}; class C_AR2_8 : C_AR2 {}; class C_AR2_9 : C_AR2 {}; class C_AR2_10 : C_AR2 {}; class C_AR2_11 : C_AR2 {}; class C_AR2_12 : C_AR2 {}; class C_AR2_13 : C_AR2 {}; class C_AR2_14 : C_AR2 {}; class C_AR2_15 : C_AR2 {}; class C_AR2_16 : C_AR2 {}; class C_AR2_17 : C_AR2 {}; class C_AR2_18 : C_AR2 {}; class C_AR2_19 : C_AR2 {}; class C_AR2_20 : C_AR2 {}; class C_AR2_21 : C_AR2 {}; class C_AR2_22 : C_AR2 {}; class C_AR2_23 : C_AR2 {}; class C_AR2_24 : C_AR2 {}; class C_AR2_25 : C_AR2 {}; class C_AR2_26 : C_AR2 {}; class C_AR2_27 : C_AR2 {}; class C_AR2_28 : C_AR2 {}; class C_AR2_29 : C_AR2 {}; class C_AR2_30 : C_AR2 {}; class C_AR2_31 : C_AR2 {}; class C_AR2_32 : C_AR2 {}; class C_AR2_33 : C_AR2 {}; class C_AR2_34 : C_AR2 {}; class C_AR2_35 : C_AR2 {}; class C_AR2_36 : C_AR2 {}; class C_AR2_37 : C_AR2 {}; class C_AR2_38 : C_AR2 {}; class C_AR2_39 : C_AR2 {}; class C_AR2_40 : C_AR2 {}; class C_AR2_41 : C_AR2 {}; class C_AR2_42 : C_AR2 {}; class C_AR2_43 : C_AR2 {}; class C_AR2_44 : C_AR2 {}; class C_AR2_45 : C_AR2 {}; class C_AR2_46 : C_AR2 {}; class C_AR2_47 : C_AR2 {}; class C_AR2_48 : C_AR2 {}; class C_AR2_49 : C_AR2 {}; class C_AR2_50 : C_AR2 {};
class C_ARM : C_AR2 {}; 
class C_ARM_1 : C_ARM {}; class C_ARM_2 : C_ARM {}; class C_ARM_3 : C_ARM {}; class C_ARM_4 : C_ARM {}; class C_ARM_5 : C_ARM {}; class C_ARM_6 : C_ARM {}; class C_ARM_7 : C_ARM {}; class C_ARM_8 : C_ARM {}; class C_ARM_9 : C_ARM {}; class C_ARM_10 : C_ARM {}; class C_ARM_11 : C_ARM {}; class C_ARM_12 : C_ARM {}; class C_ARM_13 : C_ARM {}; class C_ARM_14 : C_ARM {}; class C_ARM_15 : C_ARM {}; class C_ARM_16 : C_ARM {}; class C_ARM_17 : C_ARM {}; class C_ARM_18 : C_ARM {}; class C_ARM_19 : C_ARM {}; class C_ARM_20 : C_ARM {}; class C_ARM_21 : C_ARM {}; class C_ARM_22 : C_ARM {}; class C_ARM_23 : C_ARM {}; class C_ARM_24 : C_ARM {}; class C_ARM_25 : C_ARM {}; class C_ARM_26 : C_ARM {}; class C_ARM_27 : C_ARM {}; class C_ARM_28 : C_ARM {}; class C_ARM_29 : C_ARM {}; class C_ARM_30 : C_ARM {}; class C_ARM_31 : C_ARM {}; class C_ARM_32 : C_ARM {}; class C_ARM_33 : C_ARM {}; class C_ARM_34 : C_ARM {}; class C_ARM_35 : C_ARM {}; class C_ARM_36 : C_ARM {}; class C_ARM_37 : C_ARM {}; class C_ARM_38 : C_ARM {}; class C_ARM_39 : C_ARM {}; class C_ARM_40 : C_ARM {}; class C_ARM_41 : C_ARM {}; class C_ARM_42 : C_ARM {}; class C_ARM_43 : C_ARM {}; class C_ARM_44 : C_ARM {}; class C_ARM_45 : C_ARM {}; class C_ARM_46 : C_ARM {}; class C_ARM_47 : C_ARM {}; class C_ARM_48 : C_ARM {}; class C_ARM_49 : C_ARM {}; class C_ARM_50 : C_ARM {};


// Missile
class C_AT {            // ANTI-TANK JAV
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Rifleman";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
    primaryWeapon   = _WEAPON_PRIMARY0;
    primaryWeaponAttachments[] = {
        "acc_pointer_IR",
        "RH_ta31rmr_2D"
    };
    
    secondaryWeapon = _WEAPON_LAUNCHER0;
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
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA6(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {
        _QUA2(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red),
        _QUA1(_MAG_LAUNCHER0)						
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_AT_1 : C_AT {}; class C_AT_2 : C_AT {}; class C_AT_3 : C_AT {}; class C_AT_4 : C_AT {}; class C_AT_5 : C_AT {}; class C_AT_6 : C_AT {}; class C_AT_7 : C_AT {}; class C_AT_8 : C_AT {}; class C_AT_9 : C_AT {}; class C_AT_10 : C_AT {}; class C_AT_11 : C_AT {}; class C_AT_12 : C_AT {}; class C_AT_13 : C_AT {}; class C_AT_14 : C_AT {}; class C_AT_15 : C_AT {}; class C_AT_16 : C_AT {}; class C_AT_17 : C_AT {}; class C_AT_18 : C_AT {}; class C_AT_19 : C_AT {}; class C_AT_20 : C_AT {}; class C_AT_21 : C_AT {}; class C_AT_22 : C_AT {}; class C_AT_23 : C_AT {}; class C_AT_24 : C_AT {}; class C_AT_25 : C_AT {}; class C_AT_26 : C_AT {}; class C_AT_27 : C_AT {}; class C_AT_28 : C_AT {}; class C_AT_29 : C_AT {}; class C_AT_30 : C_AT {}; class C_AT_31 : C_AT {}; class C_AT_32 : C_AT {}; class C_AT_33 : C_AT {}; class C_AT_34 : C_AT {}; class C_AT_35 : C_AT {}; class C_AT_36 : C_AT {}; class C_AT_37 : C_AT {}; class C_AT_38 : C_AT {}; class C_AT_39 : C_AT {}; class C_AT_40 : C_AT {}; class C_AT_41 : C_AT {}; class C_AT_42 : C_AT {}; class C_AT_43 : C_AT {}; class C_AT_44 : C_AT {}; class C_AT_45 : C_AT {}; class C_AT_46 : C_AT {}; class C_AT_47 : C_AT {}; class C_AT_48 : C_AT {}; class C_AT_49 : C_AT {}; class C_AT_50 : C_AT {};

class C_ATM {           // ANTI-TANK MAAWS
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Rifleman";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
    primaryWeapon   = _WEAPON_PRIMARY0;
    primaryWeaponAttachments[] = {
        "acc_pointer_IR",
        "RH_ta31rmr_2D"
    };
    
    secondaryWeapon = _WEAPON_LAUNCHER3;
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
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA6(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {
        _QUA1(_MAG_LAUNCHER2),
        _QUA1(_MAG_LAUNCHER3)						
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_ATM_1 : C_ATM {}; class C_ATM_2 : C_ATM {}; class C_ATM_3 : C_ATM {}; class C_ATM_4 : C_ATM {}; class C_ATM_5 : C_ATM {}; class C_ATM_6 : C_ATM {}; class C_ATM_7 : C_ATM {}; class C_ATM_8 : C_ATM {}; class C_ATM_9 : C_ATM {}; class C_ATM_10 : C_ATM {}; class C_ATM_11 : C_ATM {}; class C_ATM_12 : C_ATM {}; class C_ATM_13 : C_ATM {}; class C_ATM_14 : C_ATM {}; class C_ATM_15 : C_ATM {}; class C_ATM_16 : C_ATM {}; class C_ATM_17 : C_ATM {}; class C_ATM_18 : C_ATM {}; class C_ATM_19 : C_ATM {}; class C_ATM_20 : C_ATM {}; class C_ATM_21 : C_ATM {}; class C_ATM_22 : C_ATM {}; class C_ATM_23 : C_ATM {}; class C_ATM_24 : C_ATM {}; class C_ATM_25 : C_ATM {}; class C_ATM_26 : C_ATM {}; class C_ATM_27 : C_ATM {}; class C_ATM_28 : C_ATM {}; class C_ATM_29 : C_ATM {}; class C_ATM_30 : C_ATM {}; class C_ATM_31 : C_ATM {}; class C_ATM_32 : C_ATM {}; class C_ATM_33 : C_ATM {}; class C_ATM_34 : C_ATM {}; class C_ATM_35 : C_ATM {}; class C_ATM_36 : C_ATM {}; class C_ATM_37 : C_ATM {}; class C_ATM_38 : C_ATM {}; class C_ATM_39 : C_ATM {}; class C_ATM_40 : C_ATM {}; class C_ATM_41 : C_ATM {}; class C_ATM_42 : C_ATM {}; class C_ATM_43 : C_ATM {}; class C_ATM_44 : C_ATM {}; class C_ATM_45 : C_ATM {}; class C_ATM_46 : C_ATM {}; class C_ATM_47 : C_ATM {}; class C_ATM_48 : C_ATM {}; class C_ATM_49 : C_ATM {}; class C_ATM_50 : C_ATM {};

class C_ATL {           // LIGHT ANTI-TANK
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Rifleman";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
    primaryWeapon   = _WEAPON_PRIMARY0;
    primaryWeaponAttachments[] = {
        "acc_pointer_IR",
        "RH_ta31rmr_2D"
    };
    
    secondaryWeapon = _WEAPON_LAUNCHER2;
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
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red)						
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_ATL_1 : C_ATL {}; class C_ATL_2 : C_ATL {}; class C_ATL_3 : C_ATL {}; class C_ATL_4 : C_ATL {}; class C_ATL_5 : C_ATL {}; class C_ATL_6 : C_ATL {}; class C_ATL_7 : C_ATL {}; class C_ATL_8 : C_ATL {}; class C_ATL_9 : C_ATL {}; class C_ATL_10 : C_ATL {}; class C_ATL_11 : C_ATL {}; class C_ATL_12 : C_ATL {}; class C_ATL_13 : C_ATL {}; class C_ATL_14 : C_ATL {}; class C_ATL_15 : C_ATL {}; class C_ATL_16 : C_ATL {}; class C_ATL_17 : C_ATL {}; class C_ATL_18 : C_ATL {}; class C_ATL_19 : C_ATL {}; class C_ATL_20 : C_ATL {}; class C_ATL_21 : C_ATL {}; class C_ATL_22 : C_ATL {}; class C_ATL_23 : C_ATL {}; class C_ATL_24 : C_ATL {}; class C_ATL_25 : C_ATL {}; class C_ATL_26 : C_ATL {}; class C_ATL_27 : C_ATL {}; class C_ATL_28 : C_ATL {}; class C_ATL_29 : C_ATL {}; class C_ATL_30 : C_ATL {}; class C_ATL_31 : C_ATL {}; class C_ATL_32 : C_ATL {}; class C_ATL_33 : C_ATL {}; class C_ATL_34 : C_ATL {}; class C_ATL_35 : C_ATL {}; class C_ATL_36 : C_ATL {}; class C_ATL_37 : C_ATL {}; class C_ATL_38 : C_ATL {}; class C_ATL_39 : C_ATL {}; class C_ATL_40 : C_ATL {}; class C_ATL_41 : C_ATL {}; class C_ATL_42 : C_ATL {}; class C_ATL_43 : C_ATL {}; class C_ATL_44 : C_ATL {}; class C_ATL_45 : C_ATL {}; class C_ATL_46 : C_ATL {}; class C_ATL_47 : C_ATL {}; class C_ATL_48 : C_ATL {}; class C_ATL_49 : C_ATL {}; class C_ATL_50 : C_ATL {};

class C_AA {            // ANTI-AIR
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Rifleman";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
    primaryWeapon   = _WEAPON_LAUNCHER1;
    primaryWeaponAttachments[] = {
        "acc_pointer_IR",
        "RH_ta31rmr_2D"
    };
    
    secondaryWeapon = _WEAPON_LAUNCHER1;
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
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA6(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {
        _QUA2(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red),
        _QUA1(_MAG_LAUNCHER1)						
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_AA_1 : C_AA {}; class C_AA_2 : C_AA {}; class C_AA_3 : C_AA {}; class C_AA_4 : C_AA {}; class C_AA_5 : C_AA {}; class C_AA_6 : C_AA {}; class C_AA_7 : C_AA {}; class C_AA_8 : C_AA {}; class C_AA_9 : C_AA {}; class C_AA_10 : C_AA {}; class C_AA_11 : C_AA {}; class C_AA_12 : C_AA {}; class C_AA_13 : C_AA {}; class C_AA_14 : C_AA {}; class C_AA_15 : C_AA {}; class C_AA_16 : C_AA {}; class C_AA_17 : C_AA {}; class C_AA_18 : C_AA {}; class C_AA_19 : C_AA {}; class C_AA_20 : C_AA {}; class C_AA_21 : C_AA {}; class C_AA_22 : C_AA {}; class C_AA_23 : C_AA {}; class C_AA_24 : C_AA {}; class C_AA_25 : C_AA {}; class C_AA_26 : C_AA {}; class C_AA_27 : C_AA {}; class C_AA_28 : C_AA {}; class C_AA_29 : C_AA {}; class C_AA_30 : C_AA {}; class C_AA_31 : C_AA {}; class C_AA_32 : C_AA {}; class C_AA_33 : C_AA {}; class C_AA_34 : C_AA {}; class C_AA_35 : C_AA {}; class C_AA_36 : C_AA {}; class C_AA_37 : C_AA {}; class C_AA_38 : C_AA {}; class C_AA_39 : C_AA {}; class C_AA_40 : C_AA {}; class C_AA_41 : C_AA {}; class C_AA_42 : C_AA {}; class C_AA_43 : C_AA {}; class C_AA_44 : C_AA {}; class C_AA_45 : C_AA {}; class C_AA_46 : C_AA {}; class C_AA_47 : C_AA {}; class C_AA_48 : C_AA {}; class C_AA_49 : C_AA {}; class C_AA_50 : C_AA {};


// Medical
class C_M {             // COMBAT LIFESAVER
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Medic";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
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
        _QUA5(ACE_packingBandage),
        _QUA5(ACE_elasticBandage),
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
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red),	
        _QUA10(ACE_packingBandage),
        _QUA10(ACE_elasticBandage),	
        _QUA2(ACE_salineIV),
        _QUA2(ACE_salineIV_500)				
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_M_1 : C_M {}; class C_M_2 : C_M {}; class C_M_3 : C_M {}; class C_M_4 : C_M {}; class C_M_5 : C_M {}; class C_M_6 : C_M {}; class C_M_7 : C_M {}; class C_M_8 : C_M {}; class C_M_9 : C_M {}; class C_M_10 : C_M {}; class C_M_11 : C_M {}; class C_M_12 : C_M {}; class C_M_13 : C_M {}; class C_M_14 : C_M {}; class C_M_15 : C_M {}; class C_M_16 : C_M {}; class C_M_17 : C_M {}; class C_M_18 : C_M {}; class C_M_19 : C_M {}; class C_M_20 : C_M {}; class C_M_21 : C_M {}; class C_M_22 : C_M {}; class C_M_23 : C_M {}; class C_M_24 : C_M {}; class C_M_25 : C_M {}; class C_M_26 : C_M {}; class C_M_27 : C_M {}; class C_M_28 : C_M {}; class C_M_29 : C_M {}; class C_M_30 : C_M {}; class C_M_31 : C_M {}; class C_M_32 : C_M {}; class C_M_33 : C_M {}; class C_M_34 : C_M {}; class C_M_35 : C_M {}; class C_M_36 : C_M {}; class C_M_37 : C_M {}; class C_M_38 : C_M {}; class C_M_39 : C_M {}; class C_M_40 : C_M {}; class C_M_41 : C_M {}; class C_M_42 : C_M {}; class C_M_43 : C_M {}; class C_M_44 : C_M {}; class C_M_45 : C_M {}; class C_M_46 : C_M {}; class C_M_47 : C_M {}; class C_M_48 : C_M {}; class C_M_49 : C_M {}; class C_M_50 : C_M {};

class C_FM {            // FLIGHT MEDIC OR PLATOON MEDIC
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Medic";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
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
        _QUA5(ACE_packingBandage),
        _QUA5(ACE_elasticBandage),
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
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA1(ACE_surgicalKit),	
        _QUA5(ACE_personalAidKit)							
    };
    addItemsToBackpack[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red),
        _QUA15(ACE_morphine),
        _QUA15(ACE_epinephrine),	
        _QUA25(ACE_packingBandage),
        _QUA25(ACE_elasticBandage),	
        _QUA25(ACE_packingBandage),
        _QUA25(ACE_quikclot),	
        _QUA4(ACE_salineIV),
        _QUA2(ACE_salineIV_500)				
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_FM_1 : C_FM {}; class C_FM_2 : C_FM {}; class C_FM_3 : C_FM {}; class C_FM_4 : C_FM {}; class C_FM_5 : C_FM {}; class C_FM_6 : C_FM {}; class C_FM_7 : C_FM {}; class C_FM_8 : C_FM {}; class C_FM_9 : C_FM {}; class C_FM_10 : C_FM {}; class C_FM_11 : C_FM {}; class C_FM_12 : C_FM {}; class C_FM_13 : C_FM {}; class C_FM_14 : C_FM {}; class C_FM_15 : C_FM {}; class C_FM_16 : C_FM {}; class C_FM_17 : C_FM {}; class C_FM_18 : C_FM {}; class C_FM_19 : C_FM {}; class C_FM_20 : C_FM {}; class C_FM_21 : C_FM {}; class C_FM_22 : C_FM {}; class C_FM_23 : C_FM {}; class C_FM_24 : C_FM {}; class C_FM_25 : C_FM {}; class C_FM_26 : C_FM {}; class C_FM_27 : C_FM {}; class C_FM_28 : C_FM {}; class C_FM_29 : C_FM {}; class C_FM_30 : C_FM {}; class C_FM_31 : C_FM {}; class C_FM_32 : C_FM {}; class C_FM_33 : C_FM {}; class C_FM_34 : C_FM {}; class C_FM_35 : C_FM {}; class C_FM_36 : C_FM {}; class C_FM_37 : C_FM {}; class C_FM_38 : C_FM {}; class C_FM_39 : C_FM {}; class C_FM_40 : C_FM {}; class C_FM_41 : C_FM {}; class C_FM_42 : C_FM {}; class C_FM_43 : C_FM {}; class C_FM_44 : C_FM {}; class C_FM_45 : C_FM {}; class C_FM_46 : C_FM {}; class C_FM_47 : C_FM {}; class C_FM_48 : C_FM {}; class C_FM_49 : C_FM {}; class C_FM_50 : C_FM {};

class C_MTL {           // MEDICAL TEAM LEADER
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Medic";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
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
        _QUA1(ACE_microDAGR),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_IR_Strobe_Item),
        _QUA2(_GRENADE),		
        _QUA2(_GRENADE_SMOKE_GREEN)						
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA2(_GRENADE),	
        _QUA2(_GRENADE_SMOKE_GREEN),	
        _QUA2(_GRENADE_SMOKE_YELLOW),	
        _QUA2(_GRENADE_SMOKE_RED),	
        _QUA4(_GRENADE_SMOKE),		
        _QUA1(ACE_HuntIR_monitor),	
        _QUA1(itemcTabHCam)								
    };
    addItemsToBackpack[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA5(ACE_morphine),
        _QUA5(ACE_epinephrine),	
        _QUA10(ACE_packingBandage),
        _QUA10(ACE_elasticBandage),	
        _QUA10(ACE_packingBandage),
        _QUA5(ACE_personalAidKit),
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red)						
    };
    
    binoculars      = "ACE_Vector";
    map             = "ItemMap";
    gps             = "ItemAndroid";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_MTL_1 : C_MTL {}; class C_MTL_2 : C_MTL {}; class C_MTL_3 : C_MTL {}; class C_MTL_4 : C_MTL {}; class C_MTL_5 : C_MTL {}; class C_MTL_6 : C_MTL {}; class C_MTL_7 : C_MTL {}; class C_MTL_8 : C_MTL {}; class C_MTL_9 : C_MTL {}; class C_MTL_10 : C_MTL {}; class C_MTL_11 : C_MTL {}; class C_MTL_12 : C_MTL {}; class C_MTL_13 : C_MTL {}; class C_MTL_14 : C_MTL {}; class C_MTL_15 : C_MTL {}; class C_MTL_16 : C_MTL {}; class C_MTL_17 : C_MTL {}; class C_MTL_18 : C_MTL {}; class C_MTL_19 : C_MTL {}; class C_MTL_20 : C_MTL {}; class C_MTL_21 : C_MTL {}; class C_MTL_22 : C_MTL {}; class C_MTL_23 : C_MTL {}; class C_MTL_24 : C_MTL {}; class C_MTL_25 : C_MTL {}; class C_MTL_26 : C_MTL {}; class C_MTL_27 : C_MTL {}; class C_MTL_28 : C_MTL {}; class C_MTL_29 : C_MTL {}; class C_MTL_30 : C_MTL {}; class C_MTL_31 : C_MTL {}; class C_MTL_32 : C_MTL {}; class C_MTL_33 : C_MTL {}; class C_MTL_34 : C_MTL {}; class C_MTL_35 : C_MTL {}; class C_MTL_36 : C_MTL {}; class C_MTL_37 : C_MTL {}; class C_MTL_38 : C_MTL {}; class C_MTL_39 : C_MTL {}; class C_MTL_40 : C_MTL {}; class C_MTL_41 : C_MTL {}; class C_MTL_42 : C_MTL {}; class C_MTL_43 : C_MTL {}; class C_MTL_44 : C_MTL {}; class C_MTL_45 : C_MTL {}; class C_MTL_46 : C_MTL {}; class C_MTL_47 : C_MTL {}; class C_MTL_48 : C_MTL {}; class C_MTL_49 : C_MTL {}; class C_MTL_50 : C_MTL {};


// Special
class C_OFF {           // OFFICER
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Squadleader";
    headgear        = "rhsusf_ach_helmet_headset_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "tf_rt1523g_big_rhs";
    
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
        _QUA1(ACE_microDAGR),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_IR_Strobe_Item),
        _QUA2(_GRENADE),		
        _QUA2(_GRENADE_SMOKE_GREEN)						
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA2(_GRENADE),	
        _QUA2(_GRENADE_SMOKE_GREEN),	
        _QUA2(_GRENADE_SMOKE_YELLOW),	
        _QUA2(_GRENADE_SMOKE_RED),	
        _QUA4(_GRENADE_SMOKE),		
        _QUA1(ACE_HuntIR_monitor),	
        _QUA1(itemcTabHCam)								
    };
    addItemsToBackpack[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red)						
    };
    
    binoculars      = "ACE_Vector";
    map             = "ItemMap";
    gps             = "ItemcTab";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_OFF_1 : C_OFF {}; class C_OFF_2 : C_OFF {}; class C_OFF_3 : C_OFF {}; class C_OFF_4 : C_OFF {}; class C_OFF_5 : C_OFF {}; class C_OFF_6 : C_OFF {}; class C_OFF_7 : C_OFF {}; class C_OFF_8 : C_OFF {}; class C_OFF_9 : C_OFF {}; class C_OFF_10 : C_OFF {}; class C_OFF_11 : C_OFF {}; class C_OFF_12 : C_OFF {}; class C_OFF_13 : C_OFF {}; class C_OFF_14 : C_OFF {}; class C_OFF_15 : C_OFF {}; class C_OFF_16 : C_OFF {}; class C_OFF_17 : C_OFF {}; class C_OFF_18 : C_OFF {}; class C_OFF_19 : C_OFF {}; class C_OFF_20 : C_OFF {}; class C_OFF_21 : C_OFF {}; class C_OFF_22 : C_OFF {}; class C_OFF_23 : C_OFF {}; class C_OFF_24 : C_OFF {}; class C_OFF_25 : C_OFF {}; class C_OFF_26 : C_OFF {}; class C_OFF_27 : C_OFF {}; class C_OFF_28 : C_OFF {}; class C_OFF_29 : C_OFF {}; class C_OFF_30 : C_OFF {}; class C_OFF_31 : C_OFF {}; class C_OFF_32 : C_OFF {}; class C_OFF_33 : C_OFF {}; class C_OFF_34 : C_OFF {}; class C_OFF_35 : C_OFF {}; class C_OFF_36 : C_OFF {}; class C_OFF_37 : C_OFF {}; class C_OFF_38 : C_OFF {}; class C_OFF_39 : C_OFF {}; class C_OFF_40 : C_OFF {}; class C_OFF_41 : C_OFF {}; class C_OFF_42 : C_OFF {}; class C_OFF_43 : C_OFF {}; class C_OFF_44 : C_OFF {}; class C_OFF_45 : C_OFF {}; class C_OFF_46 : C_OFF {}; class C_OFF_47 : C_OFF {}; class C_OFF_48 : C_OFF {}; class C_OFF_49 : C_OFF {}; class C_OFF_50 : C_OFF {};

class C_JTAC {          // JTAC
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Squadleader";
    headgear        = "rhsusf_ach_helmet_headset_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "tf_rt1523g_big_rhs";
    
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
        _QUA1(ACE_microDAGR),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_IR_Strobe_Item),
        _QUA2(_GRENADE),		
        _QUA2(_GRENADE_SMOKE_GREEN)						
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA2(_GRENADE),	
        _QUA2(_GRENADE_SMOKE_GREEN),	
        _QUA2(_GRENADE_SMOKE_YELLOW),	
        _QUA2(_GRENADE_SMOKE_RED),	
        _QUA4(_GRENADE_SMOKE),		
        _QUA1(ACE_HuntIR_monitor),	
        _QUA1(itemcTabHCam),	
        _QUA3(Laserbatteries)							
    };
    addItemsToBackpack[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red)						
    };
    
    binoculars      = "Laserdesignator";
    map             = "ItemMap";
    gps             = "ItemcTab";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_JTAC_1 : C_JTAC {}; class C_JTAC_2 : C_JTAC {}; class C_JTAC_3 : C_JTAC {}; class C_JTAC_4 : C_JTAC {}; class C_JTAC_5 : C_JTAC {}; class C_JTAC_6 : C_JTAC {}; class C_JTAC_7 : C_JTAC {}; class C_JTAC_8 : C_JTAC {}; class C_JTAC_9 : C_JTAC {}; class C_JTAC_10 : C_JTAC {}; class C_JTAC_11 : C_JTAC {}; class C_JTAC_12 : C_JTAC {}; class C_JTAC_13 : C_JTAC {}; class C_JTAC_14 : C_JTAC {}; class C_JTAC_15 : C_JTAC {}; class C_JTAC_16 : C_JTAC {}; class C_JTAC_17 : C_JTAC {}; class C_JTAC_18 : C_JTAC {}; class C_JTAC_19 : C_JTAC {}; class C_JTAC_20 : C_JTAC {}; class C_JTAC_21 : C_JTAC {}; class C_JTAC_22 : C_JTAC {}; class C_JTAC_23 : C_JTAC {}; class C_JTAC_24 : C_JTAC {}; class C_JTAC_25 : C_JTAC {}; class C_JTAC_26 : C_JTAC {}; class C_JTAC_27 : C_JTAC {}; class C_JTAC_28 : C_JTAC {}; class C_JTAC_29 : C_JTAC {}; class C_JTAC_30 : C_JTAC {}; class C_JTAC_31 : C_JTAC {}; class C_JTAC_32 : C_JTAC {}; class C_JTAC_33 : C_JTAC {}; class C_JTAC_34 : C_JTAC {}; class C_JTAC_35 : C_JTAC {}; class C_JTAC_36 : C_JTAC {}; class C_JTAC_37 : C_JTAC {}; class C_JTAC_38 : C_JTAC {}; class C_JTAC_39 : C_JTAC {}; class C_JTAC_40 : C_JTAC {}; class C_JTAC_41 : C_JTAC {}; class C_JTAC_42 : C_JTAC {}; class C_JTAC_43 : C_JTAC {}; class C_JTAC_44 : C_JTAC {}; class C_JTAC_45 : C_JTAC {}; class C_JTAC_46 : C_JTAC {}; class C_JTAC_47 : C_JTAC {}; class C_JTAC_48 : C_JTAC {}; class C_JTAC_49 : C_JTAC {}; class C_JTAC_50 : C_JTAC {};

class C_FO {            // FORWARD OBSERVER
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Squadleader";
    headgear        = "rhsusf_ach_helmet_headset_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "tf_rt1523g_big_rhs";
    
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
        _QUA1(ACE_microDAGR),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_IR_Strobe_Item),
        _QUA2(_GRENADE),		
        _QUA2(_GRENADE_SMOKE_GREEN)						
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA2(_GRENADE),	
        _QUA2(_GRENADE_SMOKE_GREEN),	
        _QUA2(_GRENADE_SMOKE_YELLOW),	
        _QUA2(_GRENADE_SMOKE_RED),	
        _QUA4(_GRENADE_SMOKE),		
        _QUA1(ACE_HuntIR_monitor),	
        _QUA1(itemcTabHCam)								
    };
    addItemsToBackpack[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_MAG_PRIMARY_TRACER),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA2(Chemlight_Blue),
        _QUA2(Chemlight_Red)						
    };
    
    binoculars      = "ACE_Vector";
    map             = "ItemMap";
    gps             = "ItemcTab";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_FO_1 : C_FO {}; class C_FO_2 : C_FO {}; class C_FO_3 : C_FO {}; class C_FO_4 : C_FO {}; class C_FO_5 : C_FO {}; class C_FO_6 : C_FO {}; class C_FO_7 : C_FO {}; class C_FO_8 : C_FO {}; class C_FO_9 : C_FO {}; class C_FO_10 : C_FO {}; class C_FO_11 : C_FO {}; class C_FO_12 : C_FO {}; class C_FO_13 : C_FO {}; class C_FO_14 : C_FO {}; class C_FO_15 : C_FO {}; class C_FO_16 : C_FO {}; class C_FO_17 : C_FO {}; class C_FO_18 : C_FO {}; class C_FO_19 : C_FO {}; class C_FO_20 : C_FO {}; class C_FO_21 : C_FO {}; class C_FO_22 : C_FO {}; class C_FO_23 : C_FO {}; class C_FO_24 : C_FO {}; class C_FO_25 : C_FO {}; class C_FO_26 : C_FO {}; class C_FO_27 : C_FO {}; class C_FO_28 : C_FO {}; class C_FO_29 : C_FO {}; class C_FO_30 : C_FO {}; class C_FO_31 : C_FO {}; class C_FO_32 : C_FO {}; class C_FO_33 : C_FO {}; class C_FO_34 : C_FO {}; class C_FO_35 : C_FO {}; class C_FO_36 : C_FO {}; class C_FO_37 : C_FO {}; class C_FO_38 : C_FO {}; class C_FO_39 : C_FO {}; class C_FO_40 : C_FO {}; class C_FO_41 : C_FO {}; class C_FO_42 : C_FO {}; class C_FO_43 : C_FO {}; class C_FO_44 : C_FO {}; class C_FO_45 : C_FO {}; class C_FO_46 : C_FO {}; class C_FO_47 : C_FO {}; class C_FO_48 : C_FO {}; class C_FO_49 : C_FO {}; class C_FO_50 : C_FO {};


// Engineer
class C_ENGSL {         // ENGINEER SL
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Repair";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_ess_black";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
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
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {	
        _QUA5(Chemlight_Blue),
        _QUA5(Chemlight_Red),	
        _QUA1(Toolkit),
        _QUA1(ACE_Clacker),	
        _QUA1(ACE_DefusalKit),	
        _QUA1(DemoCharge_Remote_Mag)					
    };
    
    binoculars      = "ACE_Vector";
    map             = "ItemMap";
    gps             = ItemAndroid;
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_ENGSL_1 : C_ENGSL {}; class C_ENGSL_2 : C_ENGSL {}; class C_ENGSL_3 : C_ENGSL {}; class C_ENGSL_4 : C_ENGSL {}; class C_ENGSL_5 : C_ENGSL {}; class C_ENGSL_6 : C_ENGSL {}; class C_ENGSL_7 : C_ENGSL {}; class C_ENGSL_8 : C_ENGSL {}; class C_ENGSL_9 : C_ENGSL {}; class C_ENGSL_10 : C_ENGSL {}; class C_ENGSL_11 : C_ENGSL {}; class C_ENGSL_12 : C_ENGSL {}; class C_ENGSL_13 : C_ENGSL {}; class C_ENGSL_14 : C_ENGSL {}; class C_ENGSL_15 : C_ENGSL {}; class C_ENGSL_16 : C_ENGSL {}; class C_ENGSL_17 : C_ENGSL {}; class C_ENGSL_18 : C_ENGSL {}; class C_ENGSL_19 : C_ENGSL {}; class C_ENGSL_20 : C_ENGSL {}; class C_ENGSL_21 : C_ENGSL {}; class C_ENGSL_22 : C_ENGSL {}; class C_ENGSL_23 : C_ENGSL {}; class C_ENGSL_24 : C_ENGSL {}; class C_ENGSL_25 : C_ENGSL {}; class C_ENGSL_26 : C_ENGSL {}; class C_ENGSL_27 : C_ENGSL {}; class C_ENGSL_28 : C_ENGSL {}; class C_ENGSL_29 : C_ENGSL {}; class C_ENGSL_30 : C_ENGSL {}; class C_ENGSL_31 : C_ENGSL {}; class C_ENGSL_32 : C_ENGSL {}; class C_ENGSL_33 : C_ENGSL {}; class C_ENGSL_34 : C_ENGSL {}; class C_ENGSL_35 : C_ENGSL {}; class C_ENGSL_36 : C_ENGSL {}; class C_ENGSL_37 : C_ENGSL {}; class C_ENGSL_38 : C_ENGSL {}; class C_ENGSL_39 : C_ENGSL {}; class C_ENGSL_40 : C_ENGSL {}; class C_ENGSL_41 : C_ENGSL {}; class C_ENGSL_42 : C_ENGSL {}; class C_ENGSL_43 : C_ENGSL {}; class C_ENGSL_44 : C_ENGSL {}; class C_ENGSL_45 : C_ENGSL {}; class C_ENGSL_46 : C_ENGSL {}; class C_ENGSL_47 : C_ENGSL {}; class C_ENGSL_48 : C_ENGSL {}; class C_ENGSL_49 : C_ENGSL {}; class C_ENGSL_50 : C_ENGSL {};

class C_ENG {           // ENGINEER
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Repair";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_ess_black";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "rhsusf_assault_eagleaiii_ocp";
    
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
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE)							
    };
    addItemsToBackpack[] = {	
        _QUA5(Chemlight_Blue),
        _QUA5(Chemlight_Red),	
        _QUA1(Toolkit),
        _QUA1(ACE_Clacker),	
        _QUA1(ACE_DefusalKit),	
        _QUA1(DemoCharge_Remote_Mag)					
    };
    
    binoculars      = "Binocular";
    map             = "ItemMap";
    gps             = "";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_ENG_1 : C_ENG {}; class C_ENG_2 : C_ENG {}; class C_ENG_3 : C_ENG {}; class C_ENG_4 : C_ENG {}; class C_ENG_5 : C_ENG {}; class C_ENG_6 : C_ENG {}; class C_ENG_7 : C_ENG {}; class C_ENG_8 : C_ENG {}; class C_ENG_9 : C_ENG {}; class C_ENG_10 : C_ENG {}; class C_ENG_11 : C_ENG {}; class C_ENG_12 : C_ENG {}; class C_ENG_13 : C_ENG {}; class C_ENG_14 : C_ENG {}; class C_ENG_15 : C_ENG {}; class C_ENG_16 : C_ENG {}; class C_ENG_17 : C_ENG {}; class C_ENG_18 : C_ENG {}; class C_ENG_19 : C_ENG {}; class C_ENG_20 : C_ENG {}; class C_ENG_21 : C_ENG {}; class C_ENG_22 : C_ENG {}; class C_ENG_23 : C_ENG {}; class C_ENG_24 : C_ENG {}; class C_ENG_25 : C_ENG {}; class C_ENG_26 : C_ENG {}; class C_ENG_27 : C_ENG {}; class C_ENG_28 : C_ENG {}; class C_ENG_29 : C_ENG {}; class C_ENG_30 : C_ENG {}; class C_ENG_31 : C_ENG {}; class C_ENG_32 : C_ENG {}; class C_ENG_33 : C_ENG {}; class C_ENG_34 : C_ENG {}; class C_ENG_35 : C_ENG {}; class C_ENG_36 : C_ENG {}; class C_ENG_37 : C_ENG {}; class C_ENG_38 : C_ENG {}; class C_ENG_39 : C_ENG {}; class C_ENG_40 : C_ENG {}; class C_ENG_41 : C_ENG {}; class C_ENG_42 : C_ENG {}; class C_ENG_43 : C_ENG {}; class C_ENG_44 : C_ENG {}; class C_ENG_45 : C_ENG {}; class C_ENG_46 : C_ENG {}; class C_ENG_47 : C_ENG {}; class C_ENG_48 : C_ENG {}; class C_ENG_49 : C_ENG {}; class C_ENG_50 : C_ENG {};


// Mortar
class C_MOG {           // MORTAR GUNNER
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Repair";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "B_Mortar_01_weapon_F";
    
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
        _QUA1(ACE_microDAGR),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_IR_Strobe_Item),
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),
        _QUA1(ACE_RangeTable_82mm)							
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "ItemAndroid";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_MOG_1 : C_MOG {}; class C_MOG_2 : C_MOG {}; class C_MOG_3 : C_MOG {}; class C_MOG_4 : C_MOG {}; class C_MOG_5 : C_MOG {}; class C_MOG_6 : C_MOG {}; class C_MOG_7 : C_MOG {}; class C_MOG_8 : C_MOG {}; class C_MOG_9 : C_MOG {}; class C_MOG_10 : C_MOG {}; class C_MOG_11 : C_MOG {}; class C_MOG_12 : C_MOG {}; class C_MOG_13 : C_MOG {}; class C_MOG_14 : C_MOG {}; class C_MOG_15 : C_MOG {}; class C_MOG_16 : C_MOG {}; class C_MOG_17 : C_MOG {}; class C_MOG_18 : C_MOG {}; class C_MOG_19 : C_MOG {}; class C_MOG_20 : C_MOG {}; class C_MOG_21 : C_MOG {}; class C_MOG_22 : C_MOG {}; class C_MOG_23 : C_MOG {}; class C_MOG_24 : C_MOG {}; class C_MOG_25 : C_MOG {}; class C_MOG_26 : C_MOG {}; class C_MOG_27 : C_MOG {}; class C_MOG_28 : C_MOG {}; class C_MOG_29 : C_MOG {}; class C_MOG_30 : C_MOG {}; class C_MOG_31 : C_MOG {}; class C_MOG_32 : C_MOG {}; class C_MOG_33 : C_MOG {}; class C_MOG_34 : C_MOG {}; class C_MOG_35 : C_MOG {}; class C_MOG_36 : C_MOG {}; class C_MOG_37 : C_MOG {}; class C_MOG_38 : C_MOG {}; class C_MOG_39 : C_MOG {}; class C_MOG_40 : C_MOG {}; class C_MOG_41 : C_MOG {}; class C_MOG_42 : C_MOG {}; class C_MOG_43 : C_MOG {}; class C_MOG_44 : C_MOG {}; class C_MOG_45 : C_MOG {}; class C_MOG_46 : C_MOG {}; class C_MOG_47 : C_MOG {}; class C_MOG_48 : C_MOG {}; class C_MOG_49 : C_MOG {}; class C_MOG_50 : C_MOG {};

class C_MOA {           // MORTAR ASST.
    uniform         = "rhs_uniform_cu_ocp_1stcav";
    vest            = "rhsusf_iotv_ocp_Repair";
    headgear        = "rhsusf_ach_helmet_ocp";
    goggles         = "rhs_googles_clear";
    nvgoggles       = "rhsusf_ANPVS_14";
    backpack        = "B_Mortar_01_weapon_F";
    
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
        _QUA1(ACE_microDAGR),
        _QUA1(ACE_MapTools),
        _QUA1(ACE_IR_Strobe_Item),
        _QUA2(_GRENADE)							
    };
    addItemsToVest[] = {
        _QUA4(_MAG_PRIMARY),
        _QUA2(_GRENADE),	
        _QUA4(_GRENADE_SMOKE),	
        _QUA1(ACE_RangeTable_82mm)							
    };
    
    binoculars      = "";
    map             = "ItemMap";
    gps             = "ItemAndroid";
    compass         = "ItemCompass";
    watch           = "tf_microdagr";
};
class C_MOA_1 : C_MOA {}; class C_MOA_2 : C_MOA {}; class C_MOA_3 : C_MOA {}; class C_MOA_4 : C_MOA {}; class C_MOA_5 : C_MOA {}; class C_MOA_6 : C_MOA {}; class C_MOA_7 : C_MOA {}; class C_MOA_8 : C_MOA {}; class C_MOA_9 : C_MOA {}; class C_MOA_10 : C_MOA {}; class C_MOA_11 : C_MOA {}; class C_MOA_12 : C_MOA {}; class C_MOA_13 : C_MOA {}; class C_MOA_14 : C_MOA {}; class C_MOA_15 : C_MOA {}; class C_MOA_16 : C_MOA {}; class C_MOA_17 : C_MOA {}; class C_MOA_18 : C_MOA {}; class C_MOA_19 : C_MOA {}; class C_MOA_20 : C_MOA {}; class C_MOA_21 : C_MOA {}; class C_MOA_22 : C_MOA {}; class C_MOA_23 : C_MOA {}; class C_MOA_24 : C_MOA {}; class C_MOA_25 : C_MOA {}; class C_MOA_26 : C_MOA {}; class C_MOA_27 : C_MOA {}; class C_MOA_28 : C_MOA {}; class C_MOA_29 : C_MOA {}; class C_MOA_30 : C_MOA {}; class C_MOA_31 : C_MOA {}; class C_MOA_32 : C_MOA {}; class C_MOA_33 : C_MOA {}; class C_MOA_34 : C_MOA {}; class C_MOA_35 : C_MOA {}; class C_MOA_36 : C_MOA {}; class C_MOA_37 : C_MOA {}; class C_MOA_38 : C_MOA {}; class C_MOA_39 : C_MOA {}; class C_MOA_40 : C_MOA {}; class C_MOA_41 : C_MOA {}; class C_MOA_42 : C_MOA {}; class C_MOA_43 : C_MOA {}; class C_MOA_44 : C_MOA {}; class C_MOA_45 : C_MOA {}; class C_MOA_46 : C_MOA {}; class C_MOA_47 : C_MOA {}; class C_MOA_48 : C_MOA {}; class C_MOA_49 : C_MOA {}; class C_MOA_50 : C_MOA {};
