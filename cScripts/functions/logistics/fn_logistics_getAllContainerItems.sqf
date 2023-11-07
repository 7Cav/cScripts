#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, SPC.Turn.J
 * This function return a array of all available content in logistics.
 *
 * Arguments:
 * 0: Return only keys <BOOLEAN>
 *
 * Return:
 * ARRAY of items and amounts or items or empty
 *
 * Example:
 * call cScripts_fnc_logistics_getAllContainerItems;
 * [false] call cScripts_fnc_logistics_getAllContainerItems;
 *
 * Public: Yes
 */

params [
    ["_keysOnly", false, []]
];

private _containerMap = GVAR(DATABASE);
private _allContainers = [];

{
    if (_keysOnly) then {
        private _keys = [_x, true] call EFUNC(logistics,getContainer);
        _allContainers append _keys;
    } else {
        _allContainers append _y;
    };
} foreach _containerMap;

if (_keysOnly) then {
    _allContainers = _allContainers arrayIntersect _allContainers;
};

_allContainers;
