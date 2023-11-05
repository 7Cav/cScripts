#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function selects a loadout based on if you have a save variable loadout or config.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * variable, variableName, classname, sideConfig or empty string.
 *
 * Example:
 * player call cScripts_fnc_gear_selectLoadout;
 *
 * Public: No
 */

params ["_unit"];

private _saved         = [_unit] call EFUNC(gear,loadLoadout);
private _config        = missionConfigFile >> "CfgLoadouts";
private _variable      = _unit getVariable [QEGVAR(Gear,LoadoutClass), ""];
private _variableName  = vehicleVarName _unit;
private _className     = typeOf _unit;
private _sideConfig    = [side group _unit] call EFUNC(gear,getSideConfig);

switch (true) do {
    case (_unit call EFUNC(gear,hasSavedLoadout)): {
        _saved
    };
    case (isClass (_config >> _variable)): {
        if !(_variable isKindOf [_sideConfig, _config]) then {
            SHOW_CHAT_WARNING_2("Gear", "The loadout for '%1' does not inherit from '%2'.", _variable, _sideConfig);
        };
        _variable
    };
    case (isClass (_config >> _variableName)): {
        if !(_variableName isKindOf [_sideConfig, _config]) then {
            SHOW_CHAT_WARNING_2("Gear", "The loadout for '%1' does not inherit from '%2'.", _variableName, _sideConfig);
        };
        _variableName
    };
    case (isClass (_config >> _className)): {
        if !(_className isKindOf [_sideConfig, _config]) then {
            SHOW_CHAT_WARNING_2("Gear", "The loadout for '%1' does not inherit from '%2'.", _className, _sideConfig);
        };
        _className
    };
    case (isClass (_config >> _sideConfig)): {
        SHOW_CHAT_WARNING_2("Gear", "'%1' does not have a class specific loadout. Applying '%2'.", _className, _sideConfig);
        _sideConfig
    };
    default {
        SHOW_CHAT_WARNING_1("Gear", "'%1'does not have a class specific loadout. Applying default loadout.", _className);
        ""
    };
};
