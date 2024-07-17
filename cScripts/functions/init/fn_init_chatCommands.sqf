#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function handle all our custom chat commands
 *
 * Example:
 * call cScripts_fnc_init_ChatCommands
 *
 * Public: No
 */

["attendance", {
    [QGVAR(getAttendance)] call CBA_fnc_localEvent;
}, "all"] call CBA_fnc_registerChatCommand;

// Help and diagnostic commands
["cScripts", {
    systemChat format["cScripts version: %1", VERSION];
}, "all"] call CBA_fnc_registerChatCommand;

["loadout", {
    private _name = [player] call EFUNC(gear,getLoadoutDisplayName);
    private _loadout = [player] call EFUNC(gear,getLoadoutName);
    systemChat format["Your current loadout is: %1 [%2]",_name,_loadout];
}, "all"] call CBA_fnc_registerChatCommand;
