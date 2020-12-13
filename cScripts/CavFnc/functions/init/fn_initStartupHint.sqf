#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A, CPL.Citarelli.D
 * This function give all players a hint on mission start or every join. Based on mission type.
 *
 * Arguments:
 * 0: Time          <NUMBER>    (Default; 30)
 * 1: Mission type  <NUMBER>    (Default; 1)
 * 2: Custom Topic  <STRING>    (Default; "My custom Mission!")
 * 3: Custom Text   <STRING>    (Default; "I have design this mission!")
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initStartupHint
 * [60,1,"My custom Mission!","I have design this mission!"] call cScripts_fnc_initStartupHint
 *
 * Public: No
 */

waitUntil {!isNull player && player == player};

params [
    ["_delay", 30, [30]],
    ["_missionType", 1, [1]],
    ["_setCustomTopic", "My custom Mission!", [""]],
    ["_setCustomText", "I have design this mission!", [""]]
];

// String table
private _player_name = [player,'PROFILE'] call FUNC(getPlayerName);
private _player_rankFormal = [player,'FORMAL'] call FUNC(getPlayerRank);

private _player_role = call FUNC(getPlayerRole);

private _player_group = groupId (group player);
if (_player_group == "") then { _player_group = "in your squad" } else { _player_group = format["under the callsign <t color='#ffc61a'>%1</t>", _player_group]};

private _operationName = "Operation";
if ((getText getMissionConfig "onLoadName") != "") then {
    _operationName = (getText getMissionConfig "onLoadName");
};


private _title_Welcome_opp      = format["<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>%1</t><br /><br />", _operationName];
private _text_Operation_Blur1   = format["%1, welcome to the operation you're currently slotted in as <t color='#ffc61a'>%2</t> %3. Gather any mission critical equipment and begin your pre-combat checks.<br />", _player_rankFormal, _player_role, _player_group];

private _text_Training_P1       = "<t font='PuristaMedium' size='1.1'>S3 Training Mission</t><br /><br />";
private _text_Training_P2       = format["Welcome <t color='#ffc61a'>%1</t>!<br />Keep your weapon at <t color='#ffc61a'>safe</t> and your finger away from the trigger.<br /><br />", profileName];
private _text_Training_P3       = "Listen to the instructor but the most important part...<br />";

private _textCustom_P1          = format["<t font='PuristaMedium' size='1.1'>%1</t><br /><br />", _setCustomTopic];
private _textCustom_P2          = format["%1<br />", _setCustomText];

private _text_EasterEgg_1       = "<br /><br />Don't forget to blame Tully if the opp doesn't work.<br />";
private _text_EasterEgg_2       = "<br /><br />Blame Argus if stuff doesn't work.<br />";
private _text_EasterEgg_3       = "<br /><br />Blame Brostrom if stuff doesn't work on this one.<br />";
private _text_EasterEgg_4       = "<br /><br />Blame Carter if stuff doesn't work.<br />";
private _text_EasterEgg_Author  = format["Blame %1 if stuff doesn't work.<br />", (getText getMissionConfig "author")];

private _title_Welcome          = "<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>Welcome!</t><br />";
private _text_GL_P              = "<t font='PuristaMedium' size='1.1'>Good luck!</t>";
private _text_HaveFun_P         = "<t font='PuristaMedium' size='1.1'>Have fun!</t>";
private _text_Standby           = "<t font='PuristaMedium' size='1.1'>Standby!</t>";

private _public_alive_welcome   = format["<t color='#ffc61a' size='1.2' shadow='1' shadowColor='#000000' align='center'>%1</t><br /><br />", _operationName];
private _public_alive_body      = format["<t font='PuristaMedium' size='1.1'>Welcome, <t color='#ffc61a'>%1</t>, to the 7th Cavalry Tactical Realism 2 server! You are currently slotted in as <t color='#ffc61a'>%2</t> %3. Have fun and don't forget to read the rules!</t><br />", _player_name, _player_role, _player_group];
private _public_alive_standby   = "<t font='PuristaMedium' size='1.1'>Plese standby while we get things ready! </t>";

// Images
private _image_Cross            = "<img size='5' image='cScripts\Data\Images\7CAV_LOGO_01.paa' align='center'/><br /><br />";
private _image_Shield           = "<br /><br /><img size='5' image='cScripts\Data\Images\7CAV_LOGO_00.paa' align='center'/><br /><br />";

// Run hints
#ifdef DEBUG_MODE
    ["Running mission startup hint."] call FUNC(logInfo);
#endif

switch (_missionType) do {
    case (0): { // Custom
        hintSilent parseText (_title_Welcome + _textCustom_P1 + _image_Cross + _text_Standby);
        sleep 1;
        hintSilent parseText (_title_Welcome + _textCustom_P1 + _image_Cross + _textCustom_P2 + _text_HaveFun_P);
        sleep _delay;
        hintSilent parseText (_title_Welcome + _textCustom_P1 + _image_Cross + _textCustom_P2 + _text_HaveFun_P + _text_EasterEgg_Author);
        sleep 1.5;
        hintSilent "";
    };

    case (1): { // Operation
        if (didJIP) exitWith {
            #ifdef DEBUG_MODE
                ["Mission type is operation hint will not run"] call FUNC(logInfo);
            #endif
        };

        hint parseText (_title_Welcome_opp + _image_Cross + _text_Standby);
        sleep 1;
        hintSilent parseText (_title_Welcome_opp + _image_Cross + _text_Operation_Blur1 + _text_GL_P);
        sleep _delay;
        hintSilent parseText (_title_Welcome_opp + _image_Cross + _text_Operation_Blur1 + _text_GL_P + _text_EasterEgg_1);
        sleep 1.5;
        hintSilent "";
    };

    case (2): { // Training
        if (didJIP) exitWith {
            #ifdef DEBUG_MODE
                ["Mission type is training hint will not run"] call FUNC(logInfo);
            #endif
        };
        hint parseText (_title_Welcome + _text_Training_P1 + _image_Cross + _text_Standby);
        sleep 1;
        hintSilent parseText (_title_Welcome + _text_Training_P1 + _image_Cross + _text_Training_P2);
        sleep (_delay * 0.5);
        hintSilent parseText (_title_Welcome + _text_Training_P1 + _image_Cross + _text_Training_P3 + _text_HaveFun_P);
        sleep (_delay * 0.5);
        hintSilent parseText (_title_Welcome + _text_Training_P1 + _image_Cross + _text_Training_P3 + _text_HaveFun_P + _text_EasterEgg_4);
        sleep 1.5;
        hintSilent "";
    };

    case (3): {  // Public
    };

    case (4): {  // Public Alive
        hint parseText (_public_alive_welcome + _image_Cross + _public_alive_standby);
        sleep 4;
        hintSilent parseText (_public_alive_welcome + _image_Cross + _public_alive_body);
        sleep (_delay * 2);
        hintSilent "";
    };
};
