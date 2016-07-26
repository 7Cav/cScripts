#include "..\script_component.hpp"
params ["_unit", "_magazine"];
private ["_compatibleMagazines"];

{
    _x params ["_weapon", "_loadedMagazines"];
    if (_weapon == "") exitWith {""};

    _compatibleMagazines = getArray (configfile >> "CfgWeapons" >> _weapon >> "magazines");
    _compatibleMagazines = _compatibleMagazines apply {toLower _x};

    if ((toLower _magazine) in _compatibleMagazines) exitWith {
        // Magazine belongs to primary muzzle
        // Check if first loaded magazine is also in first muzzle
        if ((toLower (_loadedMagazines param [0, ""])) in _compatibleMagazines) then {
            ""
        } else {
            _weapon
        };
    };

    _altMuzzle = (getArray (configfile >> "CfgWeapons" >> _weapon >> "muzzles")) param [1, ""];
    if (_altMuzzle == "") exitWith {""}; // No alt muzzle available

    _compatibleMagazines = getArray (configfile >> "CfgWeapons" >> _weapon >> _altMuzzle >> "magazines");
    _compatibleMagazines = _compatibleMagazines apply {toLower _x};

    if ((toLower _magazine) in _compatibleMagazines) exitWith {
        // Magazine belongs to secondary muzzle
        // Check if last loaded magazine is also in last muzzle
        if ((toLower (_loadedMagazines param [count _loadedMagazines - 1, ""])) in _compatibleMagazines) then {
            ""
        } else {
            _weapon
        };
    };

    ""
} forEach [
    [primaryWeapon _unit, primaryWeaponMagazine _unit],
    [handgunWeapon _unit, handgunMagazine _unit],
    [secondaryWeapon _unit, secondaryWeaponMagazine _unit]
];
