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
    ["_unit",""],
    ["_safeMode", true],
    ["_earPlugs", true]
];

// Safety first
if (_safemode) then {
    [_unit, currentWeapon _unit, currentMuzzle _unit] call ace_safemode_fnc_lockSafety;
};

// Add earplugs if you dont have them in.
if (_earPlugs) then {
    if ([_unit] call ace_hearing_fnc_hasEarPlugsIn) then {} else {[_unit] call ace_hearing_fnc_putInEarplugs;};
};

INFO("Done Applying PostLoadout Player Settings");
