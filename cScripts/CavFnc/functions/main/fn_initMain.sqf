/*
 * Author: CPL.Brostrom.A 
 * This populats a given object with items and commands used during operations.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initMain;
 */

#include "..\script_component.hpp";

params ["_object"];

if (isServer) then {
   [_object] call FUNC(equipBase);
};

_object addAction ["<img image='cScripts\Data\Icon\icon_00.paa' /> 7th Cavalry Equipment Crate", {}];

_object addAction ["   <t color='#ffcc33'>ReGear</t>", {
    if (vehicleVarName player == "") then {
        [player, typeOf player] call Poppy_fnc_applyLoadout;
    } else {
        [player, vehicleVarName player] call Poppy_fnc_applyLoadout;
    };
}];

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

// ACE Not loadable
[_object, false, 999] call ace_cargo_fnc_makeLoadable;
