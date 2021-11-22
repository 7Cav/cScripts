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
    [format["cScripts Version %1 is running.", VERSION], "init"] call FUNC(info);
    [format["Debug mode is currently active."], "init", true] call FUNC(warning);
    logEntities;
#endif

enableSaving [false, false];

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;

#ifdef DEBUG_MODE
    ["init initialization completed.", "init"] call FUNC(info);
#endif

/* APPLY STUFF ONLY BELOW THIS LINE */
