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
private _weaponsSafe = _dialogResults select 0;
_weaponsSafe = _weaponsSafe isEqualTo 0;

private _aiPacified = _dialogResults select 1;
_aiPacified = _aiPacified isEqualTo 0;

private _holdFireMessage = _dialogResults select 2;
_holdFireMessage = _holdFireMessage isEqualTo 0;


//systemChat Endex message
"ENDEX ENDEX ENDEX" remoteExecCall ["systemChat", 0];
"DEBRIEF" remoteExecCall ["systemChat", 0];
"LEADERS DEBRIEF IN CHANNEL BELOW" remoteExecCall ["systemChat", 0];

//hint Endex message
private _title = "<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>ENDEX ENDEX ENDEX!</t><br />";
private _image = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
private _text0 = "<t font='PuristaMedium' size='1.1'>Mission complete</t><br /><br />";
private _text1 = "Hold your fire and report to your Squad Leaders for debriefing.<br />";
private _text3 = "<t font='PuristaMedium' size='1.1'>Please safe your weapons if you haven't already!</t>";

parseText(_title + _text0 + _image + _text1 + _text3) remoteExecCall ["hint", 0];

//Set Safety to all Players
if (_weaponsSafe) then {
    {
        private _weapon = currentWeapon player; 
        private _safedWeapons = player getVariable ['ace_safemode_safedWeapons', []]; 
        if !(_weapon in _safedWeapons) then {  
            [player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;
            #ifdef DEBUG_MODE
                [formatText["%1 weapon (%2) have been set to safe.", player, _weapon]] call FUNC(logInfo);
            #endif
        };
    } remoteExecCall ["bis_fnc_call", 0]; 
};


//Change AI to careless (doesn't affected AI created after Endex)
if (_aiPacified) then { 
    {
        (group _x) setBehaviourStrong "CARELESS";
        (group _x) setCombatMode "BLUE";
        #ifdef DEBUG_MODE
            [formatText["AI %1 group (%2) have been set to careless and blue.", _x, group _x]] call FUNC(logInfo);
        #endif
    } forEach ((allUnits) - (allPlayers));
};

if (_holdFireMessage) then {
    [
        {
            {
                [
                    player,
                    "fired",
                    {
                        params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
                        format ["Player %1 have discharge his weapon (%2) during endex.", name _unit, _muzzle] remoteExecCall [QFUNC(logInfo), 0];
                    
                        format ["Hold your fire %1 %2!", [_unit,'CAV'] call FUNC(getPlayerRank), [_unit,'PROFILE'] call FUNC(getPlayerName)] remoteExecCall ["systemChat", 0];
                        
                        private _hftitle = format["<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>%1 %2<br />hold your Fire!</t><br /><br />", [_unit, 'CAV'] call FUNC(getPlayerRank), [_unit, 'PROFILE'] call FUNC(getPlayerName)];
                        private _hfimage = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
                        private _hftext = "Your not allowed to discharge your weapon during Endex.<br />";
                        
                        hint parseText (_hftitle + _hfimage + _hftext);
                    }
                ] call CBA_fnc_addBISEventHandler;
            } remoteExecCall ["bis_fnc_call", 0];
        }, 
    [], 10] call CBA_fnc_waitAndExecute;
};

if (isNil{missionNamespace getVariable QEGVAR(Mission,Endex)}) then {
    missionNamespace setVariable [QEGVAR(Mission,Endex), True];
    #ifdef DEBUG_MODE
        [formatText["Mission var %1 is set %2", QEGVAR(Mission,Endex), missionNamespace getVariable QEGVAR(Mission,Endex)]] call FUNC(logInfo);
    #endif
};