#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function adds a given object or marker to the missionNamespace listing staging zones.
 *
 * Arguments:
 * 0: Zone <OBJECT/STRING>
 * 1: Zone Size <NUMBER> (Optional) [Default; 12]
 *
 * Return:
 * Nothing
 *
 * Example:
 * [this] call cScripts_fnc_addStagingZone
 * [bob, 2] call cScripts_fnc_addStagingZone
 * [TruckMcTruckFace, 12] call cScripts_fnc_addStagingZone
 * ["respawn_west", 12] call cScripts_fnc_addStagingZone
 */
#include "..\script_component.hpp";

params [
    "_zone",
    ["_size", 12]
];

private _stageingZones = missionNamespace getVariable [QEGVAR(Stageing,Zones), []];

_stageingZones pushBack [_zone, _size];

missionNamespace setVariable [QEGVAR(Stageing,Zones), _stageingZones];
