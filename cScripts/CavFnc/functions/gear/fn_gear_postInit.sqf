#include "..\script_component.hpp"

if (isServer) then {
    if (EGVAR(patches,usesACRE) && EGVAR(Settings,enableACRE)) then {
        GVAR(Radio) = false;
        ["Setting up ACRE preset for server...", "Gear Radio"] call FUNC(info);
        call EFUNC(gear,setupRadios);
        GVAR(Radio) = true;
    };
};

if (hasInterface) then {
    ["ace_arsenal_displayClosed", {
        player call EFUNC(gear,saveLoadout);
    }] call CBA_fnc_addEventHandler;
};
