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

#ifdef DEBUG_MODE
    ["Applying Event Handers (init) to vehicles for function expantions...", "InitVehicle"] call FUNC(info);
#endif

if !(EGVAR(Settings,enableVehicleSystem)) exitWith {};

["AllVehicles", "init", {
    _this params ["_vehicle"];
    if (_vehicle iskindOf "man") exitWith {};
    _vehicle call EFUNC(vehicle,addFunctions);
    _vehicle call EFUNC(vehicle,addInventory);
    _vehicle call EFUNC(vehicle,addPylonLoadout);
    _vehicle call EFUNC(vehicle,addCosmetics);
    _vehicle call EFUNC(vehicle,addStagingActions);
    _vehicle call EFUNC(vehicle,addRadio);
}, true, [], true] call CBA_fnc_addClassEventHandler;

{
    _x addEventHandler ["CuratorObjectPlaced", {
        params ["", "_vehicle"];
        if (_vehicle iskindOf "man") exitWith {};
        _vehicle call EFUNC(vehicle,addFunctions);
        _vehicle call EFUNC(vehicle,addInventory);
        _vehicle call EFUNC(vehicle,addPylonLoadout);
        _vehicle call EFUNC(vehicle,addCosmetics);
        _vehicle call EFUNC(vehicle,addStagingActions);
        _vehicle call EFUNC(vehicle,addRadio);
    }];
} forEach allCurators;