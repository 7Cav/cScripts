#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return true if a player is curator
 *
 * Arguments:
 * None
 *
 * Return Value:
 * true/False <BOOLEAN>
 *
 * Example:
 * call cScripts_fnc_unit_isCurator
 *
 */

private _curator = player getVariable [QEGVAR(Player,Unit), ""];
_curator = toLower _curator;
if (_curator == "s3") exitWith {true};
if (_curator == "zeus") exitWith {true};
if (_curator == "curator") exitWith {true};
if (_curator == "debug") exitWith {true};

false