#include "..\script_component.hpp"
params ["_unit"];
private ["_magazines", "_compass", "_gps", "_map", "_watch"];

_magazines = primaryWeaponMagazine _unit;
_magazines append handgunMagazine _unit;
_magazines append secondaryWeaponMagazine _unit;
_magazines append magazines _unit;

_compass = ""; _gps = ""; _map = ""; _watch = "";
{
    switch true do {
        case (_x isKindOf ["ItemCompass", configFile >> "CfgWeapons"]): {_compass = _x};
        case (_x isKindOf ["ItemGPS", configFile >> "CfgWeapons"]): {_gps = _x};
        case (_x isKindOf ["ItemMap", configFile >> "CfgWeapons"]): {_map = _x};
        case (_x isKindOf ["ItemWatch", configFile >> "CfgWeapons"]): {_watch = _x};
    };
    false
} count (assignedItems _unit);

[
    [uniform _unit], [vest _unit], [backpack _unit],
    [primaryWeapon _unit] + primaryWeaponItems _unit, [handgunWeapon _unit] + handgunItems _unit, [secondaryWeapon _unit] + secondaryWeaponItems _unit,
    _magazines, (items _unit) select {!(_x isKindOf ["ItemRadio", configFile >> "CfgWeapons"])},
    [binocular _unit], [_compass], [goggles _unit],
    [_gps], [headgear _unit], [_map],
    [hmd _unit], [_watch],
    [_unit getVariable ["bis_fnc_setUnitInsignia_class", ""]]
] call FUNC(simplifyLoadout)
