#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function add staging actions to vehicles
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call cScripts_fnc_vehicle_addStagingActions;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (!hasInterface) exitWith {};
if (!EGVAR(Settings,enableStagingSystem)) exitWith {};
if (!(_vehicle call FUNC(isValidFaction))) exitWith {};
if (!isNil{_vehicle getVariable QEGVAR(VehicleFunc,StagingActions)}) exitWith {SHOW_WARNING_2("VehicleStagingActions", "Vehicle staging actions already applied for %1. [%2].", _vehicle, typeOf _vehicle);};

INFO_2("VehicleStagingActions", "Applying vehicle staging actions to %1 (%2)", _vehicle, typeOf _vehicle);

private _condition = { call FUNC(checkStagingZone) };
private _stagingCat = [QEGVAR(Actions_Vehicle,Main_Cat), "Vehicle Staging Zone", "cScripts\Data\Icon\icon_00.paa", {true}, _condition] call ace_interact_menu_fnc_createAction;
private _actionArray = [_vehicle, 1, ["ACE_SelfActions"], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

private _stagingCat = [QEGVAR(Actions_Vehicle,Cosmetic_Cat), "Vehicle Cosmetics", "cScripts\Data\Icon\icon_00.paa", {true}, {true}] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat)], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

[_vehicle] call EFUNC(vehicle,addRegearAction);
[_vehicle] call EFUNC(vehicle,addRepairAction);
[_vehicle] call EFUNC(vehicle,addCosmeticSelection);
[_vehicle] call EFUNC(vehicle,setupPylonCategories);

_vehicle setVariable [QEGVAR(VehicleFunc,StagingActions), _actionArray];
