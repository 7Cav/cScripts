/*
 * Author: CPL.Brostrom.A 
 * This script auto generates the selections.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: actionName <STRING>
 * 2: Lable <STRING>
 * 3: Path to icon <STRING>
 * 4: Categorys <ARRAY> (Optional)
 *
 * Example:
 * [this,"MyCategory","Insignia","icon.paa",["ACE_MainActions"]] call cScripts_fnc_addAceCategory;
 * [this,"MySecondCategory","Misc","data/icon.paa",["ACE_MainActions","MyCategory"]] call cScripts_fnc_addAceCategory;
 */
 
#include "..\script_component.hpp";

params [
    ["_object", objNull, [objNull]],
    ["_name", "", [""]],
    ["_lable", "", [""]],
    ["_icon", "", [""]],
    ["_category", ["ACE_MainActions"], [[]]]
];

// Make ACE Category
private _insigniaMenu = [_name, _lable, _Icon, {""}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _insigniaMenu] call ace_interact_menu_fnc_addActionToObject;