#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function checks a given projectile and se if it can damage a target
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_civ_h
 *
 * Public: No
 */

params ["", "", "", "", "", "", "_projectile"];

if (!GVAR(isPlayer)) exitWith {};
if (typeOf _projectile isKindOf "Chemlight_base") exitWith {};
if (typeOf _projectile isKindOf "SmokeShell") exitWith {};
if (typeOf _projectile isKindOf "rhs_ammo_m84") exitWith {};

_projectile addEventHandler ["HitExplosion", { 
    params ["_projectile", "_hitEntity", "_projectileOwner", "_hitSelections"];
    _hitSelections params ["_hitSelections"];
    private _pos = _hitSelections#0;
    {
        _x params ["_marker", "", "", "", "_dencity"];
        private _inArea = _pos inArea _marker;
        if (_inArea) then {
            [_marker, _dencity, _projectile, player] call EFUNC(civ,damage);
        };
    } forEach GETMVAR(EGVAR(Civ,Zones), []);
}];
