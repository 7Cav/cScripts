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

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    [_vehicle, "Hard",      "rhsusf_m1a1tank_base", "hard",    [
        ["rhs_mag_smokegen",[-1],999],
        ["rhs_mag_M829A3_max",[0],44],
        ["rhs_mag_M830A1_max",[0],8],
        ["rhs_mag_762x51_M240_1200",[0],0],
        ["rhs_mag_762x51_M240_1200",[0],0],
        ["rhs_mag_762x51_M240_1200",[0],0],
        ["rhs_mag_762x51_M240_1200",[0],0],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhsusf_mag_L8A3_12",[0,0],12],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]]
    ], ""] call cScripts_fnc_vehicle_addPylonSelection;
    [_vehicle, "Default",   "rhsusf_m1a1tank_base", "default", [
        ["rhs_mag_smokegen",[-1],999],
        ["rhs_mag_M829A3_max",[0],28],
        ["rhs_mag_M830A1_max",[0],8],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhsusf_mag_L8A3_12",[0,0],12],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]]
    ], ""] call cScripts_fnc_vehicle_addPylonSelection;
    [_vehicle, "Soft",      "rhsusf_m1a1tank_base", "soft",    [
        ["rhs_mag_smokegen",[-1],999],
        ["rhs_mag_M829A3_max",[0],4],
        ["rhs_mag_M1028_max",[0],10],
        ["rhs_mag_M1069_max",[0],22],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhsusf_mag_L8A3_12",[0,0],12],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]]
    ], ""] call cScripts_fnc_vehicle_addPylonSelection;
};

_mainCategory