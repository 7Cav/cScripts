#include "cScripts\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This is the mission init.sqf this is run witout exceptions on mission start.
 * Some sections in this script only run when your on a multiplayer enviroment to avoid errors and issues.
 * Read more about Initzialisation order here: https://community.bistudio.com/wiki/Initialization_Order
 */

#ifdef DEBUG_MODE
    ["init Initializing."] call FUNC(logInfo);
    [formatText["cScripts Version %1 is running.",VERSION]] call FUNC(logInfo);
    [formatText["Debug mode is currently active."]] call FUNC(logWarning);
    logEntities;
#endif

enableSaving [false, false];
tawvd_disablenone = true;

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;

execVM "cScripts\Vcom\VcomInit.sqf";

#ifdef DEBUG_MODE
    ["init initialization completed."] call FUNC(logInfo);
#endif

/* APPLY STUFF ONLY BELOW THIS LINE */
