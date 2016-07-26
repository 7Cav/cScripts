#include "..\script_component.hpp"

["Open", true] spawn BIS_fnc_arsenal;
GVAR(arsenalOpen) = false;

[{
    params ["", "_pfhID"];

    if !(isNull (uiNamespace getVariable "RscDisplayArsenal")) then {
        if !(GVAR(arsenalOpen)) then {
            [] call FUNC(handleArsenalInit);
        };
    } else {
        if (GVAR(arsenalOpen)) then {
            [] call FUNC(handleArsenalExit);
            [_pfhID] call CBA_fnc_removePerFrameHandler;
        };
    };
}, 0, []] call CBA_fnc_addPerFrameHandler;
