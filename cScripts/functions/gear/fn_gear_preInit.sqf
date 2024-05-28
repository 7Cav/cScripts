#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, SGT.Brostrom.A
 * This function runs on preInit and setup the gear system using CBA addClassEventHandler.
 *
 * Arguments:
 * none
 *
 * Return Value:
 * nothing
 *
 * Example:
 * call cScripts_fnc_gear_preInit
 *
 */

GVAR(Gear) = false;

EGVAR(gear,groupIDsSynched) = false;
EGVAR(gear,playerLoadoutGiven) = false;

if (isClass (missionConfigFile >> "CfgLoadouts")) then {
    ["CAManBase", "InitPost", {
        params ["_unit"];
        if (!local _unit) exitWith {
            if (_unit == player) then {
                SHOW_WARNING("Gear", "Non-local player in initPost");
            };
        };

        if (_unit == player && {!EGVAR(gear,playerLoadoutGiven)}) then {
            EGVAR(gear,playerLoadoutGiven) = true;
            private _loadout = [_unit] call EFUNC(gear,selectLoadout);
            [_unit, _loadout] call EFUNC(gear,applyLoadout);
        } else {
            if (
                _unit in switchableUnits
                && {typeOf _unit != "HeadlessClient_F"}
            ) then {
                private _loadout = [_unit] call EFUNC(gear,selectLoadout);
                [_unit, _loadout] call EFUNC(gear,applyLoadout);
            } else {
                if (
                    EGVAR(Settings,AllowAILoadouts)
                    && {typeOf _unit != "HeadlessClient_F"}
            ) then {
                    private _loadout = [_unit] call EFUNC(gear,selectLoadout);
                    [_unit, _loadout] call EFUNC(gear,applyLoadout);
                };
            };
        };
    }] call CBA_fnc_addClassEventHandler;

    ["CAManBase", "Respawn", {
        params ["_unit"];
        if (_unit == player) then {
            private _loadout = [_unit] call EFUNC(gear,selectLoadout);
            [_unit, _loadout] call EFUNC(gear,applyLoadout);
        };
    }] call CBA_fnc_addClassEventHandler;

    ["CAManBase", "Local", {
        params ["_unit"];
        if (_unit == player && {local _unit} && {!EGVAR(gear,playerLoadoutGiven)}) then {
            EGVAR(gear,playerLoadoutGiven) = true;
            private _loadout = [_unit] call EFUNC(gear,selectLoadout);
            [_unit, _loadout] call EFUNC(gear,applyLoadout);
        };
    }] call CBA_fnc_addClassEventHandler;
};

GVAR(Gear) = true;
