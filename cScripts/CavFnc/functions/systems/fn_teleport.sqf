/*
 * Author: Origunaly some one but CPL.Brostrom.A rewrote it.
 * This teleports a target to a given marker.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Lable text <STRING>
 * 2: Destination <STRING>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this,"Teleport - Talon","FOB_Talon"] call cScripts_fnc_teleport
 * [this,"Teleport - Base","Base"] call cScripts_fnc_teleport
 * [this,"Teleport - Airfield","Airstrip"] call cScripts_fnc_teleport
 *
 */

#include "..\script_component.hpp";

params [
    ["_object", objNull, [objNull]],
    ["_action", "Teleport"],
    ["_dest", '']
];

if (_dest == "") exitWith {};

_object addAction [
    _action, {
        private _dest = (_this select 3) select 0;
        private _dir = random 359;

        // Check if it is a marker or object
        _isObject = if (isNil QUOTE(_this select 3)) then {false} else {true};

        if (_isObject) then {
            _isObjectDest = call compile _dest;
            (_this select 1) setPos [(position _isObjectDest select 0)-10*sin(_dir),(position _isObjectDest select 1)-10*cos(_dir)];
            hint "Teleported via object code";
        } else {
            (_this select 1) setPos [(getMarkerPos _dest select 0)-10*sin(_dir),(getMarkerPos _dest select 1)-10*cos(_dir)];
            hint "Teleported via marker code";
        };
    }, [_dest], 1.5, true, true, "", "true", 10
];
