/*
 * Author: CPL.Brostrom.A
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 *  call cScripts_fnc_Doc_MissionControl
 *
 */

#include "..\script_component.hpp";

player createDiaryRecord["7Cav",
    ["S3 Mission Control",
        format["
Hello <font color='#ffc61a'>%1</font>.<br/>
Your are currently on <font color='#ffc61a'>%2</font>.<br/><br/>
Your currently running cScripts version: <font color='#ffc61a'>%3</font>", name player, serverName, VERSION]
    ]
];
