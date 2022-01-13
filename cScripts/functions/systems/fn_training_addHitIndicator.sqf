#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, Ocean.M
 * This object add tiny hit markers to the target you are firing on indikating where you fired.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Indikator <OBJECT> (Optional)
 *
 * Example:
 * [this] call cScripts_fnc_training_addHitIndicator;
 * [this, myOtherTarget] call cScripts_fnc_training_addHitIndicator;
 * [this, myOtherTarget, "#(argb,8,8,3)color(1,0.6,0.1,1.0,ca)"] call cScripts_fnc_training_addHitIndicator;
 * [this, myOtherTarget, "#(argb,8,8,3)color(1,0.1,0.6,1.0,ca)"] call cScripts_fnc_training_addHitIndicator;
 */

params [
    ["_object", objNull, [objNull]],
    ["_board", objNull, [objNull]],
    ["_color", "#(argb,8,8,3)color(1,0.6,0.1,1.0,ca)", [""]]
];

if !(isNull _board) then {_object setVariable [QEGVAR(training,hitIndikator), _board]};
_object setVariable [QEGVAR(training,hitIndikatorColor), _color];

_object addEventHandler ["HitPart", {
    _this#0 params ["_object", "", "", "_position"];

    // Create marker on impact
    private _marker = "Sign_Sphere10cm_F" createVehicle [0,0,0];
    _marker setPosASL _position;

    // Handle other board indicator
    private _board = _object getVariable [QEGVAR(training,hitIndikator), _object];
    if (_board != _object) then {
        private _oldPos = getPosASL _board;
        private _oldVectorDirAndUp = [vectorDir _board, vectorUp _board];

        // Move target and attach markers
        _board setPosASL (getPosASL _object);
        _board setVectorDirAndUp [vectorDir _object, vectorUp _object];
        _marker attachTo [_board];

        // Reset target board position
        _board setPosASL _oldPos;
        _board setVectorDirAndUp _oldVectorDirAndUp;
    };

    // Save marker for future clearing
    private _hitmarkers = _board getVariable [QEGVAR(training,hitIndikatorMarkers), []];
    _hitmarkers pushBack _marker;
    _board setVariable [QEGVAR(training,hitIndikatorMarkers), _hitmarkers, true];

    private _color = _object getVariable QEGVAR(training,hitIndikatorColor);
    _marker setObjectTextureGlobal [0, _color];
    [{_this#0 setObjectScale 0.5;}, [_marker]] call CBA_fnc_execNextFrame;
}];
