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
        [format["Scope for loadout %1 is %2 and will not be applied to %3", _loadout, _scope, _unit], "Gear", true] call FUNC(warning);
    };
    _unit setVariable [QEGVAR(Gear,LoadoutClass), _loadout];

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
        [_unit, _loadout] call CBA_fnc_setLoadout;
        #ifdef DEBUG_MODE
            [format["Loadout array applied to %1", _unit], "Gear"] call FUNC(info);
        #endif
    };
    case _loadConfig: {
        _loadout = getText (_config >> "loadout");
        private _classname = configName _config;
        if (_loadout != "") then {
            _loadout = parseSimpleArray _loadout;
            if (EGVAR(patches,usesACRE)) then { _loadout = [_loadout] call acre_api_fnc_filterUnitLoadout };
            [_unit, _loadout] call CBA_fnc_setLoadout;
            #ifdef DEBUG_MODE
                [format["Loadout %1 applied to %2", _classname, _unit], "Gear"] call FUNC(info);
            #endif
        } else {
            [format["No loadout discoverd nothing will be applied for %1.", _unit], "Gear", true] call FUNC(warning);
        };
    };
};

// Abilities
[_unit, _config] call EFUNC(gear,applyAbilities);

// Functions
if (GVAR(isPlayer)) then {
    // Handle Cosmetics
    [_unit] call EFUNC(gear,applyCosmetics);

    // Radios
    if (EGVAR(patches,usesACRE) && EGVAR(Settings,enableACRE)) then {
        if (EGVAR(Settings,setRadio)) then {
            [{GVAR(Radio) && [] call acre_api_fnc_isInitialized}, {
                _this params ["_unit"];
                [format["Setting up ACRE primary radio and channels for %1...", name _unit], "Gear Radio"] call FUNC(info);
                [_unit] call FUNC(setRadioChannel);
                ["ACRE_PRC343"] call FUNC(setActiveRadio);
            }, [_unit]] call CBA_fnc_waitUntilAndExecute;
        };
    };

    // Earplugs
    if (EGVAR(Settings,addEarplugs)) then {
        if !([_unit] call ace_hearing_fnc_hasEarPlugsIn) then {
            [{
                [_this select 0] call ace_hearing_fnc_putInEarplugs;
            }, [_unit]] call CBA_fnc_execNextFrame;
        };
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

// Apply googles effect after loadout applications
[_unit, goggles _unit] call ace_goggles_fnc_applyGlassesEffect;

// Lower the weapon
if !(weaponLowered _unit) then {_unit action ["WeaponOnBack", _unit]};


if (_loadConfig) then {
    [_unit, _loadout] call compile (getText (_config >> "postLoadout"));
};
