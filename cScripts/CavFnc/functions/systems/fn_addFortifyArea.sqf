#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function is partly based on Bojan and PFC.Vex.W Fortify system.
 * This function setup a aria around the given vehicle to alow construction of fortification structures
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["myTruck"] call cScripts_fnc_addFortifyArea
 * ["myTruck", 50] call cScripts_fnc_addFortifyArea
 *
 * Public: Yes
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_radius", 50, [50]]
];

if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Fortify)}) exitWith {[formatText["Fortify setting already applied for %1.", _vehicle]] call FUNC(logWarning);};

#ifdef DEBUG_MODE
    [formatText["Adding Fortify location to %1 with a radius of %2.", _vehicle, _radius]] call FUNC(logInfo);
#endif

private _newLocation = [_vehicle, _radius, _radius, 0, false];
private _fortifyLocations = missionNamespace getVariable ["acex_fortify_locations", []];
_fortifyLocations pushBack _newLocation;
missionNamespace setVariable ["acex_fortify_locations", _fortifyLocations];

_vehicle setVariable [QEGVAR(Vehicle,Fortify), [_vehicle, _radius]];
