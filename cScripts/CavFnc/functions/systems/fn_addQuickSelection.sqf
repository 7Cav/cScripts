#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A (With help from Commy2)
 * This function generates a quick selection button.
 *
 * Arguments:
 * 0: Object <STRING>
 * 1: Lable <STRING>
 * 2: Loadout classname <STRING>
 * 3: Path to icon <STRING>                                 (Optional)  [Default: ""]
 * 4: Categorys <ARRAY>                                     (Optional)  [Default: ["ACE_MainActions","cScriptQuickSelectionMenu"]]
 * 5: Platoon required to use                               (Optional)  [Default: ""]
 * 6: Require Company Variable <BOOL>                       (Optional)  [Default: false]
 *
 * Example:
 * [this,"Rifleman","Class_Rifleman"] call cScripts_fnc_addQuickSelection;
 * [this,"Rifleman","Class_Rifleman","",["ACE_MainActions","cScriptQuickSelectionMenu"],""] call cScripts_fnc_addQuickSelection;
 * [this,"Rifleman","Class_Rifleman","",["ACE_MainActions","cScriptQuickSelectionMenu"],"", false] call cScripts_fnc_addQuickSelection;
 */

params [
    ["_object", objNull, [objNull]],
    ["_lable", "", [""]],
    ["_className", "", [""]],
    ["_icon", "", [""]],
    ["_category", ["ACE_MainActions","cScriptQuickSelectionMenu"], [[]]],
    ["_platoon", "", [""]],
    ["_allowOnlyForCompany", true]
];

private _condition = {true};

if (_allowOnlyForCompany) then {
    _condition = {
        (_this select 2) params ["", "_platoon"];
        [player, _platoon] call FUNC(hasCompanyVariable);
    };
};

private _statement = {
    (_this select 2) params ["_className"];
    [player, _className] call Poppy_fnc_applyLoadout;
};

private _action = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, _statement, _condition, nil, [_className, _platoon]] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _action] call ace_interact_menu_fnc_addActionToObject;