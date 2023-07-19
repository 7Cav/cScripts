#include "..\script_component.hpp";
/*
 * Author: Whitsel.M
 * This function checks if a item are usable and valid.
 *
 * Arguments:
 * 0: Item <OBJECT>
 *
 * Return Value:
 * True if item is valid
 *
 * Example:
 * ["ACE_EarPlugs"] call cScripts_fnc_checkItemValidity;
 */

params [
    ["_item", "", [""]]
];

private _fn_isValid = {
    params [
         ["_item", "", [""]],
         ["_kindOfItem", [""]],
         ["_variable", true, [true, nil]]
    ];
    if (_item isKindOf _kindOfItem) then {
        if (!isNil {_variable}) then { 
            _variable;
        } else {
            false;
        };
    };
};

if (EGVAR(patches,usesACE)) then {
    if (![_item, "ACE_EarPlugs", ace_hearing_disableEarRinging] call _fn_isValid) exitWith {false};

    if (![_item, "ACE_ropeBase", ace_fastroping_requireRopeItems] call _fn_isValid) exitWith {false};

    if (![_item, "ACE_WaterBottle", ace_field_rations_enabled] call _fn_isValid) exitWith {false};
    if (![_item, "ACE_Canteen", ace_field_rations_enabled] call _fn_isValid) exitWith {false};
    if (![_item, "ACE_Can_Spirit", ace_field_rations_enabled] call _fn_isValid) exitWith {false};
    if (![_item, "ACE_MRE_LambCurry", ace_field_rations_enabled] call _fn_isValid) exitWith {false};
    if (![_item, "ACE_WaterBottle", ace_field_rations_enabled] call _fn_isValid) exitWith {false};
};

if (EGVAR(patches,usesACRE)) then {
    if (![_item, "itemRadioAcre", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
};

if (EGVAR(patches,usesTFAR)) then {
    if (![_item, "itemRadioTFAR", EGVAR(patches,usesRadios)}] call _fn_isValid) exitWith {false};
};

true
