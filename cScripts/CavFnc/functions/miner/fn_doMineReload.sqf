#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 *  
 *
 * Arguments:
 * 0: Argument Name <OBJECT/BOOL/NUMBER/STRING/ARRAY/CODE> (Optional) (Default; MyDefaultValue)
 *
 * Return Value:
 * Return Name <BOOL/NUMBER/STRING>
 *
 * Example:
 * ["tankMcTank"] call cScripts_fnc_doMineReload
 *
 * Public: No
 */

params[["_vehicle", objNull, [objNull]]];

private _mineMagazines = _vehicle getVariable QEGVAR(Vehicle,MineMagazines);
if (_mineMagazines < 0) exitWith {[format["%1 have attemped to load a illegal mine magazine having %2.",_vehicle, _mineClip]] call FUNC(logError);};

[format["Reloading miner magazine..."], "", nil, player, 2] call ace_common_fnc_displayTextPicture;

sleep 10;

_mineMagazines = _mineMagazines - 1;
_vehicle setVariable [QEGVAR(Vehicle,MineMagazines), _mineMagazines];

_vehicle setVariable [QEGVAR(Vehicle,MineClip), 8];

[format["Mine Magazines: %1 / 6 ", _mineMagazines], "", nil, player, 2] call ace_common_fnc_displayTextPicture;