#include "..\script_component.hpp"
params [
    "_message",
    ["_isForced",false]
];

if ((getNumber (missionConfigFile >> "CfgSettings" >> "isDebugMode") == 1) or (_isForced)) then {
    diag_log formatText ["[cScripts] INFO: %1", _message];
};
