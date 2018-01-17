/*
 * Author: CPL.Brostrom.A
 * This function is used to handle player premissions
 *
 * Arguments:
 * 0: Player <STRING>
 *
 * Example:
 * [this] call cScripts_fnc_setPreInitPlayerSettings;
 */

#include "..\script_component.hpp";

params [
    ["_player",""]
];

// Safety first
[_player, currentWeapon _player, currentMuzzle _player] call ace_safemode_fnc_lockSafety;

// Add earplugs if you dont have them in.
if ([_player] call ace_hearing_fnc_hasEarPlugsIn) then {} else {[_player] call ace_hearing_fnc_putInEarplugs;};
