#include "..\script_component.hpp"
params ["_unit", "_array"];
private ["_arrayCount", "_currentItem"];

_arrayCount = count _array;
{
    switch (true) do {
        case GVAR(usesACRE): {
            // TODO: substring might be substantially faster
            if !(_x in ["ItemRadio", "ItemRadioAcreFlagged"] || {_x isKindOf ["ACRE_PRC343", configFile >> "CfgWeapons"]}) then {
                _unit removeItem _x;
            };
        };
        case GVAR(usesTFAR): {
            if !(_x isKindOf ["ItemRadio", configFile >> "CfgWeapons"]) then {
                _unit removeItem _x;
            };
        };
        default {
            _unit removeItem _x;
        };
    };

    false
} count (items _unit);
if (_array isEqualTo [""]) exitWith {};

for "_i" from 0 to (_arrayCount - 1) do {
    _currentItem = _array select _i;

    if ((_i + 1 < _arrayCount) && {typeName (_array select (_i + 1)) == "SCALAR"}) then {
        for "_j" from 1 to (_array select (_i + 1)) do {
            switch (true) do {
                case !(_unit canAdd _currentItem):              { GVAR(overflowItems) pushBack _currentItem };
                case (_unit canAddItemToUniform _currentItem):  { _unit addItemToUniform _currentItem };
                case (_unit canAddItemToBackpack _currentItem): { _unit addItemToBackpack _currentItem };
                case (_unit canAddItemToVest _currentItem):     { _unit addItemToVest _currentItem };
            };
        };
        _i = _i + 1;
    } else {
        if (_currentItem isKindOf ["ItemRadio", configFile >> "CfgWeapons"]) then {
            [_unit, [_currentItem]] call FUNC(replaceRadio);
        } else {
            switch (true) do {
                case !(_unit canAdd _currentItem):              { GVAR(overflowItems) pushBack _currentItem };
                case (_unit canAddItemToUniform _currentItem):  { _unit addItemToUniform _currentItem };
                case (_unit canAddItemToBackpack _currentItem): { _unit addItemToBackpack _currentItem };
                case (_unit canAddItemToVest _currentItem):     { _unit addItemToVest _currentItem };
            };
        };
    };
};
