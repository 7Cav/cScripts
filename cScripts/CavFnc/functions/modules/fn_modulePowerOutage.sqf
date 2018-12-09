#include "..\script_component.hpp";
/*
 * Author: SGT.Sweetwater.I
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

private _center = position _logic;
private _OutageArray = [];
private _OutageRadius = [""];

    _dialogResult = [
    "Power Outage",
    [
        ["Meters","", 1200]
    ]
] call Ares_fnc_showChooseDialog;
  if (count _dialogResult == 0) exitWith {};

  private _OutageRadius = _dialogResult select 0;
  private _OutageRadius = parseNumber _OutageRadius;
  Private _OutageArray = [
        "Lamps_Base_F",
        "PowerLines_base_F",
        "Land_PowerPoleWooden_F",
        "Land_LampHarbour_F",
        "Land_LampShabby_F",
        "Land_PowerPoleWooden_L_F",
        "Land_PowerPoleWooden_small_F",
        "Land_LampDecor_F",
        "Land_LampHalogen_F",
        "Land_LampSolar_F",
        "Land_LampStreet_small_F",
        "Land_LampStreet_F",
        "Land_LampAirport_F",
        "Land_PowerPoleWooden_L_F"];

{ 
_x setHit ["light_1_hitpoint", 0.97]; 
_x setHit ["light_2_hitpoint", 0.97]; 
_x setHit ["light_3_hitpoint", 0.97]; 
_x setHit ["light_4_hitpoint", 0.97]; 
} forEach nearestObjects [_center, _OutageArray, _OutageRadius];
