#include "..\script_component.hpp"
params ["_unit", "_array"];

private _arrayCount = count _array;
{ _unit removeMagazineGlobal _x; } count (magazines _unit);
if (_array isEqualTo [""]) exitWith {};

for "_i" from 0 to (_arrayCount - 1) do {
    private _currentItem = _array select _i;

    if ((_i + 1 < _arrayCount) && {(_array select (_i + 1)) isEqualType 0}) then {
        private _itemCount = _array select (_i + 1);

        private _loadableWeapon = [_unit, _currentItem] call FUNC(findLoadableWeapon);
        if (_loadableWeapon != "") then {
            _unit addWeaponItem [_loadableWeapon, _currentItem];
            _itemCount = _itemCount - 1;
        };

        if (_itemCount > 0) then {
            for "_j" from 1 to _itemCount do {
                [_unit, _currentItem, [VEST, BACKPACK, UNIFORM]] call FUNC(addItemSorted);
            };
        };

        _i = _i + 1;
    } else {
        private _loadableWeapon = [_unit, _currentItem] call FUNC(findLoadableWeapon);
        if (_loadableWeapon != "") then {
            _unit addWeaponItem [_loadableWeapon, _currentItem];
        } else {
            [_unit, _currentItem, [VEST, BACKPACK, UNIFORM]] call FUNC(addItemSorted);
        };
    };
};
