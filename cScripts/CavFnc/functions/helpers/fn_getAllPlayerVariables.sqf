#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function is used used to export objects to clipboard from a object to be used in the Cav Arsenal.
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Variables <ARRAY of STRINGS>
 *
 * Example:
 * [player] call cScripts_fnc_getAllPlayerVariables
 *
 * Public: Yes
 */

params[["_player", objNull, [objNull]]];

private _return = [];

private _name = _player getVariable 'cScripts_Player_Name';
private _rank = _player getVariable 'cScripts_Cav_Rank';
private _company = _player getVariable 'cScripts_Cav_Company';

private _unit = _player getVariable 'cScripts_Player_Unit';
private _team = _player getVariable 'cScripts_Player_Team';

private _announced = _player getVariable 'cScripts_Player_Announced';
private _documents = _player getVariable 'cScripts_Player_Documents';
private _radioChannel = _player getVariable 'cScripts_Player_RadioChannel';

_player = format["%1",_player];
_name = format["Name: %1",_name];
_rank = format["Rank: %1",_rank];
_company = format["Company: %1",_company];
_unit = format["Unit or Squad name: %1",_unit];
_team = format["Team color: %1",_team];
_announced = format["Is announced: %1",_announced];
_documents = format["Has documents: %1",_documents];
_radioChannel = format["Radios: %1",_radioChannel];

_return pushBack _player;
_return pushBack _name;
_return pushBack _rank;
_return pushBack _company;
_return pushBack _unit;
_return pushBack _team;
_return pushBack _announced;
_return pushBack _documents;
_return pushBack _radioChannel;

_return;