#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This scripts crate the 7th cavalry starter crate.
 * It adds equipment and some selections to a given object.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Selection type <STRING>       (Default: "none")
 * 2: ReGear action <BOOL>          (Default: true)
 * 3: Heal action <BOOL>            (Default: true)
 * 4: Insignia Selection <BOOL>     (Default: true)
 * 5: Company variable <BOOL>       (Default: true)
 * 6: Arsenal <BOOL>                (Default: false)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this] call cScripts_fnc_doStarterCrate;
 * [this,"none",true] call cScripts_fnc_doStarterCrate;
 * [this,"none",true,true,true,true,false] call cScripts_fnc_doStarterCrate;
 *
 */

params [
    ["_object", objNull, [objNull]],
    ["_quickSelectScale", "none", [""]],
    ["_reGearOption", true, [true]],
    ["_reHealOption", true, [true]],
    ["_InsigniaSelectOption", true, [true]],
    ["_allowOnlyForCompany", true, [true]],
    ["_arsenal", false, [false]]
];

#ifdef DEBUG_MODE
    [formatText["Starter Crate system applied to %1.", _object]] call FUNC(logInfo);
#endif

// Lowercase
_quickSelectScale = toLower(_quickSelectScale);

// If isServer call equipBase
if (isServer) then {
    [_object, _quickSelectScale] call FUNC(doStarterCrateSupplies);
};

// Make addAction Topic
private _fullLableCheck = (_quickSelectScale == 'none' || _quickSelectScale == 'all' || _quickSelectScale == 'full');
private _CoLableCheck = (_quickSelectScale == 'alpha' || _quickSelectScale == 'bravo' || _quickSelectScale == 'charlie');
private _crateName = if ( !(_fullLableCheck) ) then {
    if ( _CoLableCheck ) then {
        format [" %1 Co ", [_quickSelectScale] call CBA_fnc_capitalize];
    } else {
        format [" %1 ", [_quickSelectScale] call CBA_fnc_capitalize];
    };
} else { ' ' };
_object addAction [format ["<img image='cScripts\Data\Icon\icon_00.paa' /> 7th Cavalry%1Equipment Crate", _crateName], {}, [], 1.5, true, true, "", "true", 5];

if (_arsenal) then {
    private _arsenalContainer = if (_fullLableCheck && (EGVAR(Settings,setMissionType) >= 3)) then {'PUBLIC'} else {_quickSelectScale};
    [_object, _arsenalContainer] call FUNC(addArsenal);
};

// Call ReGear Option
if (_reGearOption) then {
    [_object, _reHealOption] call FUNC(addReGear);
};

// Call addHeal option
if (_reHealOption) then {
    [_object] call FUNC(addHeal);
};

// Call Quick Selection
[_object, _quickSelectScale, _allowOnlyForCompany] call FUNC(addQuickSelectionList);

// Call Insignia Selection
if (_InsigniaSelectOption) then {
    [_object] call FUNC(addInsigniaSelectionList);
};

// Make end of options line.
_object addAction ["---", {}, [], 1.5, true, true, "", "true", 5];

// Disable slingload
_object enableRopeAttach false;

// Make object not loadable in ACE
[_object, -1] call ace_cargo_fnc_setSize;

// Make Starter crate clean junk around it
[_object, 100] call FUNC(deleteDroppedObjects);