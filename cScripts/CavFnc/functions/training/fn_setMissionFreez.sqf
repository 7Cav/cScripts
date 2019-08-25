#include "..\script_component.hpp";
/*
 * Author: SGT.Whitsel.M, SGT.Brostrom.A
 * This function disable all the ai.
 *
 * Arguments:
 * 0: Enable/Disable <BOOL>
 *
 * Example:
 * [true] call cScripts_fnc_setMissionFreez;
 * [false] call cScripts_fnc_setMissionFreez;
 */

params [["_state", true, [true]]];

{
        _x enableSimulation _state;
        if (vehicle _x != _x) then {
            vehicle _x enableSimulation _state;
            #ifdef DEBUG_MODE
                [formatText["Setting animation for vehicle %1 to %2.", vehicle _x, _state]] call FUNC(logInfo);
            #endif
        };
        #ifdef DEBUG_MODE
            [formatText["Setting animation to ai unit %1 to %2.", _x, _state]] call FUNC(logInfo);
        #endif
} forEach ((allUnits) - (allPlayers)); 
 
