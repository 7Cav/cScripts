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
    private _classname = _loadout;
    _config = missionConfigFile >> "CfgLoadouts" >> _classname;
    _scope = getNumber (_config >> "scope");
    if (_scope == 0) exitWith {
        [format["Scope for loadout %1 for loadout %2 is %3 loadout will not be applied.", _unit, _classname, _scope], "Gear", true] call FUNC(warning);
    };
    _unit setVariable [QEGVAR(Gear,LoadoutClass), _classname];

    // Company
    private _company = getText (_config >> "company");
    _unit setVariable [QEGVAR(Cav,Company), _company];
    #ifdef DEBUG_MODE
        if (_company != "") then {[format["%1 have company variable set to %2", name _unit, _company], "Gear"] call FUNC(info);};
    #endif
};

// preLoadout
if (_loadConfig) then {
    [_unit, _loadout] call compile (getText (_config >> "preLoadout"));
};

// Set loadout
switch (true) do {
    case _loadArray: {
        _loadout = [_loadout] call acre_api_fnc_filterUnitLoadout;
        _unit setUnitLoadout _loadout;
        #ifdef DEBUG_MODE
            [format["Loadout array applied to %1", name _unit], "Gear"] call FUNC(info);
        #endif
    };
    case _loadConfig: {
        _loadout = parseSimpleArray getText (_config >> "loadout");
        _unit setUnitLoadout _loadout;
        #ifdef DEBUG_MODE
            [format["Loadout %1 applied to %2", _classname, name _unit], "Gear"] call FUNC(info);
        #endif
    };
};

// Abilities
if !([_unit] call EFUNC(gear,hasSavedLoadout)) then {
    [_unit, _config] call EFUNC(gear,applyAbilities);
};

// Functions
if (isPlayer _unit) then {
    // Handle Cosmetics
    [_unit] call EFUNC(gear,applyCosmetics);

    // Radios
    if (EGVAR(patches,usesACRE) && EGVAR(Settings,enableACRE)) then {
        [{GVAR(Radio)}, {
            _this params ["_unit"];
            [format["Setting up ACRE preset and radio channels for %1...", name _unit], "Gear Radio", false, true] call FUNC(info);
            [_unit] call EFUNC(gear,setupRadios);
        }, [_unit]] call CBA_fnc_waitUntilAndExecute;
    };

    // Earplugs
    if (EGVAR(Settings,addEarplugs)) then {
        if !([_unit] call ace_hearing_fnc_hasEarPlugsIn) then {[_unit] call ace_hearing_fnc_putInEarplugs;};
        #ifdef DEBUG_MODE
            [format["%1 have got earplugs assigned", name _unit], "Gear"] call FUNC(info);
        #endif
    };

    //Server metrics
    if ((call BIS_fnc_admin) >= 2) then {
        player addAction ["Server Metrics", {
            [owner player] call FUNC(getServerMetrics);
        }, [], 0, false, true];
    };
};

// Select weapon
_unit selectWeapon (primaryWeapon _unit);

// Lower the weapon
if !(weaponLowered _unit) then {_unit action ["WeaponOnBack", _unit]};

if (_loadConfig) then {
    [_unit, _loadout] call compile (getText (_config >> "postLoadout"));
};
