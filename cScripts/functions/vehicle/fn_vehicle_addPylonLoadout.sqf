#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function apply loadouts to vehicles.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["vic"] call cScripts_fnc_vehicle_addPylonLoadout
 */

params [["_vehicle", objNull, [objNull]]];

if (isNull _vehicle) then {["Vehicle is null and not defined"] call FUNC(error);};
if (_vehicle iskindOf "man") exitWith {};
if (!isNil{_vehicle getVariable QEGVAR(Vehicle,PylonApplyed)}) exitWith {[format["Vehicle loadouts already applied for %1.", _vehicle]] call FUNC(warning);};

#ifdef DEBUG_MODE
    [formatText["Applying vehicle functions to %1.", _vehicle]] call FUNC(info);
#endif

private _pylon = [];

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    _pylon = ["rhsusf_m1a1tank_base", "default"] call EFUNC(vehicle,getPylon);
    [_vehicle, "default", _pylon] call EFUNC(vehicle,applyLoadout);
};

_vehicle setVariable [QEGVAR(Vehicle,PylonApplyed), true];
