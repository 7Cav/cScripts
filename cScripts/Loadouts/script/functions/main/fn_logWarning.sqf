#include "..\script_component.hpp"
params ["_message"];

if ((GVAR(log) find ["Warning", _message]) == -1) then {
    diag_log formatText ["[Poppy] Warning: %1", _message];
    if (GVAR(inDevMode) || {getNumber (missionConfigFile >> "CfgPoppy" >> "forceShowWarnings") == 1}) then {
        GVAR(log) pushBack ["Warning", _message];
    };
};
