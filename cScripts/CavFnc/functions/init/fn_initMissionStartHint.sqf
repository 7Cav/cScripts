/*
 * Author: CPL.Brostrom.A 
 * This function give a cupple of hints on mission start.
 * This is to inform the players to stand still on mission start to avoid issus.
 *
 * Arguments:
 *
 * Example:
 *  call cScripts_fnc_initMissionStartHint;
 *  [60] call cScripts_fnc_initMissionStartHint;
 */

if (didJIP) exitWith {};
waitUntil {!isNull player && player == player};

#include "..\script_component.hpp";

params [["_time", 60]];

// Write text
_title1  = "<t color='#ff0000' size='1.2' shadow='1' shadowColor='#000000' align='center'>RED LIGHT!</t><br />";
_title2  = "<t color='#00cd00' size='1.2' shadow='1' shadowColor='#000000' align='center'>GREEN LIGHT!</t><br />";
_image0  = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
_image1  = "<br /><br /><img size='5' image='cScripts\Data\Images\7CAV_LOGO_00.paa' align='center'/><br /><br />";
_text0 = "<t font='PuristaMedium' size='1.1'>Hold comms and stand still.</t><br /><br />";
_text1 = "While waiting you can always read the <t color='#ffc61a'>OPORD</t> and <t color='#ffc61a'>SOI</t> again. Because you have already read it once.<br />";
_text2 = "If you need to call in <t color='#ffc61a'>support</t> or need other kind of help during the mission see the topic <t color='#ffc61a'>7th Cavalry</t> or <t color='#ffc61a'>Radio Reports</t> on the map screen.<br />";
_text3a = "<t font='PuristaMedium' size='1.1'>You may now move!</t>";
_text3b = "<t font='PuristaMedium' size='1.1'>Have fun!</t>";
_text3c = "<br /><br />Blame Tully if stuff doesn't work.<br />";


// Run hints
hint parseText (_title1 + _text0 + _image0);
sleep 1;
hint parseText (_title1 + _text0 + _image0 + _text1);
sleep (_time * 0.5);
hint parseText (_title1 + _text0 + _image0 + _text2);
sleep (_time * 0.5);
hint parseText (_title2 + _text3a + _image1 + _text3b);
sleep 8;
hint parseText (_title2 + _text3a + _image1 + _text3b + _text3c);
sleep 1.5;
hint "";
sleep 60;
hint ""; // Fail safe in case people get the hint stuck