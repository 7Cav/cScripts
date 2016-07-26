#include "..\script_component.hpp"
params ["_unit", "_array"];

private _nvgs = selectRandom _array;
if (_nvgs != hmd _unit) then {
    _unit unlinkItem (hmd _unit);
    if (_nvgs != "") then {
        _unit linkItem _nvgs;
    };
};
