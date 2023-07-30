#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function test all loadout arrays
 *
 * Arguments:
 *
 * Return Value:
 * True or False
 *
 * Example:
 * call cScripts_fnc_testing_loadoutArrays
 * 0 spawn compile preprocessFileLineNumbers 'cScripts\functions\testing\fn_testing_equipmentUsed.sqf'
 *
 */

diag_log text "";
diag_log text "###############################################################################################################";
diag_log text "";
["STARTING UNIT TEST FOR LOADOUT ARRAYS", "INFO", true, false, "TESTING"] call FUNC(log);
["There should be no script errors when this function runs.", "INFO", true, false, "TESTING"] call FUNC(log);

diag_log text "";
diag_log text "###############################################################################################################";
diag_log text "";

private _return = true;

private _database = GVAR(DATABASE);

private _faultyEquipment = [];

["TESTING KEYS FROM DATABASE", "INFO", true, false, "TESTING"] call FUNC(log);
{
    //[format ["TESTING KEY '%1'", _x], "INFO", true, false, "TESTING"] call FUNC(log);
    {
        _x params ["_item"];
        //[format ["TESTING ITEM '%1'", _item], "INFO", false, false, "TESTING"] call FUNC(log);;
        private _cfgMagazines = getText (configFile >> 'CfgMagazines' >> _item >> 'displayName');
        private _cfgWeapons = getText (configFile >> 'CfgWeapons' >> _item >> 'displayName');
        private _cfgVehicles = getText (configFile >> 'CfgVehicles' >> _item >> 'displayName');
        if (_cfgMagazines == "" && _cfgWeapons == "" && _cfgVehicles == "") then {
            [format ["FAILED: '%1' does not exist in CfgMagazines, CfgWeapons or CfgVehicles.", _item], "INFO", true, false, "TESTING"] call FUNC(log);
            _return = false
        };
    } forEach _y;
} forEach _database;

if (_return) then {
    ["TEST SUCCESSFUL", "INFO", true, false, "TESTING"] call FUNC(log);
} else {
    ["TEST FAILED", "INFO", true, false, "TESTING"] call FUNC(log);
};

["TEST COMPLETED", "INFO", true, false, "TESTING"] call FUNC(log);
diag_log text "";
diag_log text "###############################################################################################################";
diag_log text "";

_return;
