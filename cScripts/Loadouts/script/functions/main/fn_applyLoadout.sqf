#include "..\script_component.hpp"
params ["_unit", "_loadout"];
private ["_loadConfig", "_config", "_loadoutArray", "_function"];

_loadConfig = (typeName _loadout == "STRING");
_config = configNull;
if (_loadConfig) then {
    _config = missionConfigFile >> "CfgLoadouts" >> _loadout;
};

if (_loadConfig) then {
    [_unit, _loadout] call compile (getText (_config >> "preLoadout"));
};

GVAR(overflowItems) = [];
{
    _function = missionNamespace getVariable (QFUNC(replace) + _x);
    if (_loadConfig) then {
        if (isArray (_config >> _x)) then {
            [_unit, getArray (_config >> _x)] call _function;
        };
    } else {
        [_unit, _loadout select _forEachIndex] call _function;
    };
} forEach LOADOUT_INDEXES;

if (GVAR(usesACRE)) then {
    [_unit] call FUNC(setupRadios);
    [_unit, _loadout] call FUNC(applyRadioLoadout);
};

// Delayed items
{
    ["Inventory full! Could not add """ + _x + """ to """ + (typeOf _unit) + """."] call FUNC(logWarning);
} count GVAR(overflowItems);

_unit selectWeapon (primaryWeapon _unit);

if (_loadConfig) then {
    [_unit, _loadout] call compile (getText (_config >> "postLoadout"));
};
