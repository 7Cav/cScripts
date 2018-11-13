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
 * ["tankMcTank"] call cScripts_fnc_doMinePlace
 *
 * Public: No
 */

params[["_vehicle", objNull, [objNull]]];

private _mineClip = _vehicle getVariable QEGVAR(Vehicle,MineClip);
if (_mineClip < 1) exitWith {[format["%1 have attemped to place a mine having %2 mines left in the clip.",_vehicle, _mineClip]] call FUNC(logError);};

_mineClip = _mineClip -1;
_vehicle setVariable [QEGVAR(Vehicle,MineClip), _mineClip];

private _mine = createMine ["ATMine", _vehicle getPos [-5, 0], [], 0];

[format["Mine clip: %1 / 8", _mineClip], "", nil, player, 2] call ace_common_fnc_displayTextPicture;