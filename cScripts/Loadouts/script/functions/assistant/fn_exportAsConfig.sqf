#include "..\script_component.hpp"
params ["_class"];
private ["_result", "_classIndex", "_loadoutAtom", "_nl", "_commonLoadout"];

_nl = toString [13, 10];
_result = "class CfgLoadouts {" + _nl;
_commonLoadout = GVAR(classLoadoutArrays) select 0;
{
    _classIndex = _forEachIndex;
    if (_classIndex != 0) then {
        _result = _result + "    class " + _x + ": " + (GVAR(availableClasses) select 0) + " {" + _nl;
    } else {
        _result = _result + "    class " + _x + " {" + _nl;
    };
    {
        _loadoutAtom = GVAR(classLoadoutArrays) select _classIndex select _forEachIndex;
        if !((_loadoutAtom isEqualTo (_commonLoadout select _forEachIndex)) && (_classIndex != 0)) then {
            _result = _result + "        " + _x + "[] = ";
            _loadoutAtom = [str _loadoutAtom, "[", "{"] call CBA_fnc_replace;
            _loadoutAtom = [_loadoutAtom, "]", "}"] call CBA_fnc_replace;
            _result = _result + _loadoutAtom + ";" + _nl;
        };
    } forEach LOADOUT_INDEXES;
    _result = _result + "    };" + _nl;
} forEach GVAR(availableClasses);
_result = _result + "};";

copyToClipboard _result;
_result
