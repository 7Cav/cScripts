#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function handle the casualties and send the information to all curators.
 *
 * Arguments:
 * 0: Marker <STRING>
 * 1: Density <STRING>
 * 2: Projectile <OBJECT>
 * 4: Unit <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_civ_damage
 *
 * Public: No
 */

params ["_marker", "_density", "_projectile", "_unit"];

if (!GVAR(ALLOW_CIV_ZONE_DAMAGE)) exitWith {};
GVAR(ALLOW_CIV_ZONE_DAMAGE) = false;

INFO_1("Civ", "Checking for possible civilian casualties at %1.", _marker);

private _damageChance = switch (_density) do {
    case "extream": {0.65};
    case "high": {0.4};
    case "medium": {0.25};
    case "low": {0.1};
    case "none": {0};
    default {0};
};

if (random 1 < _damageChance) then {
    INFO_1("Civ", "Civilian casualties at %1.", _marker);
    private _location = text nearestLocation [markerPos _marker, ""];
    {
        private _curator = getAssignedCuratorUnit _x;
        [QEGVAR(Civilian,Casualties), [_location, _unit], _curator] call CBA_fnc_targetEvent;
    } forEach allCurators;
} else {
    INFO_1("Civ", "No civilian casualties at %1 detected.", _marker);
};

// Allow additional check again
[{GVAR(ALLOW_CIV_ZONE_DAMAGE) = true;}, [], 5] call CBA_fnc_waitAndExecute;
