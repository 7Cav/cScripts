/*           RULES            */

    enableSaving [false, false];
    tawvd_disablenone = true;

    {
        _x setSkill ["aimingspeed", 0.4];
        _x setSkill ["aimingaccuracy", 0.35];
        _x setSkill ["aimingshake", 0.4];
        _x setSkill ["spottime", 0.4];
        _x setSkill ["spotdistance", 0.7];
        _x setSkill ["commanding", 1.0];
        _x setSkill ["general", 1.0];
    } forEach allUnits;

/*           TFAR            */
    
    tf_no_auto_long_range_radio                 = true;
    TF_give_personal_radio_to_regular_soldier   = true;
    TF_give_microdagr_to_soldier                = false;
    TF_defaultWestPersonalRadio                 = "tf_rf7800str";
    TF_defaultWestRiflemanRadio                 = "tf_anprc152";
    TF_defaultWestAirborneRadio                 = "tf_rf7800str";
    TF_defaultWestBackpack                      = "tf_rt1523g_big_rhs";
    
    TF_terrain_interception_coefficient         = 7.0; //Coefficient defining the level of radio signal interruption caused by terrain.
    
/*           MODUELS            */
