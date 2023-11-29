#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function sets your set your company name
 *
 * Arguments:
 * 0: Company <STRING>
 *
 * Return Value:
 * Company Name <STRING>
 *
 * Example:
 * ["Charlie"] call cScripts_fnc_player_setCompany;
 *
 * Public: No
 */

params [["_company", "", [""]]];

_company = toLower _company;
SETVAR(player,EGVAR(Player,Company),_company);

INFO_2("Player", "%1 have company set to '%2'", name _unit, _company);

_company