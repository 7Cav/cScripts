#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 * call cScripts_fnc_Doc_Info
 */

private _playerName = [player, 'PROFILE'] call FUNC(getPlayerName);
private _playerRank = [player, 'CAV'] call FUNC(getPlayerRank);
private _playerRankFormal = [player, 'FORMAL'] call FUNC(getPlayerRank);

private _playerRole = call FUNC(getPlayerRole);

private _group = [player] call FUNC(getSquadName);
private _playerGroup = "";
if (_group == "") then { _playerGroup = "in your squad" } else { _playerGroup = formatText["under the callsign <font color='#ffc61a'>%1</font>", _group]};

private _worldName = getText (configFile >> "CfgWorlds" >> worldName >> "description");
private _serverName = if (serverName != "") then {serverName} else {"localhost"}; 

private _radioChannel = [_group, "ACRE_PRC343"] call FUNC(getRadioChannel);
_radioChannel = [_radioChannel] call FUNC(getChannelName);
if !(_radioChannel == "ERROR" ) then {
    _radioChannel = formatText["Your squad radio is <font color='#ffc61a'>%1</font>.<br/><br/>", _radioChannel];
} else {
    _radioChannel = "";
};

player createDiaryRecord["7Cav",
    ["Information",
        format [
"Welcome <font color='#ffc61a'>%1</font> <font color='#ffc61a'>%2</font> to %3 on %4.<br/>Your currently on <font color='#ffc61a'>%5</font>.<br/><br/>
You're currently slotted in as <font color='#ffc61a'>%6</font> %7.<br/><br/>
%9
Good luck and have fun %8!
<br/><br/>
-----------------------------------------------------------------
<br/><br/>This mission is currently running cScripts version: <font color='#ffc61a'>%10</font>.
", _playerRank, _playerName, briefingName, _worldName, _serverName, _playerRole, _playerGroup, _playerRankFormal, _radiochannel, VERSION]
    ]
];
