#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add a staging loadout selection ace action.
 *
 * Arguments:
 * 0: Vehicle       <OBJECT>
 * 1: DisplayName   <STRING>
 * 2: VehicleKind   <STRING>
 * 3: LoadoutName   <STRING>
 * 4: PylonArray    <ARRAY>
 * 5: Icon          <STRING>
 * 6: Category      <ARRAY>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle, "Default Loadout", "rhsusf_m1a1tank_base", "default", [], ""] call cScripts_fnc_vehicle_addPylonSelection;
 * [_vehicle, _displayName, _classname, _pylonName, _loadout _icon] call cScripts_fnc_vehicle_addPylonSelection;
 * [_vehicle, "Default Loadout", "rhsusf_m1a1tank_base", "default", [_vehicle, "rhsusf_m1a1tank_base", "default"] call cScripts_fnc_vehicle_getPylon, ""] call cScripts_fnc_vehicle_addPylonSelection;
 *
 * Public: No
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_displayName", "", [""]],
    ["_classname", "", [""]],
    ["_pylonName", "", [""]],
    ["_loadout", [], ["",[],0]],
    ["_icon", "", [""]]
];

private _condition = { 
    params ["_vehicle", "", "_params"];
    _params params ["_classname"];
    _vehicle iskindOf _classname;
};

private _statement = {
    params ["_vehicle", "_player", "_params"];
    _params params ["", "_pylonName", "_loadout"];
    [_vehicle, _pylonName, _loadout] call EFUNC(vehicle,applyLoadout);
};

private _selfCategory = ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat), QEGVAR(Actions_Vehicle,Pylon_Cat)];
private _actionName = format["%1_%2_%3", QGVAR(Pylon), _classname, _pylonName];

private _action = [_actionName, _displayName, _icon, _statement, _condition, nil, [_classname, _pylonName, _loadout]] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, _selfCategory, _action] call ace_interact_menu_fnc_addActionToObject;

INFO_4("VehiclePylonSelector", "Selector for kindOf '%1' named '%2' added to %3 (%4)", _classname, _displayName, _vehicle, typeOf _vehicle);