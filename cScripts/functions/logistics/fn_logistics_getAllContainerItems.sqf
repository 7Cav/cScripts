#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, SPC.Turn.J
 * This function return a array of all available content in logistics
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
    ["_keysOnly", false, [false]]
];

private _containerMap = GVAR(DATABASE);
private _container = keys _containerMap;

private _allContainers = [];

{
    if (_keysOnly) then {
        private _containerItemMap = createHashMapFromArray _x;
        _container = keys _containerItemMap;
        _itemList append _container
    } else {
        private _container = _containerMap getOrDefault [_x, []];
        _itemList append _container
    };
} foreach _container;

_allContainers;
