/*           RULES            */

    enableSaving [false, false];
    tawvd_disablenone = true;

    switch (cScripts_Settings_setAiSystemDifficulty) do {
        // Default
        case (0): {
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
        //Jungel or Night
        case (1): {
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
    };

/*           ACE            */

    ACE_maxWeightCarry = 7500;
    ACE_maxWeightDrag = 10000;

/*           DEBUG              */

    if (cScripts_Settings_setDebugMode) then {
        diag_log formatText ["[cScripts] WARNING: Debug Mode is active."];
        titleText ["Warning! cScripts debug mode is active!", "PLAIN DOWN", 3];
        logEntities;
    };

/*           MODULES            */
