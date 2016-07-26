#include "..\script_component.hpp"
params ["_unit", "_array"];

private _watch = selectRandom _array;
_unit unlinkItem "ItemWatch";
if (_watch != "") then {
    _unit linkItem _watch;
};
