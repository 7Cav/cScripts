#include "..\script_component.hpp";


params ["_vehicle", "_textureArray"];

private _texturesArrLastIndex = count _textureArray;
private _texturePosition = [];

for "_i" from 1 to _texturesArrLastIndex do {
    _ind = _i - 1;
	_texturePosition pushBack _ind;
};

private _texturesHash = _texturePosition createHashMapFromArray _textureArray;
{
    _vehicle setObjectTextureGlobal [_x, _y];
} forEach _texturesHash;