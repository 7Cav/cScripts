#include "..\script_component.hpp"
params ["_unit", "_array"];

private _map = selectRandom _array;
_unit unlinkItem "ItemMap";
if (_map != "") then {
    _unit linkItem _map;
};
