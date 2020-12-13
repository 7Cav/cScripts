#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function is partly based on Bojan and PFC.Vex.W Fortify system.
 * This function handles Fortify regeistrated objects.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_handleFortify
 *
 * Public: No
 */

if !(isServer) exitWith {};

#ifdef DEBUG_MODE
    [formatText["Adding Fortify registrated objects."]] call FUNC(logInfo);
#endif

params [
    ["_budget", 800, [800]]
];

_fortificationStructures = [
    ["Land_HBarrier_1_F", 1],
    ["Land_HBarrier_5_F", 5],
    ["Land_HBarrierWall4_F", 10],
    ["Land_HBarrierWall_corner_F", 10],
    ["Land_HBarrierTower_F", 25],
    ["Land_BagFence_Long_F", 5],
    ["Land_BagBunker_Small_F", 25],
    ["Land_BagBunker_Large_F", 50],
    ["Land_CncBarrierMedium_F", 5],
    ["Land_CncBarrierMedium4_F", 20],
    ["Land_HelipadCircle_F", 25],
    ["Land_PortableLight_double_F", 3],
    ["StorageBladder_01_fuel_forest_F", 175],
    ["StorageBladder_01_fuel_sand_F", 175],
    ["Land_ClutterCutter_medium_F", 1]
];

[west, _budget, _fortificationStructures] call acex_fortify_fnc_registerObjects;
