#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function is used to handle player premissions
 *
 * Arguments:
 * 0: Player <STRING>
 * 1: Platoon <STRING>
 * 2: MedicClass <NUMBER> (Optional) (Default; 0)
 * 3: Engineer <BOOL> (Optional) (Default; 0)
 * 4: EOD <BOOL> (Optional) (Default; 0)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this] call cScripts_fnc_setPreInitPlayerSettings;
 * [this, "charlie",0] call cScripts_fnc_setPreInitPlayerSettings;
 * [this, "charlie",0,false,false] call cScripts_fnc_setPreInitPlayerSettings;
 *
 */
#define DEBUG_MODE
params [
    ["_player",""],
    ["_setPlatoon",""],
    ["_isMedicClass", 0],
    ["_isEngineer", false],
    ["_isEOD", false],
    ["_setRank", true]
];

#ifdef DEBUG_MODE
    [formatText["Applying preLoadout to %1.", _player]] call FUNC(logInfo);
#endif

// Set platoonVariables
(_player) setVariable [QEGVAR(Cav,Trooper), true];
(_player) setVariable [QEGVAR(Cav,Platoon), _setPlatoon];

// Set MedicClass
private _MedicClass = if (_isMedicClass > 1) then {true} else {false};
(_player) setVariable ["ACE_medical_medicClass", _isMedicClass, _MedicClass];

// Set Engineer
(_player) setVariable ["ACE_isEngineer", _isEngineer];

// Set EOD capable
(_player) setVariable ["ACE_isEOD", _isEOD];

#ifdef DEBUG_MODE
    if (_setPlatoon != "") then {[formatText["%1 have got platoon variable %2 in preLoadout", _player, _setPlatoon]] call FUNC(logInfo);};
    [formatText["%1 medical ability is set to %2 in preLoadout", _player, _isMedicClass]] call FUNC(logInfo);
    if (_isEngineer) then {[formatText["%1 is assigned engineer ability via preLoadout", _player]] call FUNC(logInfo);};
    if (_isEOD) then {[formatText["%1 is assinged as eod specialist via preLoadout", _player]] call FUNC(logInfo);};
#endif

// Set ingame rank based on name rank prefix
if _setRank then {
    if (isNil {_player getVariable QEGVAR(Cav,Rank)}) then {
        private _profileName = profileName;
        _profileName = [_profileName, 0, 2] call BIS_fnc_trimString;
        _profileName = toUpper(_profileName);
        switch (true) do {
            case (_profileName in ['=7C']): {
                _player setRank 'PRIVATE';
                systemChat format['Hey %1! You are out of uniform TROOPER!', profileName];
            };
            case (_profileName in ['RCT','PVT','PFC']): {_player setRank 'PRIVATE';};
            case (_profileName in ['RET','SPC','CPL','WO1']): {_player setRank 'CORPORAL';};
            case (_profileName in ['SGT','SSG','SFC','MSG','1SG','SGM','CSM','CW2','CW3','CW4','CW5']): {_player setRank 'SERGEANT';};
            case (_profileName in ['2LT','1LT']): {_player setRank 'LIEUTENANT';};
            case (_profileName in ['CPT']): {_player setRank 'CAPTAIN';};
            case (_profileName in ['MAJ']): {_player setRank 'MAJOR';};
            case (_profileName in ['LTC','COL','BG.','MG.','LTG','GEN']): {_player setRank 'COLONEL';};
        };
        #ifdef DEBUG_MODE
            [formatText["Rank is applied to %1", _player]] call FUNC(logInfo);
        #endif

        private _profileNameSteam = profileNameSteam;
        _profileNameSteam = [_profileNameSteam, 0, 5] call BIS_fnc_trimString;
        _profileNameSteam = toUpper(_profileNameSteam);
        if !(_profileNameSteam in ['=7CAV=']) then {
            #ifdef DEBUG_MODE
                [formatText["Checking steam name for player", _player]] call FUNC(logInfo);
            #endif
            //format["%1 your steam name (%2) does not follow the 7CAV naming convention outlined by General Order Three - Regimental Tags & 7CAV-POL-004.", profileName, profileNameSteam] remoteExecCall ["systemChat", 0];
            systemChat format["%1 your steam name (%2) does not follow the 7CAV naming convention outlined by General Order Three - Regimental Tags & 7CAV-POL-004.", profileName, profileNameSteam];
        };

        (_player) setVariable [QEGVAR(Cav,Rank), true];

    } else {
        #ifdef DEBUG_MODE
            [formatText["Rank already set for %1 no need to change it.", _player]] call FUNC(logInfo);
        #endif
    };
};

#ifdef DEBUG_MODE
    [formatText["preLoadout application completed for %1.", _player]] call FUNC(logInfo);
#endif
