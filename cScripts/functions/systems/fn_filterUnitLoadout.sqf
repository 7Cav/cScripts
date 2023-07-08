#include "..\script_component.hpp"
/*
 * Author: ACRE2Team, CPL.Brostrom.A
 * Filters unitLoadout for ACRE or TFAR ID classes and replacing them for base classes.
 *
 * Arguments:
 * 0: Loadout <ARRAY or OBJECT or STRING or CONFIG> (default: getUnitLoadout player)
 *
 * Return Value:
 * Loadout <ARRAY>
 *
 * Example:
 * _loadout = [_loadout] call cScripts_fnc_filterUnitLoadout;
 * _loadout = [getUnitLoadout _unit] call cScripts_fnc_filterUnitLoadout;
 * _loadout = [player] call cScripts_fnc_filterUnitLoadout;
 *
 * Public: Yes
 */

params [["_loadout", getUnitLoadout player, [[], objNull, "", configNull]]];

if !(_loadout isEqualType []) then {
    _loadout = getUnitLoadout _loadout;
};

if (_loadout isEqualTo []) exitWith {
    _loadout
};

// Remove "ItemRadioAcreFlagged"
if ((_loadout select 9) select 2 == "ItemRadioAcreFlagged") then {
    (_loadout select 9) set [2, ""];
};

// Set ACRE base classes
private _replaceRadio = {
    params ["_item"];
    if (EGVAR(Patches,usesACRE)) then {
        // Replace only if string (array can be eg. weapon inside container) and an ACRE radio
        if (!(_item isEqualType []) && {[_item] call acre_api_fnc_isRadio}) then {
            _this set [0, [_item] call acre_api_fnc_getBaseRadio];
        };
    };
    if (EGVAR(Patches,usesTFAR)) then {
        // Replace only if string (array can be eg. weapon inside container) and an TFAR radio
        if (!(_item isEqualType []) && {[_item] call TFAR_fnc_isRadio}) then {
            private _baseClassRadio = getText (configFile >> "CfgWeapons" >> _item >> "ace_arsenal_uniqueBase");
            _this set [0, _baseClassRadio];
        };
    };
};
if ((_loadout select 3) isNotEqualTo []) then {
    {_x call _replaceRadio} forEach ((_loadout select 3) select 1); // Uniform items
};
if ((_loadout select 4) isNotEqualTo []) then {
    {_x call _replaceRadio} forEach ((_loadout select 4) select 1); // Vest items
};
if ((_loadout select 5) isNotEqualTo []) then {
    {_x call _replaceRadio} forEach ((_loadout select 5) select 1); // Backpack items
};


_loadout
