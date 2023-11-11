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

INFO("CIV", "Setting up civilian zones...");

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
        private _isRectangle = markerShape _x == "RECTANGLE";
        _civZones append [[_x, _pos, _dir, _size, _dencity]];
        _x setMarkerAlpha 0;
    };
} forEach allMapMarkers;

SETMVAR(EGVAR(Civ,Zones), _civZones);

// Setup zones
{
    _x params ["_marker"];

    private _size = markerSize _marker;
    private _dir = markerDir _marker;
    private _pos = getMarkerPos _marker;
    private _isRectangle = markerShape _marker == "RECTANGLE";

    private _onAct = toString {[QGVAR(entreCivlianZone)] call CBA_fnc_localEvent;};
    private _onDea = toString {[QGVAR(exitCivlianZone)] call CBA_fnc_localEvent;};

    [
        _pos,
        "AREA:", [_size#0, _size#1, _dir, true],
        "ACT:", ["WEST", "PRESENT", true],
        "STATE:", [
            "this",
            _onAct,
            _onDea
        ]
    ] call CBA_fnc_createTrigger;
} forEach GETMVAR(EGVAR(Civ,Zones), []);


// Create diary records for the zones
if !(player diarySubjectExists "CivCenter") then {
    _civilianCenterRecords = [];
    {
        _x params ["_marker", "_pos", "", "", "_dencity"];
        player createDiarySubject ["CivCenter","Populatiuon Centers"];

        private _location = text nearestLocation [_pos, ""];
        private _textLocation = formatText["<font color='#ffc61a'>%1</font> is a population center located at <font color='#ffc61a'>%2</font>.<br/><br/>", _location, mapGridPosition _pos];
        private _textDencetry = formatText["The location have <font color='#ffc61a'>%1</font> dencety.", _dencity];
        private _record = player createDiaryRecord ["CivCenter", [_location, format [
            "%1%2", _textLocation, _textDencetry
        ]]];
        _civilianCenterRecords append [_location];
    } forEach GETMVAR(EGVAR(Civ,Zones), []);
    
    SETMVAR(EGVAR(Civ,Population_Centers), _civilianCenterRecords);
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