#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This adds a adda ction as well as a ACE interaction reGear selection. The script reapplyes the players start loadout.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_addHeal;
 */

params [
    ["_object", objNull, [objNull]],
    ["_category", ["ACE_MainActions"], [["ACE_MainActions"]]]
];

// Make addAction
if (!isPlayer _object) then {
    _object addAction ["   <t color='#ff3333'>Heal</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [_target, _caller] call ace_medical_treatment_fnc_fullHeal;
        [[],["You have been healed"], [""], [""]] call CBA_fnc_notify;
    }, [], 1.5, true, true, "", QUOTE(!GVAR(OneLife)), 5];
};

// Make ACE Interaction for ReGear
private _Icon = "\z\ACE\addons\medical_gui\ui\cross.paa";
private _healStatement = {
    [_this select 0, player] call ace_medical_treatment_fnc_fullHeal;
    [[],["You have been healed"], [""], [""]] call CBA_fnc_notify;
};

private _actionType = parseNumber (isPlayer _object);

private _healAction = [QEGVAR(Actions,HealAction), "Heal", "\z\ACE\addons\medical_gui\ui\cross.paa", _healStatement, {!GVAR(OneLife)}] call ace_interact_menu_fnc_createAction;
[_object, _actionType, _category, _healAction] call ace_interact_menu_fnc_addActionToObject;

true