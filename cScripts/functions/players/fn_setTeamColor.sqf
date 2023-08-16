#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Set a team color based on the units name.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Team color or Empty <STRING>
 *
 * Example:
 * call cScripts_fnc_setTeamColor
 *
 */

private _teamName = "";
if !(roleDescription player == "") then {
    _teamName = roleDescription player;
} else {
    _teamName = getText (configFile >> "CfgVehicles" >> typeOf player >> "displayName");
};
_teamName = _teamName splitString " ";
_teamName = _teamName select 0;

switch (_teamName) do {
    case "Alpha": {
        [player, "RED"] call ace_interaction_fnc_joinTeam;
        player setVariable [QEGVAR(Player,Team), 'RED'];
    };
    case "Bravo": {
        [player, "BLUE"] call ace_interaction_fnc_joinTeam;
        player setVariable [QEGVAR(Player,Team), 'BLUE'];
    };
    case "Charlie": {
        [player, "GREEN"] call ace_interaction_fnc_joinTeam;
        player setVariable [QEGVAR(Player,Team), 'GREEN'];
    };
    case "Delta": {
        [player, "YELLOW"] call ace_interaction_fnc_joinTeam;
        player setVariable [QEGVAR(Player,Team), 'YELLOW'];
    };
    default {
        _teamName = 'WHITE';
        player setVariable [QEGVAR(Player,Team), 'WHITE'];
    };
};

INFO_2("SetTeamColor", "%1 was assigned as team %2.", player, _teamName);

_teamName;