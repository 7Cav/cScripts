#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function return players clan tag or empty if none.
 *
 * Arguments:
 * 0: player <STRING>
 *
 * Return Value:
 * ClanTag or Empty <STRING>
 *
 * Example:
 * [player] call cScripts_fnc_getClanTag
 *
 */

params [
    ["_player", objNull, [objNull]]
];

private _clanTag = "";
if !(isNil {squadParams _player select 0 select 0}) then {
    _clanTag = squadParams _player select 0 select 0;
    _clanTag = toUpper(_clanTag);
};

_clanTag;
