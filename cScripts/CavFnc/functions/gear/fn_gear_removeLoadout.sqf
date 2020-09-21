#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function remove any saved loadout
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Loadout <STRING / ARRAY>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player] call cScripts_fnc_gear_removeLoadout
 *
 */

params [["_unit", objNull, [objNull]]];

if (_unit setVariable [QEGVAR(Gear,savedLoadout), false]) then {
    #ifdef DEBUG_MODE
        ["No loadout to remove.", "Gear"] call FUNC(logInfo);
    #endif
};

_unit setVariable [QEGVAR(Gear,Loadout), [[],[],[],[],[],[],"","",[],["","","","","",""]]];
_unit setVariable [QEGVAR(Gear,savedLoadout), false];

#ifdef DEBUG_MODE
    ["Saved loadout removed.", "Gear"] call FUNC(logInfo);
#endif

true
