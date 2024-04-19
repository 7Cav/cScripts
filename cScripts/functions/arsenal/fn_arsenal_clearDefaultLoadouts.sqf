#include "..\script_component.hpp";
/* 
 * Author: SGT.Brostrom.A
 * This function remove all ace arsenal default loadouts.
 *
 * Example:
 * call cScripts_fnc__arsenal_removeDefaultLoadouts
 *
 * Public: No
 */

if (!EGVAR(patches,usesACEArsenal)) exitWith {};

ace_arsenal_defaultLoadoutsList = [];
