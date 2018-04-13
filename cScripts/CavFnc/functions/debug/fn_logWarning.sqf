#include "..\script_component.hpp"
params [
    "_message",
    ["_isForced",false]
];

if ((cScripts_Settings_setDebugMode) or (_isForced)) then {
    diag_log formatText ["[cScripts] WARNING: %1", _message];
};
