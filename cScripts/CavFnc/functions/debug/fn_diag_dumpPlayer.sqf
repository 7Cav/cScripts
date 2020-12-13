#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function dump all player data that cScripts uses
 *
 * Arguments:
 * None
 *
 * Example:
 *  call cScripts_fnc_diag_dumpPlayer
 *
 */

{
    private _data = [];
    private _player = _x;
    _data pushBack [name _player, []];
    {
        private _var = _x;
        if (toLower QUOTE(PREFIX) in toLower str(_var)) then {
            if !(toLower "_document_" in toLower str(_var)) then {
                _data select 0 select 1 pushBack [_var, [(_player getVariable [_var, []])]];
            } else {
                _data select 0 select 1 pushBack [_var, ["..."]];
            };
        };
    } foreach allVariables _player;
    diag_log _data;
} foreach allPlayers;