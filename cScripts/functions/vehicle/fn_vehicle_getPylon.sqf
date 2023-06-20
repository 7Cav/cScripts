#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function return a vehicle loadout based on loadout name and vehicle kind.
 *
 * Arguments:
 * 0: VehicleKind <STRING>
 * 1: LoadoutName <STRING> (Default; "default")
 *
 * Return Value:
 * Vehicle loadout Array <ARRAY>
 *
 * Example:
 * ["rhsusf_m1a1tank_base", "default"] call cScripts_fnc_vehicle_getPylon;
 */

params [
    ["_vehicleKind", "", [""]],
    ["_loadout", "default", [""]]
];

if (_vehicleKind == "") exitWith {
    ["No kind of vehicle is defined", "Vehicle Pylon"] call FUNC(warning);
    [];
};
if (_loadout == "") exitWith {
    ["No vehicle loadout is defined", "Vehicle Pylon"] call FUNC(warning);
    [];
};

// _APC_Wheeled_03_base_F
private _APC_Wheeled_03_base_F = createHashMapFromArray [
    ["AntiArmor", [
        ["SmokeLauncherMag",[0,0],6],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2Rnd_GAT_missiles",[0],2],
        ["2Rnd_GAT_missiles",[0],2],
        ["2Rnd_GAT_missiles",[0],2]  
    ]],
    [ "AntiAir", [
        ["SmokeLauncherMag",[0,0],6],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["4Rnd_Titan_long_missiles",[0],4],
        ["4Rnd_Titan_long_missiles",[0],4]
    ]],
    ["default",[
        ["SmokeLauncherMag",[0,0],6],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["2Rnd_GAT_missiles",[0],2],
        ["2Rnd_GAT_missiles",[0],2],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60]
    ]]
    ["Assault",[
        ["SmokeLauncherMag",[0,0],6],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["2Rnd_GAT_missiles",[0],2],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60]
    ]]
];

// Loadout vehicle list
private _pylons = createHashMapFromArray [
    ["APC_Wheeled_03_base_F", _APC_Wheeled_03_base_F]
];

private _getVehiclePylons = _pylons getOrDefault [_vehicleKind, []];
if (count _getVehiclePylons == 0) exitWith {[]};
private _pylon = _getVehiclePylons getOrDefault [_loadout, []];

_pylon;
