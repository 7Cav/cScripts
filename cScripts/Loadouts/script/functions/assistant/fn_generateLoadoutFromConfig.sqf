#include "..\script_component.hpp"
params ["_class"];
private ["_config", "_loadoutArray"];

_config = missionConfigFile >> "CfgLoadouts" >> _class;

_loadoutArray = [];
{
    if (isArray (_config >> _x)) then {
        _loadoutArray pushBack getArray (_config >> _x);
    } else {
        _loadoutArray pushBack [""];
    };
    false
} count LOADOUT_INDEXES;

_loadoutArray
