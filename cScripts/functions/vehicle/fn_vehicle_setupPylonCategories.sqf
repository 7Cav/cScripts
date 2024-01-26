#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
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

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    _pylonList = [
        // TypeOf,               DisplayName,   Name,           Icon
        ["rhsusf_m1a1tank_base", "Hard",        "hard",         ""],
        ["rhsusf_m1a1tank_base", "Soft",        "soft",         ""],
        ["rhsusf_m1a1tank_base", "Default",     "default",      ""]
    ];
};


if (_vehicle iskindOf "I_APC_Wheeled_03_cannon_F" && !(_vehicle isKindOf "cav_dragoon_unarmed_base_F")) then {
    _pylonList = [
        // TypeOf,                     DisplayName,  Name,           Icon
        // ["I_APC_Wheeled_03_cannon_F", "Anti-Armor",  "antiarmor",    ""],
        ["I_APC_Wheeled_03_cannon_F", "Anti-Air",    "antiair",      ""],
        // ["I_APC_Wheeled_03_cannon_F", "Assault",     "assault",      ""],
        ["I_APC_Wheeled_03_cannon_F", "Default",     "default",      ""]
    ];
};


if (count _pylonList == 0) exitWith {false};
// Setup category
private _mainCategory = ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat)];
private _vehiclePylon = [QEGVAR(Actions_Vehicle,Pylon_Cat), "Vehicle Loadouts", "", {true}, { call FUNC(checkStagingZone) }] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, _mainCategory, _vehiclePylon] call ace_interact_menu_fnc_addActionToObject;

// Setup loadouts selection
{
    _x params ["_vehicleKind", "_displayName", "_loadoutName", ["_icon", ""]];
    INFO_4("VehiclePylonSetup", "Creating loadout '%1' (%2) action for vehicle %3 (%4)", _displayName, _loadoutName, _vehicle, typeOf _vehicle);
    private _pylon = [_vehicleKind, _loadoutName] call EFUNC(vehicle,getPylon);
    [_vehicle, _displayName, _vehicleKind, _loadoutName, _pylon, _icon] call EFUNC(vehicle,addPylonSelection);
} forEach _pylonList;

true