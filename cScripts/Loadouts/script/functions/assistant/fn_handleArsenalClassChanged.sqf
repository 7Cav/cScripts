#include "..\script_component.hpp"
params ["_control", "_index"];

if (GVAR(cmbClassLastIndex) == 0) then {
    [] call FUNC(applyCommonLoadoutDiff);
    [player, GVAR(classLoadoutArrays) select (GVAR(availableClasses) find (_control lbData _index))] call FUNC(applyLoadout);
    ["ListSelectCurrent", [ctrlParent _control]] call BIS_fnc_arsenal;
} else {
    GVAR(classLoadoutArrays) set [GVAR(cmbClassLastIndex), [player] call FUNC(generateLoadoutFromUnit)];
    [player, GVAR(classLoadoutArrays) select (GVAR(availableClasses) find (_control lbData _index))] call FUNC(applyLoadout);
    ["ListSelectCurrent", [ctrlParent _control]] call BIS_fnc_arsenal;
};

GVAR(cmbClassLastIndex) = _index;
