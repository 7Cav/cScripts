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

if (!hasInterface) exitWith {};
if (!EGVAR(Settings,enableStagingSystem)) exitWith {};
if (isNull _vehicle) exitWith {};
if (!(_vehicle call FUNC(isValidFaction))) exitWith {};
if (!isNil{_vehicle getVariable QEGVAR(Vehicle,StagingActions)}) exitWith {[formatText["Vehicle staging actions already applied for %1.", _vehicle]] call FUNC(warning);};

#ifdef DEBUG_MODE
    [format ["Adding vehicle staging actions to %1.", _vehicle], "Vehicle Staging"] call FUNC(info);
#endif

private _condition = { call FUNC(checkStagingZone) };
private _stagingCat = [QEGVAR(Actions_Vehicle,Main_Cat), "Vehicle Staging Zone", "cScripts\Data\Icon\icon_00.paa", {true}, _condition] call ace_interact_menu_fnc_createAction;
private _actionArray = [_vehicle, 1, ["ACE_SelfActions"], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

private _stagingCat = [QEGVAR(Actions_Vehicle,Cosmetic_Cat), "Vehicle Cosmetics", "cScripts\Data\Icon\icon_00.paa", {true}, {true}] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat)], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

[_vehicle] call EFUNC(vehicle,addRegearAction);
[_vehicle] call EFUNC(vehicle,addRepairAction);
[_vehicle] call EFUNC(vehicle,addCosmeticSelection);
[_vehicle] call EFUNC(vehicle,setupPylonCategories);

_vehicle setVariable [QEGVAR(Vehicle,StagingActions), _actionArray];
