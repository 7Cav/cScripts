#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function adds a put up and take down flag action to the given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call cScripts_fnc_vehicle_addFlagAction;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (isNull _vehicle) exitWith {SHOW_WARNING("FlagAction", "Attempted to apply function to null vehicle");};

private _icon = "iconLogic" call FUNC(getIcon);

private _addCondition = {
    params ["_vehicle", "_caller", "_params"];
    !(_vehicle getVariable [QEGVAR(Vehicle,hasFlag), false]) && isTurnedOut _caller;
};
private _putFlag = [QEGVAR(Actions_Vehicle,PutFlag), "Put up flag", _icon, {
     params ["_vehicle", "_caller", "_params"];
     private _flagTexture = "z\cav\addons\flag\data\flag_01_ca.paa"; //"\A3\Data_F\Flags\Flag_red_CO.paa"
    _vehicle forceFlagTexture _flagTexture;
    _vehicle setVariable [QEGVAR(Vehicle,hasFlag), true, true];
}, _addCondition] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions"], _putFlag] call ace_interact_menu_fnc_addActionToObject;


private _remCondition = {
    params ["_vehicle", "_caller", "_params"];
    _vehicle getVariable [QEGVAR(Vehicle,hasFlag), false] && isTurnedOut _caller;
};
private _takeFlag = [QEGVAR(Actions_Vehicle,TakeFlag), "Take down flag", _icon, {
     params ["_vehicle", "_caller", "_params"];
    _vehicle forceFlagTexture "";
    _vehicle setVariable [QEGVAR(Vehicle,hasFlag), false, true];
}, _remCondition] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions"], _takeFlag] call ace_interact_menu_fnc_addActionToObject;
