#include "..\script_component.hpp"
params ["_unit", "_array"];

private _backpack = selectRandom _array;
if (_backpack != backpack _unit) then {
    removeBackpack _unit;
    if (_backpack != "") then {
        _unit addBackpack _backpack;
    };
};
