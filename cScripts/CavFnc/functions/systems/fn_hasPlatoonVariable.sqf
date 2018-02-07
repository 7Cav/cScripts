/*
 * Author: CPL.Brostrom.A
 * Check if you have a PlatoonVariable
 *
 * Arguments:
 * 0: player <STRING>
 *
 * Return Value:
 * Array <BOOL>
 *
 * Example:
 * [player] call cScripts_fnc_hasPlatoonVariable
 *
 * Public: No
 */

#include "..\script_component.hpp";

params [
    ["_player", objNull, [objNull]]
];

private _hasCavTrooper = if (_player getVariable ["CAV_isCavTrooper", true]) then {true} else {false};
private _hasPlatoonVariablesAlpha = if (_player getVariable ["CAV_isAlphaUnit", true]) then {true} else {false};
private _hasPlatoonVariablesBravo = if (_player getVariable ["CAV_isBravoUnit", true]) then {true} else {false};
private _hasPlatoonVariablesCharlie = if (_player getVariable ["CAV_isCharlieUnit", true]) then {true} else {false};
private _hasPlatoonVariablesRanger = if (_player getVariable ["CAV_isRangerUnit", true]) then {true} else {false};
private _hasPlatoonVariablesMedical = if (_player getVariable ["CAV_isMedicalUnit", true]) then {true} else {false};
private _hasPlatoonVariablesTraining = if (_player getVariable ["CAV_isTrainingUnit", true]) then {true} else {false};
private _hasPlatoonVariablesS3 = if (_player getVariable ["CAV_isS3Unit", true]) then {true} else {false};

private _return = [
    _hasCavTrooper,
    _hasPlatoonVariablesAlpha,
    _hasPlatoonVariablesBravo,
    _hasPlatoonVariablesCharlie,
    _hasPlatoonVariablesRanger,
    _hasPlatoonVariablesMedical,
    _hasPlatoonVariablesTraining,
    _hasPlatoonVariablesS3
];

_return;
