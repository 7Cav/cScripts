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

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    _pylon = ["rhsusf_m1a1tank_base", "default"] call EFUNC(vehicle,getPylon);
    [_vehicle, "default", _pylon] call EFUNC(vehicle,applyLoadout);
};

if (_vehicle iskindOf "I_APC_Wheeled_03_cannon_F" && !(_vehicle isKindOf "cav_dragoon_unarmed_base_F")) then {
    _pylon = ["I_APC_Wheeled_03_cannon_F", "default"] call EFUNC(vehicle,getPylon);
    [_vehicle, "default", _pylon] call EFUNC(vehicle,applyLoadout);
};

_vehicle setVariable [QEGVAR(VehicleFunc,DefaultPylon), true, true];
