/*
 * Author: CPL.Brostrom.A
 * This function contain insignia selection buttons and categorys.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * call cScripts_fnc_initForgeSelections
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]]];

// make icons
private _icon = "cScripts\Data\Icon\icon_01.paa";

// make topic
[_object,"cScriptsForgeSelectionMenu","Forge",_Icon,["ACE_MainActions"]] call FUNC(addAceCategory);
private _category = ["ACE_MainActions","cScriptsForgeSelectionMenu"];

// Swap from M16A1 to M4A1
private _forgeSelection_M16A1toM4A1 = ["cScriptForgeSelection_M16A1toM4A1", "Switch my M4A1 to a M16A1", _icon, {
    [player, "rhs_weap_m4a1_carryhandle"] call CBA_fnc_removeWeapon;
    [player, "rhs_weap_m16a4_carryhandle"] call CBA_fnc_addWeapon;

    if ([player, "cav_isCharlieUnit"] call cScripts_fnc_canSelectLoadout) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
        [player, "rhs_mag_30Rnd_556x45_M855A1_Stanag"] call CBA_fnc_addMagazine;
    };
}, {currentWeapon player isEqualTo "rhs_weap_m4a1_carryhandle"}, {}] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _forgeSelection_M16A1toM4A1] call ace_interact_menu_fnc_addActionToObject;

// Swap from M4A1 to M16A1
private _forgeSelection_M4A1toM16A1 = ["cScriptForgeSelection_M4A1toM16A1", "Switch my M16A1 to a M4A1", _icon, {
    [player, "rhs_weap_m16a4_carryhandle"] call CBA_fnc_removeWeapon;
    [player, "rhs_weap_m4a1_carryhandle"] call CBA_fnc_addWeapon;

    if ([player, "cav_isCharlieUnit"] call cScripts_fnc_canSelectLoadout) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
        [player, "rhs_mag_30Rnd_556x45_M855A1_Stanag"] call CBA_fnc_addMagazine;
    };
}, {currentWeapon player isEqualTo "rhs_weap_m16a4_carryhandle"}, {}] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _forgeSelection_M4A1toM16A1] call ace_interact_menu_fnc_addActionToObject;
