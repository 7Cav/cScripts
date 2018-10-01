#include "..\script_component.hpp";
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

player createDiaryRecord["7Cav",
    ["S3 Mission Control",
        format["Your currently running cScripts version: <font color='#ffc61a'>%1</font>", VERSION]
    ]
];
