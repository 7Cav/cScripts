/*
Author: Bojan
Edited by PFC.Vex.W

Initialize the ACEX Fortify plugin, sets the fortify items, budgets, and
ensures only Apollo units are able to build, even if somebody else gets a fortify
tool.

We will also require that players be near the FOB
truck (Fortify/Base_FOB.sqf).
*/

_items = [
  ["Land_HBarrier_1_F", 2],
  ["Land_HBarrier_5_F", 5],
  ["Land_HBarrierWall4_F", 10],
  ["Land_HBarrierWall_corner_F", 10],
  ["Land_HBarrierTower_F", 25],
  ["Land_BagFence_Long_F", 5],
  ["Land_BagBunker_Small_F", 25],
  ["Land_BagBunker_Large_F", 50],
  ["Land_CncBarrierMedium_F", 5],
  ["Land_HelipadCircle_F", 25],
  ["Land_PortableLight_double_F", 1],
  ["StorageBladder_01_fuel_forest_F", 175],
  ["ClutterCutter_EP1", 0]
];
[west, 800, _items] call acex_fortify_fnc_registerObjects;

// in Fortify/Base_FOB.sqf we set the vehicle location + radius condition

// in Fortify/fn_fortifyPermissionInit.sqf we set permissions related to placement
