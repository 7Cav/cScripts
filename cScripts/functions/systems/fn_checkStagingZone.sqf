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
private _stagingZones        = GETMVAR(EGVAR(Staging,Zones), []);
private _stagingZonesEnabled = GETMVAR(EGVAR(Mission,stagingZonesEnabled), true);

if !(_stagingZonesEnabled) exitWith { false };
if (EGVAR(Staging,ZoneStatus)) exitWith { true };

if (count _stagingZones > 0) then {
    {
        _x params ["_zone", "_size", "_type"];

        private _playerHight = (getPosVisual player)#2;
        if (player inArea _zone && _playerHight <= 30 ) exitWith { true };

        // Object distacne check
        private _objectZoneSize = _size#0;
        private _distance = if (_type isEqualType objNull) then {player distance getPos _zone} else {999999};
        private _checkDistance = if (_type isEqualType objNull) then {_distance <= _objectZoneSize} else {false};
        if (_checkDistance) exitWith { true };
        false
    } forEach _stagingZones;
} else { false };
