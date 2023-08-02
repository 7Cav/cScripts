#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function apply a player loadout
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Loadout <CLASSNAME / VARIABLE / LOADOUT ARRAY>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player, "B_Soldier_F"] call cScripts_fnc_gear_applyLoadout
 * [player, "Variable_Name"] call cScripts_fnc_gear_applyLoadout
 * [player, [[],[],[],[],[],[],"","",[],["","","","","",""]]] call cScripts_fnc_gear_applyLoadout
 *
 */

params [
    ["_unit", objNull, [objNull]],
    "_loadout"
];

private _config     = configNull;
private _loadArray  = _loadout isEqualType [];
private _loadConfig = _loadout isEqualType "";

// Check Scope
private _scope = 1;
if (_loadConfig) then {
    _config = missionConfigFile >> "CfgLoadouts" >> _loadout;
    _scope = getNumber (_config >> "scope");
    if (_scope == 0) exitWith {
        SHOW_CHAT_WARNING_3("Gear", "Scope for loadout %1 is %2 and will not be applied to %3", _loadout, _scope, _unit)
    };
    _unit setVariable [QEGVAR(Gear,LoadoutClass), _loadout];

    // Company
    private _company = getText (_config >> "company");
    _unit setVariable [QEGVAR(Cav,Company), _company];
    if (_company != "") then {INFO_2("Gear", "%1 have company variable set to %2", name _unit, _company);};
};

// preLoadout
if (_loadConfig) then {
    [_unit, _loadout] call compile (getText (_config >> "preLoadout"));
};

// Set loadout
switch (true) do {
    case _loadArray: {
        [_unit, _loadout] call CBA_fnc_setLoadout;
        INFO("Gear", "Loadout array applied to %1", _unit);
    };
    case _loadConfig: {
        _loadout = getText (_config >> "loadout");
        private _classname = configName _config;
        if (_loadout != "") then {
            _loadout = parseSimpleArray _loadout;
            if (EGVAR(patches,usesACRE)) then { _loadout = [_loadout] call acre_api_fnc_filterUnitLoadout };
            [_unit, _loadout] call CBA_fnc_setLoadout;
            INFO_2("Gear", "Loadout %1 applied to %2", _classname, _unit);
        } else {
            SHOW_CHAT_WARNING_1("Gear", "No loadout discoverd nothing will be applied for %1.", _unit);
        };
    };
};

// Abilities
[_unit, _config] call EFUNC(gear,applyAbilities);

// Functions
call EFUNC(gear,applyFunctions);

// Select weapon
_unit selectWeapon (primaryWeapon _unit);

// Apply googles effect after loadout applications
[_unit, goggles _unit] call ace_goggles_fnc_applyGlassesEffect;

// Lower the weapon
if !(weaponLowered _unit) then {_unit action ["WeaponOnBack", _unit]};


if (_loadConfig) then {
    [_unit, _loadout] call compile (getText (_config >> "postLoadout"));
};
