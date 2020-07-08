#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandelers chaning the inventory of all crates.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initSupply
 *
 * Public: No
 */

if (!isServer) exitWith {};

#ifdef DEBUG_MODE
    ["Applying EH init to supply crates to handle inventory and settings."] call FUNC(logInfo);
#endif
