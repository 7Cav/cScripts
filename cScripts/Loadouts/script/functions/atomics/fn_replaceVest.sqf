#include "..\script_component.hpp"
params ["_unit", "_array"];

private _vest = selectRandom _array;
if (_vest != vest _unit) then {
    removeVest _unit;
    if (_vest != "") then {
        _unit addVest _vest;
    };
};
