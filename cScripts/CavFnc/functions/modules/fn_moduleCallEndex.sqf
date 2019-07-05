#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Edit by: CPL.Dunn.W
 * This module function print some hints and spam the chat with ENDEX. 
 * Edit: 
 *
 * Arguments:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_moduleCallEndex;
 *
 * Public: No
 */
 
//Module Options
private _dialogResults = [
	"Endex Options",
	[
		["Set Player Weapons To Safe", ["Yes", "No"], 0],
		["Pacify AI", ["Yes", "No"], 0],
		["Hint Players That Fire", ["Yes", "No"], 0]
	]
] call Ares_fnc_showChooseDialog;

if (count _dialogResults == 0) exitWith {};

//handles results and turns them into booleans
_dialogResults params ["_weaponsSafe", "_aiPacified", "_VCSTIME"];

private _weaponsSafe = _weaponsSafe isEqualTo 0;
private _aiPacified = _aiPacified isEqualTo 0;
private _VCSTIME = _VCSTIME isEqualTo 0;


//systemChat Endex message
"ENDEX ENDEX ENDEX" remoteExecCall ["systemChat", 0]; //kept 0 for server logs
"DEBRIEF IN GAME" remoteExecCall ["systemChat", 2];
"LEADERS DEBRIEF IN CHANNEL BELOW" remoteExecCall ["systemChat", 2];


//hint Endex message
private _title = "<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>ENDEX ENDEX ENDEX!</t><br />";
private _image = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
private _text0 = "<t font='PuristaMedium' size='1.1'>Mission complete</t><br /><br />";
private _text1 = "Hold your fire and report to your Squad Leaders for debriefing in game.<br />";
private _text3 = "<t font='PuristaMedium' size='1.1'>Please safe your weapons if you haven't already!</t>";

parseText(_title + _text0 + _image + _text1 + _text3) remoteExecCall ["hint", 2];


//Change AI to careless (doesn't affected AI created after Endex) AND Set Safety to all Players
{
	if (isPlayer _x) then {
		if (_weaponsSafe) then {
			private _weapon = currentWeapon _x; 
			private _safedWeapons = _x getVariable ['ace_safemode_safedWeapons', []]; 
			if !(_weapon in _safedWeapons) then {  
				[_x, currentWeapon _x, currentMuzzle _x] call ace_safemode_fnc_lockSafety; 
			};
		};
	} else {
		if (_aiPacified) then {
			(group _x) setBehaviourStrong "CARELESS";
		};
	};
} forEach allUnits;


//hint players who fired 10 seconds after Endex
if (_VCSTIME) then {
	uiSleep 10;
	hint_shooter_fnc = { //fnc to be called server side to execute locally on all players
		player addEventHandler ["Fired", {  
			private _message = ", Stop Right There Criminal Scum, You Have Fired After Endex. Hold Your Fire!"; //Edit message when Player fires
			private _name = (name player); 
	  
			//to be called locally to be executed server side for all players to see
			("Hold Fire "+_name+"!") remoteExecCall ["systemChat", 0]; //kept 0 for server logs
			(_name+_message) remoteExecCall ["hint", 2]; 
		}]; 
	};
	remoteExec ["hint_shooter_fnc", 2];
};
