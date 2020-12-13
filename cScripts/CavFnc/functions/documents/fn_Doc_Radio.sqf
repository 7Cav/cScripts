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

if !(EGVAR(patches,usesACRE)) exitWith {};
private _channelsLr = parseSimpleArray EGVAR(Settings,setRadioChannelNames);
private _channelsSr = if (EGVAR(Settings,setMissionType) >= 3) then {["ATLAS-1", "ATLAS-2", "ATLAS-3", "ATLAS-4", "ATLAS-5", "ATLAS-6", "SABER-1", "SABER-2", "SABER-3", "SABER-4", "SABER-7", "GUNSLINGER-1", "GUNSLINGER-2", "GUNSLINGER-3", "GUNSLINGER-4", "GUNSLINGER-5", "GUNSLINGER-6", "GUNSLINGER-7"] } else { ["GODFATHER-5", "GODFATHER-6", "GODFATHER-7", "PEGASUS-2", "", "ATLAS-1", "ATLAS-2", "ATLAS-3", "ATLAS-4", "ATLAS-5", "ATLAS-6", "", "BANDIT-1", "BANDIT-2", "BANDIT-3", "BANDIT-4", "BANDIT-5", "BANDIT-6", "BANDIT-7", "", "MISFIT-1", "MISFIT-2", "MISFIT-3", "MISFIT-4", "MISFIT-5", "MISFIT-6", "MISFIT-7", "", "BUFFALO-1", "BUFFALO-2", "BUFFALO-3", "BUFFALO-4", "", "GRIZZLY-1", "GRIZZLY-2", "GRIZZLY-3", "", "RAVEN-1", "RAVEN-2", "RAVEN-3", "RAVEN-4", "", "EAGLE-1", "EAGLE-2", "EAGLE-3", "", "HOG-1", "HOG-2", "HOG-3", "HOG-4", "", "RAIDER-1", "RAIDER-2", "", "TITAN-1", "TITAN-2", "TITAN-3", "TITAN-4", "", "SABER-1", "SABER-2", "SABER-3", "SABER-4", "SABER-7", "", "VIKING-1", "VIKING-2", "VIKING-3", "VIKING-4", "VIKING-5", "VIKING-6", "VIKING-7"]};

private _number = 0;
_channelsLr = _channelsLr apply { 
    _number = _number + 1; 
    private _name = _x; 
    _x = format ["    <font color='#ffc61a'>%1</font> - %2", _number, _name]; 
    _x
};

_channelsSr = _channelsSr apply {
    private _squadName = _x;
    private _channel = [_x, "ACRE_PRC343"] call FUNC(getRadioChannel);
    _channelName = [_channel] call FUNC(getChannelName);
    private _name = _x; 
    //private _openChannel = format ["<execute expression='[[""ACRE_PRC343""] call acre_api_fnc_getRadioByType, %1] call acre_api_fnc_setRadioChannel; ""Channel changed<br/>%2"" call CBA_fnc_notify;'>%3</execute>", _channel, _channelName, _squadName]; 
    _x = if !(_squadName == "") then {
        format ["    <font color='#ffc61a'>%1</font> - %2", _squadName, _channelName]; 
    } else {
        format [""]; 
    };
    _x
};

_channelsLr = _channelsLr joinString "<br/>"; 
player setVariable [QEGVAR(document,longrange_channels), compileFinal str _channelsLr];

_channelsSr = _channelsSr joinString "<br/>"; 
player setVariable [QEGVAR(document,shortrange_channels), compileFinal str _channelsSr];

player createDiaryRecord ["7Cav", ["Radio", format ["<font size=20>%1</font><br/>%2", "Long Range Radio", call (player getVariable QEGVAR(document,longrange_channels))]], taskNull, "", false];
player createDiaryRecord ["7Cav", ["Radio", format ["<font size=20>%1</font><br/>%2", "Radio Channels", call (player getVariable QEGVAR(document,shortrange_channels))]], taskNull, "", false];
