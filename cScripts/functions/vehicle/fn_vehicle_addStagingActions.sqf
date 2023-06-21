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

if !(EGVAR(Settings,enableStagingSystem)) exitWith {};
if (isNull _vehicle) exitWith {};
private _factionArray = parseSimpleArray EGVAR(Settings,vehicleFactions);
if !(_factionArray isEqualType []) exitWith {["Faction array have not been setup correctly.", "Vehicle"] call FUNC(error);};
if (!(faction _vehicle in _factionArray)) exitWith {};

#ifdef DEBUG_MODE
    ["Adding vehicle staging actions", "Vehicle Staging"] call FUNC(info);
#endif

private _condition = { call FUNC(checkStagingZone) };
private _stagingCat = [QEGVAR(Actions_Vehicle,Main_Cat), "Vehicle Staging Zone", "cScripts\Data\Icon\icon_00.paa", {true}, _condition] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions"], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

private _stagingCat = [QEGVAR(Actions_Vehicle,Cosmetic_Cat), "Vehicle Cosmetics", "cScripts\Data\Icon\icon_00.paa", {true}, {true}] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat)], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

[_vehicle] call EFUNC(vehicle,addRegearAction);
[_vehicle] call EFUNC(vehicle,addRepairAction);
[_vehicle] call EFUNC(vehicle,addCosmeticSelection);
[_vehicle] call EFUNC(vehicle,setupPylonCategories);
