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
        _pos params ["_modulePos", "_objectPos"];
		
		private _vehicle = _objectPos;

		if (_medVehicle) then {
			_vehicle setVariable [QEGVAR(Vehicle,Type), "MED", true];
		} else {
			_vehicle setVariable [QEGVAR(Vehicle,Type), nil, true];
		};

		_vehicle setVariable [QEGVAR(Vehicle,Inventory), nil, true];

		_vehicle call EFUNC(vehicle,addFunctions);
        _vehicle call EFUNC(vehicle,addInventory);
        _vehicle call EFUNC(vehicle,addPylonLoadout);
        _vehicle call EFUNC(vehicle,addCosmetics);
        _vehicle call EFUNC(vehicle,addStagingActions);
        _vehicle call EFUNC(vehicle,addRadio);
    },
    {},
    [_modulePos]
] call zen_dialog_fnc_create;