#include "..\script_component.hpp";
/*
 * This function deletes objects and junk on the ground in a given radius.
 *
 * Arguments:
 * 0: Object
 * 1: Radius
 *
 * Example:
 * [this,100] call cScripts_fnc_deleteDroppedObjects
 * [_object,100] call cScripts_fnc_deleteDroppedObjects
 *
 */

params [
    ["_object", objNull, [objNull]],
    ["_radius", 5]
];

[_object, "ContainerClosed", {
   params ["_object", "_unit"];
   if ( count (_object nearEntities ["Man", _thisArgs]) < 2) then {
        { deleteVehicle _x; } forEach nearestObjects [getpos _object, ["WeaponHolder", "GroundWeaponHolder"], _thisArgs];
   };
}, _radius] call CBA_fnc_addBISEventHandler;