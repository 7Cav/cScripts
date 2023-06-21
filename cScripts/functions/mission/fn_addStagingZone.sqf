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

params [
    ["_zone", objNull, [objNull, ""]],
    ["_size", 12, [0]]
];

private _stagingZones = missionNamespace getVariable [QEGVAR(Staging,Zones), []];

if (_zone isEqualType "") then {
    private _markerPos = getMarkerPos _zone;
    _zone = "UserTexture1m_F" createVehicle _markerPos;
};

_stagingZones pushBack [_zone, _size];

missionNamespace setVariable [QEGVAR(Staging,Zones), _stagingZones];

#ifdef DEBUG_MODE
    private _debugMarker = createMarkerLocal [format["DebugStadgeingMarker_%1", count _stagingZones], _zone];
    _debugMarker setMarkerShapeLocal "ELLIPSE";
    _debugMarker setMarkerSizeLocal [_size, _size];
    _debugMarker setMarkerColorLocal "colorCivilian";
    [format["Staging zone %1 created.", count _stagingZones], "Staging"] call FUNC(info);
#endif