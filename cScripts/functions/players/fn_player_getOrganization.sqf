#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return your platoon and company
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Organization <ARRAY>
 *
 * Example:
 * call cScripts_fnc_player_getOrganization;
 *
 * Public: No
 */

private _platoon = GETVAR(player,EGVAR(Player,Platoon),0);

private _company = GETVAR(player,EGVAR(Player,Company),"");
_company = toLower _company;

[_platoon, _company]