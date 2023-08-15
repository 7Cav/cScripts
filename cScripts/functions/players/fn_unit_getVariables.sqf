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
 *  call cScripts_fnc_unit_getVariables
 *
 */

params [["_unit", objNull, [objNull]]];

private _isPlayer = isPlayer _unit;
private _classname = typeOf _unit;
private _netId = netId _unit;
private _uid = if (isPlayer _unit) then {getPlayerUID _unit} else {""};

private _name = _unit GETVAR(QEGVAR(Unit,Name), "");
private _profileName = if (isPlayer _unit) then {profileName} else {""};
private _profileNameSteam = if (isPlayer _unit) then {profileNameSteam} else {""};
private _clanTag = call EFUNC(player,getClanTag);

private _rank = "";
private _rank_bis = _unit GETVAR(QEGVAR(Player,Rank), "PRIVATE");

private _regiment = "";
private _company = "";
private _squad = _unit GETVAR(QEGVAR(Player,Squad), groupId group _unit);
private _squadInsignia = [_unit] BIS_fnc_getUnitInsignia;
private _team = "";

private _abilityMedic = [];
private _abilityEngineer = [];
private _abilityEOD = [];

private _map = createHashMapFromArray [
    ["isPlayer", _isPlayer],
    ["unit", _unit],
    ["classname", _classname],
    ["netId", _netId],
    ["uid", _uid],

    ["name", _name],
    ["profileName", _profileName],
    ["profileNameSteam", _profileNameSteam],
    ["clanTag", _clanTag],

    ["rank", _rank],
    ["rank_bis", _rank_bis],

    ["regiment", ""],
    ["company", ""],
    ["squad", ""],
    ["squadInsignia", ""],
    ["team", ""],               // Team Color

    ["abilityMedic", _abilityMedic],       // ace ability
    ["abilityEngineer", _abilityEngineer],    // ace ability
    ["abilityEOD", _abilityEOD]          // ace ability
];
_map