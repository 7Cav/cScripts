#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function regear to a given unit.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 *
 * Example:
 * [getPos logic, this] call cScripts_fnc_zenModule_regearTrooper
 *
 * Public: No
 */

 params ["_modulePos", "_objectPos"];



[
    "7th Cavalry Rekit Vehicle", 
    [
        ["CHECKBOX", ["Medical Vehicle", "Fills this vehicle with a medical loadout."], true, false]
    ], 
    {
        params ["_arg", "_pos"];
        _arg params ["_medVehicle"];
        _pos params ["_objectPos"];

        if (_medVehicle) then {
            _objectPos setVariable [QEGVAR(Vehicle,Type), "MED", true];
        } else {
            _objectPos setVariable [QEGVAR(Vehicle,Type), nil, true];
        };

        _objectPos setVariable [QEGVAR(Vehicle,Inventory), nil, true];

        
        private _cargoArray = _objectPos getVariable ["ace_cargo_loaded",[]];

        {   
            [_x, _objectPos] call ace_cargo_fnc_removeCargoItem;
            
        } forEach _cargoArray;

        _objectPos call EFUNC(vehicle,addFunctions);
        _objectPos call EFUNC(vehicle,addInventory);
        _objectPos call EFUNC(vehicle,addPylonLoadout);
        _objectPos call EFUNC(vehicle,addCosmetics);
        _objectPos call EFUNC(vehicle,addStagingActions);
        _objectPos call EFUNC(vehicle,addRadio);
        
    },
    {},
    [_objectPos]
] call zen_dialog_fnc_create;

