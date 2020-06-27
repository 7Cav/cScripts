#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Set a team color based on the units name.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Team color <STRING>
 *
 * Example:
 * call cScripts_fnc_setTeamColor
 *
 */

private _getTeamName = "";
if !(roleDescription player == "") then {
    _getTeamName = roleDescription player;
} else {
    _getTeamName = getText (configFile >> "CfgVehicles" >> typeOf player >> "displayName");
};
_getTeamName = _getTeamName splitString " ";
_getTeamName = _getTeamName select 0;

switch (_getTeamName) do {
    case "Alpha": {
        [player, "RED"] call ace_interaction_fnc_joinTeam;
        (player) setVariable [QEGVAR(Player,Team), 'RED'];
    };
    case "Bravo": {
        [player, "BLUE"] call ace_interaction_fnc_joinTeam;
        (player) setVariable [QEGVAR(Player,Team), 'BLUE'];
    };
    case "Charlie": {
        [player, "GREEN"] call ace_interaction_fnc_joinTeam;
        (player) setVariable [QEGVAR(Player,Team), 'GREEN'];
    };
    case "Delta": {
        [player, "YELLOW"] call ace_interaction_fnc_joinTeam;
        (player) setVariable [QEGVAR(Player,Team), 'YELLOW'];
    };
    default {
        _getTeamName = 'WHITE';
        (player) setVariable [QEGVAR(Player,Team), 'WHITE'];
    };
};
private _return = _getTeamName;

#ifdef DEBUG_MODE
    [format ["%1 was assigned as team %2.", player, _getTeamName], "SetTeamColor"] call FUNC(logInfo);
#endif

_return;