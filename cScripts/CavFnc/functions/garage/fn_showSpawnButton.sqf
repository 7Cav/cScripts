#include "..\script_component.hpp";
/*
 * Author: CPL.Liber.N
 * This fuction displays garage spawn button. It will check for cooldown and max vehicles before displaying the button.
 *
 * Arguments:
 * 0; Vehicle Array Object
 *
 * Example:
 * [] call cScripts_fnc_showSpawnButton
 * [["rhsusf_mrzr4_d", 5, -1, "", "land", {}, {}]] call cScripts_fnc_showSpawnButton
 *
 */

#define DEBUG_MODE

params [["_vehicleArrayObject", [], [[]]]];
_vehicleArrayObject params ["_vehicleClass", "", "_maxVehicles", "", "", "_condition", "_callBack"];

private _spawnButton = (findDisplay 1601) displayCtrl 6;
_spawnButton ctrlShow true;

private _lastSpawnTime = missionNamespace getVariable [getPlayerUID player + "VehicleSpawn_LastSpawnTime", 0];
private _lastCooldownLength = missionNamespace getVariable [getPlayerUID player + "VehicleSpawn_Cooldown", 0];

private _allowRegularSpawn = true;
private _allowCavBucksSpawn = true;
private _reason = "";

if (_lastSpawnTime + _lastCooldownLength > serverTime) then {
    _allowRegularSpawn = false;
    _allowCavBucksSpawn = false;
    _reason = format ["Cooldown for another %1 minutes", round (((_lastSpawnTime + _lastCooldownLength) - serverTime) / 60)];
};

private _vehicleInstances = 0;

{
    if ((_x isKindOf _vehicleClass) && (alive _x)) then {
        _vehicleInstances = _vehicleInstances + 1
    };
} forEach vehicles;

if (_maxVehicles != -1 && _vehicleInstances >= _maxVehicles) then {
    _allowRegularSpawn = false;
    _allowCavBucksSpawn = false;
    _reason = format ["Maximum number reached (%1)", _maxVehicles];
};

if (!([] call _condition)) then {
    _allowRegularSpawn = false;
    _allowCavBucksSpawn = false;
    _reason = "Unavailable";
};
    
if (_allowRegularSpawn) then {
    _spawnButton ctrlEnable true;
    _spawnButton ctrlSetText "Spawn";
} else {
    _spawnButton ctrlEnable false;
    _spawnButton ctrlSetText _reason;
};

#ifdef DEBUG_MODE
    [format["Spawn button set for %1.", _vehicleArrayObject], "Garage"] call FUNC(logInfo);
#endif