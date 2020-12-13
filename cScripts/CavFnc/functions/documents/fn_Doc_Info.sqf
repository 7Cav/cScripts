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

private _abilityMedic = "";
if (!(isNil {player getUnitTrait "medic"}) && !(isNil {player getVariable "ACE_medical_medicClass"})) then {
    switch (player getVariable "ACE_medical_medicClass") do {
        case 1: { _abilityMedic = " <font color='#ffc61a'>medic</font> training" };
        case 2: { _abilityMedic = " <font color='#ffc61a'>doctor</font> training" };
        default { _abilityMedic = "" };
    };
};

private _abilityEngineer = "";
if (!(isNil {player getUnitTrait "engineer"}) && !(isNil {player getVariable "ACE_isEngineer"})) then {
    switch (player getVariable "ACE_isEngineer") do {
        case 1: { _abilityEngineer = " <font color='#ffc61a'>engineer</font> training" };
        case 2: { _abilityEngineer = " <font color='#ffc61a'>advanced engineer</font> training" };
        default { _abilityEngineer = "" };
    };
};
private _ability = "";
if (_abilityMedic != "" || _abilityEngineer != "") then {
    private _separateMedicEngineer = if ( (_abilityEngineer == "") && (_abilityMedic == "") ) then { ", " } else {""};
    _ability = formatText["You have%1%2%3.<br/><br/>", _abilityMedic, _separateMedicEngineer, _abilityEngineer];
};

private _document = format [
"<br/><br/>Welcome <font color='#ffc61a'>%1</font> <font color='#ffc61a'>%2</font> to %3 on %4.<br/>Your currently on <font color='#ffc61a'>%5</font>.<br/><br/>
You're currently slotted in as <font color='#ffc61a'>%6</font> %7.<br/><br/>
%10
%9
Good luck and have fun %8!
<br/><br/>
-----------------------------------------------------------------
<br/><br/>This mission is currently running cScripts version: <font color='#ffc61a'>%11</font>.
", _playerRank, _playerName, briefingName, _worldName, _serverName, _playerRole, _playerGroup, _playerRankFormal, _radiochannel, _ability ,VERSION];

player createDiaryRecord["7Cav", ["Information", _document], taskNull, "", false];
