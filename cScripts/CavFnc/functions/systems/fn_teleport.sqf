/*
 * Author: Originally some one but CPL.Brostrom.A rewrote it.
 * This teleports a target to a given marker or any other kind of object.
 * Z will always be 0 for MARKER, LOCATION and TASK.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Label text <STRING>
 * 2: Destination <MARKER/OBJECT/LOCATION/GROUP/TASK>
 * 3: Radius <NUMBER> (Optional)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this,"Teleport - Talon","FOB_Talon"] call cScripts_fnc_teleport
 * [this,"Teleport - Airfield","Airstrip"] call cScripts_fnc_teleport
 * [this,"Teleport - Base","MyBase"] call cScripts_fnc_teleport
 * [this,"Teleport - Base","respawn_west",5] call cScripts_fnc_teleport
 */
 
#include "..\script_component.hpp";
#define DEBUG_MODE
params [
    ["_object", objNull, [objNull]],
    ["_action", "Teleport"],
    ["_dest", nil, [objNull, grpNull, "", locationNull, taskNull, []]],
    ["_radius", 0, [0]]
];

if (isNil "_dest") exitWith {[formatText["No destination given for teleporter %1 (%2).", _object, _action]] call FUNC(logError)};

#ifdef DEBUG_MODE
    [format["Teleporter action added to %1.", _object]] call FUNC(logInfo);
#endif

_object addAction [
    format["<t color='#C9FFC9'>%1</t>", _action], {
        private _dest = _this select 3;
        private _radius = _this select 4;
        //private _dir = getDir _dest;
        titleText ["", "BLACK OUT", 3];
        [{
            params ["_dest",["_radius",0]];
            [player, _dest, _radius] call CBA_fnc_setPos;
        }, [_dest,_radius], 2] call CBA_fnc_waitAndExecute;
        //player setDir _dir;
        titleText ["", "BLACK IN", 3];
        #ifdef DEBUG_MODE
            [format["%1 have been teleportet to %2", name player, _dest]] call FUNC(logInfo);
        #endif
    }, [_dest,_radius], 1.5, true, true, "", "true", 10
];