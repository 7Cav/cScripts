/*
 * Author: CPL.Brostrom.A
 * This function add eventhandelers adding get out right and left functionality to all helicotpers.
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["example"] call cScripts_fnc_initHelo
 *
 * Public: Yes
 */

 if (!isServer) exitWith {};
 #include "..\script_component.hpp";

INFO("Adding eventhandles for get out right and left to all helicopters");

["RHS_UH60M", "init", {
    [(_this select 0)] call FUNC(addGetOutHelo);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Heli_Transport_01_F", "init", {
    [(_this select 0)] call FUNC(addGetOutHelo);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_UH1Y", "init", {
    [(_this select 0)] call FUNC(addGetOutHelo);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
