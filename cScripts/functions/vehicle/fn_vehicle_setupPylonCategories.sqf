#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function setup a loadout categories
 *
 * Arguments:
 * 0: Vehicle/Object/Crate <OBJECT>
 *
 * Return Value:
 * Main category used for creation <STRING>
 *
 * Example:
 * [this] call cScripts_fnc_vehicle_setupPylonCategories;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

// Setup category
private _icon      = "cScripts\Data\Icon\icon_01.paa" call FUNC(getIcon);
//private _squadIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa" call FUNC(getIcon);
//private _speciIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\lieutenant_gs.paa" call FUNC(getIcon);
//private _leadIcon  = "\A3\Ui_f\data\GUI\Cfg\Ranks\captain_gs.paa" call FUNC(getIcon);
//private _pilotIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\colonel_gs.paa" call FUNC(getIcon);
//private _iconTank  = "iconTank" call FUNC(getIcon);
//private _iconIfv   = "iconAPC" call FUNC(getIcon);
//private _iconCrate = "iconCrateWpns" call FUNC(getIcon);

// Loadout action setup
private _pylonList = [];

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    _pylonList = [
        // TypeOf, DisplayName, Name, Icon
        ["rhsusf_m1a1tank_base", "Hard",    "hard",     ""],
        ["rhsusf_m1a1tank_base", "Soft",    "soft",     ""],
        ["rhsusf_m1a1tank_base", "Default", "default",  ""]
    ];
};

if (count _pylonList == 0) exitWith {false};

// Setup category
private _mainCategory = ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat)];
private _vehiclePylon = [QEGVAR(Actions_Vehicle,Pylon_Cat), "Vehicle Loadouts", _icon, {true}, { call FUNC(checkStagingZone) }] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, _mainCategory, _vehiclePylon] call ace_interact_menu_fnc_addActionToObject;

// Setup loadouts selection
{
    _x params ["_vehicleKind", "_displayName", "_loadoutName", ["_icon", ""]];
    #ifdef DEBUG_MODE
        [format ["Creating loadout '%1' (%2) action for vehicle %3 (%4)", _displayName, _loadoutName, _vehicle, typeOf _vehicle], "Vehicle Pylon Setup"] call FUNC(info);
    #endif
    private _pylon = [_vehicleKind, _loadoutName] call EFUNC(vehicle,getPylon);
    [_vehicle, _displayName, _vehicleKind, _loadoutName, _pylon, _icon] call EFUNC(vehicle,addPylonSelection);
} forEach _pylonList;

true
