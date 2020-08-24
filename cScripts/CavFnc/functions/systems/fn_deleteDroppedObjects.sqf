#include "..\script_component.hpp";
/*
 * This function deletes objects and junk on the ground in a given radius.
 *
 * Arguments:
 * 0: Object
 * 1: Radius
 *
 * Example:
 * [this,5] call cScripts_fnc_deleteDroppedObjects
 * [_object,5] call cScripts_fnc_deleteDroppedObjects
 *
 */

params [
    ["_object", objNull, [objNull]],
    ["_radius", 5]
];

[_object, "ContainerClosed", {
    params ["_object", "_unit"];
    [{(count ((_this select 0) nearEntities ["Man", (_this select 1)]) < 1)}, {{ deleteVehicle _x; } forEach nearestObjects [getpos (_this select 0), ["WeaponHolder", "GroundWeaponHolder"], (_this select 1)];}, [_object, _thisArgs]] call CBA_fnc_waitUntilAndExecute;
}, _radius] call CBA_fnc_addBISEventHandler;