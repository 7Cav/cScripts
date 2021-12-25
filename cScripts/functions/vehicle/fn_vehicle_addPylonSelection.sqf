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

params [
    ["_vehicle", objNull, [objNull]],
    ["_displayName", "", [""]],
    ["_classname", "", [""]],
    ["_loadoutName", "", [""]],
    ["_pylon", [[]], ["",[],0]],
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

    // Rearm vehicle first
    _vehicle setVehicleAmmo 1;

    if (count _pylon == 0) exitWith {};
    
    // Clear magazine
    {
        _x params ["_magazineClassname", "_turretPath"];
        _vehicle removeMagazinesTurret [_magazineClassname, _turretPath];
    } forEach magazinesAllTurrets _vehicle;

    // Add magazine
    {
        _x params [["_magazineClassname", "",[""]], ["_turretPath", [], [[]]], ["_amount", -1, [0]]];

        if (_amount != 0) then {
            [format["Adding magazine %1 (%2)", _magazineClassname, _amount]] call FUNC(log);
            _vehicle addMagazineTurret [
                _magazineClassname,
                _turretPath,
                if (_amount < 0) then {getNumber (configFile >> "CfgMagazines" >> _magazineClassname >> "count")} else {_amount}
            ];
        };
    } forEach _pylon;
};

private _action = [format ["cScripts_Pylon_%1_%2", _classname, _loadoutName], _displayName, _icon, _statement, _condition, nil, [_className, _pylon]] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, _category, _action] call ace_interact_menu_fnc_addActionToObject;

#ifdef DEBUG_MODE
    [format["Selector for classname '%1' named '%2' added to %3 (%4)", _classname, _displayName, _vehicle, typeOf _vehicle], "Vehicle Pylon Selector"] call FUNC(info);
#endif