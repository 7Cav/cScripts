/*
 * Author: CPL.Brostrom.A
 * This function give all users a hint at mission start.
 *
 * Arguments:
 *
 * Example:
 *  call cScripts_fnc_initTrainingStartHint;
 *  [15] call cScripts_fnc_initTrainingStartHint;
 */

if (didJIP) exitWith {};
waitUntil {!isNull player && player == player};

#include "..\script_component.hpp";

params [["_time", 15]];

// Write text
private _title  = "<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>Welcome!</t><br />";
private _image  = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
private _text0 = "<t font='PuristaMedium' size='1.1'>S3 Training Mission</t><br /><br />";
private _text1 = "Welcome to this training mission Trooper!<br />";
private _text2 = "Listen to your instructor.<br /><br />";
private _textHaveFun = "<t font='PuristaMedium' size='1.1'>Have fun!</t>";
private _textEasterEgg = "<br /><br />Blame Argus if stuff doesn't work.<br />";


// Run hints
hint parseText (_title + _text0 + _image);
sleep 1;
hint parseText (_title + _text0 + _image + _text1 + _text2 + _textHaveFun);
sleep (_time);
hint parseText (_title + _text0 + _image + _text1 + _text2 + _textHaveFun + _textEasterEgg);
sleep 1.5;
hint "";
sleep 60;
hint ""; // Fail safe in case people get the hint stuck
