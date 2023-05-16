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

private _config        = missionConfigFile >> "CfgLoadouts";
private _variable      = _unit getVariable [QEGVAR(Gear,LoadoutClass), ""];
private _variableName  = vehicleVarName _unit;
private _className     = typeOf _unit;
private _sideConfig    = [side group _unit] call EFUNC(gear,getSideConfig);

switch (true) do {
    case (isClass (_config >> _variable)): {
        if !(_variable isKindOf [_sideConfig, _config]) then {
            [format["The loadout for '%1' does not inherit from '%2'.", _variable, _sideConfig], "Gear", true] call FUNC(warning);
        };
        _variable
    };
    case (isClass (_config >> _variableName)): {
        if !(_variableName isKindOf [_sideConfig, _config]) then {
            [format["The loadout for '%1' does not inherit from '%2'.", _variableName, _sideConfig], "Gear", true] call FUNC(warning);
        };
        _variableName
    };
    case (isClass (_config >> _className)): {
        if !(_className isKindOf [_sideConfig, _config]) then {
            [format["The loadout for '%1' does not inherit from '%2'.", _className, _sideConfig], "Gear", true] call FUNC(warning);
        };
        _className
    };
    case (isClass (_config >> _sideConfig)): {
        [format["'%1' does not have a class specific loadout. Applying '%2'.", _className, _sideConfig], "Gear", true] call FUNC(warning);
        _sideConfig
    };
    default {
        [format["'%1'does not have a class specific loadout. Applying default loadout.", _className], "Gear", true] call FUNC(warning);
        ""
    };
};
