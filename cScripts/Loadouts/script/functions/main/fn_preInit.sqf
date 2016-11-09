#include "..\script_component.hpp"

Poppy = false;

GVAR(log) = [];
GVAR(usesACRE) = isClass (configFile >> "CfgPatches" >> "acre_sys_core");
GVAR(usesTFAR) = isClass (configFile >> "CfgPatches" >> "task_force_radio");
GVAR(inDevMode) = !isMultiplayer || {is3DENMultiplayer};
GVAR(groupIDsSynched) = false;

if (isClass (missionConfigFile >> "CfgLoadouts")) then {
    ["CAManBase", "InitPost", {
        params ["_unit"];
        if (!local _unit) exitWith {};

        if (_unit == player) then {
            private _loadout = [_unit] call FUNC(selectLoadout);
            [_unit, _loadout] call FUNC(applyLoadout);

            if (getNumber (missionConfigFile >> "CfgPoppy" >> "showLoadoutInBriefing") == 1) then {
                [] call FUNC(createBriefingEntry);
            };
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

    ["CAManBase", "Respawn", {
        params ["_unit"];

        if (_unit == player) then {
            private _loadout = [_unit] call FUNC(selectLoadout);
            [_unit, _loadout] call FUNC(applyLoadout);
        };
    }] call CBA_fnc_addClassEventHandler;
};

Poppy = true;
