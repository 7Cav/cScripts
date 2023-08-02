#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function sets the team color of the _unit based on displayName or Role Description
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Array of color and name <ARRAY>
 *
 * Example:
 * [bob] call cScripts_fnc_unit_setTeamColor
 *
 */

params [["_unit", objNull, [objNull]]];

if (!isNil{_unit setVariable [QEGVAR(Unit,TeamColor), nil]}) exitWith {};

private _name = "";
if !(roleDescription _unit == "") then {
    _name = roleDescription _unit;
} else {
    _name = getText (configFile >> "CfgVehicles" >> typeOf _unit >> "displayName");
};
_name = _name splitString " ";
_name = _name#0;
_nameUpper = toUpper _name;

private _color = switch (_nameUpper) do {
    case "ALPHA": {"RED"};
    case "BRAVO": {"BLUE"};
    case "CHARLIE": {"GREEN"};
    case "DELTA": {"YELLOW"};
    default {"WHITE"};
};

[_unit, _color] call ace_interaction_fnc_joinTeam;
_unit setVariable [QEGVAR(Unit,TeamColor), _color];
if (GVAR(isPlayer)) then { [["team", _color]] call FUNC(setUnitData); };

#ifdef DEBUG_MODE
    [format ["%1 was assigned as team %2.", _unit, _color], "SetTeamColor"] call FUNC(info);
#endif

[_name, _color];