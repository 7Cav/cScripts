#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, SPC.Turn.J
 * This function return a array of content
 *
 * Arguments:
 * 0: Crate type <STRING>
 *
 * Return:
 * ARRAY of items or empty
 *
 * Example:
 * [""] call cScripts_fnc_logistics_getContainer;
 */

params [
    ["_key", "", [""]], 
    ["_keysOnly", false, [false]]
];

if (_key == "") exitWith {};

private _containerMap = GVAR(DATABASE);
private _container = _containerMap getOrDefaultCall [_key, {[format["%1 does not exist.", _key], "Logistics"] call FUNC(warning); []}];

if (_keysOnly) then {
     private _containerItemMap = createHashMapFromArray _container;
     _container = keys _containerItemMap;
};

_container;
