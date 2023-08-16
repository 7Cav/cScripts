#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function strips your rank from your name if you have defined squad XML.
 *
 * Arguments:
 * 0: Unit <STRING>
 *
 * Return Value:
 *  Rank striped profileName OR profileName <STRING>
 *
 * Example:
 * [bob] call cScripts_fnc_unit_getName
 *
 */

params [["_unit", objNull, [objNull]]];

if (!GVAR(isPlayer)) exitWith {name _unit};
if (!isMultiplayer) exitWith {profileName};

if (call EFUNC(player,hasClanTag)) exitWith {
    [profileName, 4] call BIS_fnc_trimString;
};

profileName