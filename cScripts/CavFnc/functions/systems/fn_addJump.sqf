/*
 * Author: CPL.Brostrom.A
 * The ability to jump out of a C130.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Minimum jump altetude <INTEGER>
 * 2: Parachute deploy height <INTEGER>
 *
 * Example:
 * [this] call cScripts_fnc_addJump;
 * [this,200,160] call cScripts_fnc_addJump;
 */

 #include "..\script_component.hpp";

params [["_vehicle", objNull, [objNull]], ["_paraJumpATL",200], ["_paraChuteOpen_ATL",160]];

_vehicle addAction [
    "<t color='#ef1fef'>Jump</t>",
    {[_this select 0, _this select 1, _this select 3] call FUNC(doJump)
	},_paraChuteOpen_ATL,1.5,true,true,"",
    format ["((_target getCargoIndex _this) != -1) && (((getPosATL _target) select 2) >= %1) && (_target animationPhase 'ramp_bottom' > 0.64)", _paraJumpATL]
];
