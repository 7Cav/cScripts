#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function return the name of the current stored backpack
 *
 * Arguments:
 * 0: player <STRING>
 * 1: varname <STRING>
 *
 * Return Value:
 * Backpack <String>
 *
 * Example:
 * [player, "cScripts_player_virtualBackpack_1"] call cScripts_fnc_getVirtualBackpackName
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_variableName", "", [""]]
];

private _var = (player getVariable [_variableName, [""]])#0;

if (_var == "") exitWith {"backpack"};

getText (configFile >> "CfgVehicles" >> _var >> "displayName");