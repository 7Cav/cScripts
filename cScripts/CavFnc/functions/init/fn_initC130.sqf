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

if (!isServer) exitwith {};

INFO("Adding eventhandles for get out right and left to all helicopters");

["RHS_C130J", "init", {
    [(_this select 0)] call FUNC(addJump);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
