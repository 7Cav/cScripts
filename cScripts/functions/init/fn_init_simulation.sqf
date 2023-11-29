#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandelers adding cav functionality to units and vehicles.
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call EFUNC(init,simulation)
 *
 * Public: No
 */

if (EGVAR(Settings,dynamicSimulation) == 0) exitWith {};

// Don't enable system if there are airframes
// TODO: make this system work with airframes in a reliable way
private _hasAirframes = {
    if (_x isKindOf "Air") exitWith {true};
} forEach vehicles;
if (_hasAirframes) exitWith {
    SHOW_WARNING("DynamicSimulation", "Dynamic Simulation have terminated it self due to mission containing airframes");
};

INFO_1("DynamicSimulation", "Dynamic Simulation set to: %1", EGVAR(Settings,dynamicSimulation));

// System Values
"Group" setDynamicSimulationDistance 1800;
"Vehicle" setDynamicSimulationDistance 2400;
"EmptyVehicle" setDynamicSimulationDistance 250;
"Prop" setDynamicSimulationDistance 50;
"IsMoving" setDynamicSimulationDistanceCoef 3;

enableDynamicSimulationSystem true;

// Enables player trigger for dynamic simulation
player triggerDynamicSimulation true;


// Apply event handlers to objects
INFO_1("DynamicSimulation", "Applying Event Handers (init) to mission objects...");

["CAManBase", "initPost", {
    params ["_unit"];
    _unit enableDynamicSimulation true;
    if (!isPlayer _unit) then { _unit triggerDynamicSimulation false };
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Tank", "initPost", {
    params ["_vehicle"];
    _vehicle enableDynamicSimulation true;
    if (!isPlayer _vehicle) then { _vehicle triggerDynamicSimulation false };
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Car", "initPost", {
    params ["_vehicle"];
    _vehicle enableDynamicSimulation true;
    if (!isPlayer _vehicle) then { _vehicle triggerDynamicSimulation false };
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Ship", "initPost", {
    params ["_vehicle"];
    _vehicle enableDynamicSimulation true;
    if (!isPlayer _vehicle) then { _vehicle triggerDynamicSimulation false };
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Thing", "initPost", {
    params ["_object"];
    _object enableDynamicSimulation true;
}, true, [], true] call CBA_fnc_addClassEventHandler;
["ThingX", "initPost", {
    params ["_object"];
    _object enableDynamicSimulation true;
}, true, [], true] call CBA_fnc_addClassEventHandler;

// Enabling animations for airframes
["Air", "initPost", {
    params ["_vehicle"];
    [{
        params ["_vehicle"];
        {
            INFO_1("DynamicSimulation", "Disabling DynamicSimulation for aircrew unit: %1", _x);
            group (_x) enableDynamicSimulation false;
            _x enableDynamicSimulation false;
        } forEach crew _vehicle;
    }, [_vehicle], 3] call CBA_fnc_waitAndExecute;
}, true, [], true] call CBA_fnc_addClassEventHandler;