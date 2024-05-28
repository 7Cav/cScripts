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
private _pylon = [];

{
    if (_vehicle iskindOf _x) exitWith {
        _pylon = [_x, "default"] call EFUNC(vehicle,getPylonLoadout);
        INFO_3("VehicleDefaultLoadout", "Vehicle %1 [%2] applied have loadout %3.", _vehicle, typeOf _vehicle, _pylon);
        [_vehicle, "default", _pylon] call EFUNC(vehicle,applyLoadout);
    };
} forEach (keys GVAR(PYLONS));

if (count _pylon == 0) then {
    WARNING_2("VehicleDefaultLoadout", "Vehicle %1 [%2] has no loadout setup.", _vehicle, typeOf _vehicle);
} else {
    _vehicle setVariable ["ace_rearm_scriptedLoadout", true, true];
};

_vehicle setVariable [QEGVAR(VehicleFunc,DefaultPylon), true, true];
