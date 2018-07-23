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

params [
    ["_player",""],
    ["_safeMode", true],
    ["_earPlugs", true]
];

#ifdef DEBUG_MODE
    [formatText["Applying PostLoadout to %1.", _player]] call FUNC(logInfo);
#endif

// Safety first
if (_safemode) then {
    if (_player getVariable ["ace_safemode_actionID", -1] == -1) then {
        [_player, currentWeapon _player, currentMuzzle _player] call ace_safemode_fnc_lockSafety;
    };
};

// Add earplugs if you dont have them in.
if (_earPlugs) then {
    if ([_player] call ace_hearing_fnc_hasEarPlugsIn) then {} else {[_player] call ace_hearing_fnc_putInEarplugs;};
};

#ifdef DEBUG_MODE
    [formatText["postLoadout application completed for %1.", _player]] call FUNC(logInfo);
#endif
