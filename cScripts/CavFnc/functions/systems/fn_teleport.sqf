/*
 * Author: Origunaly some one but CPL.Brostrom.A rewrote it.
 * This teleports a target to a given marker or any other kind of object.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Lable text <STRING>
 * 2: Destination <STRING or OBJECT>
 * 3: Is object <BOOL> (Default: false)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this,"Teleport - Talon","FOB_Talon"] call cScripts_fnc_teleport
 * [this,"Teleport - Airfield","Airstrip"] call cScripts_fnc_teleport
 * [this,"Teleport - Base","MyBase"] call cScripts_fnc_teleport
 *
 * [this,"Teleport - Boat", baseObject, true] call cScripts_fnc_teleport
 * [this,"Teleport - Carrier", emptyTextureObject, true] call cScripts_fnc_teleport
 */

#include "..\script_component.hpp";

params [
    ["_object", objNull, [objNull]],
    ["_action", "Teleport"],
    ["_dest",""],
    ["_isObject", false]
];

if (_isObject) then {
    if (_dest == objNull) exitWith {[formatText["%1 can't teleport a players to empty location.", _action]] call cScripts_fnc_logError};
} else {
    if (_dest == "") exitWith {[formatText["%1 can't teleport a players to empty location.", _action]] call cScripts_fnc_logError};
};

if (_isObject) then {
    if (_dest isEqualType "") exitWith {[formatText["%1 expected object.", _action]] call cScripts_fnc_logError};

    _object addAction [
        format["<t color='#C9FFC9'>%1</t>", _action], {
            private _dest = _this select 3;
            private _dir = getDir _dest;
            titleText ["", "BLACK OUT", 3];
            player setPosASL [(getPosASL _dest select 0)-0*sin(_dir),(getPosASL _dest select 1)-0*cos(_dir),(getPosASL _dest select 2)];
            titleText ["", "BLACK IN", 3];
        }, _dest, 1.5, true, true, "", "true", 10
    ];
} else {
    if !(_dest isEqualType _object) exitWith {[formatText["%1 expected string.", _action]] call cScripts_fnc_logError};
    _object addAction [
        format["<t color='#C9FFC9'>%1</t>", _action], {
            private _dest = (_this select 3) select 0;
            private _dir = random 359;
            titleText ["", "BLACK OUT", 3];
            player setPos [(getMarkerPos _dest select 0)-10*sin(_dir),(getMarkerPos _dest select 1)-10*cos(_dir)];
            titleText ["", "BLACK IN", 3];
        }, _dest, 1.5, true, true, "", "true", 10
    ];
};
