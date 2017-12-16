/*
 * Author: CPL.Brostrom.A (With the help from; 654wak654)
 * Move the player outside the passanger door on the right side.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_doGetOutUH60Right;
 */
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
 * Public: No
 */

#include "..\script_component.hpp";

params [
    ["_player", objNull, [objNull]],
    ["_variable", ""]
];

private _return = true;

if (_player getVariable _variable) then {
    _return = false;
};

_return;
