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
    ["_condition", true]
];

[formatText["Function 'addAceCategory' on %1 is depricated (addAceCategory => createActionCategory)...", _object], "DEPRICATED"] call FUNC(logWarning);
[_object, _name, _lable, _icon, _category, {_condition}] call FUNC(createActionCategory);