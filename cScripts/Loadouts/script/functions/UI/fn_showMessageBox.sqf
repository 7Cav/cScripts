#include "..\script_component.hpp"

[{
    (!isNull findDisplay 46) && {time > 1}
}, {
    private _display = findDisplay 46 createDisplay "RscPoppyMessageBox";
    GVAR(logIndex) = 0;
    [_display] call FUNC(updateMessageBox);
    [_display] call FUNC(slideMessageBoxUp);
}, _unit] call CBA_fnc_waitUntilAndExecute;
