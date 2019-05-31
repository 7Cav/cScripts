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

private _getTeamName = getText (configFile >> "CfgVehicles" >> typeOf player >> "displayName");
_getTeamName = _getTeamName splitString " ";
_getTeamName = _getTeamName select 0;

private _return = _getTeamName;

switch (_getTeamName) do {
    case "Alpha": {
        [player, "RED"] call ace_interaction_fnc_joinTeam;
        (player) setVariable [QEGVAR(Player,Team), 'RED'];
    };
    case "Bravo": {
        [player, "BLUE"] call ace_interaction_fnc_joinTeam;
        (player) setVariable [QEGVAR(Player,Team), 'BLUE'];
    };
    default {
        _getTeamName = 'WHITE';
        (player) setVariable [QEGVAR(Player,Team), 'WHITE'];
    };
};

#ifdef DEBUG_MODE
    [formatText["%1 was assigned as team %2.", player, _getTeamName]] call FUNC(logInfo);
#endif

_return;