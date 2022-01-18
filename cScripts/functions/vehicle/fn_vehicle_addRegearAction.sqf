#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add stadgeing to vehicles
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["truckMcTruckLoad"] call cScripts_fnc_vehicle_addRegearAction
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (isNull _vehicle) exitWith {};

private _icon = "cScripts\Data\Icon\icon_00.paa" call FUNC(getIcon);

private _condition = { call FUNC(checkStagingZone) };
private _stagingCat = [QEGVAR(Actions_Vehicle,Repair), "Regear", _icon, {
     params ["_vehicle", "_caller", "_params"];
     ["", _vehicle] call ace_repair_fnc_doFullRepair;

     private _vehicleLoadout = _vehicle getVariable [QEVAR(vehicle,pylon), ["", []]];
     [_vehicle, _vehicleLoadout#0, _vehicleLoadout#1] call EFUNC(vehicle,applyLoadout);

     _vehicle setFuel 1;

     [
          [],
          ["Vehicle have been rearmed, refueld and repaired."],
          [""],
          [""]
     ] call CBA_fnc_notify;
}, _condition] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat)], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

