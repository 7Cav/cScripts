#include "..\script_component.hpp"
params ["_unit", "_array"];

{
    if !([_x] call acre_api_fnc_isBaseRadio) then {
        _x = [_x] call acre_api_fnc_getBaseRadio;
    };
    switch (true) do {
        case !(_unit canAdd _x):              { GVAR(overflowItems) pushBack _x };
        case (_unit canAddItemToUniform _x):  { _unit addItemToUniform _x };
        case (_unit canAddItemToBackpack _x): { _unit addItemToBackpack _x };
        case (_unit canAddItemToVest _x):     { _unit addItemToVest _x };
    };
    false
} count _array;
