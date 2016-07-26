#include "..\script_component.hpp"
params ["_unit", "_array"];

private _uniform = selectRandom _array;
if (_uniform != uniform _unit) then {
    removeUniform _unit;
    if (_uniform != "") then {
        _unit forceAddUniform _uniform;
    };
};
