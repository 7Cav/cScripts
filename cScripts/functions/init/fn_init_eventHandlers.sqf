#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandlers.
 *
 * Example:
 * call cScripts_fnc_init_eventHandlers
 *
 * Public: No
 */

INFO("InitEventHandlers","Creating Global EventHandlers");

[QGVAR(getAttendance), {
    call FUNC(getAttendance);
}] call CBA_fnc_addEventHandler;

[QEGVAR(EH_Vehicle,addFunctions), {
    params ["_vehicle"];
    INFO_2("EH_InitVehicle_addFunctions", "Applying function to %1 [%2]", _vehicle, typeOf _vehicle);
    _vehicle call EFUNC(vehicle,addFunctions);
}] call CBA_fnc_addEventHandler;

[QEGVAR(EH_Vehicle,addStagingActions), {
    params ["_vehicle"];
    INFO_2("EH_InitVehicle_addStagingActions", "Applying function to %1 [%2]", _vehicle, typeOf _vehicle);
    _vehicle call EFUNC(vehicle,addStagingActions);
}] call CBA_fnc_addEventHandler;


// Player Events
if (GVAR(isPlayer)) then {
    INFO("InitEventHandlers","Creating Client EventHandlers");

    // TODO: Possibly use in the future 
    //["ace_zeusCreated", {
    //    _this params ["_zeus"];
    //}] call CBA_fnc_addEventHandler;
    //
    //["zen_common_createZeus", {
    //    _this params ["_zeus"];
    //}] call CBA_fnc_addEventHandler;

    // CavArsenal
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
        call EFUNC(init,aceArsenalDefault);

    }] call CBA_fnc_addEventHandler;
};


// Server Events
if (!isServer) exitWith {};
INFO("InitEventHandlers","Creating Server EventHandlers");

[QEGVAR(log,text), {
    diag_log text _this;
}] call CBA_fnc_addEventHandler;

[QEGVAR(log,player), {
    _this params ["_playerName"];
    private _playerLog = missionNamespace getVariable [QEGVAR(log,players), []];
    _playerLog pushBack _playerName;
    missionNamespace setVariable [QEGVAR(log,players), _playerLog];
}] call CBA_fnc_addEventHandler;