#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return your company
 *
 * Arguments:
 * None
 *
 * Return Value:
 * CompanyName <STRING>
 *
 * Example:
 * call cScripts_fnc_player_getCompany;
 *
 * Public: No
 */

private _company = GETVAR(player,EGVAR(Player,Company), "");
_company = toLower _company;

_company