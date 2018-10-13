#include "..\script_component.hpp";
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
 * 5: Condition <CODE> (Optional)
 *
 * Example:
 * [this,"MyCategory","Insignia","icon.paa",["ACE_MainActions"]] call cScripts_fnc_addAceCategory;
 * [this,"MySecondCategory","Misc","data/icon.paa",["ACE_MainActions","MyCategory"]] call cScripts_fnc_addAceCategory;
 */

params [
    ["_object", objNull, [objNull]],
    ["_name", "", [""]],
    ["_lable", "", [""]],
    ["_icon", "", [""]],
    ["_category", ["ACE_MainActions"], [[]]],
    ["_condistion",true]
];

// Make ACE Category
private _aceInteractionAction = [_name, _lable, _Icon, {}, {_condistion}] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _aceInteractionAction] call ace_interact_menu_fnc_addActionToObject;
