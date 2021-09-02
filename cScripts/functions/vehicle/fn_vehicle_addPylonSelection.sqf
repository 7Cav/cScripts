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
 * ["truckMcTruckLoad"] call cScripts_fnc_vehicle_addPylonSelection
 *
 * Public: No
 */
#define DEBUG_MODE

params [
    ["_vehicle", objNull, [objNull]],
    ["_displayName", "", [""]],
    ["_classname", "", [""]],
    ["_loadoutClassname", "", [""]],
    ["_pylon", [[0, []]], [[]]],
    ["_icon", "", [""]],
    ["_category", ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat), QEGVAR(Actions_Vehicle,Pylon_Cat)], [[]]]
];

private _condition = { 
    params ["_vehicle", "_player", "_params"];
    _params params ["_classname", ""];
    _vehicle iskindOf _classname;
};

private _statement = {
    params ["_vehicle", "_player", "_params"];
    _params params ["", "_pylon"];
    {
        _x params ["_turretPath", "_magazines"];
        [_vehicle, _turretPath] call EFUNC(vehicle,clearAllMagazines);
        [_vehicle, _turretPath, _magazines] call EFUNC(vehicle,addMagazines);
    } forEach _pylon;
};

private _action = [format ["cScripts_Pylon_%1_%2", _classname, _loadoutClassname], _displayName, _icon, _statement, _condition, nil, [_className, _pylon]] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, _category, _action] call ace_interact_menu_fnc_addActionToObject;

#ifdef DEBUG_MODE
    [format["Selector for classname '%1' named '%2' added to %3 (%4)", _classname, _displayName, _vehicle, typeOf _vehicle], "Vehicle Pylon Selector"] call FUNC(info);
#endif