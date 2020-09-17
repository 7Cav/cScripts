_this select 0 params ["_vehicleClass", "_cooldownCost", "_maxVehicles", "_message", "_defaultSpawn", "_condition", "_callBack"];

_spawnButton = (findDisplay 1601) displayCtrl 6;
_spawnButtonCavBucks = (findDisplay 1601) displayCtrl 14;
_spawnButton ctrlShow true;

_lastSpawnTime = missionNamespace getVariable [getPlayerUID player + "VehicleSpawn_LastSpawnTime", 0];
_lastCooldownLength = missionNamespace getVariable [getPlayerUID player + "VehicleSpawn_Cooldown", 0];

_allowRegularSpawn = true;
_allowCavBucksSpawn = true;
_reason = "";

if (_lastSpawnTime + _lastCooldownLength > serverTime) then {
    _allowRegularSpawn = false;
    _allowCavBucksSpawn = false;
    _reason = format ["Cooldown for another %1 minutes", round (((_lastSpawnTime + _lastCooldownLength) - serverTime) / 60)];
};

_vehicleInstances = 0;

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