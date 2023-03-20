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

// Dont enable system if there are airfames
// TODO make this system work with airframes in a reliable way
private _hasAirframes = {
    if (_x isKindOf "Air") exitWith {true};
} forEach vehicles;
if (_hasAirframes) exitWith {
    ["Dynamic Simulation have terminated it self due to mission containing airframes.", "dynamicSimulation"] call FUNC(warning);
};

#ifdef DEBUG_MODE
    [format["Dynamic Simulation set to: %1",EGVAR(Settings,dynamicSimulation)], "dynamicSimulation"] call FUNC(info);
#endif

"Group" setDynamicSimulationDistance 1800;
"Vehicle" setDynamicSimulationDistance 2400;
"EmptyVehicle" setDynamicSimulationDistance 250;
"Prop" setDynamicSimulationDistance 50;
enableDynamicSimulationSystem true;

// Enables player trigger for dynamic simulation
player triggerDynamicSimulation true;


if (!isServer) exitWith {};

// Apply event handlers to objects
if ((EGVAR(Settings,dynamicSimulation) == 1) || (EGVAR(Settings,dynamicSimulation) == 2)) then {
    #ifdef DEBUG_MODE
        ["Applying Event Handers (init) to mission objects...", "InitSimulation"] call FUNC(info);
    #endif

    ["CAManBase", "init", {
        (_this select 0) enableDynamicSimulation true;
        group (_this select 0) enableDynamicSimulation true;
        if (!isPlayer (_this select 0)) then { (_this select 0) triggerDynamicSimulation false; };
    }, true, [], true] call CBA_fnc_addClassEventHandler;
    ["Tank", "init", {
        (_this select 0) enableDynamicSimulation true;
        if (!isPlayer (_this select 0)) then { (_this select 0) triggerDynamicSimulation false };
        _this select 0 addEventHandler ["CuratorObjectPlaced", { [{_this select 0 enableDynamicSimulation false; }, [_this select 1], 3] call CBA_fnc_waitAndExecute;}];
    }, true, [], true] call CBA_fnc_addClassEventHandler;
    ["Car", "init", {
        (_this select 0) enableDynamicSimulation true;
        if (!isPlayer (_this select 0)) then { (_this select 0) triggerDynamicSimulation false };
        _this select 0 addEventHandler ["CuratorObjectPlaced", { [{_this select 0 enableDynamicSimulation false; }, [_this select 1], 3] call CBA_fnc_waitAndExecute;}];
    }, true, [], true] call CBA_fnc_addClassEventHandler;
    ["Ship", "init", {
        (_this select 0) enableDynamicSimulation true;
        if (!isPlayer (_this select 0)) then { (_this select 0) triggerDynamicSimulation false };
        _this select 0 addEventHandler ["CuratorObjectPlaced", { [{_this select 0 enableDynamicSimulation false; }, [_this select 1], 3] call CBA_fnc_waitAndExecute;}];
    }, true, [], true] call CBA_fnc_addClassEventHandler;
    ["Thing", "init", {
        (_this select 0) enableDynamicSimulation true;
        if (!isPlayer (_this select 0)) then { (_this select 0) triggerDynamicSimulation false };
        _this select 0 addEventHandler ["CuratorObjectPlaced", { [{_this select 0 enableDynamicSimulation false; }, [_this select 1], 3] call CBA_fnc_waitAndExecute;}];
    }, true, [], true] call CBA_fnc_addClassEventHandler;
    ["ThingX", "init", {
        (_this select 0) enableDynamicSimulation true;
        if (!isPlayer (_this select 0)) then { (_this select 0) triggerDynamicSimulation false };
        _this select 0 addEventHandler ["CuratorObjectPlaced", { [{_this select 0 enableDynamicSimulation false; }, [_this select 1], 3] call CBA_fnc_waitAndExecute;}];
    }, true, [], true] call CBA_fnc_addClassEventHandler;

    // Disable activation and enabeling of simulation for airframes
    ["Air", "init", {
        [{
            private _vehicle = _this select 0;
            {
                #ifdef DEBUG_MODE
                    [format["Disabling DynamicSimulation for aircrew unit: %1", _x], "InitSimulation"] call FUNC(info);
                #endif
                group (_x) enableDynamicSimulation false;
                _x enableDynamicSimulation false;
            } forEach crew _vehicle;
        }, [_this select 0], 3] call CBA_fnc_waitAndExecute;
    }, true, [], true] call CBA_fnc_addClassEventHandler;
};

// Disable Dynamic Simulation On curator Objects
if (EGVAR(Settings,dynamicSimulation) == 2) then {
    ["All", "init", {
        [{
            private _vehicle = _this select 0;
            _vehicle addEventHandler ["CuratorObjectPlaced", {
                params ["_curator", "_entity"];
                #ifdef DEBUG_MODE
                    [format["Disabling DynamicSimulation for curator spawned: %1", _entity], "InitSimulation"] call FUNC(info);
                #endif
                group (_entity) enableDynamicSimulation false;
                _entity enableDynamicSimulation false;
            }];
        }, [_this select 0], 3] call CBA_fnc_waitAndExecute;
    }, true, [], true] call CBA_fnc_addClassEventHandler;
};

// Enable Dynamic Simulation On curator Objects
if (EGVAR(Settings,dynamicSimulation) == 3) then {
    ["All", "init", {
        [{
            private _vehicle = _this select 0;
            if !(_vehicle isKindOf "Air") then {
                _vehicle addEventHandler ["CuratorObjectPlaced", {
                    params ["_curator", "_entity"];
                    #ifdef DEBUG_MODE
                        [format["Enabling DynamicSimulation for curator spawned: %1", _entity], "InitSimulation"] call FUNC(info);
                    #endif
                    group (_entity) enableDynamicSimulation true;
                    _entity enableDynamicSimulation true;
                }];
            };
        }, [_this select 0], 3] call CBA_fnc_waitAndExecute;
    }, true, [], true] call CBA_fnc_addClassEventHandler;
};
