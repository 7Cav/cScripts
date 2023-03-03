#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandelers adding cav functionality to units and vehicles.
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_init_simulation
 *
 * Public: No
 */

#ifdef DEBUG_MODE
    ["Applying Event Handers (init) to mission objects...", "InitSimulation"] call FUNC(logInfo);
#endif

// Enables player trigger for dynamic simulation
player triggerDynamicSimulation true; // FIXME does this work?


if (EGVAR(Settings,dynamicSimulation) <= 2) then {
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

    ["Air", "init", {
        [{
            private _vehicle = _this select 0;
            {
                #ifdef DEBUG_MODE
                    [format["Disabling DynamicSimulation for aircrew unit: %1", _x], "InitSimulation"] call FUNC(logInfo);
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
                    [format["Disabling DynamicSimulation for curator spawned: %1", _entity], "InitSimulation"] call FUNC(logInfo);
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
            _vehicle addEventHandler ["CuratorObjectPlaced", {
                params ["_curator", "_entity"];
                #ifdef DEBUG_MODE
                    [format["Enabling DynamicSimulation for curator spawned: %1", _entity], "InitSimulation"] call FUNC(logInfo);
                #endif
                group (_entity) enableDynamicSimulation true;
                _entity enableDynamicSimulation true;
            }];
        }, [_this select 0], 3] call CBA_fnc_waitAndExecute;
    }, true, [], true] call CBA_fnc_addClassEventHandler;
};
