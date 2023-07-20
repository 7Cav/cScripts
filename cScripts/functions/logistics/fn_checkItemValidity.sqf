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
    } else {
        true
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
    if (![_item, "ACRE_BaseRadio", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
};

if (EGVAR(patches,usesTFAR)) then {
    if (![_item, "TFAR_anprc152", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_anprc154", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_anprc148jem", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_fadak", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_fadak", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_pnr1000a", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_rf7800str", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};

    if (![_item, "TFAR_rt1523g", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_rt1523g_big", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_rt1523g_sage", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_rt1523g_green", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_rt1523g_black", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_rt1523g_fabric", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_rt1523g_bwmod", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_rt1523g_big_bwmod", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_rt1523g_big_bwmod_tropen", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_rt1523g_big_rhs", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_rt1523g_rhs", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_mr3000", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_mr3000_multicam", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_mr3000_bwmod", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_mr3000_bwmod_tropen", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_mr3000_rhs", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_bussole", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_anprc155", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
    if (![_item, "TFAR_anprc155_coyote", EGVAR(patches,usesRadios)] call _fn_isValid) exitWith {false};
};

true
