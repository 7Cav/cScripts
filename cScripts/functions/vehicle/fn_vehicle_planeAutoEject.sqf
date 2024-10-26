#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, Elemtael
 * This function adds a auto ejection system to a vehicle
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["my_jetFighter"] call cScripts_fnc_addLineJump
 *
 */

params [["_vehicle", objNull, [objNull]]];

// Check so the options arent added twice.
if (!isNil {_vehicle GETVAR(QEGVAR(VehicleFunc,AutoEject),nil)}) exitWith {SHOW_WARNING_1("AutoEject", "Aircraft AutoEject already applied for %1.", _vehicle)};

_vehicle addEventHandler ["Hit", {
	params ["_vehicle"];
    if (damage _unit > 0.95) exitWith {
        [driver _vehicle, _vehicle] call EFUNC(para,haloJump);
    };
}];

_vehicle SETVAR(QEGVAR(VehicleFunc,AutoEject),true);
