#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function List all variables on a player
 *
 * Arguments:
 * None
 *
 * Return Value:
 * HASHMAP
 *
 * Example:
 *  [player] call cScripts_fnc_unit_getVariables
 *  [cursorObject] call cScripts_fnc_unit_getVariables
 *
 */

params [["_unit", objNull, [objNull]]];

private _isPlayer = isPlayer _unit;
private _classname = typeOf _unit;
private _netId = netId _unit;
private _uid = if (isPlayer _unit) then {getPlayerUID _unit} else {""};

private _name = GETVAR(_unit,EGVAR(Unit,Name),"");
private _profileName = if (isPlayer _unit) then {profileName} else {""};
private _profileNameSteam = if (isPlayer _unit) then {profileNameSteam} else {""};
private _clanTag = call EFUNC(player,getClanTag);

private _rank = [player, 'USA'] call cScripts_fnc_player_getRank;
private _rank_bis = GETVAR(_unit,EGVAR(Player,Rank),"PRIVATE");

private _regiment = "";
private _company = GETVAR(player,EGVAR(Player,Company), "");
private _platoon = GETVAR(player,EGVAR(Player,Platoon), 0);
private _squad = GETVAR(_unit,EGVAR(Player,Squad),groupId group _unit);
private _squadInsignia = [_unit] call BIS_fnc_getUnitInsignia;
private _team = "";

private _abilityMedic = [];
private _abilityEngineer = [];
private _abilityEOD = [];

private _map = createHashMapFromArray [
    ["isPlayer",            _isPlayer],
    ["unit",                _unit],
    ["classname",           _classname],
    ["netId",               _netId],
    ["uid",                 _uid],

    ["name",                _name],
    ["profileName",         _profileName],
    ["profileNameSteam",    _profileNameSteam],
    ["clanTag",             _clanTag],

    ["rank",                _rank],
    ["rank_bis",            _rank_bis],

    ["regiment",            _regiment],
    ["company",             _company],
    ["platoon",             _platoon],
    ["squad",               _squad],
    ["squadInsignia",       _squadInsignia],
    ["team",                _team],             // Team Color

    ["abilityMedic",        _abilityMedic],     // ace ability
    ["abilityEngineer",     _abilityEngineer],  // ace ability
    ["abilityEOD",          _abilityEOD]        // ace ability
];
_map