/*
 * Author: CPL.Brostrom.A
 * This scripts crate the 7th cavalry starter crate.
 * It adds equipment and some optional selections to a given object.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Quick Select Scale <STRING>   (Default: "none") ["none","alpha","bravo","charlie","ranger","medical","full"]
 * 2: ReGear action <BOOL>          (Default: true)
 * 3: Heal action <BOOL>            (Default: true)
 * 4: Insignia Selection <BOOL>     (Default: true)
 * 5: Platoon variable <BOOL>       (Default: true)
 * 6: Arsenal                       (Default: false)
 *
 * Example:
 * [this] call cScripts_fnc_doStarterCrate;
 * [this,"none",true] call cScripts_fnc_doStarterCrate;
 * [this,"none",true,true,true,false] call cScripts_fnc_doStarterCrate;
 */

#include "..\script_component.hpp";

params [
    ["_object", objNull, [objNull]],
    ["_quickSelectScale", "none"],
    ["_reGearOption", true],
    ["_reHealOption", true],
    ["_InsigniaSelectOption", true],
    ["_requirePlatoonVariable", true],
    ["_arsenal", false]
];

// If isServer call equipBase

if (isServer) then {
    [_object,_quickSelectScale,_requirePlatoonVariable] call FUNC(doStarterCrateSupplies);
};

// Make addAction Topic
_object addAction ["<img image='cScripts\Data\Icon\icon_00.paa' /> 7th Cavalry Equipment Crate", {}];

if (_arsenal) then {
    [_object, true] call ace_arsenal_fnc_initBox;
};

// Call ReGear Option
if (_reGearOption) then {
    [_object,_reHealOption] call FUNC(addReGear);
};

// Call addHeal option
if (_reHealOption) then {
    [_object] call FUNC(addHeal);
};

// Call Quick Selection
[_object,_quickSelectScale,_requirePlatoonVariable] call FUNC(initQuickSelections);

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
