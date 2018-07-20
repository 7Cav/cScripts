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
    if (currentWeapon player isEqualTo "rhs_weap_m4a1") then {
        [player, "rhs_weap_m4a1"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m16a4"] call CBA_fnc_addWeapon;
    };
    if (currentWeapon player isEqualTo "rhs_weap_m4a1_grip") then {
        [player, "rhs_weap_m4a1_grip"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m16a4_grip"] call CBA_fnc_addWeapon;
    };
    if (currentWeapon player isEqualTo "rhs_weap_m4a1_carryhandle") then {
        [player, "rhs_weap_m4a1_carryhandle"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m16a4_carryhandle"] call CBA_fnc_addWeapon;
    };
    if (currentWeapon player isEqualTo "rhs_weap_m4a1_carryhandle_grip") then {
        [player, "rhs_weap_m4a1_carryhandle_grip"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m16a4_carryhandle_grip"] call CBA_fnc_addWeapon;
    };

    if (([player,"bravo"] call cScripts_fnc_hasPlatoonVariable) or ([player,"s3"] call cScripts_fnc_hasPlatoonVariable)) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
    };
    if ([player,"charlie"] call cScripts_fnc_hasPlatoonVariable) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
    };
    [player, "rhs_mag_30Rnd_556x45_M855A1_Stanag"] call CBA_fnc_addMagazine;
}, {
    currentWeapon player isEqualTo "rhs_weap_m4a1" or
    currentWeapon player isEqualTo "rhs_weap_m4a1_carryhandle" or
    currentWeapon player isEqualTo "rhs_weap_m4a1_grip" or
    currentWeapon player isEqualTo "rhs_weap_m4a1_carryhandle_grip";
}, {}] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _forgeSelection_M16A1toM4A1] call ace_interact_menu_fnc_addActionToObject;


// Swap from M4A1 to M16A1
private _forgeSelection_M4A1toM16A1 = ["cScriptForgeSelection_M4A1toM16A1", "Switch my M16A1 to a M4A1", _icon, {
    if (currentWeapon player isEqualTo "rhs_weap_m16a4") then {
        [player, "rhs_weap_m16a4"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m4a1"] call CBA_fnc_addWeapon;
    };
    if (currentWeapon player isEqualTo "rhs_weap_m16a4_grip") then {
        [player, "rhs_weap_m16a4_grip"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m4a1_grip"] call CBA_fnc_addWeapon;
    };
    if (currentWeapon player isEqualTo "rhs_weap_m16a4_carryhandle") then {
        [player, "rhs_weap_m16a4_carryhandle"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m4a1_carryhandle"] call CBA_fnc_addWeapon;
    };
    if (currentWeapon player isEqualTo "rhs_weap_m16a4_carryhandle_grip") then {
        [player, "rhs_weap_m16a4_carryhandle_grip"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m4a1_carryhandle_grip"] call CBA_fnc_addWeapon;
    };

    if (([player,"bravo"] call cScripts_fnc_hasPlatoonVariable) or ([player,"s3"] call cScripts_fnc_hasPlatoonVariable)) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
    };
    if ([player,"charlie"] call cScripts_fnc_hasPlatoonVariable) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
    };
    [player, "rhs_mag_30Rnd_556x45_M855A1_Stanag"] call CBA_fnc_addMagazine;
}, {
    currentWeapon player isEqualTo "rhs_weap_m16a4" or
    currentWeapon player isEqualTo "rhs_weap_m16a4_carryhandle" or
    currentWeapon player isEqualTo "rhs_weap_m16a4_grip" or
    currentWeapon player isEqualTo "rhs_weap_m16a4_carryhandle_grip";
}, {}] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _forgeSelection_M4A1toM16A1] call ace_interact_menu_fnc_addActionToObject;





// M16A1 Carryhandle
private _forgeSelection_M16A1_Carryhandle = ["cScriptForgeSelection_M16A1_Carryhandle", "Remove the Carryhandle", _icon, {
    if (currentWeapon player isEqualTo "rhs_weap_m16a4_carryhandle") then {
        [player, "rhs_weap_m16a4_carryhandle"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m16a4"] call CBA_fnc_addWeapon;
    };
    if (currentWeapon player isEqualTo "rhs_weap_m16a4_carryhandle_grip") then {
        [player, "rhs_weap_m16a4_carryhandle_grip"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m16a4_grip"] call CBA_fnc_addWeapon;
    };

    if (([player,"bravo"] call cScripts_fnc_hasPlatoonVariable) or ([player,"s3"] call cScripts_fnc_hasPlatoonVariable)) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
    };
    if ([player,"charlie"] call cScripts_fnc_hasPlatoonVariable) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
    };
    [player, "rhs_mag_30Rnd_556x45_M855A1_Stanag"] call CBA_fnc_addMagazine;
}, {
    currentWeapon player isEqualTo "rhs_weap_m16a4_carryhandle" or
    currentWeapon player isEqualTo "rhs_weap_m16a4_carryhandle_grip"
}, {}] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _forgeSelection_M16A1_Carryhandle] call ace_interact_menu_fnc_addActionToObject;

