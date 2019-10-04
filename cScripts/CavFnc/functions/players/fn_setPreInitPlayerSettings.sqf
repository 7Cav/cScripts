#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function is used to handle player premissions
 *
 * Arguments:
 * 0: Player <STRING>
 * 1: Company <STRING>
 * 2: Medic Type <NUMBER>       (Optional)      (Default; 0)
 * 3: Engineer Type <NUMBER>    (Optional)      (Default; 0)
 * 4: EOD <BOOL>                (Optional)      (Default; false)
 * 5: Set Rank <BOOL>           (Optional)      (Default; true)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["bob"] call cScripts_fnc_setPreInitPlayerSettings;
 * ["bob", "charlie",0] call cScripts_fnc_setPreInitPlayerSettings;
 * ["bob", "charlie", 0, 0, false, true] call cScripts_fnc_setPreInitPlayerSettings;
 *
 */

params [
    ["_player",""],
    ["_setCompany",""],
    ["_isMedicLevel", 0],
    ["_isEngineerLevel", 0],
    ["_isEOD", false],
    ["_setRank", true],
    ["_zeusImmortality", false]
];

#ifdef DEBUG_MODE
    [formatText["Applying preLoadout to %1.", _player]] call FUNC(logInfo);
#endif

// Set company Variables
(_player) setVariable [QEGVAR(Cav,Company), _setCompany];
#ifdef DEBUG_MODE
    if (_setCompany != "") then {[formatText["%1 have company variable set to %2 in preLoadout", _player, _setCompany]] call FUNC(logInfo);};
#endif

// Set player name
_playerName = [_player,'PROFILE'] call FUNC(getPlayerName);
(_player) setVariable [QEGVAR(Player,Name), _playerName];

// Set MedicClass
private _MedicClass = if (_isMedicLevel >= 1) then {true} else {false};
(_player) setVariable ["ACE_medical_medicClass", _isMedicLevel, _MedicClass];

// Set Engineer
private _EngineerClass = if (_isEngineerLevel >= 1) then {true} else {false};
(_player) setVariable ['ACE_isEngineer', _isEngineerLevel, _EngineerClass];
if (_isEngineerClass >= 1) then {_player setUnitTrait "engineer"};

// Set EOD capable
(_player) setVariable ["ACE_isEOD", _isEOD];

// Set ingame rank based on name rank prefix
if ((_setRank) && (EGVAR(Settings,setPlayerRank))) then {
    [_player] call FUNC(setPlayerRank);
};

// Make Zeus immortal
if ((_zeusImmortality) && (EGVAR(Settings,curatorImmortality))) then {
    _player allowDamage false;
};

#ifdef DEBUG_MODE
    [formatText["preLoadout application completed for %1.", _player]] call FUNC(logInfo);
#endif
