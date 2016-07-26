#include "..\script_component.hpp"
params ["_unit", "_array"];

private _gps = selectRandom _array;
_unit unlinkItem "ItemGPS";
if (_gps != "") then {
    _unit linkItem _gps;
};
