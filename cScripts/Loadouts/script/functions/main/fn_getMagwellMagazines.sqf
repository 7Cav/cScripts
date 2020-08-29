#include "..\script_component.hpp";
params ["_weapon", ["_muzzle", "SAFE"]];

private _compatibleMags = [];
private _compatibleMagWell = [];

if (_muzzle != "SAFE") then {
    _compatibleMagWell = getArray (configfile >> "CfgWeapons" >> _weapon >> _muzzle >> "magazineWell");
} else {
    _compatibleMagWell = getArray (configfile >> "CfgWeapons" >> _weapon >> "magazineWell");
};

{
    _z = configProperties [configFile >> "cfgMagazineWells" >> _x];
    {
        _b = [_x] call BIS_fnc_getCfgDataArray;
        for "_i" from 0 to (count _b) -1 do {
            _compatibleMags pushback (_b select _i);
        };
    } forEach _z;

} forEach _compatibleMagWell;

_compatibleMags
