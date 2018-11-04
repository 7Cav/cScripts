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

#include "..\script_component.hpp";


private _playerRank = [player, 'CAV'] call FUNC(getPlayerRank);
private _playerRankFormal = [player, 'FORMAL'] call FUNC(getPlayerRank);
private _playerName = [player, 'PROFILE'] call FUNC(getPlayerName);

player createDiaryRecord["7Cav",
    ["Information",
        format[
"Welcome <font color='#ffc61a'>%1</font> <font color='#ffc61a'>%2</font> to %3 on %4.<br/>Your currently on <font color='#ffc61a'>%5</font>.<br/><br/>
You are slotted in as <font color='#ffc61a'>%6</font>.<br/><br/>
Good luck and have fun %7!
        ", _playerRank, _playerName, briefingName, worldName, serverName, roleDescription player, _playerRankFormal]
    ]
];
