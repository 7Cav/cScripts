#include "cScripts\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This is the mission initServer.sqf this is run witout exceptions on mission start.
 * Some sections in this script only run when your on a multiplayer enviroment to avoid errors and issues.
 * Read more about Initzialisation order here: https://community.bistudio.com/wiki/Initialization_Order
 */

// Fortify
[cScripts_Settings_setFortifyBudget] call FUNC(initFortify);
