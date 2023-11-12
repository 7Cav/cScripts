#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function handle the casualties and send the information to all curators
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_civ_damage
 *
 * Public: No
 */

params ["_marker", "_dencity", "_projectile", "_unit"];

if (!GVAR(ALLOW_CIV_ZONE_DAMAGE)) exitWith {};

INFO_1("Civ", "Checking for possible civilian casualties at %1.", _marker);

private _damageChance = switch (_dencity) do {
    case "high": {0.4};
    case "medium": {0.30};
    case "low": {0.1};
    default {0.30};
};

if (random 1 < _damageChance) then {
    GVAR(ALLOW_CIV_ZONE_DAMAGE) = false;
    INFO_1("Civ", "Civilian casualties at %1.", _marker);
    {
        private _curator = getAssignedCuratorUnit _x;
        [QEGVAR(Civilian,Casualties), [_marker, _dencity, _projectile, _unit], _curator] call CBA_fnc_targetEvent;
    } forEach allCurators;
} else {
    INFO_1("Civ", "No civilian casualties at %1 detected.", _marker);
};

// Allow additional check again
[{GVAR(ALLOW_CIV_ZONE_DAMAGE) = true;}, [], 5] call CBA_fnc_waitAndExecute;
