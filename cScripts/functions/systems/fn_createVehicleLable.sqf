#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function create a texture that is attached to a given object.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Position <ARRAY>
 * 2: Rotation <NUMBER or BOOL>
 * 3: Texture <STRING>
 * 4: Vector <ARRAY> (Optional) (Default; [0,0,1])
 * 4: VectorDirAndUp (Alternative; if Rotation is False)
 *    1: vectorDir [x1, y1, z1]
 *    2: vectorUp [x2, y2, z2]
 *
 * Example:
 * ["UH60", [-0.49,-2.45,-1.3], 87, "path/to/texture.paa"] call cScripts_fnc_createVehicleLable
 * ["C130", [0.205,-11.9,8.920],-90,  "path/to/texture.paa", [-0.05,0,1]] call cScripts_fnc_createVehicleLable
 * ["Stryker", [1.666,-1.32,-0.42] , false, "path/to/texture.paa", [[-1,0,-0.152], [0,0,1]]] call cScripts_fnc_createVehicleLable;
 *
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_pos", [0,0,0]],
    ["_dir", 0, [0, false]],
    ["_texture", "", [""]],
    ["_vector",[0,0,1], [[]]]
];


if (!isServer) exitWith {};
if (_texture == '') exitWith {};
if (!fileExists _texture) exitWith {
    SHOW_CHAT_ERROR_3("VehicleLable", "Texture '%1' tried to be applied to %2 (%3) does not exist.", _texture, _vehicle, typeOf _vehicle);
};

INFO_3("VehicleLabel","Texture label '%1' is being created for %2 (%3).", _texture, _vehicle, typeOf _vehicle);

private _label = "UserTexture1m_F" createVehicle [0,0,0];
_label attachTo [_vehicle, _pos];
_label setObjectTextureGlobal [0, _texture];

private _checkDirType = _dir isEqualType 0;
if (_checkDirType) then {
    _label setDir _dir;
    _label setvectorUp _vector;
} else {
    _label setVectorDirAndUp _vector;
};

// Collect lables in to variable
private _labels = _vehicle getVariable [QEGVAR(Vehicle,Labels), []];
_labels pushBack _label;
_vehicle setVariable [QEGVAR(Vehicle,Labels), _labels, true];
