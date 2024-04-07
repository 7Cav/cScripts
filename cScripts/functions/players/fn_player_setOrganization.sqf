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
if (_platoon < 0 || _platoon > 4) then {
    SHOW_WARNING_1("Player","Platoon number '%1' is invalid. Must be between 0 and 4. Setting to default.",_platoon);
    _platoon = 0;
};

SETVAR(player,EGVAR(Player,Platoon),_platoon);

// Set company name
_company = toLower _company;
SETVAR(player,EGVAR(Player,Company),_company);

private _unit = name player;
INFO_3("Player", "%1 have company set to '%2' and platoon set to '%3'",_unit,_company,_platoon);

[_platoon, _company]