#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, SPC.Turn.J
 * This function return a array of content
 *
 * Arguments:
 * 0: Crate type <STRING>
 * 1: Return only keys <BOOLEAN>
 *
 * Return:
 * ARRAY of items and amounts or items or empty
 *
 * Example:
 * [""] call cScripts_fnc_logistics_getContainer;
 * ["", false] call cScripts_fnc_logistics_getContainer;
 *
 * Public: Yes
 */

params [
    ["_key", "", [""]], 
    ["_keysOnly", false, [false]]
];

if (_key == "") exitWith {};

private _containerMap = GVAR(DATABASE);
private _container = _containerMap getOrDefaultCall [_key, {SHOW_WARNING_1("Logistics", "%1 does not exist.", _key); []}];

if (_keysOnly) then {
     private _containerItemMap = createHashMapFromArray _container;
     _container = keys _containerItemMap;
};

if (isNil{_container}) exitWith {ERROR_1("Logistics", "%1 returned null.", _key);};

_container;
