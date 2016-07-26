#include "..\script_component.hpp"
private ["_newCommonLoadout", "_commonLoadoutDiff", "_diffIndexes", "_classLoadout"];

_newCommonLoadout = [player] call FUNC(generateLoadoutFromUnit);
_commonLoadoutDiff = _newCommonLoadout - (_newCommonLoadout arrayIntersect (GVAR(classLoadoutArrays) select 0));

if !(_commonLoadoutDiff isEqualTo []) then {
    _diffIndexes = _commonLoadoutDiff apply {_newCommonLoadout find _x};

    {
        _classLoadout = _x;
        {
            _classLoadout set [_x, _newCommonLoadout select _x];
            false
        } count _diffIndexes;
        GVAR(classLoadoutArrays) set [_forEachIndex, _classLoadout];
    } forEach GVAR(classLoadoutArrays);
};
