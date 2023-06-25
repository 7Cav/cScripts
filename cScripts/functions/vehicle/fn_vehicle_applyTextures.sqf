#include "..\script_component.hpp";
/*
 * Author: SPC.Turn.J
 * This function applies textures to a given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Textures <ARRAY>
 * 0: Start Index <INT>
 * Example:
 * ["vic", "_myTextures"] call cScripts_fnc_vehicle_applyTextures;
 * ["vic", "_myTextures", 3] call cScripts_fnc_vehicle_applyTextures;
 */

params ["_vehicle", "_textureArray", ["_startInd",1]];

private _texturesArrLastIndex = count _textureArray;
private _texturePosition = [];

for "_i" from _startInd to _texturesArrLastIndex do {
    _ind = _i - 1;
    _texturePosition pushBack _ind;
};

private _texturesHash = _texturePosition createHashMapFromArray _textureArray;
{
    _vehicle setObjectTextureGlobal [_x, _y];
} forEach _texturesHash;