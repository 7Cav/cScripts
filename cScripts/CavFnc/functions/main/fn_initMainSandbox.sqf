/*
 * Author: CPL.Brostrom.A 
 * This adds a sandbox version of a cavbox used for missions.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initMainSandbox;
 */

#include "..\script_component.hpp";

params ["_object"];

if (isServer) then {
   [_object] call FUNC(equipBase);
};

//make Topic
_object addAction ["<img image='cScripts\Data\Icon\icon_00.paa' /> 7th Cavalry Equipment Crate", {}];

//make ReGear and Arsenal Option
[_object] call FUNC(addReGear);
[_object] call FUNC(addArsenal);

//make Quick Selection
[_object] call FUNC(initQuickSelections);

//make Insignia Selection
[_object] call FUNC(initInsigniaSelections);

_object addAction ["---", {}];

// Make object not loadable
[_object, false, 999] call ace_cargo_fnc_makeLoadable;
