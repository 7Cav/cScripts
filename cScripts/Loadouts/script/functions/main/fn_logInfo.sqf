#include "..\script_component.hpp"
params ["_message"];

if ((GVAR(log) find ["Info", _message]) == -1) then {
    diag_log formatText ["[Poppy] Info: %1", _message];
    if (GVAR(inDevMode) || {getNumber (missionConfigFile >> "CfgPoppy" >> "forceShowInfos") == 1}) then {
        GVAR(log) pushBack ["Info", _message];
    };
};
