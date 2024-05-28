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
 * 5: Company required to use                   (Optional)  [Default: ""]
 * 6: Allow All Loadouts <BOOL>                 (Optional)  [Default: false]
 *
 * Example:
 * [this,"Rifleman","Class_Rifleman"] call cScripts_fnc_addLoadoutSelection;
 * [this,"Rifleman","Class_Rifleman","",["ACE_MainActions","cScripts_Loadout_Cat_Main"],""] call cScripts_fnc_addLoadoutSelection;
 * [this,"Rifleman","Class_Rifleman","",["ACE_MainActions","cScripts_Loadout_Cat_Main"],"", false] call cScripts_fnc_addLoadoutSelection;
 * 
 * Public: No
 */

params [
    ["_object", objNull, [objNull]],
    ["_lable", "", [""]],
    ["_className", "", [""]],
    ["_icon", "", [""]],
    ["_category", ["ACE_MainActions", "cScripts_Loadout_Cat_Main"], [[]]],
    ["_company", "", [""]],
    ["_platoon", 0, [0]],
    ["_allowAllLoadouts", false]
];

private _condition = {
    params ["", "", "_params"];
    _params params ["_className", "_company", "_allowAllLoadouts"];
    if (_allowAllLoadouts) exitWith {true};
    if ([player] call EFUNC(gear,getLoadoutName) == _className) exitWith {true};
    if ([_company,_platoon] call FUNC(allowLoadout)) exitWith {true};
    false
};

private _action = [format ["cScripts_Loadout_%1", _className], _lable, _icon, {
    params ["", "", "_params"];
    _params params ["_className"];
    [player] call EFUNC(gear,removeLoadout);
    [player, _className] call EFUNC(gear,applyLoadout);
}, _condition, {}, [_className, _company, _allowAllLoadouts]] call ace_interact_menu_fnc_createAction;

private _actionType = parseNumber (isPlayer _object);
[_object, _actionType, _category, _action] call ace_interact_menu_fnc_addActionToObject;

INFO_4("LoadoutSelector", "%1; selector '%2' with type %3 added for '%4' crate.", _object, _lable, _actionType, _company);
