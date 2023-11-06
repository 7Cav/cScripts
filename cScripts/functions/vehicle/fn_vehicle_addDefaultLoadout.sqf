#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function apply a default loadouts to a selected vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call cScripts_fnc_vehicle_addDefaultLoadout;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (!isServer) exitWith {};
if (!isNil{_vehicle getVariable QEGVAR(VehicleFunc,DefaultPylon)}) exitWith {SHOW_WARNING_2("VehicleDefaultLoadout", "Vehicle loadouts already applied for %1. [%2].", _vehicle, typeOf _vehicle);};
if (!(_vehicle call FUNC(isValidFaction))) exitWith {};

INFO_2("VehicleDefaultLoadout", "Applying vehicle loadout to %1 [%2].", _vehicle, typeOf _vehicle);

// Default pylon applied
private _vehicles = [true] call EFUNC(vehicle,getPylon);
private _pylon = [];

{
    if (_vehicle iskindOf _x) then {
        _pylon = [_x, "default"] call EFUNC(vehicle,getPylon);
        [_vehicle, "default", _pylon] call EFUNC(vehicle,applyLoadout);
    };
} forEach _vehicleType;

_vehicle setVariable [QEGVAR(VehicleFunc,DefaultPylon), true, true];
