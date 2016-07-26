#include "..\script_component.hpp"
params ["_unit", "_magazine"];
private ["_compatibleMagazines"];

{
    _compatibleMagazines = getArray (configfile >> "CfgWeapons" >> _x >> "magazines");
    if ((toLower _magazine) in _compatibleMagazines) exitWith {
        _unit addWeaponItem [_x, _magazine];
    };
} forEach [primaryWeapon _unit, handgunWeapon _unit, secondaryWeapon _unit];
