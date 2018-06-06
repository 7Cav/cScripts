/*
 * Author: CPL.Brostrom.A
 * This function adds the get out right and left function to all supported helos.
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

INFO("Adding eventhandles for jump to all c130");

["RHS_C130J", "init", {
    [(_this select 0)] call FUNC(addJump);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
