#include "..\script_component.hpp"
params ["_unit", "_array"];

private _compass = selectRandom _array;
_unit unlinkItem "ItemCompass";
if (_compass != "") then {
    _unit linkItem _compass;
};
