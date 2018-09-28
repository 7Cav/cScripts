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
 * call cScripts_fnc_initStartupHint
 * [60,"Operation","My custom Mission!","I have design this mission!"] call cScripts_fnc_initStartupHint
 *
 * Public: No
 */

waitUntil {!isNull player && player == player};

params [["_delay", 30, [0]], ["_missionType", 1, [1]], ["_setCustomTopic", "My custom Mission!", [""]], ["_setCustomText", "I have design this mission!", [""]]];

// String table
private _title_RedLight         = "<t color='#ff0000' size='1.2' shadow='1' shadowColor='#000000' align='center'>RED LIGHT!</t><br />";
private _title_GreenLight       = "<t color='#00cd00' size='1.2' shadow='1' shadowColor='#000000' align='center'>GREEN LIGHT!</t><br />";

private _text_RedLight_P1       = "<t font='PuristaMedium' size='1.1'>Hold comms and stand still.</t><br /><br />";
private _text_RedLight_P2       = "While waiting you can always read the <t color='#ffc61a'>OPORD</t> and <t color='#ffc61a'>SOI</t> again. Because you have already read it once.<br />";
private _text_RedLight_P3       = "If you need to call in <t color='#ffc61a'>support</t> or need other kind of help during the mission see the topic <t color='#ffc61a'>7th Cavalry</t> or <t color='#ffc61a'>Radio Reports</t> on the map screen.<br />";
private _text_GreenLight_P1     = "<t font='PuristaMedium' size='1.1'>You may now move!</t>";


private _text_Training_P1       = "<t font='PuristaMedium' size='1.1'>S3 Training Mission</t><br /><br />";
private _text_Training_P2       = format ["Welcome <t color='#ffc61a'>%1</t>!<br />Keep your weapon at <t color='#ffc61a'>safe</t> and your finger away from the trigger.<br /><br />", profileName];
private _text_Training_P3       = "Listen to the instructor but the most important part...<br />";

private _textCustom_P1          = format ["<t font='PuristaMedium' size='1.1'>%1</t><br /><br />", _setCustomTopic];
private _textCustom_P2          = format ["%1<br />", _setCustomText];

private _text_EasterEgg_1       = "<br /><br />Blame Tully if stuff doesn't work.<br />";
private _text_EasterEgg_2       = "<br /><br />Blame Argus if stuff doesn't work.<br />";
private _text_EasterEgg_3       = "<br /><br />Blame Brostrom if stuff doesn't work on this one.<br />";
private _text_EasterEgg_4       = "<br /><br />Blame Carter if stuff doesn't work.<br />";
private _text_EasterEgg_Author  = format ["Blame %1 if stuff doesn't work.<br />", (getText getMissionConfig "author")];

private _title_Welcome          = "<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>Welcome!</t><br />";
private _text_HaveFun_P         = "<t font='PuristaMedium' size='1.1'>Have fun!</t>";

// Images
private _image_Cross            = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
private _image_Shield           = "<br /><br /><img size='5' image='cScripts\Data\Images\7CAV_LOGO_00.paa' align='center'/><br /><br />";


// Run hints

#ifdef DEBUG_MODE
    ["Running mission startup hint."] call FUNC(logInfo);
#endif

switch (_missionType) do {
    case (1): {
        if (didJIP) exitWith {
            #ifdef DEBUG_MODE
                ["Mission type is operation hint will not run"] call FUNC(logInfo);
            #endif
        };
        hint parseText (_title_RedLight + _text_RedLight_P1 + _image_Cross);
        systemChat "Hold comms and stand still!";
        sleep 1;
        hintSilent parseText (_title_RedLight + _text_RedLight_P1 + _image_Cross + _text_RedLight_P2);
        sleep (_delay * 0.5);
        hintSilent parseText (_title_RedLight + _text_RedLight_P1 + _image_Cross + _text_RedLight_P3);
        sleep (_delay * 0.5);
        hint parseText (_title_GreenLight + _text_GreenLight_P1 + _image_Shield + _text_HaveFun_P);
        sleep 8;
        hintSilent parseText (_title_GreenLight + _text_GreenLight_P1 + _image_Shield + _text_HaveFun_P + _text_EasterEgg_1);
        sleep 1.5;
        hintSilent "";
    };
    case (0): {
        if (didJIP) exitWith {
            #ifdef DEBUG_MODE
                ["Mission type is training hint will not run"] call FUNC(logInfo);
            #endif
        };
        hint parseText (_title_Welcome + _text_Training_P1 + _image_Cross);
        sleep 1;
        hintSilent parseText (_title_Welcome + _text_Training_P1 + _image_Cross + _text_Training_P2);
        sleep (_delay * 0.5);
        hintSilent parseText (_title_Welcome + _text_Training_P1 + _image_Cross + _text_Training_P3 + _text_HaveFun_P);
        sleep (_delay * 0.5);
        hintSilent parseText (_title_Welcome + _text_Training_P1 + _image_Cross + _text_Training_P3 + _text_HaveFun_P + _text_EasterEgg_4);
        sleep 1.5;
        hintSilent "";
    };
    case (2): {
        hint parseText (_title_Welcome + _textCustom_P1 + _image_Cross);
        sleep 1;
        hintSilent parseText (_title_Welcome + _textCustom_P1 + _image_Cross + _textCustom_P2 + _text_HaveFun_P);
        sleep (_delay);
        hintSilent parseText (_title_Welcome + _textCustom_P1 + _image_Cross + _textCustom_P2 + _text_HaveFun_P + _text_EasterEgg_Author);
        sleep 1.5;
        hintSilent "";
    };
};