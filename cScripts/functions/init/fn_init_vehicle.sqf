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

["AllVehicles", "init", {
    _this params ["_vehicle"];
    if (_vehicle iskindOf "man") exitWith {};
    [{
        _this params ["_vehicle"];
        _vehicle call EFUNC(vehicle,addFunctions);
        _vehicle call EFUNC(vehicle,addInventory);
        _vehicle call EFUNC(vehicle,addDefaultLoadout);
        _vehicle call EFUNC(vehicle,addCosmetics);
        _vehicle call EFUNC(vehicle,addStagingActions);
        _vehicle call EFUNC(vehicle,addRadio);
    }, [_vehicle], 1] call CBA_fnc_waitAndExecute;
}, true, [], true] call CBA_fnc_addClassEventHandler;

{
    if (!isNil{_x getVariable QEGVAR(player,zeus)}) exitWith {};
    [QGVAR(setCuratorEventHandlers), [_x]] call CBA_fnc_targetEvent;
} forEach allCurators;