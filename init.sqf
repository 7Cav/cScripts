/*           RULES            */

    enableSaving [false, false];
    tawvd_disablenone = true;

    if (getNumber (missionConfigFile >> "CfgSettings" >> "aiSystemDifficulty") == 0) then {
        {
            _x setSkill ["aimingspeed",     0.420];
            _x setSkill ["aimingaccuracy",  0.338];
            _x setSkill ["aimingshake",     0.360];
            _x setSkill ["spottime",        0.420];
            _x setSkill ["spotdistance",    1.000];
            _x setSkill ["commanding",      1.0];
            _x setSkill ["general",         1.0];
        } forEach allUnits;
    };
    if (getNumber (missionConfigFile >> "CfgSettings" >> "aiSystemDifficulty") == 1) then {
        {
            _x setSkill ["aimingspeed",     0.015];
            _x setSkill ["aimingaccuracy",  0.100];
            _x setSkill ["aimingshake",     0.280];
            _x setSkill ["spottime",        0.015];
            _x setSkill ["spotdistance",    0.015];
            _x setSkill ["commanding",      0.2];
            _x setSkill ["general",         1.0];
        } forEach allUnits;
    };

/*           ACE            */

    ACE_maxWeightCarry = 7500;
    ACE_maxWeightDrag = 10000;

/*           ACRE            */
    [true,true] call acre_api_fnc_setupMission;
    
/*           DEBUG              */
    if (getNumber (missionConfigFile >> "CfgSettings" >> "isDebugMode") == 1) then {
        ["DEBUG MODE IS ACTIVE!", "WARNING", [true, false, true]] call CBA_fnc_debug;
        logEntities;
    };

/*           MODULES            */
