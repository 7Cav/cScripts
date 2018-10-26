#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function print some hints and spam the chat with ENDEX. 
 *
 * Arguments:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_moduleCallEndex;
 *
 * Public: No
 */

"ENDEX ENDEX ENDEX" remoteExecCall ["systemChat", 0];
"DEBRIEF IN GAME" remoteExecCall ["systemChat", 0];
"LEADERS DEBRIEF IN CHANNEL BELOW" remoteExecCall ["systemChat", 0];

private _title = "<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>ENDEX ENDEX ENDEX!</t><br />";
private _image = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
private _text0 = "<t font='PuristaMedium' size='1.1'>Mission complete</t><br /><br />";
private _text1 = "Hold your fire and report to your Squad Leaders for debriefing in game.<br />";
private _text3 = "<t font='PuristaMedium' size='1.1'>Please safe your weapons!</t>";

parseText(_title + _text0 + _image + _text1 + _text3) remoteExecCall ["hint", 0];
