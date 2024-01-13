#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function checks a given projectile and se if it can damage a target.
 *
 * Arguments:
 * 1: Not used <NIL>
 * 2: Not used <NIL>
 * 3: Not used <NIL>
 * 4: Not used <NIL>
 * 5: Not used <NIL>
 * 6: Not used <NIL>
 * 7: Projectile <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_civ_checkProjectile
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
