#include "..\script_component.hpp"
params ["_unit", "_array"];

removeAllItems _unit;
if (_array isEqualTo [""]) exitWith {};

private _arrayCount = count _array;
for "_i" from 0 to (_arrayCount - 1) do {
    private _currentItem = _array select _i;

    private _sorting = if (
        GVAR(usesACE)
        && {[_unit] call ACE_Medical_fnc_isMedic}
        && {toLower _currentItem in ACE_MEDICAL_ITEMS}
    ) then {
        [BACKPACK, UNIFORM, VEST]
    } else {
        [UNIFORM, BACKPACK, VEST]
    };

    // Check of next index is amount to add
    if ((_i + 1 < _arrayCount) && {(_array select (_i + 1)) isEqualType 0}) then {
        for "_j" from 1 to (_array select (_i + 1)) do {
            [_unit, _currentItem, _sorting] call FUNC(addItemSorted);
        };
        // Skip next index (the amount of added items)
        _i = _i + 1;
    } else {
        if (_currentItem isKindOf ["ItemRadio", configFile >> "CfgWeapons"]) then {
            [_unit, _currentItem] call FUNC(replaceRadio);
        } else {
            [_unit, _currentItem, _sorting] call FUNC(addItemSorted);
        };
    };
};
