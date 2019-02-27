#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Retun true or false if your a cav trooper and belong to the given company.
 *
 * Arguments:
 * 0: player <STRING>
 * 1: hasVariable <STRING>
 *
 * Return Value:
 * HasVariable <BOOL>
 *
 * Example:
 * [player] call cScripts_fnc_hasCompanyVariable
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_hasVariable",""]
];

private _return = false;
if (_hasVariable == "") exitWith {_return};

if (_player getVariable QEGVAR(Cav,Trooper)) then {
    if ([_player] call FUNC(getCompanyVariable) == _hasVariable) then {
        _return = true;
    };
};

_return;
