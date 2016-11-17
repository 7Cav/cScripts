#include "..\script_component.hpp"
params ["_unit", "_loadout"];
private ["_loadConfig", "_config", "_loadoutArray", "_function", "_uniqueRadio"];

_loadConfig = _loadout isEqualType "";
_config = configNull;
if (_loadConfig) then {
    _config = missionConfigFile >> "CfgLoadouts" >> _loadout;
    [_unit, _loadout] call compile (getText (_config >> "preLoadout"));
};

_uniqueRadio = [_unit] call FUNC(getUniqueRadio);

GVAR(overflowItems) = [];
if (_loadConfig) then {
    {
        _function = missionNamespace getVariable (QFUNC(replace) + _x);
        if (isArray (_config >> _x)) then {
            [_unit, getArray (_config >> _x)] call _function;
        };
    } forEach LOADOUT_INDEXES;
} else {
    {
        _function = missionNamespace getVariable (QFUNC(replace) + _x);
        [_unit, _loadout select _forEachIndex] call _function;
    } forEach LOADOUT_INDEXES;
};

[_unit, _uniqueRadio] call FUNC(setUniqueRadio);

if (GVAR(usesACRE)) then {
    [_unit] call FUNC(setupRadios);
    [_unit, _loadout] call FUNC(applyRadioLoadout);
};

// Items not fitting into inventory
{
    ["Inventory full! Could not add """ + _x + """ to """ + (typeOf _unit) + """."] call FUNC(logWarning);
} count GVAR(overflowItems);

_unit selectWeapon (primaryWeapon _unit);

if (_loadConfig) then {
    [_unit, _loadout] call compile (getText (_config >> "postLoadout"));
};
