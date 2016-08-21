#include "..\script_component.hpp"

Poppy = false;

GVAR(log) = [];
GVAR(usesACRE) = isClass (configFile >> "CfgPatches" >> "acre_sys_core");
GVAR(usesTFAR) = isClass (configFile >> "CfgPatches" >> "task_force_radio");
GVAR(inDevMode) = !isMultiplayer || {is3DENMultiplayer};

if (isClass (missionConfigFile >> "CfgLoadouts")) then {
    ["CAManBase", "InitPost", {
        params ["_unit"];
        if (!local _unit) exitWith {};

        if (isPlayer _unit) then {
            private _loadout = [_unit] call FUNC(selectLoadout);
            [_unit, _loadout] call FUNC(applyLoadout);
        } else {
            if (
                GVAR(inDevMode)
                && {_unit in switchableUnits}
                && {getNumber (missionConfigFile >> "CfgPoppy" >> "enableAILoadoutsSP") == 1}
            ) then {
                private _loadout = [_unit] call FUNC(selectLoadout);
                [_unit, _loadout] call FUNC(applyLoadout);
            };
        };
    }] call CBA_fnc_addClassEventHandler;
};

Poppy = true;
