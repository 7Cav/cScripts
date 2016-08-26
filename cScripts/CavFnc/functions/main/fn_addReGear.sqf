/*
 * Author: CPL.Brostrom.A 
 * This adds a adda ction as well as a ACE interaction reGear selection. The script reapplyes the players start loadout.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_addReGear
 */
 
params [["_object", objNull, [objNull]]];

// Make addAction
_object addAction ["   <t color='#ffcc33'>ReGear</t>", {
    if (vehicleVarName player == "") then {
        [player, typeOf player] call Poppy_fnc_applyLoadout;
    } else {
        [player, vehicleVarName player] call Poppy_fnc_applyLoadout;
    };
}];

// Make ACE Interaction for ReGear
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