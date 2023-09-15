#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add a reGear action to a vehicle inside of a staging zone.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call cScripts_fnc_vehicle_addRegearAction
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (isNull _vehicle) exitWith {};

private _icon = "cScripts\Data\Icon\icon_00.paa" call FUNC(getIcon);

private _condition = { call FUNC(checkStagingZone) };
private _stagingCat = [QEGVAR(Actions_Vehicle,Repair), "Regear", _icon, {
     params ["_vehicle"];

     private _vehicleLoadout = _vehicle getVariable [QEGVAR(vehicle,pylon), ["", []]];
     _vehicleLoadout params ["_loadoutName", "_pylon"];

     [_vehicle, _loadoutName, _pylon] call EFUNC(vehicle,applyLoadout);
     _vehicle setFuel 1;
     [
          [],
          ["Vehicle have been rearmed and refueld."],
          [""],
          [""]
     ] call CBA_fnc_notify;
}, _condition] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat)], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

