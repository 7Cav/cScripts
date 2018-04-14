/*
 * Author: CPL.Brostrom.A
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <OBJECT/BOOL/NUMBER/STRING/ARRAY/CODE> (Optional) (Default; MyDefaultValue)
 *
 * Return Value:
 * Return Name <BOOL/NUMBER/STRING>
 *
 * Example:
 * ["example"] call cScripts_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_pos",[0,0,0]],
    ["_dir",0],
    ["_texture",""],
    ["_vector",[0,0,1]]
];

if (!isServer) exitWith {};

private _lable = "UserTexture1m_F" createVehicle [0,0,0];
_lable attachTo [_vehicle, _pos];
_lable setObjectTextureGlobal [0, _texture];
_lable setDir _dir;
_lable setvectorUp _vector;
