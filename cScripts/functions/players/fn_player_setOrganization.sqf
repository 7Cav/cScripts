#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function sets your set your company name
 *
 * Arguments:
 * 0: Platoon <INTEGER>
 * 1: Company <STRING>
 *
 * Return Value:
 * OrganizationArray <ARRAY>
 *
 * Example:
 * ["Alpha",1,2,"Alpha","7th Cavalry"] call cScripts_fnc_player_setOrganization;
 *
 * Public: No
 */

params [
    ["_team", "", [""]],
    ["_squad", 0, [0]],
    ["_platoon", 0, [0]],
    ["_company", "", [""]],
    ["_regiment", "", [""]]
];

private _team = toLower _team;
SETVAR(player,EGVAR(Player,Team),_team);
SETVAR(player,EGVAR(Player,Squad),_squad);
SETVAR(player,EGVAR(Player,Platoon),_platoon);
private _company = toLower _company;
SETVAR(player,EGVAR(Player,Company),_company);
private _regiment = toLower _regiment;
SETVAR(player,EGVAR(Player,Regiment),_regiment);

INFO_7("Player","Player %1 [%2] organizationArray set to [%3, %4, %5, %6, %7].",player,typeOf player,_team,_squad,_platoon,_company,_regiment);

[_team, _squad, _platoon, _company, _regiment]