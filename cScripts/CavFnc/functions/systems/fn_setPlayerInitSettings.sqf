/*
 * Author: CPL.Brostrom.A
 * This function is used to handle player group and radio cahnnels
 *
 * Arguments:
 * 0: Player <STRING>
 *
 * Example:
 * [this,"Charlie 1",1] call cScripts_fnc_setPlayerInitSettings;
 */

#include "..\script_component.hpp";

INFO("Applying init for player");

params [
    ["_player",""],
    ["_squadName", "true"],
    ["_squadChannel", 0]
];

// setSquadName
if (_squadName != "") then {
    [group _player, _squadName] call CBA_fnc_setCallsign;
};

// Set the acre radio
//waitUntil { ([] call acre_api_fnc_isInitialized) };
if (_squadChannel != 0) then {
    {
        [["ACRE_PRC343"] call acre_api_fnc_getRadioByType, _squadChannel] call acre_api_fnc_setRadioChannel;
    } forEach units group _player;
};

INFO("Done Applying init for player");
