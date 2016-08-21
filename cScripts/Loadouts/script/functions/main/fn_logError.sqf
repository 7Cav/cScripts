#include "..\script_component.hpp"
params ["_message"];

if ((GVAR(log) find ["Error", _message]) == -1) then {
    diag_log formatText ["[Poppy] Error: %1", _message];
    if (GVAR(inDevMode) || {getNumber (missionConfigFile >> "CfgPoppy" >> "forceShowErrors") == 1}) then {
        GVAR(log) pushBack ["Error", _message];
    };
};
