/*
 * Author: CPL.Brostrom.A 
 * This function adds the get out right and left function to all supported helos.
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_initHelo;
 */
 
#include "..\script_component.hpp";

if (isServer) then {
    ["RHS_UH60M", "init", {
        [(_this select 0)] call FUNC(addGetOutHelo);
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    
    ["B_Heli_Transport_01_F", "init", {
        [(_this select 0)] call FUNC(addGetOutHelo);
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    
    ["RHS_UH1Y", "init", {
        [(_this select 0)] call FUNC(addGetOutHelo);
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
};