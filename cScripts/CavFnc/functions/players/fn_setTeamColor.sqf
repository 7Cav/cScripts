#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Set a team color based on the units prefix (Alpha, Bravo, Charlie, Delta) or a player team variable.
 * You can define were the function should look for the prefix.
 *
 * Arguments:
 * 0: Get name from <STRING> (Default; classname) ["classname", "description", "variable"]
 * 
 * Return Value:
 * Team color <STRING>
 *
 * Example:
 * call cScripts_fnc_setTeamColor
 * ["classname"] call cScripts_fnc_setTeamColor
 *
 */

params [["_getNameFrom", "classname", ["classname"]]];

private _getNameFrom = toLower(_getNameFrom);

if (_getNameFrom == "classname") then {
    _getTeamName = getText (configFile >> "CfgVehicles" >> typeOf player >> "displayName");
    _getTeamName = _getTeamName splitString " ";
    _getTeamName = _getTeamName select 0;
};
if (_getNameFrom == "description") then {
    _getTeam = roleDescription player;
    _getTeamName = _getTeamName splitString " ";
    _getTeamName = _getTeamName select 0;
};
if (_getNameFrom == "variable") then {
    if !(isNil {_player getVariable QEGVAR(Player,Team)}) then {
        _getTeamName = player getVariable [QEGVAR(Player,Team)];
    } else {
        [formatText["Can't detect team variable for team assignation for player %1", player]] call FUNC(logWarning);
    };
};
if !(_getNameFrom in ["classname", "description", "variable"]) exitWith {
    [formatText["'%1' is a unsupported parameter in function setTeamColor", _getNameFrom]] call FUNC(logError);
}
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
    case "Charlie": {
        [player, "YELLOW"] call ace_interaction_fnc_joinTeam;
        (player) setVariable [QEGVAR(Player,Team), 'YELLOW'];
    };
    case "Delta": {
        [player, "GREEN"] call ace_interaction_fnc_joinTeam;
        (player) setVariable [QEGVAR(Player,Team), 'GREEN'];
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