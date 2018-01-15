/*
 * Author: CPL.Brostrom.A
 * The ability to jump out of a C130.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Minimum jump altetude <INTEGER>
 * 2: Parachute deploy height <INTEGER>
 * 3: Maximum jump speed (km/h) <INTEGER>
 *
 * Example:
 * [this] call cScripts_fnc_addJump;
 * [this,200,160,250] call cScripts_fnc_addJump;
 */

#include "..\script_component.hpp";

params [["_vehicle", objNull, [objNull]], ["_paraJumpATL",200], ["_paraChuteOpen_ATL",160], ["_maxSpeed",250]];

/* _vehicle addAction [
    "<t color='#ef1fef'>Jump</t><img image='cScripts\Data\Icon\icon_02.paa' />",
    {[_this select 0, _this select 1, _this select 3] call FUNC(doJump)
    },_paraChuteOpen_ATL,1.5,true,true,"",
    format ["((_target getCargoIndex _this) != -1) && (((getPosATL _target) select 2) >= %1) && (_target animationPhase 'ramp_bottom' > 0.64) && (speed _target <= %2)", _paraJumpATL, _maxSpeed]
]; */
_vehicle addAction [
    "<t color='#ef1fef'>Jump</t><img image='cScripts\Data\Icon\icon_02.paa' />",
    {[_this select 0, _this select 1, _this select 3] call FUNC(doJump)
    },_paraChuteOpen_ATL,1.5,true,true,"",
    format ["((_target getCargoIndex _this) != -1) && (((getPosATL _target) select 2) >= %1) && (speed _target <= %2)", _paraJumpATL, _maxSpeed]
];
