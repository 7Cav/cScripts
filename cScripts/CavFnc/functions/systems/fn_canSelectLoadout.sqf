/*
 * Author: CPL.Brostrom.A
 * Check if you can select a loadout.
 *
 * Arguments:
 * 0: player <STRING>
 * 1: variable <STRING>
 *
 * Return Value:
 * Can select loadout <BOOL>
 *
 * Example:
 * [player, "myvarname"] call cScripts_fnc_canSelectLoadout
 *
 */

#include "..\script_component.hpp";

params [
    ["_player", objNull, [objNull]],
    ["_variable", ""]
];

private _return = false;

if (_player getVariable _variable) then {
    _return = true;
};

_return;
