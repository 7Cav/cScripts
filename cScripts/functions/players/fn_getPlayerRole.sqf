#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function fetches your rank based on your name description prefix or unit config display text.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Role name <STRING>
 *
 * Example:
 *  call cScripts_fnc_getPlayerRole
 *
 */

private _return = "Trooper";

if !(isMultiplayer) exitWith { _return };

private _playerRole = roleDescription player;

if !(_playerRole == "") then {
    _playerRole = _playerRole splitString "@";
    _playerRole = _playerRole select 0;
    _return = _playerRole;
} else {
    _playerRole = getText (configFile >> "CfgVehicles" >> typeOf player >> "displayName");
    _playerRole = _playerRole splitString " ";
    if (_playerRole select 0 in ["Platoon", "Squad"]) then {
            _return = [_playerRole select 0, _playerRole select 1] joinString " ";
    } else {
        _return = _playerRole joinString " ";
    };
};

_return;
