/*           RULES            */
    
    enableSaving [false, false];
    tawvd_disablenone = true;

    if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionOpenTerrain") == 0) then {
        if (getNumber (missionConfigFile >> "CfgSettings" >> "isDebugMode") == 1) then {diag_log formatText ["[cScripts] Info: isMissionOpenTerrain is 0"];};
        {
            _x setSkill ["aimingspeed", 0.42];
            _x setSkill ["aimingaccuracy", 0.338];
            _x setSkill ["aimingshake", 0.36];
            _x setSkill ["spottime", 0.42];
            _x setSkill ["spotdistance", 0.7];
            _x setSkill ["commanding", 1.0];
            _x setSkill ["general", 1.0];
        } forEach allUnits;
    };
    if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionOpenTerrain") == 1) then {
        if (getNumber (missionConfigFile >> "CfgSettings" >> "isDebugMode") == 1) then {diag_log formatText ["[cScripts] Info: isMissionOpenTerrain is 1"];};
        {
            _x setSkill ["aimingspeed", 0.42];
            _x setSkill ["aimingaccuracy", 0.338];
            _x setSkill ["aimingshake", 0.36];
            _x setSkill ["spottime", 0.42];
            _x setSkill ["spotdistance", 1.00];
            _x setSkill ["commanding", 1.0];
            _x setSkill ["general", 1.0];
        } forEach allUnits;
    };

    ACE_maxWeightCarry = 7500;
    ACE_maxWeightDrag = 10000;
    
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
