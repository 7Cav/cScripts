#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This script creates a ace category.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: ActionName <STRING>
 * 2: Lable <STRING>
 * 3: Path to icon <STRING>
 * 4: Categorys <ARRAY> (Optional)
 * 5: Condition <CODE> (Optional)
 *
 * Example:
 * [this,"MyCategory","Insignia","icon.paa",["ACE_MainActions"]] call cScripts_fnc_createActionCategory;
 * [this,"MySecondCategory","Misc","data/icon.paa",["ACE_MainActions","MyCategory"]] call cScripts_fnc_createActionCategory;
 */

params [
    ["_object", objNull, [objNull]],
    ["_name", "", [""]],
    ["_lable", "", [""]],
    ["_icon", "", [""]],
    ["_category", ["ACE_MainActions"], [[]]],
    ["_condition", { true }]
];

// Make ACE Category
private _aceInteractionAction = [_name, _lable, _Icon, {}, _condition] call ace_interact_menu_fnc_createAction;
private _actionType = parseNumber (isPlayer _object);
[_object, _actionType, _category, _aceInteractionAction] call ace_interact_menu_fnc_addActionToObject;
