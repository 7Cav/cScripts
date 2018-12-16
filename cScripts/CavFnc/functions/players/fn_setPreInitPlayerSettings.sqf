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
    ["_isMedicClass", 0],
    ["_isEngineerClass", 0],
    ["_isEOD", false],
    ["_setRank", true]
];

#ifdef DEBUG_MODE
    [formatText["Applying preLoadout to %1.", _player]] call FUNC(logInfo);
#endif

// Set company Variables
(_player) setVariable [QEGVAR(Cav,Trooper), true];
(_player) setVariable [QEGVAR(Cav,Company), _setCompany];

// Set MedicClass
private _MedicClass = if (_isMedicClass > 1) then {true} else {false};
(_player) setVariable ["ACE_medical_medicClass", _isMedicClass, _MedicClass];

// Set Engineer
private _EngineerClass = if (_isEngineerClass > 1) then {true} else {false};
(_player) setVariable ['ACE_isEngineer', _isEngineerClass, _EngineerClass];

// Set EOD capable
(_player) setVariable ["ACE_isEOD", _isEOD];

// Set ingame rank based on name rank prefix
if ((_setRank) && (EGVAR(Settings,setPlayerRank))) then {
    [_player] call FUNC(setPlayerRank);
};

// Handle player announcement
if (EGVAR(Settings,setMissionType) != 3) then {
    [_player] call FUNC(doPlayerAnnouncement);
};

#ifdef DEBUG_MODE
    if (_setCompany != "") then {[formatText["%1 have got platoon variable %2 in preLoadout", _player, _setPlatoon]] call FUNC(logInfo);};
    if (_MedicClass) then {[formatText["%1 medical ability is set to %2 in preLoadout", _player, _isMedicClass]] call FUNC(logInfo);};
    if (_EngineerClass) then {[formatText["%1 is assigned engineer ability via preLoadout", _player]] call FUNC(logInfo);};
    if (_isEOD) then {[formatText["%1 is assinged as eod specialist via preLoadout", _player]] call FUNC(logInfo);};
#endif


#ifdef DEBUG_MODE
    [formatText["preLoadout application completed for %1.", _player]] call FUNC(logInfo);
#endif
