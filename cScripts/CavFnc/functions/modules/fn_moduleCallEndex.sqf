#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, CPL.Dunn.W
 * This module function can disable ai set player weapon to safe and print some hints and spam the chat with ENDEX. 
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
_dialogResults params ["_weaponsSafe", "_aiPacified", "_holdFireMessage"];

private _weaponsSafe = _weaponsSafe isEqualTo 0;
private _aiPacified = _aiPacified isEqualTo 0;
private _holdFireMessage = _holdFireMessage isEqualTo 0;


//systemChat Endex message
"ENDEX ENDEX ENDEX" remoteExecCall ["systemChat", -2];
"DEBRIEF" remoteExecCall ["systemChat", -2];
"LEADERS DEBRIEF IN CHANNEL BELOW" remoteExecCall ["systemChat", -2];
"Mission have been endex" remoteExecCall [FUNC(logInfo), 0];

//hint Endex message
private _title = "<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>ENDEX ENDEX ENDEX!</t><br />";
private _image = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
private _text0 = "<t font='PuristaMedium' size='1.1'>Mission complete</t><br /><br />";
private _text1 = "Hold your fire and report to your Squad Leaders for debriefing.<br />";
private _text3 = "<t font='PuristaMedium' size='1.1'>Please safe your weapons if you haven't already!</t>";

parseText(_title + _text0 + _image + _text1 + _text3) remoteExecCall ["hint", -2];

//Set Safety to all Players
if (_weaponsSafe) then {
    {
        private _weapon = currentWeapon _x; 
        private _safedWeapons = _x getVariable ['ace_safemode_safedWeapons', []]; 
        if !(_weapon in _safedWeapons) then {  
            [_x, currentWeapon _x, currentMuzzle _x] call ace_safemode_fnc_lockSafety;
            #ifdef DEBUG_MODE
                [formatText["%1 weapon (%2) have been set to safe.", _x, _weapon]] call FUNC(logInfo);
            #endif
        };
    } forEach allPlayers;
};


//Set all AI behavior to careless and combat behavior Blue (doesn't affected AI created after Endex)
if (_aiPacified) then { 
    {
        (group _x) setBehaviourStrong "CARELESS";
        (group _x) setCombatMode "BLUE";
        #ifdef DEBUG_MODE
            [formatText["AI %1 group (%2) have been set to careless and blue.", _x, group _x]] call FUNC(logInfo);
        #endif
    } forEach ((allUnits) - (allPlayers));
};

//Adds a event handler that informs a players to hold fire
if (_holdFireMessage) then {
    [
        {
            [player, 
                ["fired", 
                    {                
                        format ["Player %1 have discharge his weapon during endex.", name player] call [FUNC(logInfo), 0];
                        format ["Hold your fire %1!", name player] remoteExecCall ["systemChat", -2];
                        hint format ["%1 hold your Fire! Your not allowed to discharge your weapon during Endex.", name player];
                    }
                ]
            ] remoteExec ["addEventHandler", -2];
        }, 
    [], 10] call CBA_fnc_waitAndExecute;
};
