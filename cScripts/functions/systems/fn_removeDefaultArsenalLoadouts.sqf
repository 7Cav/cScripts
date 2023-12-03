#include "..\script_component.hpp";
/* 
 * Author: SGT.Brostrom.A
 * This function remove all ace arsenal default loadouts.
 *
 * Example:
 * call cScripts_fnc_removeDefaultArsenalLoadouts
 *
 * Public: No
 */

if (isServer) exitWith {};
if (!EGVAR(patches,usesACEArsenal)) exitWith {};

ace_arsenal_defaultLoadoutsList = [];
