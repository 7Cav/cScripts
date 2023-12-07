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
        [QEGVAR(EH_StagingArsenal,displayClose)] call CBA_fnc_localEvent;
    };
}] call CBA_fnc_addEventHandler;

[QEGVAR(EH_StagingArsenal,displayOpen), {
    GVAR(StagingArsenalOpen) = true;
}] call CBA_fnc_addEventHandler;

[QEGVAR(EH_StagingArsenal,displayClosed), {
    [player, true] call ace_arsenal_fnc_removeBox;
    GVAR(StagingArsenalOpen) = false;

    // Reset default loadouts
    call FUNC(addDefaultArsenalLoadouts);
}] call CBA_fnc_addEventHandler;