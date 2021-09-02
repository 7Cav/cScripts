#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function enables adn unhide a units, vehicle and its group;
 * that have been hidden and disabled by simulation manager and dynamic simulation.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 *
 * Example:
 * [getPos logic, this] call cScripts_fnc_zenModule_enableUnitSimulation
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

if (isNull _objectPos) exitWith {
    ["Not a valid unit"] call zen_common_fnc_showMessage;
};
if (!(isObjectHidden _objectPos) && simulationEnabled _objectPos) exitWith {
    ["Unit already active"] call zen_common_fnc_showMessage;
};

_objectPos enableDynamicSimulation false;
[_objectPos, true] remoteExec ["enableSimulationGlobal", 2];
[_objectPos, false] remoteExec ["hideObjectGlobal", 2];

group _objectPos enableDynamicSimulation false;
{
    [_x, true] remoteExec ["enableSimulationGlobal", 2];
    [_x, false] remoteExec ["hideObjectGlobal", 2];
} forEach units group _objectPos;

["Unit have been activated"] call zen_common_fnc_showMessage;
