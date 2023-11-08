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
 *
 * Public: No
 */

params [
    ["_item", "", [""]]
];

// Validity check function
private _var = "varNil";
private _fn_isValid = {
    params [
        ["_item", "", [""]],
        ["_kindOfItem", [""]],
        ["_variable", "varNil", []]
    ];
    if (_item isKindOf _kindOfItem) then {
        if (_variable == "varNil") then {
            _variable;
        } else {
            false;
        };
    } else {
        true
    };
};

// Check if item exists in config
private _cfgMagazines = getText (configFile >> 'CfgMagazines' >> _item >> 'displayName');
private _cfgWeapons = getText (configFile >> 'CfgWeapons' >> _item >> 'displayName');
private _cfgVehicles = getText (configFile >> 'CfgVehicles' >> _item >> 'displayName');
if (_cfgMagazines == "" && _cfgWeapons == "" && _cfgVehicles == "") exitWith {
    SHOW_WARNING_1("Item", "Item '%1' does not exist in CfgMagazines, CfgWeapons or CfgVehicles.", _item);
    false
};

// Check mod settings and item validity
if (EGVAR(patches,usesACE)) then {
    _var = if (!isNil {ace_hearing_disableEarRinging}) then {ace_hearing_disableEarRinging} else {"varNil"};
    if (!([_item, "ACE_EarPlugs", _var] call _fn_isValid)) exitWith {false};

    _var = if (!isNil {ace_fastroping_requireRopeItems}) then {ace_fastroping_requireRopeItems} else {"varNil"};
    if (!([_item, "ACE_ropeBase", _var] call _fn_isValid)) exitWith {false};

    _var = if (!isNil {acex_field_rations_enabled}) then {acex_field_rations_enabled} else {"varNil"};
    if (!([_item, "ACE_WaterBottle", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "ACE_Canteen", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "ACE_Can_Spirit", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "ACE_MRE_LambCurry", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "ACE_WaterBottle", _var] call _fn_isValid)) exitWith {false};
};

true
