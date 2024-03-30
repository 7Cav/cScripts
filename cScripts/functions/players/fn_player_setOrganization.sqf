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
 * Organization <ARRAY>
 *
 * Example:
 * [2,"Charlie"] call cScripts_fnc_player_setOrganization;
 *
 * Public: No
 */

params [
	["_platoon", 0, [0]],
	["_company", "", [""]]
];

// Set platoon number
if (_platoon < 0 || _platoon > 4) exitWith {
	WARNING("Platoon number is invalid. Must be between 0 and 4.");
};
SETVAR(player, EGVAR(Player,Platoon), _platoon);

// Set company name
_company = toLower _company;
SETVAR(player,EGVAR(Player,Company),_company);

INFO_2("Player", "%1 have company set to '%2' and platoon set to '%3'", name _unit, _company, _platoon);

[platoon, _company]