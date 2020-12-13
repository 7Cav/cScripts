#include "cScripts\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This is the mission init.sqf this is run witout exceptions on mission start.
 * Some sections in this script only run when your on a multiplayer enviroment to avoid errors and issues.
 * Read more about Initzialisation order here: https://community.bistudio.com/wiki/Initialization_Order
 */

#ifdef DEBUG_MODE
    ["init Initializing.", "init"] call FUNC(logInfo);
    [formatText["cScripts Version %1 is running.",VERSION], "init"] call FUNC(logInfo);
    [formatText["Debug mode is currently active."], "init"] call FUNC(logWarning);
    logEntities;
#endif

if (isMultiplayer) then {["Mission is running on singelplayer enviroment."] call FUNC(logWarning)};

enableSaving [false, false];
tawvd_disablenone = true;

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;


#ifdef DEBUG_MODE
    ["init initialization completed.", "init"] call FUNC(logInfo);
#endif

/* APPLY STUFF ONLY BELOW THIS LINE */
