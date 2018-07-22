#include "..\script_component.hpp"

Poppy = false;

GVAR(log) = [];
GVAR(usesACE)  = isClass (configFile >> "CfgPatches" >> "ace_medical");
GVAR(usesACRE) = isClass (configFile >> "CfgPatches" >> "acre_sys_core");
GVAR(usesTFAR) = isClass (configFile >> "CfgPatches" >> "task_force_radio");
GVAR(inDevMode) = !isMultiplayer || {is3DENMultiplayer};
GVAR(groupIDsSynched) = false;
GVAR(playerLoadoutGiven) = false;

if (isClass (missionConfigFile >> "CfgLoadouts")) then {
    ["CAManBase", "InitPost", {
        params ["_unit"];
        if (!local _unit) exitWith {
            if (_unit == player) then {
                diag_log text "[Poppy] Debug: Non-local player in initPost";
            };
        };

        if (_unit == player && {!GVAR(playerLoadoutGiven)}) then {
            GVAR(playerLoadoutGiven) = true;
            private _loadout = [_unit] call FUNC(selectLoadout);
            [_unit, _loadout] call FUNC(applyLoadout);

            if (getNumber (missionConfigFile >> "CfgPoppy" >> "showLoadoutInBriefing") == 1) then {
                [] call FUNC(createBriefingEntry);
            };
        } else {
            if (
                GVAR(inDevMode)
                && {_unit in switchableUnits}
                && {typeOf _unit != "HeadlessClient_F"}
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

    ["CAManBase", "Local", {
        params ["_unit"];
        if (_unit == player && {local _unit} && {!GVAR(playerLoadoutGiven)}) then {
            GVAR(playerLoadoutGiven) = true;
            private _loadout = [_unit] call FUNC(selectLoadout);
            [_unit, _loadout] call FUNC(applyLoadout);

            if (getNumber (missionConfigFile >> "CfgPoppy" >> "showLoadoutInBriefing") == 1) then {
                [] call FUNC(createBriefingEntry);
            };
        };
    }] call CBA_fnc_addClassEventHandler;
};

Poppy = true;
