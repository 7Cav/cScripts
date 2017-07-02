#include "..\script_component.hpp"
params ["_unit", "_radio"];

switch (true) do {
    case GVAR(usesACRE): {
        _radio = [_radio] call acre_api_fnc_getBaseRadio;
    };
    case GVAR(usesTFAR): {
        _radio = getText (configFile >> "CfgWeapons" >> _radio >> "tf_parent");
    };
};

[_unit, _radio, [UNIFORM, BACKPACK, VEST]] call FUNC(addItemSorted);
