#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function runs on postInit unsceduled via made sure by postInitProxy
 *
 * Arguments:
 * none
 *
 * Return Value:
 * nothing
 *
 * Example:
 * call cScripts_fnc_gear_postInit
 *
 */

if (isServer) then {
    if (isMultiplayer) then {
        GVAR(Radio) = false;
        call EFUNC(gear,setupRadios);
        GVAR(Radio) = true;
    } else {
        SHOW_CHAT_WARNING("Gear_PostInit", "Mission in singelplayer environment radio setup will not be performed");
    };
};

if (hasInterface) then {
    ["ace_arsenal_displayClosed", {
        player call EFUNC(gear,saveLoadout);
    }] call CBA_fnc_addEventHandler;
};

[QEGVAR(gear,applyLoadout), {
    if (player call EFUNC(gear,hasSavedLoadout)) then {
        private _loadout = [player] call EFUNC(gear,selectLoadout);
        [player, _loadout] call EFUNC(gear,applyLoadout);
    };
}] call CBA_fnc_addEventHandler;
