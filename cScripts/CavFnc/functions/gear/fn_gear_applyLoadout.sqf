#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function apply a player loadout
 *
 * Arguments:
 * 0: Unit <OBJECT>
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
    #ifdef DEBUG_MODE
        [formatText["Scope for %1 is set %2", _unit, _scope], "Gear"] call FUNC(logInfo);
    #endif
};
if (_scope == 0) exitWith {
    [formatText["Scope for loadout %1 for %2 is %3 loadout will not be applied.", _unit, _loadout, _scope], "Gear", true] call FUNC(logWarning);
};

// preLoadout
if (_loadConfig) then {
    [_unit, _loadout] call compile (getText (_config >> "preLoadout"));
};

// Set loadout
switch (true) do {
    case _loadArray: {
        _unit setUnitLoadout _loadout;
        #ifdef DEBUG_MODE
            [format["Loadout array applied to %1", _unit], "Gear"] call FUNC(logInfo);
        #endif
    };
    case _loadConfig: {
        _unit setUnitLoadout parseSimpleArray getText (_config >> "loadout");
        _unit setVariable [QEGVAR(Gear,LoadoutClass), _loadout];
        #ifdef DEBUG_MODE
            [format["Loadout %1 applied to %2", _loadout, _unit], "Gear"] call FUNC(logInfo);
        #endif
    };
};

// Abilities
if !([_unit] call EFUNC(gear,hasSavedLoadout)) then {
    [_unit, _config] call EFUNC(gear,applyAbilities);
};

// Functions
if (_unit == player) then {
    // Company
    private _company = getText (_config >> "company");
    _unit setVariable [QEGVAR(Cav,Company), _company];
    #ifdef DEBUG_MODE
        if (_company != "") then {[formatText["%1 have company variable set to %2", _unit, _company], "Gear"] call FUNC(logInfo);};
    #endif

    // Handle Cosmetics
    [_unit] call EFUNC(gear,applyCosmetics);

    // Radios
    if (EGVAR(patches,usesACRE)) then {
        [_unit] call EFUNC(gear,setupRadios);
    };

    // Earplugs
    if (EGVAR(Settings,addEarplugs)) then {
        if !([_unit] call ace_hearing_fnc_hasEarPlugsIn) then {[_unit] call ace_hearing_fnc_putInEarplugs;};
        #ifdef DEBUG_MODE
            [formatText["%1 have got earplugs assigned", _unit], "Gear"] call FUNC(logInfo);
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
