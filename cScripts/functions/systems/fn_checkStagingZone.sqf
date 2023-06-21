#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function checks if your near a staging zone and change the global variable for the player.
 *
 * Arguments:
 * None
 *
 * Return:
 * True or False <BOOL>
 *
 * Example:
 * call cScripts_fnc_checkStagingZone
 */

false;
private _stagingZones        = missionNamespace getVariable [QEGVAR(Staging,Zones), []];
private _stagingZonesEnabled = missionNamespace getVariable [QEGVAR(mission,stagingZonesEnabled), true];

if !(_stagingZonesEnabled) exitWith { false };
if (EGVAR(Staging,ZoneStatus)) exitWith { true };

if (count _stagingZones > 0) then {
    {
        _x params ["_zone", "_maxDistance"];
        private _zonePos = [0,0,0];
        if (_zone isEqualType objNull) then {
            _zone = _zone call BIS_fnc_netId;
            _zone = _zone call BIS_fnc_objectFromNetId;
            _zonePos = getPos _zone;
        };
        if (_zone isEqualType "") then {
            _zonePos = getMarkerPos _zone;
        };
        private _distance = player distance _zonePos;

        if (_distance <= _maxDistance) exitWith { true };
        false;
    } forEach _stagingZones;
} else { false };
