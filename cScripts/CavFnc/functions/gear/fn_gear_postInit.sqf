#include "..\script_component.hpp"

if (isServer) then {
    call EFUNC(gear,synchGroupIDs);
    if (EGVAR(patches,usesACRE)) then {
        if (EGVAR(Settings,enableACRE)) then {
            [{[] call acre_api_fnc_isInitialized}, {
                GVAR(Radio) = false;
                ["Setting up ACRE preset for server...", "Gear Radio"] call FUNC(info);
                call EFUNC(gear,setupRadios);
                GVAR(Radio) = true;
            }, [_player]] call CBA_fnc_waitUntilAndExecute;
        };
    };
};

if (!hasInterface) exitWith {};

["ace_arsenal_displayClosed", {
    player call EFUNC(gear,saveLoadout);
}] call CBA_fnc_addEventHandler;
