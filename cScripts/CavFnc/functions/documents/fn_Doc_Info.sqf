/*
 * Author: CPL.Brostrom.A
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 *  call cScripts_fnc_Doc_Info
 *
 */

#include "..\script_component.hpp";

player createDiaryRecord["7Cav",
    ["Information",
        format[
"Hello <font color='#ffc61a'>%1</font> and welcome to <font color='#ffc61a'>%2</font>.<br/><br/>
Good luck and have fun!
        ", profileName, serverName]
    ]
];
