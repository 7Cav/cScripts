#include "..\script_component.hpp"

if (hasInterface) then {
    ["ace_arsenal_displayClosed", {
        player call EFUNC(gear,saveLoadout);
    }] call CBA_fnc_addEventHandler;
};

[QEGVAR(gear,applyLoadout), {
    if (player call EFUNC(gear,hasSavedLoadout)) then {
        player call EFUNC(gear,loadLoadout);
    } else {
        private _loadout = [player] call EFUNC(gear,selectLoadout);
        [player, _loadout] call EFUNC(gear,applyLoadout);
    };
}] call CBA_fnc_addEventHandler;
