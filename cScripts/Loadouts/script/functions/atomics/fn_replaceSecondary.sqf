#include "..\script_component.hpp"
params ["_unit", "_array"];

if (typeName (_array select 0) == "ARRAY") then {
    _array = selectRandom _array;
};

_array params ["_gun", ["_attachment0", ""], ["_attachment1", ""], ["_attachment2", ""]];

if (_gun != handgunWeapon _unit) then {
    _unit removeWeapon (handgunWeapon _unit);
    _unit addWeapon _gun;
};

removeAllHandgunItems _unit;
{ _unit removeHandgunItem _x; false } count (handgunMagazine _unit);
{ _unit addHandgunItem _x; false } count [_attachment0, _attachment1, _attachment2];
