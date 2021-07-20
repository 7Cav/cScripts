#include "cScripts\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This is the mission init.sqf this is run witout exceptions on mission start.
 * Some sections in this script only run when your on a multiplayer enviroment to avoid errors and issues.
 * Read more about Initzialisation order here: https://community.bistudio.com/wiki/Initialization_Order
 */

if (!isMultiplayer) then {["Mission is running on singelplayer enviroment!", "", true] call FUNC(warning)};
#ifdef DEBUG_MODE
    ["init Initializing.", "init"] call FUNC(info);
    [format["cScripts Version %1 is running.",VERSION], "init"] call FUNC(info);
    [format["Debug mode is currently active."], "init", true] call FUNC(warning);
    logEntities;
#endif

// ACRE radio init
if (isMultiplayer) then {
    if (EGVAR(patches,usesACRE) && EGVAR(Settings,enableACRE)) then {
        GVAR(Radio) = false;
        ["Setting up ACRE preset...", "init"] call FUNC(info);
        call EFUNC(gear,setupRadios);
        GVAR(Radio) = true;
    };
} else {
    ["Mission in singelplayer enviroment ACRE radio preset will not be set!", "init", true] call FUNC(warning);
};

enableSaving [false, false];
tawvd_disablenone = true;

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;

#ifdef DEBUG_MODE
    ["init initialization completed.", "init"] call FUNC(info);
#endif

/* APPLY STUFF ONLY BELOW THIS LINE */
