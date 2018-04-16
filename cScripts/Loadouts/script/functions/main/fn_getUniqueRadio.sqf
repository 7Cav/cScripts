#include "..\script_component.hpp"
params ["_unit"];

switch (true) do {
    case (GVAR(usesACRE)): {
         {
         if (_x isKindOf ["ACRE_PRC343", configFile >> "CfgWeapons"]) exitWith {_x};
            "ACRE_PRC343"
        } forEach (items _unit);
    };
    case (GVAR(usesTFAR)): {
        {
            if (_x isKindOf ["ItemRadio", configFile >> "CfgWeapons"]) exitWith {_x};
            "ItemRadio"
        } forEach (assignedItems _unit);
    };
    default {
        "ItemRadio"
    };
};

