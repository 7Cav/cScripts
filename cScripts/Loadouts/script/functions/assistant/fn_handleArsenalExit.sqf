#include "..\script_component.hpp"

if (GVAR(cmbClassLastIndex) == 0) then {
    [] call FUNC(applyCommonLoadoutDiff);
} else {
    GVAR(classLoadoutArrays) set [GVAR(cmbClassLastIndex), [player] call FUNC(generateLoadoutFromUnit)];
};

{
    private _index = GVAR(availableClasses) find (typeOf _x);
    if (_index != -1) then {
        [_x, GVAR(classLoadoutArrays) select _index] call FUNC(applyLoadout);
    } else {
        [_x, GVAR(classLoadoutArrays) select 0] call FUNC(applyLoadout);
    };
    false
} count switchableUnits;

[] call FUNC(exportAsConfig);
["Your new loadout config has been copied to your clipboard, simply paste it into your description.ext and reload your mission."] call FUNC(logInfo);
[] call FUNC(showMessageBox);
