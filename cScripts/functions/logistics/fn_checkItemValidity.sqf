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

#ifdef DEBUG_MODE
    if (!([_item, "Test_Item_False", _var] call _fn_isValid)) then {
        [format["%1 testing if Test_Item_False... FAILED", _item], "Item"] call FUNC(error);
    } else {
        [format["%1 testing if Test_Item_False... PASSED", _item], "Item"] call FUNC(info);
    };
#endif

// Check if item exists in config
private _cfgMagazines = getText (configFile >> 'CfgMagazines' >> _item >> 'displayName');
private _cfgWeapons = getText (configFile >> 'CfgWeapons' >> _item >> 'displayName');
private _cfgVehicles = getText (configFile >> 'CfgVehicles' >> _item >> 'displayName');
if (_cfgMagazines == "" && _cfgWeapons == "" && _cfgVehicles == "") exitWith {
    [format ["Item '%1' does not exist in CfgMagazines, CfgWeapons or CfgVehicles.", _item], "Item"] call FUNC(warning);
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

if (EGVAR(patches,usesACRE)) then {
    _var = if (!isNil {EGVAR(patches,usesRadios)}) then {EGVAR(patches,usesRadios)} else {"varNil"};
    if (!([_item, "ACRE_BaseRadio", _var] call _fn_isValid)) exitWith {false};
};

if (EGVAR(patches,usesTFAR)) then {
    _var = if (!isNil {EGVAR(patches,usesRadios)}) then {EGVAR(patches,usesRadios)} else {"varNil"};
    if (!([_item, "TFAR_anprc152", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_anprc154", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_anprc148jem", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_fadak", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_fadak", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_pnr1000a", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_rf7800str", _var] call _fn_isValid)) exitWith {false};

    if (!([_item, "TFAR_rt1523g", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_rt1523g_big", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_rt1523g_sage", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_rt1523g_green", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_rt1523g_black", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_rt1523g_fabric", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_rt1523g_bwmod", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_rt1523g_big_bwmod", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_rt1523g_big_bwmod_tropen", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_rt1523g_big_rhs", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_rt1523g_rhs", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_mr3000", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_mr3000_multicam", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_mr3000_bwmod", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_mr3000_bwmod_tropen", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_mr3000_rhs", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_bussole", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_anprc155", _var] call _fn_isValid)) exitWith {false};
    if (!([_item, "TFAR_anprc155_coyote", _var] call _fn_isValid)) exitWith {false};
};

true
