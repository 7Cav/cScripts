#include "..\script_component.hpp"
params ["_unit", "_loadout"];

private _loadConfig = _loadout isEqualType "";
private _config     = configNull;
if (_loadConfig) then {
    _config = missionConfigFile >> "CfgLoadouts" >> _loadout;
    [_unit, _loadout] call compile (getText (_config >> "preLoadout"));
};

private _uniqueRadio = [_unit] call FUNC(getUniqueRadio);

GVAR(overflowItems) = [];
if (_loadConfig) then {
    {
        private _function = missionNamespace getVariable (QFUNC(replace) + _x);
        if (isArray (_config >> _x)) then {
            [_unit, getArray (_config >> _x)] call _function;
        };
    } forEach LOADOUT_INDEXES;
} else {
    {
        private _function = missionNamespace getVariable (QFUNC(replace) + _x);
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
    false
} count GVAR(overflowItems);

_unit selectWeapon (primaryWeapon _unit);

// Save classname of selected loadout to variable.
_unit setVariable [QGVAR(loadout), _loadout];

if (_loadConfig) then {
    [_unit, _loadout] call compile (getText (_config >> "postLoadout"));
};
