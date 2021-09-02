#include "..\script_component.hpp";
/*
 * Author: Liber.N
 * This function allow you to get statistics from the server.
 *
 * Arguments:
 * 0: Client ID <NUMBER>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [owner player] call cScripts_fnc_getServerMetrics
 *
 * Public: No
 */
 
params ["_clientID"];

private _countUnits = ({ local _x } count allUnits);
private _countGroups = ({ local _x } count allGroups);
private _countVehicles = ({ local _x } count vehicles);

private _countGlobalUnits = (count allUnits);
private _countGlobalGroups = (count allGroups);
private _countGlobalVehicles = (count vehicles);

private _fps = (round diag_fps);
private _fpsMin = (round diag_fpsMin);
private _upTime = (round diag_tickTime);
private _missionTime = (round time);

private _activeScripts = diag_activeScripts;
private _spawn = _activeScripts select 0;
private _execVM = _activeScripts select 1;
private _exec = _activeScripts select 2;
private _execFSM = _activeScripts select 3;

private _local_units = format ["<t align='center'><br />- Server -<br /> Units: %1 <br />Groups: %2 <br />Vehicles: %3 </t><br />",_countUnits,_countGroups,_countVehicles];
private _global_units = format ["<t align='center'><br />- Global -<br /> Units: %1 <br />Groups: %2 <br />Vehicles: %3 </t><br />",_countGlobalUnits,_countGlobalGroups,_countGlobalVehicles] ;
private _scripts = format ["<t align='center'><br />- Scripts -<br /> Spawn: %1 <br />execVM: %2 <br />Exec: %3 <br />execFSM: %4 </t><br />",_countUnits,_countGroups,_countVehicles];
private _fps_all = format ["<t align='center'><br />- Performance -<br />FPS: %1 <br />FpsMin: %2 <br />Uptime: %3 <br />MissionTime: %4 </t><br />",_fps,_fpsMin,_upTime,_missionTime];

parseText (_local_units + _global_units + _scripts + _fps_all) remoteExec ["hint", _clientID]; 