#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function fetches your rank based on your name prefix.
 *
 * Arguments:
 * 0: player <STRING>
 * 1: type <STRING>     ['CAV', 'BIS', 'FORMAT']
 *
 * Return Value:
 * Rank based on name <STRING>
 *
 * Example:
 * [player,'BIS'] call cScripts_fnc_getPlayerRank
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_getType", 'BIS', ['']]
];

private _return = "";

private _profileName = profileName;
_profileName = [_profileName, 0, 2] call BIS_fnc_trimString;
_profileName = toUpper(_profileName);

_getType = toUpper(_getType);

// Cav ranks
if (_getType == 'CAV') then {
    switch (_getType == 'CAV') do {
        case (_profileName in ['AR.', 'AR ']): {_return = 'Reservist'};
        case (_profileName in ['RET']): {_return = 'Retire'};
        case (_profileName in ['RCT']): {_return = 'Recruit'};
        case (_profileName in ['PVT']): {_return = 'Private'};
        case (_profileName in ['PFC']): {_return = 'Private First Class'};
        case (_profileName in ['SPC']): {_return = 'Specialist'};
        case (_profileName in ['CPL']): {_return = 'Corporal'};
        case (_profileName in ['WO1']): {_return = 'Warrant Officer 1'};
        case (_profileName in ['SGT']): {_return = 'Sergeant'};
        case (_profileName in ['SSG']): {_return = 'Staff Sergeant'};
        case (_profileName in ['SFC']): {_return = 'Sergeant First Class'};
        case (_profileName in ['MSG']): {_return = 'Master Sergeant'};
        case (_profileName in ['1SG']): {_return = 'First Sergeant'};
        case (_profileName in ['SGM']): {_return = 'Sergeant Major'};
        case (_profileName in ['CSM']): {_return = 'Command Sergeant Major'};
        case (_profileName in ['CW2']): {_return = 'Chief Warrant Officer 2'};
        case (_profileName in ['CW3']): {_return = 'Chief Warrant Officer 3'};
        case (_profileName in ['CW4']): {_return = 'Chief Warrant Officer 4'};
        case (_profileName in ['CW5']): {_return = 'Chief Warrant Officer 5'};
        case (_profileName in ['2LT']): {_return = 'Second Lieutenant'};
        case (_profileName in ['1LT']): {_return = 'First Lieutenant'};
        case (_profileName in ['CPT']): {_return = 'Captain'};
        case (_profileName in ['MAJ']): {_return = 'Major'};
        case (_profileName in ['LTC']): {_return = 'Lieutenant Colonel'};
        case (_profileName in ['COL']): {_return = 'Colonel'};
        case (_profileName in ['BG.', 'BG ']): {_return = 'Brigadier General'};
        case (_profileName in ['MG.', 'MG ']): {_return = 'Major General'};
        case (_profileName in ['LTG']): {_return = 'Lieutenant General'};
        case (_profileName in ['GEN']): {_return = 'General'};
        default {_return = ''};
    };
};

//Cav Formal Ranks
if (_getType == 'FORMAL') then {
    switch (_getType == 'FORMAL') do {
        case (_profileName in ['AR.', 'AR ']): {_return = 'Reservist'};
        case (_profileName in ['RET']): {_return = 'old man'};
        case (_profileName in ['RCT']): {_return = 'Recruit'};
        case (_profileName in ['PVT', 'PFC']): {_return = 'Private'};
        case (_profileName in ['SPC']): {_return = 'Specialist'};
        case (_profileName in ['CPL']): {_return = 'Corporal'};
        case (_profileName in ['SGT', 'SSG', 'SFC', 'MSG']): {_return = 'Sergeant'};
        case (_profileName in ['1SG']): {_return = 'First Sergeant'};
        case (_profileName in ['SGM', 'CSM']): {_return = 'Sergeant Major'};
        case (_profileName in ['CW2', 'CW3', 'CW4', 'CW5']): {_return = 'Chief'};
        case (_profileName in ['WO1', '2LT', '1LT', 'CPT', 'MAJ', 'LTC', 'COL', 'BG.', 'BG ', 'MG.', 'MG ', 'LTG', 'GEN']): {_return = 'Sir'};
        default {_return = 'Trooper'};
    };
};

// Arma rank translations
if (_getType == 'BIS') then {
    switch (_getType == 'BIS') do {
        case (_profileName in ['AR.','AR ','RCT','PVT','PFC']): {_return = 'PRIVATE'};
        case (_profileName in ['RET','SPC','CPL','WO1']): {_return = 'CORPORAL'};
        case (_profileName in ['SGT','SSG','SFC','MSG','1SG','SGM','CSM','CW2','CW3','CW4','CW5']): {_return = 'SERGEANT'};
        case (_profileName in ['2LT','1LT']): {_return = 'LIEUTENANT'};
        case (_profileName in ['CPT']): {_return = 'CAPTAIN'};
        case (_profileName in ['MAJ']): {_return = 'MAJOR'};
        case (_profileName in ['LTC','COL','BG.','BG ','MG.','MG ','LTG','GEN']): {_return = 'COLONEL'};
        default {_return = 'PRIVATE'};
    };
};

_return;
