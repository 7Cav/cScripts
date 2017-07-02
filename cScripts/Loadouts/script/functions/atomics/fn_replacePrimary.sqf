#include "..\script_component.hpp"
params ["_unit", "_array"];

if ((_array select 0) isEqualType []) then {
    _array = selectRandom _array;
};

_array params ["_gun"];

if (_gun != primaryWeapon _unit) then {
    _unit removeWeapon (primaryWeapon _unit);
    _unit addWeapon _gun;
};

removeAllPrimaryWeaponItems _unit;
{ _unit removePrimaryWeaponItem _x; false } count (primaryWeaponMagazine _unit);
{ _unit addPrimaryWeaponItem _x; false } count (_array select [1, 100]);
