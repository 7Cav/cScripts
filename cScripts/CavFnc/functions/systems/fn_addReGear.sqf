#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This adds a reGear selection option. The script reApplyes the players start loadout. But may also heal you if option is allowed.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Allow Heal <BOOL> (Optional)
 * 2: ACE Category <ARRAY> (Optional)
 *
 * Example:
 * [this] call cScripts_fnc_addReGear
 * [this, true] call cScripts_fnc_addReGear
 * [this, true, ["ACE_MainActions"]] call cScripts_fnc_addReGear
 */

params [
    ["_object", objNull, [objNull]],
    ["_doHeal", true],
    ["_category", ["ACE_MainActions"], [["ACE_MainActions"]]]
];

// Make addAction
if (!isPlayer _object) then {
    _object addAction ["   <t color='#ffcc33'>ReGear</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _arguments params ["_doHeal"];
        if (_caller call EFUNC(gear,hasSavedLoadout)) then {
            [_caller] call EFUNC(gear,loadLoadout);
        } else {
            private _loadout = [_caller] call EFUNC(gear,selectLoadout);
            [_caller, _loadout] call EFUNC(gear,applyLoadout);
        };

        if (_doHeal) then {
            [_target, _caller] call ace_medical_treatment_fnc_fullHeal;
        };
    }, [_doHeal], 1.5, true, true, "", "true", 5];
};

// Make ACE Interaction for ReGear
private _Icon = "cScripts\Data\Icon\icon_00.paa";
private _regearStatement = {
        if (player call EFUNC(gear,hasSavedLoadout)) then {
            [player] call EFUNC(gear,loadLoadout);
        } else {
            private _loadout = [player] call EFUNC(gear,selectLoadout);
            [player, _loadout] call EFUNC(gear,applyLoadout);
        };

    if (_doHeal) then {
        [_this select 0, player] call ace_medical_treatment_fnc_fullHeal;
    };
};
private _actionType = if (isPlayer _object) then {1} else {0};

private _regearAction = ["cScriptsReGearAce", "ReGear", _Icon, _regearStatement, {true}] call ace_interact_menu_fnc_createAction;
[_object, _actionType, _category, _regearAction] call ace_interact_menu_fnc_addActionToObject;
