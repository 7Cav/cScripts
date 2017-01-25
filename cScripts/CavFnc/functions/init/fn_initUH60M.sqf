/*
 * Author: CPL.Brostrom.A 
 * This refits a given vehicle with a more Cav suited supplies equipment.
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_initUH60M;
 */
 
#include "..\script_component.hpp";

if (isServer) then {

    ["RHS_UH60_Base", "init", {
        [(_this select 0)] call FUNC(addGetOutUH60);
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
};