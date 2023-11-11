#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * TBD
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_civ_tbd
 *
 * Public: No
 */

INFO("Civ", "Checking for population zones...");

GVAR(ALLOW_CIV_ZONE_DAMAGE) = true;
private _civZones = [];
{
    private _markerName = [_x, 0, 21] call BIS_fnc_trimString;
    _markerName = toLower _markerName;
    if (_markerName == "cscripts_civilan_zone_") then {
        private _dencity = [_x, 21] call BIS_fnc_trimString;
        _dencity = (_dencity splitString "_")#0;
        private _pos = getMarkerPos _x;
        private _dir = markerDir _x;
        private _size = markerSize _x;
        _civZones append [[_x, _pos, _dir, _size, _dencity]];
        _x setMarkerAlpha 0;
        INFO_5("Civ", "Population zone added [%1, %2, %3, %4, %5]", _x, _pos, _dir, _size, _dencity);
    };
} forEach allMapMarkers;

if (_civZones isEqualTo []) exitWith {INFO("Civ", "No population zones detected");};
SETMVAR(EGVAR(Civ,Zones), _civZones);


// Create diary records for the zones
if !(player diarySubjectExists "CivCenter") then {
    {
        _x params ["_marker", "_pos", "", "", "_dencity"];
        player createDiarySubject ["CivCenter","Population Centers"];

        private _location = text nearestLocation [_pos, ""];
        private _textLocation = formatText["<font color='#ffc61a'>%1</font> is a population center located at <font color='#ffc61a'>%2</font>.<br/><br/>", _location, mapGridPosition _pos];
        private _textDencetry = formatText["The location have <font color='#ffc61a'>%1</font> dencety.", _dencity];
        private _record = player createDiaryRecord ["CivCenter", [_location, format [
            "%1%2", _textLocation, _textDencetry
        ]]];
    } forEach GETMVAR(EGVAR(Civ,Zones), []);
};


[player, "fired", {_this call EFUNC(civ,zone)}] call CBA_fnc_addBISEventHandler;
["ace_firedPlayer", {_this call EFUNC(civ,zone)}] call CBA_fnc_addEventHandler;
["ace_firedPlayerVehicle", {_this call EFUNC(civ,zone)}] call CBA_fnc_addEventHandler;

[QEGVAR(Civilian,Casualties), {
    params ["_marker", "_dencity", "_projectile"];
    private _location = text nearestLocation [markerPos _marker, ""];
    [
        [],
        ["Civilian Casualties", 1.2, [1, 0.776, 0.102, 1]],
        [format ["Casualties repoted in <font color='#ffc61a'>%1</font>", _location]],
        [""],
        [""]
    ] call CBA_fnc_notify;
    systemChat format ["Civilian casualties repoted near %1.", _location];
    playSound "hint";
}] call CBA_fnc_addEventHandler;