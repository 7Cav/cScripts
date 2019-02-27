#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function announce the player once on mission join when the loadout is set.
 *
 * Arguments:
 * 0: Player <STRING>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this] call cScripts_fnc_doPlayerAnnouncement;
 *
 */

params [
    ["_player",""]
];

if !(isNil {_player getVariable QEGVAR(Player,Announced)}) exitWith {
    #ifdef DEBUG_MODE
        [formatText["%1 already announced.", _player]] call FUNC(logInfo);
    #endif
};

#ifdef DEBUG_MODE
    formatText["Announcing player %1.", _player] call FUNC(logInfo);
#endif

private _profileName = profileName;
_profileName = [_profileName, 0, 2] call BIS_fnc_trimString;
_profileName = toUpper(_profileName);

if (_profileName in ['=7C']) then {
    systemChat format['Hey %1! You are out of uniform TROOPER! Remove the =7Cav= in your profile name.', profileName];
};


private _profileNameSteam = profileNameSteam;
_profileNameSteam = [_profileNameSteam, 0, 5] call BIS_fnc_trimString;
_profileNameSteam = toUpper(_profileNameSteam);

if !(_profileNameSteam in ['=7CAV=']) then {
    //format["%1 your steam name (%2) does not follow the 7CAV naming convention outlined by General Order Three - Regimental Tags & 7CAV-POL-004.", profileName, profileNameSteam] remoteExecCall ["systemChat", 0];
    systemChat format["%1 your steam name (%2) does not follow the 7CAV naming convention outlined by General Order Three - Regimental Tags & 7CAV-POL-004.", profileName, profileNameSteam];
};

(_player) setVariable [QEGVAR(Player,Announced), true];

#ifdef DEBUG_MODE
    [formatText["Player %1 is announced.", _player]] call FUNC(logInfo);
#endif
