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

private _stagingZones = GETMVAR(EGVAR(Staging,Zones), []);

// Check if zone is marker
if (_zone isEqualType "") then {
    private _markerPos = getMarkerPos _zone;
    _zone = "UserTexture1m_F" createVehicle _markerPos;
};

_stagingZones pushBack [_zone, _size];

SETMVAR(EGVAR(Staging,Zones), _stagingZones)

INFO_2("Staging", "Staging zone %1 (%2) created.", count _stagingZones, _zone);

// Vehicles dont paint out the zone
if (_zone isKindOf "AllVehicles") exitWith {};
INFO_2("Staging", "Revlealing staging zone %1 (%2)", count _stagingZones, _zone);

private _visibleZone = createMarkerLocal [format["VisibleStadgeingMarker_%1", count _stagingZones], _zone];
_visibleZone setMarkerShapeLocal "ELLIPSE";
_visibleZone setMarkerSizeLocal [_size, _size];
_visibleZone setMarkerColorLocal "ColorYellow";