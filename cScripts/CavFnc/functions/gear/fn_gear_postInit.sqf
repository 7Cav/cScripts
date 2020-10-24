#include "..\script_component.hpp"

if (isServer) then {
    [] call EFUNC(gear,synchGroupIDs);
    if (EGVAR(patches,usesACRE)) then { [] call EFUNC(gear,setupRadios) };
};

if (!hasInterface) exitWith {};

["ace_arsenal_displayClosed", {
    [player] call EFUNC(gear,saveLoadout);
}] call CBA_fnc_addEventHandler;
