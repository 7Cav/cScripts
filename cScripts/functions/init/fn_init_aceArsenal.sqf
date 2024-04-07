#include "..\script_component.hpp";
/* 
 * Author: CPL.Brostrom.A
 * This function initzialise ace arsenal default loadouts in eden and in mission.
 *
 * Example:
 * call cScripts_fnc_init_aceArsenal
 *
 * Public: No
 */

if (!EGVAR(patches,usesACEArsenal)) exitWith {};

call FUNC(addDefaultArsenalLoadouts);

if (is3DEN) exitWith {};

GVAR(StagingArsenalOpen) = false;

// Event Handlers
["ace_arsenal_displayClosed", {
    if (GVAR(StagingArsenalOpen)) then {
        [{
            [player, true] call ace_arsenal_fnc_removeBox;
            GVAR(StagingArsenalOpen) = false;

            // Save insignia
            private _insigniaClass = [player] call BIS_fnc_getUnitInsignia;
            [_insigniaClass] call EFUNC(profile,saveInsignia);

            // Reset default loadouts
            call FUNC(addDefaultArsenalLoadouts);
        }] call CBA_fnc_execNextFrame;
    };
}] call CBA_fnc_addEventHandler;

[QEGVAR(StagingArsenal,displayOpen), {
    GVAR(StagingArsenalOpen) = true;
}] call CBA_fnc_addEventHandler;

[QEGVAR(StagingArsenal,SaveWhitelist), {
    private _items = call FUNC(getArsenalWhitelist);
    SETVAR(player,EGVAR(Player,ArsenalWhitelist),_items);
}] call CBA_fnc_addEventHandler;


