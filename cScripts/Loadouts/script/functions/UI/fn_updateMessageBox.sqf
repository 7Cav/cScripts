#include "..\script_component.hpp"
params ["_display"];

// - Title Buttons ----------------------------------------

if (GVAR(logIndex) > 0) then {
    (_display displayCtrl 10) ctrlShow true;
    (_display displayCtrl 22) ctrlShow true;
} else {
    (_display displayCtrl 10) ctrlShow false;
    (_display displayCtrl 22) ctrlShow false;
};

if (count GVAR(log) - 1 > GVAR(logIndex)) then {
    (_display displayCtrl 11) ctrlShow true;
    (_display displayCtrl 12) ctrlShow false;
    (_display displayCtrl 23) ctrlShow true;
    (_display displayCtrl 24) ctrlShow false;
} else {
    (_display displayCtrl 11) ctrlShow false;
    (_display displayCtrl 12) ctrlShow true;
    (_display displayCtrl 23) ctrlShow false;
    (_display displayCtrl 24) ctrlShow true;
};

// - Message ----------------------------------------------

(_display displayCtrl 20) ctrlSetText (GVAR(log) select GVAR(logIndex) select 0);
(_display displayCtrl 21) ctrlSetText (GVAR(log) select GVAR(logIndex) select 1);

switch (GVAR(log) select GVAR(logIndex) select 0) do {
    case "Warning": {
        (_display displayCtrl 20) ctrlSetTextColor [1, 0.78, 0.12, 1];
    };
    case "Error": {
        (_display displayCtrl 20) ctrlSetTextColor [0.81, 0.07, 0.15, 1];
    };
    default {
        (_display displayCtrl 20) ctrlSetTextColor [1, 1, 1, 1];
    };
};
