#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function create a texture that is attached to a given object.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Position <ARRAY>
 * 2: Rotation <NUMBER>
 * 3: Texture <STRING>
 * 4: Vector <ARRAY> (Optional) (Default; [0,0,1])
 *
 * Example:
 * ["UH60",[-0.49,-2.45,-1.3],87,"path/to/texture.paa"] call cScripts_fnc_createVehicleLable
 * ["C130",[0.205,-11.9,8.920],-90,"path/to/texture.paa",[-0.05,0,1]] call cScripts_fnc_createVehicleLable
 *
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_pos",[0,0,0]],
    ["_dir",0],
    ["_texture",""],
    ["_vector",[0,0,1]]
];

#ifdef DEBUG_MODE
    [formatText["Texture label ""%1"" is being created for %2.", _texture, _vehicle]] call FUNC(logInfo);
#endif

if (!isServer) exitWith {};
if (_texture == '') exitWith {};

private _label = "UserTexture1m_F" createVehicle [0,0,0];
_label attachTo [_vehicle, _pos];
_label setObjectTextureGlobal [0, _texture];
_label setDir _dir;
_label setvectorUp _vector;

// Collect lables in to variable
private _labels = _vehicle getVariable [QEGVAR(Vehicle,Label), []];
_labels pushBack _label;
_vehicle setVariable [QEGVAR(Vehicle,Label), _labels, true];
