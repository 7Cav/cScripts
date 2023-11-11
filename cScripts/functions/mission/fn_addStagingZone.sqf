#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function creates a staging zone and saves it to a mission name space.
 * The zone can be OBJECT, MARKER or POSITION ARRAY
 *
 * Arguments:
 * 0: Zone <OBJECT/STRING/ARRAY>
 * 1: Zone Size <NUMBER/STRING> (Optional) [Default; 12]
 *
 * Return:
 * Nothing
 *
 * Example:
 * [this] call cScripts_fnc_addStagingZone
 * [this, 3] call cScripts_fnc_addStagingZone
 * ["zone_staging", 12] call cScripts_fnc_addStagingZone
 * ["respawn_west", 12] call cScripts_fnc_addStagingZone
 * [[10,25,0], 12] call cScripts_fnc_addStagingZone
 * ["ShapedZoneMarker", "RECTANGLE"] call cScripts_fnc_addStagingZone
 * ["ShapedZoneMarker", "ELLIPSE"] call cScripts_fnc_addStagingZone
 * 
 * Public: Yes
 */

params [
    ["_zone", objNull, [objNull, "", []]],
    ["_size", 12, [0, ""]]
];

private _stagingZones = GETMVAR(EGVAR(Staging,Zones), []);

// Position or Icon zone
if (_zone isEqualType []) exitWith {
    INFO("Staging", "Creating postion type staging zone (Icon marker or Set position)");
    private _zoneSize = if (_size isEqualType 0) then {[_size, _size]} else {SHOW_CHAT_WARNING("Staging", "Zone size <STRING> not valid for position type zones. Setting zone size to 12");[12, 12]};
    private _zonePos = _zone;
    private _zoneType = [];

    private _stagingZone = createMarkerLocal [format["cScripts_staging_zone_%1", count _stagingZones], _zonePos];
    _stagingZone setMarkerShapeLocal "ELLIPSE";
    _stagingZone setMarkerSizeLocal _zoneSize;
    _stagingZone setMarkerBrushLocal "Border";
    _stagingZone setMarkerColorLocal "ColorOrange";

    _stagingZones append [[_stagingZone, _zoneSize, _zoneType]];
    SETMVAR(EGVAR(Staging,Zones), _stagingZones);
};

// Shape marker zone
if (_zone isEqualType "") exitWith {
    INFO("Staging", "Creating shape marker type staging zone");
    private _zoneSize = if (_size isEqualType 0) then {[_size, _size]} else {getMarkerSize _zone};
    private _zoneShape = _size;
    private _zonePos = markerPos _zone;
    private _zoneDir = markerDir _zone;
    private _zoneType = "";

    private _stagingZone = createMarkerLocal [format["cScripts_staging_zone_%1", count _stagingZones], _zonePos];
    _stagingZone setMarkerShapeLocal _zoneShape;
    _stagingZone setMarkerSizeLocal _zoneSize;
    _stagingZone setMarkerDirLocal _zoneDir;
    _stagingZone setMarkerBrushLocal "Border";
    _stagingZone setMarkerColorLocal "ColorOrange";

    _stagingZones append [[_stagingZone, _zoneSize, _zoneType]];
    SETMVAR(EGVAR(Staging,Zones), _stagingZones);
};

// Object type zone
if (_zone isEqualType objNull) exitWith {
    INFO("Staging", "Creating vehicle type staging zone");
    private _zoneSize = if (_size isEqualType 0) then {[_size, _size]} else {SHOW_CHAT_WARNING("Staging", "Zone size <STRING> not valid for position type zones. Setting zone size to 12");[12, 12]};
    private _zoneType = objNull;
    private _stagingZone = _zone;

    _stagingZones append [[_stagingZone, _zoneSize, _zoneType]];
    SETMVAR(EGVAR(Staging,Zones), _stagingZones);
};

if (isNil{_stagingZone}) exitWith {ERROR_1("Staging", "Staging zone %1 not created.", _zone);};
