#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * TBD
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_civ_civilianZone
 *
 * Public: No
 */

params ["_marker", "_dencity", "_projectile"];

if (!GVAR(ALLOW_CIV_ZONE_DAMAGE)) exitWith {};

private _damageChanse = switch (_dencity) do {
    case "high": {0.6};
    case "medium": {0.4};
    case "low": {0.2};
    default {0.4};
};

LOG_1("DEBUG DAMAGE", _damageChanse)

if (random 1 > _damageChanse) then {
    GVAR(ALLOW_CIV_ZONE_DAMAGE) = false;
    [{
        params ["_marker", "_dencity", "_projectile"];
        {
            private _curator = getAssignedCuratorUnit _x;
            [QEGVAR(Civilian,Casualties), [_marker, _dencity, _projectile], _curator] call CBA_fnc_targetEvent;
        } forEach allCurators;
    }, [_marker, _dencity, _projectile], 5] call CBA_fnc_waitAndExecute;
};

[{
    GVAR(ALLOW_CIV_ZONE_DAMAGE) = true;
}, [], 5] call CBA_fnc_waitAndExecute;