#include "..\script_component.hpp"
params ["_unit", "_array"];
private ["_arrayCount", "_currentItem", "_itemCount"];

_arrayCount = count _array;
{ _unit removeMagazineGlobal _x; } count (magazines _unit);
if (_array isEqualTo [""]) exitWith {};

for "_i" from 0 to (_arrayCount - 1) do {
    _currentItem = _array select _i;

    if ((_i + 1 < _arrayCount) && {typeName (_array select (_i + 1)) == "SCALAR"}) then {
        _itemCount = _array select (_i + 1);

        private _loadableWeapon = [_unit, _currentItem] call FUNC(findLoadableWeapon);
        if (_loadableWeapon != "") then {
            _unit addWeaponItem [_loadableWeapon, _currentItem];
            _itemCount = _itemCount - 1;
        };

        if (_itemCount > 0) then {
            for "_j" from 1 to _itemCount do {
                switch (true) do {
                    case !(_unit canAdd _currentItem):              { GVAR(overflowItems) pushBack _currentItem };
                    case (_unit canAddItemToVest _currentItem):     { _unit addItemToVest _currentItem };
                    case (_unit canAddItemToBackpack _currentItem): { _unit addItemToBackpack _currentItem };
                    case (_unit canAddItemToUniform _currentItem):  { _unit addItemToUniform _currentItem };
                };
            };
        };

        _i = _i + 1;
    } else {
        private _loadableWeapon = [_unit, _currentItem] call FUNC(findLoadableWeapon);
        if (_loadableWeapon != "") then {
            _unit addWeaponItem [_loadableWeapon, _currentItem];
        } else {
            switch (true) do {
                case !(_unit canAdd _currentItem):              { GVAR(overflowItems) pushBack _currentItem };
                case (_unit canAddItemToVest _currentItem):     { _unit addItemToVest _currentItem };
                case (_unit canAddItemToBackpack _currentItem): { _unit addItemToBackpack _currentItem };
                case (_unit canAddItemToUniform _currentItem):  { _unit addItemToUniform _currentItem };
            };
        };
    };
};
