#include "..\script_component.hpp"
params ["_unit", "_item", "_sorting"];

if !(_unit canAdd _item) exitWith {
    GVAR(overflowItems) pushBack _item;
};

private _containers = _sorting apply {_unit call _x};

{
    if (_x canAdd _item) exitWith {
        _x addItemCargoGlobal [_item, 1];
    };
} forEach _containers;
