#include "..\script_component.hpp"

if (isServer) then {
    [] call FUNC(synchGroupIDs);
    if (EGVAR(patches,usesACRE)) then { [] call FUNC(setupRadios) };
};

if (!hasInterface) exitWith {};

["ace_arsenal_displayClosed", {
    player setVariable [QEGVAR(Gear,savedLoadout), getUnitLoadout [player, true]];
    player setVariable [QEGVAR(Gear,Loadout), QEGVAR(Gear,SavedArsenalLoadout)];
    #ifdef DEBUG_MODE
        ["ACE Arsenal loadout saved."] call FUNC(logInfo);
    #endif
}] call CBA_fnc_addEventHandler;
