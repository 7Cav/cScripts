#include "..\script_component.hpp";
/*
 * Author: CPL.Turn.J, SGT.Brostrom.A
 * This function return your platoon and company
 *
 * Arguments:
 * 1: ShowSpecificOrganization <NUMBER>
 *      0=team, 1=squad, 2=platoon, 3=company, 4=regiment
 *
 * Return Value:
 * OrganizationArray <ARRAY of STRINGS and NUMBERS> or Organization <NUMBER or STRING>
 *
 * Example:
 * call cScripts_fnc_player_getOrganization;
 * [3] call cScripts_fnc_player_getOrganization;
 *
 * Public: No
 */

params [["_showOnly", -1, [-1]]];

private _emptyOrgArray = ["",0,0,"",""];

private _loadout = [player] call EFUNC(gear,getLoadoutName);
private _config = missionConfigFile >> "CfgLoadouts" >> _loadout;


private _regiment = getText (_config >> "regiment");
_regiment = GETVAR(player,EGVAR(Player,Regiment),_regiment);
_regiment = toLower _regiment;

private _company = getText (_config >> "company");
_company = GETVAR(player,EGVAR(Player,Company),_company);
_regiment = toLower _regiment;

private _platoon = getNumber (_config >> "platoon");
_platoon = GETVAR(player,EGVAR(Player,Platoon),_platoon);

private _squad = getNumber (_config >> "squad");
_squad = GETVAR(player,EGVAR(Player,Squad),_squad);

private _team = getText (_config >> "team");
_team = GETVAR(player,EGVAR(Player,Team),_team);
_team = toLower _team;


if (_showOnly isNotEqualTo -1) exitWith {
    [_team, _squad, _platoon, _company, _regiment] select _showOnly;
};

[_team, _squad, _platoon, _company, _regiment]