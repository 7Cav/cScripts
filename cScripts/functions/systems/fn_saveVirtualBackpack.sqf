#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function saves a virtual backpack to sertain variable.
 *
 * Arguments:
 * 0: player <STRING>
 * 1: varname <STRING>
 *
 * Return Value:
 * True if successfull <BOOL>
 *
 * Example:
 * [player, "cScripts_player_virtualBackpack_1"] call cScripts_fnc_saveVirtualBackpack
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_variableName", "", [""]]
];

if ((count (player getVariable [_variableName, []])) > 1) exitWith {false};

private _backpack = backpack _player call BIS_fnc_basicBackpack;

private _cargo = backpackItems _player;

private _backpackAndContent = [_backpack, _cargo];

removeBackpack _player;

_player setVariable [_variableName, _backpackAndContent];

true