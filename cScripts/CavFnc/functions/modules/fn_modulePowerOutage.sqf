#include "..\script_component.hpp";
/*
 * Author: Sweetwater.I
 * This module function set damage to all lights indicated in a array within a selected radius from module position.
 * Gives the effect of a Power Outage.
 * 
 * Arguments:
 * 0: None
 *
 * Example:
 * this call cScripts_fnc_modulePowerOutage
 *
 * Public: No
 */
[[], [""], []] call {
    params ["_OutageRadius", "_OutageArray", "_center"];
};
_center = position _logic;

private _dialogResult = [
    "Power Outage",
    [
        ["Meters","", 1200],
        ["Power On",["true","false"],1]
    ]
] call Ares_fnc_showChooseDialog;

if (count _dialogResult == 0) exitWith {};

private _pstate = if (_dialogResult select 1 == 0) then {true} else {false};

_OutageRadius = _dialogResult select 0;
_OutageRadius = parseNumber _OutageRadius;
_OutageArray = [
    "Land_LightHouse_F",
    "Land_Lighthouse_small_F",
    "Land_LampAirport_F",
    "Land_LampDecor_F",
    "Land_LampHalogen_F",
    "Land_LampHarbour_F",
    "Land_LampShabby_F",
    "Land_LampStreet_F",
    "Land_LampStreet_small_F",
    "Land_FloodLight_F",
    "Land_LampStadium_F",
    "Land_PortableLight_single_F",
    "Land_PortableLight_double_F",
    "Lamps_Base_F",
    "PowerLines_base_F",
    "PowerLines_Small_base_F",
    "Land_PowerPoleWooden_F",
    "Land_PowerPoleWooden_L_F",
    "Land_PowerPoleWooden_small_F",
    "Land_fs_roof_F",
    "Land_fs_sign_F",
    "Land_NavigLight",
    "Land_NavigLight_3_F",
    "Land_Flush_Light_green_F",
    "Land_Flush_Light_red_F",
    "Land_Flush_Light_yellow_F",
    "Land_runway_edgelight",
    "Land_runway_edgelight_blue_F",
    "Land_Runway_PAPI",
    "Land_Runway_PAPI_2",
    "Land_Runway_PAPI_3",
    "Land_Runway_PAPI_4",
// CUPS Lights
    "Land_PowLines_WoodL",
    "Land_PowLines_ConcL",
    "Land_lampa_ind_zebr",
    "Land_lampa_sidl_3",
    "Land_lampa_vysoka",
    "Land_lampa_ind",
    "Land_lampa_ind_b",
    "Land_lampa_sidl",
    "Land_PowLines_Conc2L_EP1",
    "Land_Lamp_Street1_EP1",
    "Land_Lamp_Street2_EP1",
    "Land_Lamp_Small_EP1",
    "Land_Lampa_Ind_EP1"
];
{
[_x, _pstate] call BIS_fnc_switchLamp;
//_x setHit ["light_1_hitpoint", 0.97]; 
//_x setHit ["light_2_hitpoint", 0.97]; 
//_x setHit ["light_3_hitpoint", 0.97]; 
//_x setHit ["light_4_hitpoint", 0.97];
} forEach nearestObjects [_center, _OutageArray, _OutageRadius];
