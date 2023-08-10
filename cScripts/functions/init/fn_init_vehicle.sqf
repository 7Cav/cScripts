#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandelers adding cav functionality to all vehicles.
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_init_vehicle
 *
 * Public: No
 */

INFO("InitVehicle","Applying Event Handers (init) to vehicles for function expantions...");

if !(EGVAR(Settings,enableVehicleSystem)) exitWith {};

//Events tied to init
[QEGVAR(vehicle,functionsEH), {params ["_vehicle"]; _vehicle call EFUNC(vehicle,addFunctions)} ] call CBA_fnc_addEventHandler;
[QEGVAR(vehicle,inventoryEH), {params ["_vehicle"]; _vehicle call EFUNC(vehicle,addInventory)} ] call CBA_fnc_addEventHandler;
[QEGVAR(vehicle,loadoutEH), {params ["_vehicle"]; _vehicle call EFUNC(vehicle,addDefaultLoadout)} ] call CBA_fnc_addEventHandler;
[QEGVAR(vehicle,cosmeticsEH), {params ["_vehicle"]; _vehicle call EFUNC(vehicle,addCosmetics)} ] call CBA_fnc_addEventHandler;
[QEGVAR(vehicle,stagingEH), {params ["_vehicle"]; _vehicle call EFUNC(vehicle,addStagingActions)} ] call CBA_fnc_addEventHandler;
[QEGVAR(vehicle,radioEH), {params ["_vehicle"]; _vehicle call EFUNC(vehicle,addStagingActions)} ] call CBA_fnc_addEventHandler;


["AllVehicles", "initPost", {
    params ["_vehicle"];
    // [{
        // params ["_vehicle"];
    // [QEGVAR(vehicle,functionsEH), [_vehicle]] call CBA_fnc_localEvent;
    _vehicle call EFUNC(vehicle,addFunctions);
    [QEGVAR(vehicle,inventoryEH), [_vehicle]] call CBA_fnc_localEvent;
    [QEGVAR(vehicle,loadoutEH), [_vehicle]] call CBA_fnc_serverEvent;
    [QEGVAR(vehicle,cosmeticsEH), [_vehicle]] call CBA_fnc_localEvent;
    [QEGVAR(vehicle,stagingEH), [_vehicle]] call CBA_fnc_globalEvent;
    [QEGVAR(vehicle,radioEH), [_vehicle]] call CBA_fnc_serverEvent;
    // }, [_vehicle], 1] call CBA_fnc_waitAndExecute;
}, true, ["man"], true] call CBA_fnc_addClassEventHandler;