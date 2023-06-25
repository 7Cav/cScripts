#include "..\script_component.hpp";


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