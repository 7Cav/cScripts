/*
 * Author: CPL.Brostrom.A 
 * This populats a given object with items and commands used during operations.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Quick Select Scale <STRING>   (Default: "none") ["none","lite","medium","full","ranger"]
 * 2: ReGear action <BOOL>          (Default: true)
 * 3: Heal action <BOOL>            (Default: true)
 * 4: Insignia Selection <BOOL>     (Default: true)
 * 5: Supply Size <NUMBER>          (Default: 1)
 *
 * Example:
 * [this] call cScripts_fnc_doStarterCrate;
 * [this,"none",true] call cScripts_fnc_doStarterCrate;
 * [this,"none",true,true,true,1] call cScripts_fnc_doStarterCrate;
 */

#include "..\script_component.hpp";

params [
    ["_object", objNull, [objNull]],
    ["_quickSelectScale", "none"],
    ["_reGearOption", true],
    ["_reHealOption", true],
    ["_InsigniaSelectOption", true],
    ["_supplieSize", 1]
];

// If isServer call equipBase

if (isServer) then {
    [_object,_supplieSize] call FUNC(doStarterCrateSupplies);
};

// Make addAction Topic
_object addAction ["<img image='cScripts\Data\Icon\icon_00.paa' /> 7th Cavalry Equipment Crate", {}];

// Call ReGear Option
if (_reGearOption) then {
    [_object,_reHealOption] call FUNC(addReGear);
};

// Call addHeal option
if (_reHealOption) then {
    [_object] call FUNC(addHeal);
};

// Call Quick Selection
[_object,_quickSelectScale] call FUNC(initQuickSelections);

// Call Insignia Selection
if (_InsigniaSelectOption) then {
[_object] call FUNC(initInsigniaSelections);
};

// Make end of options line.
_object addAction ["---", {}];

// Disable slingload
_object enableRopeAttach false;

// Make object not loadable in ACE
[_object, -1] call ace_cargo_fnc_setSize;
