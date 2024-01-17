#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function initializes and apply loadouts to all units on the eden mission.
 *
 * Arguments:
 * Nothing
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_eden_initLoadouts;
 *
 */

getMissionLayerEntities 42 params [["_objects", []]];

{
    _x parmas ["_object"];
    if (_object isKindOf "CAManBase") then {
        if (
            _object in switchableUnits
            && {typeOf _object != "HeadlessClient_F"}
        ) then {
            private _loadout = [_object] call EFUNC(gear,selectLoadout);
            [_object, _loadout] call EFUNC(gear,applyLoadout);
        };
    };
} forEach _objects;