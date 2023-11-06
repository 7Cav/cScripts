#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, CPL.Dunn.W
 * This module function can disable ai set player weapon to safe and print some hints and spam the chat with ENDEX. 
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 * 
 *
 * Example:
 * [getPos logic, this] call cScripts_fnc_zenModule_callEndex;
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

[
    "Call Endex", 
    [
        ["CHECKBOX", ["Set Player Weapons To Safe", ""], true, false],
        ["CHECKBOX", ["Pacify AI", ""], true, false],
        ["CHECKBOX", ["Hint Players That Fire", ""], true, false],
        ["CHECKBOX", ["Heal all players", ""], true, false]
    ], 
    {
        params ["_arg", "_pos"];
        _arg params [
            "_weaponsSafe",
            "_aiPacified",
            "_holdFireMessage",
            "_healAllPlayers"
        ];
        _pos params ["_modulePos"];

        //systemChat Endex message
        "ENDEX ENDEX ENDEX" remoteExecCall ["systemChat", -2];
        "DEBRIEF" remoteExecCall ["systemChat", -2];
        "LEADERS DEBRIEF IN CHANNEL BELOW" remoteExecCall ["systemChat", -2];

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
                private _weapon = currentWeapon player; 
                private _safedWeapons = player getVariable ['ace_safemode_safedWeapons', []]; 
                if !(_weapon in _safedWeapons) then {  
                    [player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;
                    INFO_2("ZEN", "%1 weapon (%2) have been set to safe.");
                };
            } remoteExecCall ["bis_fnc_call", -2]; 
        };

        if (_healAllPlayers) then {
            {
                [player, player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;
            } remoteExecCall ["bis_fnc_call", -2]; 
        };

        //Change AI to careless (doesn't affected AI created after Endex)
        if (_aiPacified) then { 
            {
                (group _x) setBehaviourStrong "CARELESS";
                (group _x) setCombatMode "BLUE";
                INFO_2("ZEN", "AI %1 group (%2) have been set to careless and blue.", _x, group _x);
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

                                private _hftitle = format[
                                    "<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>%1 %2<br />hold your Fire!</t><br /><br />",
                                    [_unit, 'USA'] call EFUNC(player,getRank),
                                    [_unit] call EFUNC(unit,getName)
                                ];
                                private _hfimage = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
                                private _hftext = "You are not allowed to discharge your weapon during Endex.<br />";

                                hint parseText (_hftitle + _hfimage + _hftext);
                                format ["Player %1 have discharge his weapon (%2; %3) during endex.", name _unit, _weapon, _muzzle] remoteExecCall [QFUNC(info), 0];
                                if ( _unit getVariable [QEGVAR(player,endexFiredWeapon), ""] != _muzzle ) then {
                                    format [
                                        "Hold your fire %1 %2!",
                                        [_unit, 'USA'] call EFUNC(player,getRank),
                                        [_unit] call EFUNC(unit,getName)
                                    ] remoteExecCall ["systemChat", 0];
                                    _unit setVariable [QEGVAR(player,endexFiredWeapon), _muzzle];
                                };
                            }
                        ] call CBA_fnc_addBISEventHandler;
                    } remoteExecCall ["bis_fnc_call", 0];
                }, 
            [], 10] call CBA_fnc_waitAndExecute;
        };

        if (isNil{missionNamespace getVariable QEGVAR(Mission,Endex)}) then {
            missionNamespace setVariable [QEGVAR(Mission,Endex), True];
            INFO_2("", "Mission var %1 is set %2", QEGVAR(Mission,Endex), missionNamespace getVariable [QEGVAR(Mission,Endex), false]);
        };
        
        [QGVAR(getAttendance)] call CBA_fnc_localEvent;

        ["Endex called (All attended players have been saved to your RPT log)"] call zen_common_fnc_showMessage;
    },
    {},
    [_modulePos]
] call zen_dialog_fnc_create;
