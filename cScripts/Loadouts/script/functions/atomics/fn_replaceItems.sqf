#include "..\script_component.hpp"
params ["_unit", "_array"];

removeAllItems _unit;
if (_array isEqualTo [""]) exitWith {};

private _arrayCount = count _array;
for "_i" from 0 to (_arrayCount - 1) do {
    private _currentItem = _array select _i;

    private _sorting = switch true do {
        case (GVAR(usesACE) && {[_unit] call ace_medical_treatment_fnc_isMedic} && {toLower _currentItem in ACE_MEDICAL_ITEMS}): {[BACKPACK, UNIFORM, VEST]};
        case (GVAR(usesACRE) && {toLower _currentItem in ACRE_RADIO_ITEMS}): {[UNIFORM, VEST, BACKPACK]};
        case (toLower _currentItem in GEAR_ITEMS): {[BACKPACK, VEST, UNIFORM]};
        default {[UNIFORM, BACKPACK, VEST]};
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
