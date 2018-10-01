#include "..\script_component.hpp";
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
    private _weapon = currentWeapon player;
    private _safedWeapons = _player getVariable ['ace_safemode_safedWeapons', []];
    if !(_weapon in _safedWeapons) exitWith { 
        [_player, currentWeapon _player, currentMuzzle _player] call ace_safemode_fnc_lockSafety;
    };
};

// Add earplugs if you dont have them in.
if (_earPlugs) then {
    if !([_player] call ace_hearing_fnc_hasEarPlugsIn) then {[_player] call ace_hearing_fnc_putInEarplugs;};
};

#ifdef DEBUG_MODE
    if (_safeMode) then {[formatText["%1 have got there weapon on safe in postLoadout.", _player]] call FUNC(logInfo);};
    if (_earPlugs) then {[formatText["%1 have got there earplugs assigned in postLoadout.", _player]] call FUNC(logInfo);};
    [formatText["postLoadout application completed for %1.", _player]] call FUNC(logInfo);
#endif
