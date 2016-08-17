/*
 * Author: CPL.Brostrom.A 
 * This adds a sandbox version of a cavbox used for missions.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initMainSandbox;
 */

#include "..\script_component.hpp";

params ["_object"];

if (isServer) then {
   [_object] call FUNC(equipBase);
};

_object addAction ["<img image='cScripts\Data\Icon\icon_00.paa' />  7th Cavalry Equipment Crate", {}];

_object addAction ["   <t color='#ffcc33'>ReGear</t>", {
    if (vehicleVarName player == "") then {
        [player, typeOf player] call Poppy_fnc_applyLoadout;
    } else {
        [player, vehicleVarName player] call Poppy_fnc_applyLoadout;
    };
}];

_object addAction ["   <t color='#ff6633'>Arsenal</t>", {["Open",true] spawn BIS_fnc_arsenal;}];

[_object] call FUNC(initQuickSelect);

[_object] call FUNC(initInsignia);

_object addAction ["---", {}];



// ACE Actions (reGear)
private _Icon = "cScripts\Data\Icon\icon_00.paa";

private _reGearCondition = {true};
private _reGearStatement = {
    if (vehicleVarName player == "") then {
        [player, typeOf player] call Poppy_fnc_applyLoadout;
    } else {
        [player, vehicleVarName player] call Poppy_fnc_applyLoadout;
    };
};
private _reGearAction = ["cScriptsReGearAce", "ReGear", _Icon, _reGearStatement, _reGearCondition] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _reGearAction] call ace_interact_menu_fnc_addActionToObject;

// ACE Actions (Arsenal)
private _arsenalCondition = {true};
private _arsenalStatement = {["Open",true] spawn BIS_fnc_arsenal;};
private _arsenalAction = ["cScriptsArsenalAce", "Arsenal", _Icon, _arsenalStatement, _arsenalCondition] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _arsenalAction] call ace_interact_menu_fnc_addActionToObject;

// ACE Not loadable
[_object, false, 999] call ace_cargo_fnc_makeLoadable;
