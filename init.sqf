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
    private _english = ["en"] call acre_api_fnc_babelSetSpeakingLanguage;
    private _russian = ["ru"] call acre_api_fnc_babelSetSpeakingLanguage;
    private _greek = ["gr"] call acre_api_fnc_babelSetSpeakingLanguage;
    private _french = ["fr"] call acre_api_fnc_babelSetSpeakingLanguage;
    //private _persian = ["pe"] call acre_api_fnc_babelSetSpeakingLanguage;
    //private _arabic = ["ar"] call acre_api_fnc_babelSetSpeakingLanguage;
    //private _kurdish = ["ku"] call acre_api_fnc_babelSetSpeakingLanguage;

    [ [west, _english], [east, _russian], [civilian, _greek, _french] ] call acre_api_fnc_setupMission;

    //Languishes
    ["en", "English"] call acre_api_fnc_babelAddLanguageType;
    ["ru", "Russian"] call acre_api_fnc_babelAddLanguageType;
    ["gr", "Greek"] call acre_api_fnc_babelAddLanguageType;
    ["fr", "French"] call acre_api_fnc_babelAddLanguageType;

    ["pe", "Persian"] call acre_api_fnc_babelAddLanguageType;
    ["ar", "Arabic"] call acre_api_fnc_babelAddLanguageType;
    ["ku", "Kurdish"] call acre_api_fnc_babelAddLanguageType;

/*           DEBUG              */
    if (getNumber (missionConfigFile >> "CfgSettings" >> "isDebugMode") == 1) then {
        ["DEBUG MODE IS ACTIVE!", "WARNING", [true, false, true]] call CBA_fnc_debug;
        logEntities;
    };
/*           MODULES            */
