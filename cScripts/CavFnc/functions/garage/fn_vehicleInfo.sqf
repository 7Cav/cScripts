/*
 * Author: CPL.Liber.N
 * This fuction displays addtitional vehicle properties (Skins, Spawn type) for vehicles selected in garage.
 *
 * Arguments:
 * None.
 *
 * Example:
 * [] spawn cScripts_fnc_vehicleInfo
 *
 */

disableSerialization;

private _vehicleIndex = parseNumber (lbData [7, lbCurSel 7]);
private _vehicle = GarageVehicles select _vehicleIndex;
_vehicle params ["_vehicleClass", "_cooldownCost", "_maxVehicles", "_message", "_defaultSpawn", "_condition", "_callBack"];

private _dropDown = ((findDisplay 1601) displayCtrl (13));
lbCLear _dropDown;

{
    private _textureIndex = _dropDown lbAdd format ["%1", getText (_x >> "displayName")];
    _dropDown lbSetData [_textureIndex, str getArray (_x >> "textures")];
} foreach ("true" configClasses (configfile >> "CfgVehicles" >>_vehicleClass >> "textureSources"));

_dropDown ctrlShow true;

private _spawnLocationDropDown = ((findDisplay 1601) displayCtrl (15));
lbCLear _spawnLocationDropDown;

private _landIndex = -1;
private _airIndex = -1;

if (!isNull VehicleSpawn) then { 
    _landIndex = _spawnLocationDropDown lbAdd "Land Vehicle Spawn";
    _spawnLocationDropDown lbSetData [_landIndex, "land"];
};
    
if (!isNull VehicleAirSpawn) then { 
    _airIndex = _spawnLocationDropDown lbAdd "Air Vehicle Spawn";
    _spawnLocationDropDown lbSetData [_airIndex, "air"];
};
    
if (_defaultSpawn == "land") then { _spawnLocationDropDown lbSetCurSel _landIndex; }; 
if (_defaultSpawn == "air") then { _spawnLocationDropDown lbSetCurSel _airIndex; }; 

_spawnLocationDropDown ctrlShow true;

private _textCbo = ((findDisplay 1601) displayCtrl (8));
_textCbo ctrlSetStructuredText parseText format 
[
    "
    <t align='left'>Name: %1</t><br/>
    <t align='left'>%3</t>",
    getText (configFile >> "CfgVehicles" >> _vehicleClass >> "displayName"),
    _cooldownCost,
    _message
];

[_vehicle] call cScripts_fnc_showSpawnButton;