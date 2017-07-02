#include "..\script_component.hpp"
params ["_class"];

private _config = missionConfigFile >> "CfgLoadouts" >> _class;

private _loadoutArray = [];
{
    if (isArray (_config >> _x)) then {
        _loadoutArray pushBack getArray (_config >> _x);
    } else {
        _loadoutArray pushBack [""];
    };
    false
} count LOADOUT_INDEXES;

if (GVAR(usesACRE)) then {
    if (isArray (_config >> "lrRadios")) then {
        _loadoutArray pushBack getArray (_config >> "lrRadios");
    } else {
        _loadoutArray pushBack [];
    };
};

_loadoutArray
