#include "..\script_component.hpp"
params ["_unit", "_array"];

private _binoculars = selectRandom _array;
if (_binoculars != binocular _unit) then {
    _unit removeWeapon (binocular _unit);
    if (_binoculars != "") then {
        _unit addWeapon _binoculars;
    };
};
