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

private _playerRole = call EFUNC(player,getRole);

private _group = [player] call EFUNC(unit,getSquadName);
private _playerGroup = "";
if (_group == "") then { _playerGroup = "in your squad" } else { _playerGroup = formatText["under the callsign <font color='#ffc61a'>%1</font>", _group]};

private _worldName = getText (configFile >> "CfgWorlds" >> worldName >> "description");
private _serverName = if (serverName != "") then {serverName} else {"localhost"}; 

private _radioChannel = "";
if (EGVAR(Patches,usesACRE) || EGVAR(Patches,usesTFAR)) then {
    if (EGVAR(Settings,enableRadios)) then {
        _radioChannel = [_group, "SR"] call FUNC(getRadioChannel);
        _radioChannel = [_radioChannel] call FUNC(getChannelName);
        if !(_radioChannel == "ERROR" ) then {
            _radioChannel = formatText["Your squad radio is <font color='#ffc61a'>%1</font>.<br/><br/>", _radioChannel];
        } else {
            _radioChannel = "";
        };
    };
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
"<font size=20>Information</font><br/>Welcome to %1 on %2.<br/>Your currently on <font color='#ffc61a'>%3</font>.<br/><br/>
You're currently slotted in as <font color='#ffc61a'>%4</font> %5.<br/><br/>
%6
%7
Good luck and have fun!
<br/><br/>
-----------------------------------------------------------------
<br/><br/>This mission is currently running cScripts version: <font color='#ffc61a'>%8</font>.
", briefingName, _worldName, _serverName, _playerRole, _playerGroup, _radiochannel, _ability, VERSION];

player createDiaryRecord["7Cav", ["Information", _document], taskNull, "", false];
