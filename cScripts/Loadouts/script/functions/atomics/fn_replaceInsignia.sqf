#include "..\script_component.hpp"
params ["_unit", "_array"];

private _insignia = selectRandom _array;
if (_insignia == "") exitWith {};
private _config = configNull;

if (isClass (missionConfigFile >> "CfgUnitInsignia" >> _insignia)) then {
    _config = missionConfigFile >> "CfgUnitInsignia" >> _insignia;
} else {
    if (isClass (configFile >> "CfgUnitInsignia" >> _insignia)) then {
        _config = configFile >> "CfgUnitInsignia" >> _insignia;
    };
};

if !(isNull _config) then {
    {
        if (_x == "insignia") exitwith {
            _unit setObjectTextureGlobal [
                _forEachIndex,
                getText (_config >> "texture")
            ];
            _unit setVariable ["bis_fnc_setUnitInsignia_class", _insignia, true];
        };
    } foreach getArray (configfile >> "CfgVehicles" >> getText (configfile >> "CfgWeapons" >> uniform _unit >> "ItemInfo" >> "uniformClass") >> "hiddenSelections");
} else {
    ["Class """ + _insignia + """ was not found in CfgUnitInsignia."] call FUNC(logWarning);
};
