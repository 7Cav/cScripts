#define DEBUG_MODE
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

INFO("DynamicSimulation", "Dynamic Simulation Enabled");

// System Values
"Group" setDynamicSimulationDistance 1800;
"Vehicle" setDynamicSimulationDistance 2400;
"EmptyVehicle" setDynamicSimulationDistance 250;
"Prop" setDynamicSimulationDistance 50;
"IsMoving" setDynamicSimulationDistanceCoef 3;

enableDynamicSimulationSystem true;

// Enables player trigger for dynamic simulation
player triggerDynamicSimulation true;



// Handle AA units
private _antiAircraftUnits = [];
{
    private _name = configName _x;
    private _nameLower = toLower _name;
    if (["_aa", _nameLower] call BIS_fnc_inString) then {
        if ((["_aaf", _nameLower] call BIS_fnc_inString)) then {
            if (["_aa_aaf", _nameLower] call BIS_fnc_inString) then {
                LOG_1("DEBUG", "AA UNIT: %1 (_aa_aaf)", _name);
                _antiAircraftUnits append [_name];
                continue
            };
        };
        if (["_aa_", _nameLower] call BIS_fnc_inString) then {
            LOG_1("DEBUG", "AA UNIT: %1 (_aa_)", _name);
            _antiAircraftUnits append [_name];
            continue
        };
    };
    if (["zu23", _nameLower] call BIS_fnc_inString) then {
        LOG_1("DEBUG", "AA UNIT: %1 (zu23)", _name);
        _antiAircraftUnits append [_name];
        continue 
    };
} forEach ("configName _x isKindOf 'LandVehicle' or configName _x isKindOf 'man'" configClasses (configFile >> "CfgVehicles"));

// Apply event handlers to objects
INFO("DynamicSimulation", "Applying Event Handers (init) to mission objects...");

["CAManBase", "init", {
    params ["_unit"];
    if (!isPlayer _unit) then {_unit triggerDynamicSimulation false};
    INFO_2("DynamicSimulation", "Enabling dynamic simulation system for unit %1 (%2)", _unit, typeOf _unit);
    group _unit enableDynamicSimulation true;
    _unit enableDynamicSimulation true;
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Tank", "init", {
    params ["_vehicle"];
    _vehicle triggerDynamicSimulation false;
    INFO_2("DynamicSimulation", "Enabling dynamic simulation system for vehicle %1 (%2)", _vehicle, typeOf _vehicle);
    _vehicle enableDynamicSimulation true;
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Car", "init", {
    params ["_vehicle"];
    INFO_2("DynamicSimulation", "Enabling dynamic simulation system for vehicle %1 (%2)", _vehicle, typeOf _vehicle);
    _vehicle triggerDynamicSimulation false;
    _vehicle enableDynamicSimulation true;
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Ship", "init", {
    params ["_vehicle"];
    INFO_2("DynamicSimulation", "Enabling dynamic simulation system for vehicle %1 (%2)", _vehicle, typeOf _vehicle);
    _vehicle triggerDynamicSimulation false;
    _vehicle enableDynamicSimulation true;
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Thing", "init", {
    params ["_object"];
    INFO_2("DynamicSimulation", "Enabling dynamic simulation system for object %1 (%2)", _object, typeOf _object);
    _object triggerDynamicSimulation false;
    _object enableDynamicSimulation true;
}, true, [], true] call CBA_fnc_addClassEventHandler;
["ThingX", "init", {
    params ["_object"];
    INFO_2("DynamicSimulation", "Enabling dynamic simulation system for object %1 (%2)", _object, typeOf _object);
    _object triggerDynamicSimulation false;
    _object enableDynamicSimulation true;
}, true, [], true] call CBA_fnc_addClassEventHandler;


// Enabling animations for AA and Airframes
["CAManBase", "init", {
    params ["_unit"];
    if (typeOf _unit in _antiAircraftUnits) exitWith {
        [{
            params ["_unit"];
            INFO_2("DynamicSimulation", "Dynamic simulation system disabeld for Anti Aircraft unit %1 (%2)", _unit, typeOf _unit);
            _unit enableDynamicSimulation false;
            group _unit enableDynamicSimulation false;
            {
                group _x enableDynamicSimulation false;
                _x enableDynamicSimulation false;
            } forEach crew _vehicle;
        }, [_unit], 2] call CBA_fnc_waitAndExecute;
    };
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Tank", "init", {
    params ["_vehicle"];
    if (typeOf _vehicle in _antiAircraftUnits) exitWith {
        [{
            params ["_vehicle"];
            INFO_2("DynamicSimulation", "Dynamic simulation system disabeld for Anti Aircraft vehicle %1 (%2)", _vehicle, typeOf _vehicle);
            _vehicle enableDynamicSimulation false;
            group _unit enableDynamicSimulation false;
            {
                group _x enableDynamicSimulation false;
                _x enableDynamicSimulation false;
            } forEach crew _vehicle;
        }, [_vehicle], 2] call CBA_fnc_waitAndExecute;
    };
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Car", "init", {
    params ["_vehicle"];
    if (typeOf _vehicle in _antiAircraftUnits) exitWith {
    [{
        params ["_vehicle"];
            INFO_2("DynamicSimulation", "Dynamic simulation system disabeld for Anti Aircraft vehicle %1 (%2)", _vehicle, typeOf _vehicle);
            _vehicle enableDynamicSimulation false;
            group _unit enableDynamicSimulation false;
            {
                group _x enableDynamicSimulation false;
                _x enableDynamicSimulation false;
            } forEach crew _vehicle;
        }, [_vehicle], 2] call CBA_fnc_waitAndExecute;
    };
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Air", "init", {
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


// Handle aircraft and death
player addEventHandler ["GetInMan", {
    params ["_unit", "_role", "_vehicle", "_turret"];
    if (isPlayer _unit) then {
        if (_vehicle isKindOf "Air") then {
            INFO_2("DynamicSimulation", "Disabled simulation activation for %1 (%2) due to entre aircraft", _unit, typeof _unit);
            _unit triggerDynamicSimulation false;
        };
    };
}];
player addEventHandler ["GetOutMan", {
    params ["_unit", "_role", "_vehicle", "_turret"];
    if (isPlayer _unit) then {
        if (_vehicle isKindOf "Air") then {
            INFO_2("DynamicSimulation", "Enabled simulation activation for %1 (%2) due to exit aircraft", _unit, typeof _unit);
            _unit triggerDynamicSimulation true;
        };
    };
}];
player addEventHandler ["Killed", {
    params ["_unit", "_killer", "_instigator", "_useEffects"];
    if (isPlayer _unit) then {
        INFO_2("DynamicSimulation", "Enabled simulation activation for %1 (%2) due to death", _unit, typeof _unit);
        _unit triggerDynamicSimulation true;
    };
}];