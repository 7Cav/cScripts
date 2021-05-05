#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function apply functions to vehicles.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["vic"] call cScripts_fnc_vehicle_addFunctions
 */

params [["_vehicle", objNull, [objNull]]];

if (_vehicle iskindOf "man") exitWith {};
if (!isNil{_vehicle getVariable QEGVAR(Vehicle,Functions)}) exitWith {[formatText["Vehicle settings already applied for %1.", _vehicle]] call FUNC(warning);};

#ifdef DEBUG_MODE
    [formatText["Applying vehicle functions to %1.", _vehicle]] call FUNC(logInfo);
#endif

if (_vehicle iskindOf "Heli_Transport_01_base_F") then {
    [_vehicle] call FUNC(addGetOutHelo);
};
if (_vehicle iskindOf "rhs_uh1h_base") then {
    [_vehicle] call FUNC(addGetOutHelo);
};
if (_vehicle iskindOf "RHS_UH1_Base") then {
    [_vehicle] call FUNC(addGetOutHelo);
};

if (_vehicle iskindOf "RHS_Mi24_base") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addLineJump);
};

if (_vehicle iskindOf "RHS_Mi8_base") then {
    [_vehicle] call FUNC(addLineJump);
};

if (_vehicle iskindOf "Heli_Transport_02_base_F") then {
    [_vehicle] call FUNC(addLineJump);
};

if (_vehicle iskindOf "RHS_C130J_Base") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
};

_vehicle setVariable [QEGVAR(Vehicle,Functions), true];