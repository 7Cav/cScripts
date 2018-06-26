/*
 * Author: CPL.Brostrom.A
 * This function add a jump out action to all C130 aircrafts
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initHelo;
 */

#include "..\script_component.hpp";

if (!isServer) exitwith {};

INFO("Adding eventhandles to handle jump to all C130");

["RHS_C130J", "init", {
    [(_this select 0)] call FUNC(addJump);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
