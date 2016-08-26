/*
 * Author: CPL.Brostrom.A 
 * This generates quick selection buttons to given selections.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Action Name <STRING>
 * 2: Classname <STRING>
 *
 * Example:
 * ["this","Rifleman","C_R"] call cScripts_fnc_addQuickSelection;
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]], ["_lable", "", [""]], ["_className", "", [""]]];
params [
    ["_object", objNull, [objNull]],
    ["_lable", "", [""]],
    ["_className", "", [""]],
    ["_icon", "", [""]],
    ["_category", ["ACE_MainActions","cScriptQuickSelectionMenu"], [[]]]
];
//make addAction
_object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className];

//make aceAction
private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _lable, "", {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _quickSelection] call ace_interact_menu_fnc_addActionToObject;