private _forgeSelection_M16A1_AddCarryhandle = ["cScriptForgeSelection_M16A1_AddCarryhandle", "Add the Carryhandle", _icon, {
    if (currentWeapon player isEqualTo "rhs_weap_m16a4") then {
        [player, "rhs_weap_m16a4"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m16a4_carryhandle"] call CBA_fnc_addWeapon;
    };
    if (currentWeapon player isEqualTo "rhs_weap_m16a4_grip") then {
        [player, "rhs_weap_m16a4_grip"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m16a4_carryhandle_grip"] call CBA_fnc_addWeapon;
    };

    if ([player,"charlie"] call cScripts_fnc_hasPlatoonVariable) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
    };
    [player, "rhs_mag_30Rnd_556x45_M855A1_Stanag"] call CBA_fnc_addMagazine;
}, {
    currentWeapon player isEqualTo "rhs_weap_m16a4" or
    currentWeapon player isEqualTo "rhs_weap_m16a4_grip"
}, {}] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _forgeSelection_M16A1_AddCarryhandle] call ace_interact_menu_fnc_addActionToObject;



// m4a1 Carryhandle
private _forgeSelection_m4a1_Carryhandle = ["cScriptForgeSelection_m4a1_Carryhandle", "Remove the Carryhandle", _icon, {
    if (currentWeapon player isEqualTo "rhs_weap_m4a1_carryhandle") then {
        [player, "rhs_weap_m4a1_carryhandle"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m4a1"] call CBA_fnc_addWeapon;
    };
    if (currentWeapon player isEqualTo "rhs_weap_m4a1_carryhandle_grip") then {
        [player, "rhs_weap_m4a1_carryhandle_grip"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m4a1_grip"] call CBA_fnc_addWeapon;
    };

    if (([player,"bravo"] call cScripts_fnc_hasPlatoonVariable) or ([player,"s3"] call cScripts_fnc_hasPlatoonVariable)) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
    };
    if ([player,"charlie"] call cScripts_fnc_hasPlatoonVariable) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
    };
    [player, "rhs_mag_30Rnd_556x45_M855A1_Stanag"] call CBA_fnc_addMagazine;
}, {
    currentWeapon player isEqualTo "rhs_weap_m4a1_carryhandle" or
    currentWeapon player isEqualTo "rhs_weap_m4a1_carryhandle_grip"
}, {}] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _forgeSelection_m4a1_Carryhandle] call ace_interact_menu_fnc_addActionToObject;

private _forgeSelection_m4a1_AddCarryhandle = ["cScriptForgeSelection_m4a1_AddCarryhandle", "Add the Carryhandle", _icon, {
    if (currentWeapon player isEqualTo "rhs_weap_m4a1") then {
        [player, "rhs_weap_m4a1"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m4a1_carryhandle"] call CBA_fnc_addWeapon;
    };
    if (currentWeapon player isEqualTo "rhs_weap_m4a1_grip") then {
        [player, "rhs_weap_m4a1_grip"] call CBA_fnc_removeWeapon;
        [player, "rhs_weap_m4a1_carryhandle_grip"] call CBA_fnc_addWeapon;
    };

    if (([player,"bravo"] call cScripts_fnc_hasPlatoonVariable) or ([player,"s3"] call cScripts_fnc_hasPlatoonVariable)) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
    };
    if ([player,"charlie"] call cScripts_fnc_hasPlatoonVariable) then {
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
        player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
    };
    [player, "rhs_mag_30Rnd_556x45_M855A1_Stanag"] call CBA_fnc_addMagazine;
}, {
    currentWeapon player isEqualTo "rhs_weap_m4a1" or
    currentWeapon player isEqualTo "rhs_weap_m4a1_grip"
}, {}] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _forgeSelection_m4a1_AddCarryhandle] call ace_interact_menu_fnc_addActionToObject;
