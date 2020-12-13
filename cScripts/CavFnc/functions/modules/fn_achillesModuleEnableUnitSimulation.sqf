#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function enables adn unhide a units, vehicle and its group;
 * that have been hidden and disabled by simulation manager and dynamic simulation.
 *
 * Arguments:
 * 0: objectPos <OBJECT>
 *
 * Example:
 * this call cScripts_fnc_achillesModuleEnableUnitSimulation
 *
 * Public: No
 */

params ["_objectPos"];

_objectPos = [_logic, false] call Ares_fnc_GetUnitUnderCursor;

if (isNull _objectPos) exitWith {
    ["Not a valid unit"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};
if (!(isObjectHidden _objectPos) && simulationEnabled _objectPos) exitWith {
    ["Unit already active"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};


_objectPos enableDynamicSimulation false;
[_objectPos, true] remoteExec ["enableSimulationGlobal", 2];
[_objectPos, false] remoteExec ["hideObjectGlobal", 2];

group _objectPos enableDynamicSimulation false;
{
    [_x, true] remoteExec ["enableSimulationGlobal", 2];
    [_x, false] remoteExec ["hideObjectGlobal", 2];
} forEach units group _objectPos;