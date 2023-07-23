#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 * call cScripts_fnc_Doc_Radio
 */

if (!EGVAR(Patches,usesACRE) && !EGVAR(Patches,usesTFAR)) exitWith {};


// ACRE
if (EGVAR(patches,usesACRE)) exitWith {
    private _lrChannelList = parseSimpleArray EGVAR(Settings,setRadioChannelNames);
    private _srChannelList = ["GODFATHER-5", "GODFATHER-6", "GODFATHER-7", "", "ATLAS-1", "ATLAS-2", "ATLAS-3", "ATLAS-4", "ATLAS-5", "ATLAS-6", "ATLAS-7", "", "PEGASUS-6", "PEGASUS-5", "PEGASUS-7", "", "BUFFALO", "BUFFALO-1", "BUFFALO-2", "BUFFALO-3", "BUFFALO-4", "", "GRIZZLY", "GRIZZLY-1", "GRIZZLY-2", "GRIZZLY-3", "", "RAVEN", "RAVEN-1", "RAVEN-2", "RAVEN-3", "RAVEN-4", "", "SPARROW", "SPARROW-1", "SPARROW-1", "SPARROW-1", "SPARROW-1", "", "RAIDER", "RAIDER-1", "RAIDER-2", "", "EAGLE", "EAGLE-1", "EAGLE-2", "EAGLE-3", "", "LIGHTNING", "LIGHTNING-1", "LIGHTNING-2", "LIGHTNING-3", "", "RAPTOR", "RAPTOR-1", "RAPTOR-2", "RAPTOR-3", "", "TITAN", "TITAN-1", "TITAN-2", "TITAN-3", "TITAN-4", "", "HOG", "HOG-2", "HOG-3", "HOG-4", "", "SABER-1", "SABER-2", "SABER-3", "SABER-4", "", "VIKING-1", "VIKING-2", "VIKING-3", "VIKING-4", "VIKING-5", "VIKING-6", "VIKING-7", "", "BANDIT-1", "BANDIT-2", "BANDIT-3", "BANDIT-4", "BANDIT-5", "BANDIT-6", "BANDIT-7", "", "MISFIT-1", "MISFIT-2", "MISFIT-3", "MISFIT-4", "MISFIT-5", "MISFIT-6", "MISFIT-7"];

    private _number = 0;
    private _preDefFreq = 9.242;
    private _lrFormatList = _lrChannelList apply { 
        _number = _number + 1; 
            private _text = if (EGVAR(Settings,enableRadios)) then {
            format ["    <font color='#ffc61a'>%1</font> - %2<br/>                <font color='#808080'>Frequency: TX %3, RX %3</font>", _number, _x, _preDefFreq + _number]; 
        } else {
            format ["    <font color='#ffc61a'>%1</font> - %2", _number, _x];
        };
        _text
    };

    private _srFormatList = _srChannelList apply {
        private _squadName = _x;
        private _channel = [_x, "ACRE_PRC343"] call FUNC(getRadioChannel);
        _channelName = [_channel] call FUNC(getChannelName);
        private _name = _x; 
        private _text = if !(_squadName == "") then {
            format ["    <font color='#ffc61a'>%1</font> - %2", _squadName, _channelName]; 
        } else {
            format [""]; 
        };
        _text
    };

    private _lrText = _lrFormatList joinString "<br/>"; 
    player setVariable [QEGVAR(document,longrange_channels), compileFinal str _lrText];

    _srText = _srFormatList joinString "<br/>"; 
    player setVariable [QEGVAR(document,shortrange_channels), compileFinal str _srText];

    player createDiaryRecord ["7Cav", ["Radio", format ["<font size=20>%1</font><br/>%2", "Long Range Radio", call (player getVariable QEGVAR(document,longrange_channels))]], taskNull, "", false];
    player createDiaryRecord ["7Cav", ["Radio", format ["<font size=20>%1</font><br/>%2", "Radio Channels", call (player getVariable QEGVAR(document,shortrange_channels))]], taskNull, "", false];

    if (EGVAR(Settings,enableRadios)) then {
        player createDiaryRecord ["7Cav", ["Radio", format ["<font size=20>%1</font><br/>%2", "Radio", "    <execute expression='[] call cScripts_fnc_clearRadioIds'>Reprogram Radio</execute> - Use to reset your radios frequencies and channels."]], taskNull, "", false];
    };
};


// TFAR
if (EGVAR(patches,usesTFAR)) exitWith {
    private _channelNameList = ["GODFATHER-5", "GODFATHER-6", "GODFATHER-7", "", "ATLAS-1", "ATLAS-2", "ATLAS-3", "ATLAS-4", "ATLAS-5", "ATLAS-6", "ATLAS-7", "", "PEGASUS-6", "PEGASUS-5", "PEGASUS-7", "", "BUFFALO", "BUFFALO-1", "BUFFALO-2", "BUFFALO-3", "BUFFALO-4", "", "GRIZZLY", "GRIZZLY-1", "GRIZZLY-2", "GRIZZLY-3", "", "RAVEN", "RAVEN-1", "RAVEN-2", "RAVEN-3", "RAVEN-4", "", "SPARROW", "SPARROW-1", "SPARROW-1", "SPARROW-1", "SPARROW-1", "", "RAIDER", "RAIDER-1", "RAIDER-2", "", "EAGLE", "EAGLE-1", "EAGLE-2", "EAGLE-3", "", "LIGHTNING", "LIGHTNING-1", "LIGHTNING-2", "LIGHTNING-3", "", "RAPTOR", "RAPTOR-1", "RAPTOR-2", "RAPTOR-3", "", "TITAN", "TITAN-1", "TITAN-2", "TITAN-3", "TITAN-4", "", "HOG", "HOG-2", "HOG-3", "HOG-4", "", "SABER-1", "SABER-2", "SABER-3", "SABER-4", "", "VIKING-1", "VIKING-2", "VIKING-3", "VIKING-4", "VIKING-5", "VIKING-6", "VIKING-7", "", "BANDIT-1", "BANDIT-2", "BANDIT-3", "BANDIT-4", "BANDIT-5", "BANDIT-6", "BANDIT-7", "", "MISFIT-1", "MISFIT-2", "MISFIT-3", "MISFIT-4", "MISFIT-5", "MISFIT-6", "MISFIT-7"];

    private _channelFormatList = _channelNameList apply { 
        private _SRRadio = [_x, "SR"] call FUNC(getRadioChannel);
        private _LRRadio = [_x, "LR"] call FUNC(getRadioChannel);
        private _text = if !(_x == "") then {
            format ["    <font color='#ffc61a'>%1</font> -    SR: %2,    LR: %3 ", _x, str _SRRadio, str _LRRadio]; 
        } else {
            ""
        };
        _text
    };
    
    private _text = _channelFormatList joinString "<br/>"; 
    player setVariable [QEGVAR(document,radioChannels), compileFinal str _text];

    player createDiaryRecord ["7Cav", ["Radio", format ["<font size=20>%1</font><br/>%2", "Radio Channels", call (player getVariable QEGVAR(document,radioChannels))]], taskNull, "", false];
};

["Fatal", "Radio", true] call FUNC(error);