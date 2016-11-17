#include "..\script_component.hpp"

[{
    (!isNull findDisplay 46) && {time > 1}
}, {
    if (count GVAR(log) > 0) then {
        private _display = findDisplay 46 createDisplay "RscPoppyMessageBox";
        GVAR(logIndex) = 0;
        [_display] call FUNC(updateMessageBox);
        [_display] call FUNC(slideMessageBoxUp);
    };
}] call CBA_fnc_waitUntilAndExecute;
