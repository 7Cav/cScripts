/*
 * Author: CPL.Liber.N
 * This fuction creates a vehicle selected from garage vehicle list.
 *
 * Arguments:
 * None.
 *
 * Example:
 * [] spawn cScripts_fnc_createVehicle
 *
 */

private _vehicleIndex = parseNumber (lbData [7, lbCurSel 7]);
private _vehicle = GarageVehicles select _vehicleIndex;
_vehicle params ["_vehicleClass", "_cooldownCost", "_maxVehicles", "_message", "_defaultSpawn", "_condition", "_callBack"];

private _spawnLocation = lbData [15, lbCurSel 15];
private _emptyPos = (getPos player) findEmptyPosition [5, 50, (_vehicleClass)];

if (!isNull VehicleSpawn && _spawnLocation == "land") then { 
    _emptyPos = (getPos VehicleSpawn) findEmptyPosition [5, 50, (_vehicleClass)];
};

if (!isNull VehicleSpawn && _spawnLocation == "air") then { 
    _emptyPos = (getPos VehicleAirSpawn) findEmptyPosition [5, 50, (_vehicleClass)];
};

if (count _emptyPos == 0) then { hint "Vehicle cannot be spawned here"; }
else
{
    private _veh = createVehicle [(_vehicleClass), _emptyPos, [], 0,""];

    if ((lbData [13, lbCurSel 13]) != "") then {
        private _vehicleTextures = parseSimpleArray (lbData [13, lbCurSel 13]);
        {_veh setObjectTextureGlobal [ _forEachIndex, _x ] } forEach _vehicleTextures;
    };

    missionNamespace setVariable [getPlayerUID player + "VehicleSpawn_Cooldown", (_cooldownCost * 60)];
    missionNamespace setVariable [getPlayerUID player + "VehicleSpawn_LastSpawnTime", serverTime];

    [_veh] call _callBack;
    player setPos (getPos _veh vectorAdd (boundingBoxReal _veh select 0));
};

closeDialog 1601;