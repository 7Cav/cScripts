#include "..\script_component.hpp";
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
/*
#include "..\script_component.hpp";

INFO("Applying init for player");

params [
    ["_unit",""],
    ["_squadName", ""],
    ["_srChannel", 0],
    ["_lrChannel", 0]
];

// setSquadName
if (_squadName != "") then {
    [group _unit, _squadName] call CBA_fnc_setCallsign;
};

// Set the acre radio
if (_srChannel != 0) then {
    {
        [{
            if ((call acre_api_fnc_isInitialized) && ([(items player), "ACRE_PRC343"] call acre_api_fnc_hasKindOfRadio)) then {true};
        }, {
            params ["","","_srChannel"];
            [["ACRE_PRC343"] call acre_api_fnc_getRadioByType, _srChannel] call acre_api_fnc_setRadioChannel;
        }, _this] call CBA_fnc_waitUntilAndExecute;
    } forEach units group _unit;
};

INFO("Done Applying init for player");
*/