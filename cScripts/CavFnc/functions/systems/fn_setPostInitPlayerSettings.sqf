/*
 * Author: CPL.Brostrom.A
 * This function is used to handle player premissions
 *
 * Arguments:
 * 0: Player <STRING>
 *
 * Example:
 * [this,true,true] call cScripts_fnc_setPreInitPlayerSettings;
 */

#include "..\script_component.hpp";

INFO("Applying PostLoadout Player Settings");

params [
    ["_player",""],
    ["_safeMode", true],
    ["_earPlugs", true]
];

// Safety first
if (_safemode) then {
    [_player, currentWeapon _player, currentMuzzle _player] call ace_safemode_fnc_lockSafety;
};

// Add earplugs if you dont have them in.
if (_earPlugs) then {
    if ([_player] call ace_hearing_fnc_hasEarPlugsIn) then {} else {[_player] call ace_hearing_fnc_putInEarplugs;};
};

INFO("Done Applying PostLoadout Player Settings");
