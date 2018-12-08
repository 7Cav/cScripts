#include "..\script_component.hpp";
/*
 * Author: SGT.Sweetwater.I
 * This module function creates a countdown timer
 * A Heavily bastardized copy of the zeus_curator module for bis_fnc_countdown
 * Arguments:
 * 0: None
 *
 * Example:
 * this call cScripts_fnc_moduleCreateTimer
 *
 * Public: No
 */
params ["_Ctimer"];

private _dialogResult = [
	"Countdown Timer",
	[
		["Seconds","", "60"]
	]
] call Ares_fnc_showChooseDialog;

if (count _dialogResult == 0) exitWith {};

private _Ctimer = _dialogResult select 0;

		_time = [] call bis_fnc_countdown;
		if (_time <= 0) then {_time = estimatedendservertime - servertime;};
		_value = _time call compile _Ctimer;
		_value = _value param [0,-1,[0]];
		if (_value >= 0) then {

			if (abs (([] call bis_fnc_missionTimeLeft) - _value) > 60) then {
				_valueText = format ["%1 %2",ceil (_value / 60),localize "STR_A3_RSCMPPROGRESS_min"];
				[["Countdown",[_valueText]],"bis_fnc_showNotification"] call bis_fnc_mp;
			};
			
			if (ismultiplayer) then {
				estimatedtimeleft _value;
			} else {
				_value call bis_fnc_countdown;
			};
		};
	} else {
		if (ismultiplayer) then {
			estimatedtimeleft 1e10;
		} else {
			-1 call bis_fnc_countdown;
		};
		if !(isnil "bis_fnc_moduleCountdown_end") then {
			terminate bis_fnc_moduleCountdown_end;
			bis_fnc_moduleCountdown_end = nil
		};
	};