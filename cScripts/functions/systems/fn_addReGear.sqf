#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This adds a reGear selection option. The script reApplyes the players start loadout.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: ACE Category <ARRAY> (Optional)
 *
 * Example:
 * [this] call cScripts_fnc_addReGear
 * [this] call cScripts_fnc_addReGear
 * [this, ["ACE_MainActions"]] call cScripts_fnc_addReGear
 */

params [
    ["_object", objNull, [objNull]],
    ["_category", ["ACE_MainActions"], [["ACE_MainActions"]]]
];

// Make addAction
if (!isPlayer _object) then {
    _object addAction ["   <t color='#ffcc33'>ReGear</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [QEGVAR(gear,applyLoadout)] call CBA_fnc_localEvent;
        [[],["You have been rearmed"], [""], [""]] call CBA_fnc_notify;
    }, [], 1.5, true, true, "", "true", 5];
};

// Make ACE Interaction for ReGear
private _Icon = "cScripts\Data\Icon\icon_00.paa";
private _regearStatement = {
    [QEGVAR(gear,applyLoadout)] call CBA_fnc_localEvent;
    [[],["You have been rearmed"], [""], [""]] call CBA_fnc_notify;
};
private _actionType = parseNumber (isPlayer _object);

private _regearAction = ["cScriptsReGearAce", "ReGear", _Icon, _regearStatement, {true}] call ace_interact_menu_fnc_createAction;
[_object, _actionType, _category, _regearAction] call ace_interact_menu_fnc_addActionToObject;

true
