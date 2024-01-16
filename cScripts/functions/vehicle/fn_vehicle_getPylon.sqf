#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function return a vehicle loadout based on provided name and vehicle kind.
 *
 * Arguments:
 * 0: VehicleKind or ListOfVehicleKind(true) or Everything(false) <STRING|BOOLEAN>
 * 1: LoadoutName <STRING> (Default; "default")
 *
 * Return Value:
 * Vehicle loadout Array or keys <ARRAY>
 *
 * Example:
 * ["rhsusf_m1a1tank_base", "default"] call cScripts_fnc_vehicle_getPylon;
 * [true] call cScripts_fnc_vehicle_getPylon;
 *
 * Public: No
 */

params [
    ["_vehicleKind", "", ["", true]],
    ["_loadout", "default", [""]]
];

// rhsusf_m1a1tank_base
private _rhsusf_m1a1tank_base = createHashMapFromArray [
    ["hard", [
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
    ]],
    [ "default", [
        ["rhs_mag_smokegen",[-1],999],
        ["rhs_mag_M829A3_max",[0],28],
        ["rhs_mag_M830A1_max",[0],16],
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
    ]],
    ["soft",[
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
    ]]
];

// I_APC_Wheeled_03_cannon_F
private _I_APC_Wheeled_03_cannon_F = createHashMapFromArray [
    ["antiarmor", [
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
    [ "antiair", [
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
    ]],
    ["assault",[
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

// FixedWings
// getPylonMagazines cursorObject

// USAF_A10
private _USAF_A10 = createHashMapFromArray [
    ["default", [
        "USAF_PylonRack_2Rnd_AIM9X_LAU105",
        "USAF_PylonRack_1Rnd_ANAAQ28",
        "USAF_PylonRack_2Rnd_AGM65K",
        "USAF_PylonRack_1Rnd_GBU54",
        "USAF_PylonRack_1Rnd_GBU12",
        "",
        "USAF_PylonRack_1Rnd_GBU12",
        "USAF_PylonRack_1Rnd_GBU54",
        "USAF_PylonRack_2Rnd_AGM65D",
        "USAF_PylonRack_7Rnd_APKWS",
        "USAF_PylonRack_1Rnd_ANALQ131"
    ]],
    ["groundsuperiority", [
        "USAF_PylonRack_21Rnd_HYDRA70",
        "USAF_PylonRack_21Rnd_HYDRA70",
        "USAF_PylonRack_21Rnd_HYDRA70",
        "USAF_PylonRack_21Rnd_HYDRA70",
        "USAF_PylonRack_1Rnd_GBU12",
        "",
        "USAF_PylonRack_1Rnd_GBU12",
        "USAF_PylonRack_21Rnd_HYDRA70",
        "USAF_PylonRack_21Rnd_HYDRA70",
        "USAF_PylonRack_21Rnd_HYDRA70",
        "USAF_PylonRack_21Rnd_HYDRA70"
    ]],
    ["test", [
        "rhs_mag_b8m1_s8kom",
        "rhs_mag_b8m1_s8kom",
        "rhs_mag_b8m1_s8kom",
        "rhs_mag_b8m1_s8kom",
        "USAF_PylonRack_1Rnd_GBU12",
        "",
        "USAF_PylonRack_1Rnd_GBU12",
        "rhs_mag_b8m1_s8kom",
        "rhs_mag_b8m1_s8kom",
        "rhs_mag_b8m1_s8kom",
        "rhs_mag_b8m1_s8kom"
    ]]
];

// USAF_F22_EWP_AG
private _USAF_F22_EWP_AG = createHashMapFromArray [
    ["default", [
        "",
        "",
        "USAF_MISSILE_1Rnd_AIM9X",
        "USAF_Missile_1Rnd_AIM120_Int",
        "USAF_PylonRack_4Rnd_GBU53",
        "USAF_PylonRack_4Rnd_GBU53",
        "USAF_Missile_1Rnd_AIM120_Int",
        "USAF_MISSILE_1Rnd_AIM9X",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "USAF_PylonRack_4Rnd_GBU53",
        "USAF_PylonRack_4Rnd_GBU53"
    ]]
];

// USAF_F35A
private _USAF_F35A = createHashMapFromArray [
    ["default", [
        "USAF_MISSILE_1Rnd_AIM9X",
        "USAF_PylonRack_1Rnd_AIM120",
        "USAF_PylonRack_1Rnd_AIM120",
        "USAF_Missile_1Rnd_AIM120",
        "USAF_PylonRack_4Rnd_GBU53",
        "USAF_PylonRack_4Rnd_GBU53",
        "USAF_Missile_1Rnd_AIM120",
        "USAF_PylonRack_1Rnd_AIM120",
        "USAF_PylonRack_1Rnd_AIM120",
        "USAF_MISSILE_1Rnd_AIM9X"
    ]]
];

// Helicopters
// RHS_AH64D
private _RHS_AH64D = createHashMapFromArray [
    ["default", [
        "", // Wing tips
        "rhs_mag_M151_19",
        "rhs_mag_AGM114L_4",
        "rhs_mag_AGM114K_4",
        "rhs_mag_M151_19",
        "", // Wing tips
        "rhsusf_M130_CMFlare_Chaff_Magazine_x2"
    ]]
];


// Loadout vehicle list
private _allVehiclePylons = createHashMapFromArray [
    ["rhsusf_m1a1tank_base", _rhsusf_m1a1tank_base],
    ["I_APC_Wheeled_03_cannon_F", _I_APC_Wheeled_03_cannon_F],

    // FixedWings
    ["USAF_A10", _USAF_A10],
    ["USAF_F22_EWP_AG", _USAF_F22_EWP_AG],
    ["USAF_F35A", _USAF_F35A],

    // Helicopters 
    ["RHS_AH64D", _RHS_AH64D]
];

// Return keys or full hashmap
if (_vehicleKind isEqualType true) exitWith {
    if (_vehicleKind) then {_allVehiclePylons = keys _allVehiclePylons};
    _allVehiclePylons;
};


// Check if valid input
if (_vehicleKind == "") exitWith {
    SHOW_WARNING("VehiclePylon", "No kind of vehicle is defined");
    [];
};
if (_loadout == "") exitWith {
    SHOW_WARNING("VehiclePylon", "No vehicle loadout is defined");
    [];
};

// Obtain pylon
private _vehiclePylons = _allVehiclePylons getOrDefault [_vehicleKind, []];
private _pylon = _vehiclePylons getOrDefault [_loadout, []];
if (count _pylon == 0) then {
    SHOW_WARNING_2("VehiclePylon", "%1 does not exist for selected kind of %2.", _loadout, _vehicleKind);
};

_pylon;
