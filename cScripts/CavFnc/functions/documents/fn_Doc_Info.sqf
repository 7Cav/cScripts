#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 *  call cScripts_fnc_Doc_Info
 *
 */

private _playerName = [player, 'PROFILE'] call FUNC(getPlayerName);
private _playerRank = [player, 'CAV'] call FUNC(getPlayerRank);
private _playerRankFormal = [player, 'FORMAL'] call FUNC(getPlayerRank);

private _playerRole = call FUNC(getPlayerRole);

private _playerGroup = call FUNC(getCavSquadName);

if (_playerGroup == "") then { _playerGroup = "in your squad" } else { _playerGroup = formatText["under the callsign <font color='#ffc61a'>%1</font>", _playerGroup]};

player createDiaryRecord["7Cav",
    ["Information",
        format[
"<font size='20'>Information</font><br/>
Welcome <font color='#ffc61a'>%1</font> <font color='#ffc61a'>%2</font> to %3 on %4.<br/>Your currently on <font color='#ffc61a'>%5</font>.<br/><br/>
You're currently slotted in as <font color='#ffc61a'>%6</font> %7.<br/><br/>
Good luck and have fun %8!
<br/><br/>
-----------------------------------------------------------------
<br/><br/>This mission is currently running cScripts version: <font color='#ffc61a'>%9</font>.
", _playerRank, _playerName, briefingName, worldName, serverName, _playerRole, _playerGroup, _playerRankFormal, VERSION]
    ], taskNull, "", false
];
