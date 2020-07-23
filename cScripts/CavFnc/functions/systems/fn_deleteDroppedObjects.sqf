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
    ["_radius", 50]
];

_object setVariable ["_deleteRadius", _radius];

_object addEventHandler ["ContainerClosed", {
    params ["_object", "_unit"];

    private _radius = _object getVariable "_deleteRadius";
    { deleteVehicle _x; } forEach nearestObjects [getpos _object,["WeaponHolder","GroundWeaponHolder"],_radius]

}];