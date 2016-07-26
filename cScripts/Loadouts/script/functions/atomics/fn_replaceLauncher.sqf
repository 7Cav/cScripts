#include "..\script_component.hpp"
params ["_unit", "_array"];

if (typeName (_array select 0) == "ARRAY") then {
    _array = selectRandom _array;
};

_array params ["_gun", ["_attachment0", ""], ["_attachment1", ""], ["_attachment2", ""]];

if (_gun != secondaryWeapon _unit) then {
    _unit removeWeapon (secondaryWeapon _unit);
    _unit addWeapon _gun;
};

{ _unit removeSecondaryWeaponItem _x; false } count (secondaryWeaponItems _unit);
{ _unit removeSecondaryWeaponItem _x; false } count (secondaryWeaponMagazine _unit);
{ _unit addSecondaryWeaponItem _x; false } count [_attachment0, _attachment1, _attachment2];
