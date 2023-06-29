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
    ["_item", "", ["", objNull]]
];

private _return = true;

if (EGVAR(patches,usesACE)) then {
    if (_item isKindOf "ACE_EarPlugs") then {
        _return = if (!isNil {ace_hearing_disableEarRinging}) then {ace_hearing_disableEarRinging} else {false};
    };
    if (_item isKindOf "ACE_ropeBase") then {
        _return = if (!isNil {ace_fastroping_requireRopeItems}) then {ace_fastroping_requireRopeItems} else {false};
    };
    if (_item isKindOf "ACE_WaterBottle" || _item isKindOf "ACE_Canteen" || _item isKindOf "ACE_Can_Spirit" || _item isKindOf "ACE_MRE_LambCurry") then {
        _return = if (!isNil {acex_field_rations_enabled}) then {acex_field_rations_enabled} else {false};
    };

    if !(EGVAR(patches,usesKat)) then {
        // airway
        if (_item in ["kat_larynx", "kat_guedel", "kat_accuvac"]) then { _return = false };
        // breathing
        if (_item in ["kat_Pulseoximeter", "kat_chestSeal", "kat_aatKit", "kat_ncdKit", "kat_stethoscope", "kat_BVM", "kat_pocketBVM", "kat_oxygenTank_150_Item", "kat_oxygenTank_300_Item", "kat_oxygenTank_150_Empty", "kat_oxygenTank_300_Empty"]) then { _return = false };
        // chemical
        if (_item in ["kat_gasmaskFilter", "kat_sealant", "KAT_CAS_M43_Bomb", "KAT_CAS_R_80mm_GAS_POD"]) then { _return = false };
        // fluids
        if (_item in ["kat_bloodIV_A", "kat_bloodIV_A_250", "kat_bloodIV_A_500", "kat_bloodIV_A_N", "kat_bloodIV_A_N_250", "kat_bloodIV_A_N_500", "kat_bloodIV_AB", "kat_bloodIV_AB_250", "kat_bloodIV_AB_500", "kat_bloodIV_AB_N", "kat_bloodIV_AB_N_250", "kat_bloodIV_AB_N_500", "kat_bloodIV_B", "kat_bloodIV_B_250", "kat_bloodIV_B_500", "kat_bloodIV_B_N", "kat_bloodIV_B_N_250", "kat_bloodIV_B_N_500", "kat_bloodIV_O", "kat_bloodIV_O_250", "kat_bloodIV_O_500", "kat_bloodIV_O_N", "kat_bloodIV_O_N_250", "kat_bloodIV_O_N_500", "kat_crossPanel", "KAT_Empty_bloodIV_250", "KAT_Empty_bloodIV_500"]) then { _return = false };
        // drugs
        if (_item in ["kat_amiodarone", "kat_atropine", "kat_CaffeineItem", "kat_fentanyl", "kat_ketamine", "kat_nalbuphine", "kat_PervitinItem"]) then { _return = false };
    };
};

_return