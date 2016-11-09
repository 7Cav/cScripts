#include "..\script_component.hpp"
params ["_unit", "_loadout"];

if (_loadout isEqualType "") then {
    private _config = missionConfigFile >> "CfgLoadouts" >> _loadout;
    if (isArray (_config >> "lrRadios") && {!(getArray (_config >> "lrRadios") isEqualTo [""])}) exitWith {
        [_unit, getArray (_config >> "lrRadios")] call FUNC(addLRRadios);
    };
};

_config = missionConfigFile >> "CfgPoppy" >> "ACRE";
if ((leader _unit == _unit) && {getNumber (_config >> "distributeGroupLeaderRadios") == 1}) exitWith {
    if (isText (_config >> "groupLeaderRadio")) then {
        [_unit, [getText (_config >> "groupLeaderRadio")]] call FUNC(addLRRadios);
    } else {
        ["Poppy was set to distribute long range radios for squad leaders, but it wasn't specified which ones to distribute. "
        + "Please make sure to fill out the ""groupLeaderRadio"" entry in Poppy's config."] call FUNC(logError);
    };
};
