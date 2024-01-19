#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function setup a loadout categories
 *
 * Arguments:
 * 0: Vehicle/Object/Crate <OBJECT>
 *
 * Return Value:
 * True on success <BOOLEAN>
 *
 * Example:
 * [this] call cScripts_fnc_vehicle_setupPylonCategories;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

// Icons
//private _icon  = "iconTank" call FUNC(getIcon);

// Loadout action setup
private _pylonList = [];

{
    _x params ["_classname"];
    if (_vehicle iskindOf _classname) then {
        {
            _x params ["_pylonName"];
            private _displayName = [_classname, _pylonName] call EFUNC(vehicle,getPylonName);
            private _loadout = [_classname, _pylonName] call EFUNC(vehicle,getPylonLoadout);
            private _icon = [_classname, _pylonName] call EFUNC(vehicle,getPylonIcon);
            _pylonList append [[_classname, _displayName, _pylonName, _loadout, _icon]];
        } forEach (keys (GVAR(PYLONS) get _classname));
        break;
    };
} forEach (keys GVAR(PYLONS));

if (count _pylonList == 0) exitWith {false};
// Setup category
private _mainCategory = ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat)];
private _vehiclePylon = [QEGVAR(Actions_Vehicle,Pylon_Cat), "Vehicle Loadouts", "", {true}, { call FUNC(checkStagingZone) }] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, _mainCategory, _vehiclePylon] call ace_interact_menu_fnc_addActionToObject;

// Setup loadouts selection
{
    _x params ["_classname", "_displayName", "_pylonName", "_loadout", "_icon"];
    INFO_4("VehiclePylonSetup", "Creating loadout '%1' (%2) action for vehicle %3 (%4)", _displayName, _pylonName, _vehicle, typeOf _vehicle);
    [_vehicle, _displayName, _classname, _pylonName, _loadout, _icon] call EFUNC(vehicle,addPylonSelection);
} forEach _pylonList;

true