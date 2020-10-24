#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A (With help from Commy2)
 * This function generates a quick selection button.
 *
 * Arguments:
 * 0: Object <STRING>
 * 1: Lable <STRING>                                        [Default: ""]
 * 2: Loadout classname <STRING>                            [Default: ""]
 * 3: Path to icon <STRING>                     (Optional)  [Default: ""]
 * 4: Categorys <ARRAY>                         (Optional)  [Default: ["ACE_MainActions","cScripts_Loadout_Cat_Main"]]
 * 5: Platoon required to use                   (Optional)  [Default: ""]
 * 6: Require Company Variable <BOOL>           (Optional)  [Default: false]
 *
 * Example:
 * [this,"Rifleman","Class_Rifleman"] call cScripts_fnc_addLoadoutSelection;
 * [this,"Rifleman","Class_Rifleman","",["ACE_MainActions","cScripts_Loadout_Cat_Main"],""] call cScripts_fnc_addLoadoutSelection;
 * [this,"Rifleman","Class_Rifleman","",["ACE_MainActions","cScripts_Loadout_Cat_Main"],"", false] call cScripts_fnc_addLoadoutSelection;
 */

params [
    ["_object", objNull, [objNull]],
    ["_lable", "", [""]],
    ["_className", "", [""]],
    ["_icon", "", [""]],
    ["_category", ["ACE_MainActions", "cScripts_Loadout_Cat_Main"], [[]]],
    ["_platoon", "", [""]],
    ["_allowOnlyForCompany", false]
];

private _condition = { true };

if (_allowOnlyForCompany) then {
    _condition = {
        (_this select 2) params ["", "_platoon"];
        [player, _platoon] call FUNC(hasCompanyVariable);
    };
};

private _statement = {
    (_this select 2) params ["_className"];
    [player] call EFUNC(gear,removeLoadout);
    [player, _className] call EFUNC(gear,applyLoadout);
};

private _action = [format ["cScripts_Loadout_%1", _className], _lable, _icon, _statement, _condition, nil, [_className, _platoon]] call ace_interact_menu_fnc_createAction;
private _actionType = if (isPlayer _object) then {1} else {0};
[_object, _actionType, _category, _action] call ace_interact_menu_fnc_addActionToObject;

#ifdef DEBUG_MODE
    [format["%1; selector '%2' added for '%3' crate.", _object, _lable, _platoon], "LoadoutSelector"] call FUNC(logInfo);
#endif