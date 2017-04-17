/*
 * Author: CPL.Brostrom.A 
 * This function give a cupple of hints on mission start.
 *
 * Arguments:
 * 0: Topic <STRING>
 * 1: Text <STRING>
 * 2: Time <NUMBER> (Optional)  (Default: 15)
 *
 * Example:
 *  call cScripts_fnc_initCustomStartHint;
 *  ["My mission", "Description text.", 10] call cScripts_initCustomStartHint;
 */

//if (didJIP) exitWith {};
waitUntil {!isNull player && player == player};

#include "..\script_component.hpp";

params [
    ["_setTopic", "My custom Mission!"],
    ["_setText", "I have design this mission!"],
    ["_time", "15"]
];

// Write text
_title  = "<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>Welcome!</t><br />";
_image  = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
_text0 = format["<t font='PuristaMedium' size='1.1'>%1</t><br /><br />", _setTopic];
_text1 = format["%1<br />", _setText];
_textHaveFun = "<t font='PuristaMedium' size='1.1'>Have fun!</t>";
_textEasterEgg = "<br /><br />Blame Brostrom if stuff doesn't work on this one.<br />";


// Run hints
hint parseText (_title + _text0 + _image);
sleep 1;
hint parseText (_title + _text0 + _image + _text1 + _textHaveFun);
sleep (_time);
hint parseText (_title + _text0 + _image + _text1 + _textHaveFun + _textEasterEgg);
sleep 1.5;
hint "";
sleep 60;
hint ""; // Fail safe in case people get the hint stuck
