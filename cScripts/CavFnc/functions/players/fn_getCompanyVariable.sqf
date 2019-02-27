#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Show you your current company variable.
 *
 * Arguments:
 * 0: player <STRING>
 *
 * Return Value:
 * Company variable <STRING>
 *
 * Example:
 * [player] call cScripts_fnc_getCompanyVariable
 *
 */

params [
    ["_player", objNull, [objNull]]
];

private _return = "none";

if (_player getVariable QEGVAR(Cav,Trooper)) then {
    _return = _player getVariable QEGVAR(Cav,Company);
};

_return;
