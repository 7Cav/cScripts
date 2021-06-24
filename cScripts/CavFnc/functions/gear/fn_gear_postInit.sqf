#include "..\script_component.hpp"

if (isServer) then {
    call EFUNC(gear,synchGroupIDs);
    // DONT TOUCH MY RADIOS
    //if (EGVAR(patches,usesACRE)) then {
    //    ["Setting up ACRE preset for server...", "Gear Radio"] call FUNC(info);
    //    call EFUNC(gear,setupRadios);
    //};
};

if (!hasInterface) exitWith {};

["ace_arsenal_displayClosed", {
    player call EFUNC(gear,saveLoadout);
}] call CBA_fnc_addEventHandler;
