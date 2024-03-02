#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function checks and enables eventhandlers for the the civ population simulation system.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_civ_init
 *
 * Public: No
 */

INFO("Civ", "Checking for population zones...");

GVAR(ALLOW_CIV_ZONE_DAMAGE) = true;
private _civZones = [];
{
    private _markerName = [_x, 0, 21] call BIS_fnc_trimString;
    _markerName = toLower _markerName;
    if (_markerName == "cscripts_civilian_zone_") then {
        private _density = [_x, 21] call BIS_fnc_trimString;
        _density = (_density splitString "_")#0;
        if !(_density in ["extream", "high", "medium", "low", "none"]) then {
            SHOW_CHAT_WARNING_2("Civ", "Zone %1 have invalid density '%2'.", _x, _density);
            continue;
        };
        private _pos = getMarkerPos _x;
        private _dir = markerDir _x;
        private _size = markerSize _x;
        _civZones append [[_x, _pos, _dir, _size, _density]];
        _x setMarkerAlpha 0;
        INFO_5("Civ", "Population zone added [%1, %2, %3, %4, %5]", _x, _pos, _dir, _size, _density);
    };
} forEach allMapMarkers;

if (_civZones isEqualTo []) exitWith {INFO("Civ", "No population zones detected");};
SETMVAR(EGVAR(Civ,Zones), _civZones);


// Create diary records for the zones
if !(player diarySubjectExists "CivCenter") then {
    {
        _x params ["_marker", "_pos", "", "", "_density"];
        player createDiarySubject ["CivCenter","Population Centers"];

        private _location = text nearestLocation [_pos, ""];
        private _textLocation = formatText["<font color='#ffc61a'>%1</font> is a population center located at <font color='#ffc61a'>%2</font>.", _location, mapGridPosition _pos];
        private _textDensity = if (_density != "none") then { formatText["<br/><br/>The location have <font color='#ffc61a'>%1</font> density.", _density]; } else {""};
        private _record = player createDiaryRecord ["CivCenter", [_location, format [
            "%1%2", _textLocation, _textDensity
        ]]];
    } forEach GETMVAR(EGVAR(Civ,Zones), []);
};


// Event Handlers
[player, "fired", {_this call EFUNC(civ,checkProjectile)}] call CBA_fnc_addBISEventHandler;
["ace_firedPlayer", {_this call EFUNC(civ,checkProjectile)}] call CBA_fnc_addEventHandler;
["ace_firedPlayerVehicle", {_this call EFUNC(civ,checkProjectile)}] call CBA_fnc_addEventHandler;


// Physical civilian units
["CAManBase", "init", {
    params ["_unit"];
    if (isPlayer _unit) exitWith {};
    if (side _unit == civilian) then {
        INFO_2("Civ", "Civilian unit detected %1 (%2) applying eventhandler.", _unit, typeOf _unit);
        [_unit, "killed", {
            params ["_unit", "_source", "_damage", "_instigator"];
            private _location = text nearestLocation [getPosASLVisual _unit, ""];
            INFO_1("Civ", "Civilian casualties at %1.", _location);
            {
                private _curator = getAssignedCuratorUnit _x;
                [QEGVAR(Civilian,Casualties), [_location, _source], _curator] call CBA_fnc_targetEvent;
            } forEach allCurators;
        }] call CBA_fnc_addBISEventHandler;
    };
}, true, [], true] call CBA_fnc_addClassEventHandler;

[QEGVAR(Civilian,Casualties), {
    params ["_location", "_unit"];
    [
        [],
        ["Civilian Casualties", 1.2, [1, 0.776, 0.102, 1]],
        [format ["Casualties repoted in %1.", _location]],
        [format ["Caused by %1.", name _unit]],
        [""],
        [""]
    ] call CBA_fnc_notify;
    systemChat format ["Civilian casualties caused by %1 repoted near %2.", name _unit, _location];
    playSound "hint";
}] call CBA_fnc_addEventHandler;
