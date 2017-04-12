#include "..\script_component.hpp"

private _oldCommon = GVAR(classLoadoutArrays) select 0;
private _newCommon = [player] call FUNC(generateLoadoutFromUnit);
private _diff = [];

{
    if !((_oldCommon select _forEachIndex) isEqualTo (_newCommon select _forEachIndex)) then {
        _diff pushBack [_forEachIndex, _newCommon select _forEachIndex];
    };
} forEach LOADOUT_INDEXES;

if (GVAR(usesACRE)) then {
    private _index = count LOADOUT_INDEXES;
    if !((_oldCommon select _index) isEqualTo (_newCommon select _index)) then {
        _diff pushBack [_index, _newCommon select _index];
    };
};

{
    private _loadoutArray = _x;
    {
        _x params ["_index", "_value"];
        _loadoutArray set [_index, _value];
    } forEach _diff;
} forEach GVAR(classLoadoutArrays);
