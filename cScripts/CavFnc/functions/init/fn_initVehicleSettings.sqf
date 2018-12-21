#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function apply settings to vehicles.
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initVehicleSettings
 *
 * Public: No
 */
#define DEBUG_MODE;

#ifdef DEBUG_MODE
    ["Setting up init Event Handlers to vehicle to handle settings..."] call FUNC(logInfo);
#endif

["RHS_C130J_Base", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

["Helicopter_Base_F", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
