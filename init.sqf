/* ########      PARAMETERS      ######## */

    enableSaving [false, false];
    tawvd_disablenone = true;
    
/* ########      SYSTEM      ######## */
    
    #include "cScripts\script_component.hpp";
    #include "cScripts\script_defines.hpp";
    
/* ########      TFAR      ######## */
    
    tf_no_auto_long_range_radio                 = true;
    TF_give_personal_radio_to_regular_soldier   = true;
    TF_give_microdagr_to_soldier                = false;
    TF_defaultWestPersonalRadio                 = QUOTE(_ITEM_RADIO0);
    TF_defaultWestRiflemanRadio                 = QUOTE(_ITEM_RADIO1);
    TF_defaultWestAirborneRadio                 = QUOTE(_ITEM_RADIO0);
    TF_defaultWestBackpack                      = QUOTE(_GEAR_BACKPACK_RADIO);
    
    TF_terrain_interception_coefficient         = 7.0; //Coefficient defining the level of radio signal interruption caused by terrain.

/* ########      AI SETTINGS      ######## */

    {
        _x setSkill ["aimingspeed", 0.4];
        _x setSkill ["aimingaccuracy", 0.35];
        _x setSkill ["aimingshake", 0.4];
        _x setSkill ["spottime", 0.4];
        _x setSkill ["spotdistance", 0.6];
        _x setSkill ["commanding", 1.0];
        _x setSkill ["general", 1.0];
    } forEach allUnits;
    
/* ########      OTHER      ######## */