#include "..\script_component.hpp";
/*
 * Author: SPC.Turn.J
 * This function applies textures to a given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Textures <ARRAY>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * ["vic", [[1, "path/to/texture.paa"]]] call cScripts_fnc_vehicle_applyTextures;
 * ["vic",] call cScripts_fnc_vehicle_applyTextures;
 *
 * Public: No
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_textureIndexMap", [], [[]]]
];

if (count _textureIndexMap == 0) exitWith {};

private _map = createHashMapFromArray _textureIndexMap;

{
    _vehicle setObjectTextureGlobal [_x, _y];
} forEach _map;