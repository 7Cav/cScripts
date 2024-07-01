#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add a repair action to a vehicle
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call cScripts_fnc_vehicle_addRepairAction
 *
 * Public: No
 */

params [
     ["_vehicle", objNull, [objNull]],
     ["_duration", 0, [0]]
];

if (isNull _vehicle) exitWith {};


private _lable = "Fully repair vehicle";
private _icon = "\A3\ui_f\data\igui\cfg\actions\repair_ca.paa" call FUNC(getIcon);

private _condition = { true };

private _action = {
     params ["_vehicle", "_caller", "_params"];

     ["Fully repairing vehicle", _duration, {_condition}, {
          ["", _vehicle] call ace_repair_fnc_doFullRepair;
          [
               [],
               ["Vehicle have been repaired."],
               [""],
               [""]
          ] call CBA_fnc_notify;
     },{
          [
               [],
               ["Failed to repair vehicle."],
               [""],
               [""]
          ] call CBA_fnc_notify;
     }] call CBA_fnc_progressBar;
};

private _stagingCat = [QEGVAR(Actions_Vehicle,Repair), _lable, _icon, _action, _condition] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_MainActions"], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

