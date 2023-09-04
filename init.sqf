#include "cScripts\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This is the mission init.sqf this is run witout exceptions on mission start.
 * Some sections in this script only run when your on a multiplayer enviroment to avoid errors and issues.
 * Read more about Initzialisation order here: https://community.bistudio.com/wiki/Initialization_Order
 */

if (!isMultiplayer) then {SHOW_CHAT_WARNING("", "Mission is running on singelplayer enviroment!");};
#ifdef DEBUG_MODE
    SHOW_INFO("init", "Initializing...");
    SHOW_CHAT_INFO_1("init", "cScripts Version %1 is running.", VERSION);
    SHOW_CHAT_WARNING("init", "Debug mode is currently active.");
    logEntities;
#endif

enableSaving [false, false];

// To Turns off or on ambient Wildelife, Ambient Sounds and wind sound strenght.
enableEnvironment [false, true, 1];

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;

INFO("init", "Initialization completed.");

/* APPLY STUFF ONLY BELOW THIS LINE */
