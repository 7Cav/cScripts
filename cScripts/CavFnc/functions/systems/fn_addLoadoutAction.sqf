#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This adds a addAction option to the given item for a given loadout defined in cfgLoadouts.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Lable <STRING>
 * 1: Loadout classname <CLASSNAME>
 *
 * Example:
 * [this,"My Custom Loadout", "My_Loadout_Classname"] call cScripts_fnc_addLoadoutAction
 *
 * Public: Yes
 */

params [
    ["_object", objNull, [objNull]],
    ["_lable", "", [""]],
    ["_className", "", [""]]
];

if (_lable == "") exitWith {};
if (_className == "") exitWith {};

_object addAction [format ["<t color='#ffffcc'>%1</t>", _lable], {
    [player, _this select 3] call Poppy_fnc_applyLoadout;
}, _className, 1.5, true, true, "", "", 5];
