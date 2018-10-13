#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function show all players, as well as JIP players, a custom mission hint when conected.
 *
 * Arguments:
 * 0: Header <STRING>
 * 1: Text <STRING>
 * 2: Seconds to show <NUMBER> (Optional) (Default; 15)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["My custom Mission!","I have design this mission!"] call cScripts_fnc_initCustomStartHint
 * ["My custom Mission!","I have design this mission!",15] call cScripts_fnc_initCustomStartHint
 *
 * Public: No
 */

waitUntil {!isNull player && player == player};

#ifdef DEBUG_MODE
    ["Running custom startup hint."] call FUNC(logInfo);
#endif

params [
    ["_setTopic", "My custom Mission!"],
    ["_setText", "I have design this mission!"],
    ["_time", "15"]
];

// Write text
private _title  = "<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>Welcome!</t><br />";
private _image  = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
private _text0 = format["<t font='PuristaMedium' size='1.1'>%1</t><br /><br />", _setTopic];
private _text1 = format["%1<br />", _setText];
private _textHaveFun = "<t font='PuristaMedium' size='1.1'>Have fun!</t>";
private _textEasterEgg = "<br /><br />Blame Brostrom if stuff doesn't work on this one.<br />";


// Run hints
hint parseText (_title + _text0 + _image);
sleep 1;
hintSilent parseText (_title + _text0 + _image + _text1 + _textHaveFun);
sleep (_time);
hintSilent parseText (_title + _text0 + _image + _text1 + _textHaveFun + _textEasterEgg);
sleep 1.5;
hintSilent "";
sleep 60;
hintSilent ""; // Fail safe in case people get the hint stuck
