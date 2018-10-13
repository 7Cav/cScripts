#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function give all players a hint on mission start only.
 *
 * Arguments:
 * 0: Time <NUMBER> (Default; 60)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initTrainingStartHint
 * [60] call cScripts_fnc_initTrainingStartHint
 *
 * Public: No
 */

if (didJIP) exitWith {};
waitUntil {!isNull player && player == player};

#ifdef DEBUG_MODE
    ["Running training startup hint."] call FUNC(logInfo);
#endif

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
hintSilent parseText (_title + _text0 + _image + _text1 + _text2 + _textHaveFun);
sleep (_time);
hintSilent parseText (_title + _text0 + _image + _text1 + _text2 + _textHaveFun + _textEasterEgg);
sleep 1.5;
hintSilent "";
sleep 60;
hintSilent ""; // Fail safe in case people get the hint stuck
