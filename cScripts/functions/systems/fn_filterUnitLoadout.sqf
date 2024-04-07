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
    _loadout = [_loadout] call CBA_fnc_getLoadout;
};

if (_loadout isEqualTo []) exitWith {
    _loadout;
};

private _baseLoadout = _loadout;
if (EGVAR(Patches,usesACEAX)) then {
    _baseLoadout = _loadout#0;
};

// Remove "ItemRadioAcreFlagged"
if (_baseLoadout#9#2 == "ItemRadioAcreFlagged") then {
    _baseLoadout#9 set [2, ""];
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
        if (!(_item isEqualType []) && {_item call TFAR_fnc_isRadio}) then {
            private _baseClassRadio = getText (configFile >> "CfgWeapons" >> _item >> "ace_arsenal_uniqueBase");
            _this set [0, _baseClassRadio];
        };
    };
};

if ((_baseLoadout#3) isNotEqualTo []) then {
    {_x call _replaceRadio} forEach (_baseLoadout#3#1); // Uniform items
};

if ((_baseLoadout#4) isNotEqualTo []) then {
    {_x call _replaceRadio} forEach (_baseLoadout#4#1); // Vest items
};

if ((_baseLoadout#5) isNotEqualTo []) then {
    {_x call _replaceRadio} forEach (_baseLoadout#5#1); // Backpack items
};

if (EGVAR(Patches,usesACEAX)) then {
    _loadout set [0,_baseLoadout];
};

_loadout