#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function setup a loadout categories
 *
 * Arguments:
 * 0: Vehicle/Object/Crate <OBJECT>
 * 1: Ace Action Category <STRING>     (Optional) (Default; ACE_MainActions)
 *
 * Return Value:
 * Main category used for creation <STRING>
 *
 * Example:
 * [this, "ACE_MainActions"] call cScripts_fnc_setupLoadoutSelection;
 * [this, "ACE_SelfActions"] call cScripts_fnc_setupLoadoutSelection;
 *
 * Public: No
 */

params[
    ["_vehicle", objNull, [objNull]],
    ["_aceCategory", "ACE_MainActions", ["ACE_MainActions"]]
];

// Setup category
private _icon      = "cScripts\Data\Icon\icon_01.paa" call FUNC(getIcon);
private _squadIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa" call FUNC(getIcon);
private _speciIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\lieutenant_gs.paa" call FUNC(getIcon);
private _leadIcon  = "\A3\Ui_f\data\GUI\Cfg\Ranks\captain_gs.paa" call FUNC(getIcon);
private _pilotIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\colonel_gs.paa" call FUNC(getIcon);
private _iconTank  = "iconTank" call FUNC(getIcon);
private _iconIfv   = "iconAPC" call FUNC(getIcon);
private _iconCrate = "iconCrateWpns" call FUNC(getIcon);

private _mainCategory = ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat)];
private _vehiclePylon = [QEGVAR(Actions_Vehicle,Pylon_Cat), "Vehicle Loadouts", _icon, {true}, { call FUNC(checkStagingZone) }] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, _mainCategory, _vehiclePylon] call ace_interact_menu_fnc_addActionToObject;

_mainCategory