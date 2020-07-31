#include "..\script_component.hpp"

GVAR(Gear) = false;

GVAR(groupIDsSynched) = false;
GVAR(playerLoadoutGiven) = false;

if (isClass (missionConfigFile >> "CfgLoadouts")) then {
    ["CAManBase", "InitPost", {
        params ["_unit"];
        if (!local _unit) exitWith {
            if (_unit == player) then {
                ["Non-local player in initPost", "Debug"] call FUNC(logWarning);
            };
        };

        if (_unit == player && {!GVAR(playerLoadoutGiven)}) then {
            GVAR(playerLoadoutGiven) = true;
            private _loadout = [_unit] call FUNC(selectLoadout);
            [_unit, _loadout] call FUNC(applyLoadout);
        } else {
            if (
                _unit in switchableUnits
                && {typeOf _unit != "HeadlessClient_F"}
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
        };
    }] call CBA_fnc_addClassEventHandler;
};

GVAR(Gear) = true;
