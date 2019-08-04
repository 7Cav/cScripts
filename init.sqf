#include "cScripts\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This is the mission init.sqf this is run witout exceptions on mission start.
 * Some sections in this script only run when your on a multiplayer enviroment to avoid errors and issues.
 * Read more about Initzialisation order here: https://community.bistudio.com/wiki/Initialization_Order
 */

#ifdef DEBUG_MODE
    ["init Initializing."] call FUNC(logInfo);
    [formatText["cScripts Version %1 is running.", VERSION]] call FUNC(logInfo);
    [formatText["Debug mode is currently active."]] call FUNC(logWarning);
    logEntities;
#endif

enableSaving [false, false];
tawvd_disablenone = true;

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;

if (isMultiplayer || isDedicated) then {
    if EGVAR(Settings,enableVCOMAI) then {
        ["Initializing VCOM AI..."] call FUNC(logInfo);
        execVM "cScripts\Vcom\VcomInit.sqf";
    } else {
        ["VCOM AI is disabled applying cScripts custom ai difficuly..."] call FUNC(logInfo);
        {
            _x setSkill ["aimingspeed",     0.420];
            _x setSkill ["aimingaccuracy",  1.000];
            _x setSkill ["aimingshake",     0.360];
            _x setSkill ["spottime",        1.000];
            _x setSkill ["spotdistance",    1.000];
            _x setSkill ["commanding",      1.0];
            _x setSkill ["general",         1.0];
        } forEach allUnits;
    };
} else {
    ["Mission is running on a singelplayer enviroment."] call FUNC(logWarning);
};

#ifdef DEBUG_MODE
    ["init initialization completed."] call FUNC(logInfo);
#endif

/* APPLY STUFF ONLY BELOW THIS LINE */
