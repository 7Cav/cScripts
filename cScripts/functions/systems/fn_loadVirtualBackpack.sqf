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
 * [player, "cScripts_player_virtualBackpack_1"] call cScripts_fnc_loadVirtualBackpack
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_variableName", "", [""]]
];

if ((count (player getVariable [_variableName, []])) < 1) exitWith {false};

private _backpackAndContent = _player getVariable [_variableName, []];
_backpackAndContent params [
    ["_backpack", ""],
    ["_cargo", []]
];

_player addBackpack _backpack;

{
    _player addItemToBackpack _x;
} forEach _cargo;

_player setVariable [_variableName, []];

true