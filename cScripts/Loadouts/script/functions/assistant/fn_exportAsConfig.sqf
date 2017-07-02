#include "..\script_component.hpp"

private _nl            = toString [13, 10];
private _result        = "class CfgLoadouts {" + _nl;
private _commonLoadout = GVAR(classLoadoutArrays) select 0;

private _fnc_arrayToConfig = {
    params ["_name", "_value"];
    private _cfg = "        " + _name + "[] = ";
    _value = str _value;
    _value = [_value, "[", "{"] call CBA_fnc_replace;
    _value = [_value, "]", "}"] call CBA_fnc_replace;
    _cfg   = _cfg + _value + ";" + _nl;
    _cfg
};

{
    private _classIndex = _forEachIndex;
    if (_classIndex != 0) then {
        _result = _result + "    class " + _x + ": " + (GVAR(availableClasses) select 0) + " {" + _nl;
    } else {
        _result = _result + "    class " + _x + " {" + _nl;
    };

    {
        private _loadoutAtom = GVAR(classLoadoutArrays) select _classIndex select _forEachIndex;
        if (_classIndex == 0 || { !(_loadoutAtom isEqualTo (_commonLoadout select _forEachIndex)) }) then {
            _result = _result + ([_x, _loadoutAtom] call _fnc_arrayToConfig);
        };
    } forEach LOADOUT_INDEXES;

    if (GVAR(usesACRE)) then {
        private _loadoutAtom = GVAR(classLoadoutArrays) select _classIndex select count LOADOUT_INDEXES;
        if (_classIndex == 0 || { !(_loadoutAtom isEqualTo (_commonLoadout select count LOADOUT_INDEXES)) }) then {
            _result = _result + (["lrRadios", _loadoutAtom] call _fnc_arrayToConfig);
        };
    };

    _result = _result + "    };" + _nl;
} forEach GVAR(availableClasses);
_result = _result + "};";

copyToClipboard _result;
_result
