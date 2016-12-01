/*
 * Author: CPL.Brostrom.A 
 * This is being replaced with addStarterCrateSupplies.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Scale cargo ammount <NUMBER> (Default: 1)
 *
 * Example:
 * [this,0.5] call cScripts_fnc_equipBase;
 * [this,1] call cScripts_fnc_equipBase;
 */

#include "..\script_component.hpp";

params [["_crate", objNull, [objNull]],["_quaScale",1]];

[_crate,_quaScale] call FUNC(addStarterCrate);
