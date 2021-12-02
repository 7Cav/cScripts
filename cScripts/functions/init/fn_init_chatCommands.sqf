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
