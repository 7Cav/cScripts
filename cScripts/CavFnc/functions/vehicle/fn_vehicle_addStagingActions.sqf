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
 * ["truckMcTruckLoad"] call cScripts_fnc_vehicle_addStagingActions
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (isNull _vehicle) exitWith {};
private _factionArray = parseSimpleArray EGVAR(Settings,vehicleFactions);
if !(_factionArray isEqualType []) exitWith {["Faction array have not been setup correctly.", "Vehicle"] call FUNC(error);};
if (!(faction _vehicle in _factionArray)) exitWith {};

[format ["Adding staging options to %1 (%2)", _vehicle, typeOf _vehicle], "Vehicle Staging"] call FUNC(log);

private _condition = { EGVAR(Staging,ZoneStatus) && call FUNC(checkStagingZone) };
private _stagingCat = [QEGVAR(Actions_Vehicle,Main_Cat), "Vehicle Staging Zone", "cScripts\Data\Icon\icon_00.paa", {true}, _condition] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions"], _stagingCat] call ace_interact_menu_fnc_addActionToObject;


[_vehicle] call EFUNC(vehicle,addRegearAction);
[_vehicle] call EFUNC(vehicle,addRepairAction);

//_vehicle call EFUNC(vehicle,setupPylonSelection);