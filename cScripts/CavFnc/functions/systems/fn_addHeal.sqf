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

params [["_object", objNull, [objNull]]];

// Make addAction
_object addAction ["   <t color='#ff3333'>Heal</t>", {
    [player, player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;
}, [], 1.5, true, true, "", "true", 5];

// Make ACE Interaction for ReGear
private _Icon = "Z\ACE\addons\medical\ui\icons\medical_cross.paa";
private _reHealCondition = {true};
private _reHealStatement = {
    [player, player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;
};
private _reHealAction = ["cScriptsHealAce", "Heal", _Icon, _reHealStatement, _reHealCondition] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _reHealAction] call ace_interact_menu_fnc_addActionToObject;
