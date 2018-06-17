/*
 * Author: CPL.Brostrom.A
 * This is the mission init.sqf this is run witout exceptions on mission start.
 * Some sections in this script only run when your on a multiplayer enviroment to avoid errors and issues.
 * Read more about Initzialisation order here: https://community.bistudio.com/wiki/Initialization_Order
 */

enableSaving [false, false];
tawvd_disablenone = true;

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;

// Check if the mission is running on multiplayer.
if (!isMultiplayer) then {
    ["Mission is running on singelplayer enviroment.",true] call cScripts_fnc_logWarning;
};

// Applying AI difficultlies
if (isMultiplayer) then {
    switch (cScripts_Settings_setAiSystemDifficulty) do {
        // Day
        case (0): {
            ["Applying Day AI skill level to all units.",false] call cScripts_fnc_logInfo;
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
        // Night / Jungle
        case (1): {
            ["Applying Night AI skill level to all units.",false] call cScripts_fnc_logInfo;
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
} else {
    ["Running mission on singelplayer ai setting is not applied.",true] call cScripts_fnc_logWarning;
};

// Enable debug mode if on multiplayer.
if (isMultiplayer) then {
    if (cScripts_Settings_setDebugMode) then {
        ["Debug Mode is active.",true] call cScripts_fnc_logWarning;
        titleText ["Warning! cScripts debug mode is active!", "PLAIN DOWN", 3];
        logEntities;
    };
};

/* APPLY STUFF ONLY BELOW THIS LINE */
