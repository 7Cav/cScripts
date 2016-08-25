/*
 * Author: CPL.Brostrom.A 
 * This populats a given object with items and commands used during operations and adds a virtual arsenal.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initMainSandbox
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]]];

// If isServer call equipBase
if (isServer) then {
   [_object] call FUNC(equipBase);
};

// Make addAction Topic
_object addAction ["<img image='cScripts\Data\Icon\icon_00.paa' /> 7th Cavalry Equipment Crate", {}];

// Call ReGear and Arsenal options
[_object] call FUNC(addReGear);
[_object] call FUNC(addArsenal);

// Call Quick Selection
[_object] call FUNC(initQuickSelections);

// Call Insignia Selection
[_object] call FUNC(initInsigniaSelections);

// Make end of options line.
_object addAction ["---", {}];

// Make object not loadable in ACE
[_object, false, 999] call ace_cargo_fnc_makeLoadable;
