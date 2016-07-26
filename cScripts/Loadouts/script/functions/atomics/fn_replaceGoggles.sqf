#include "..\script_component.hpp"
params ["_unit", "_array"];

private _goggles = selectRandom _array;
if (_goggles != goggles _unit) then {
    removeGoggles _unit;
    if (_goggles != "") then {
        _unit addGoggles _goggles;
    };
};
