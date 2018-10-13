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
        format[
"Your currently running cScripts version: <font color='#ffc61a'>%1</font><br/><br/>
<p><font color='#ffc61a'>cScripts</font> is custom mission script framework created and maintained by the 1BN Battlestaff Department.<br/><br/>
In order to give you a top notch experience, we are always improving the framework and fixing bugs. If you have suggestions, feedback, or a bug to report, go to our official github and add an issue:<br/><br/>
<font color='#ffc61a'><a href='https://github.com/7Cav/cScripts/issues'>https://github.com/7Cav/cScripts/issues</a></font></p><br/><br/>
<p>You can also contact the <font color='#ffc61a'>1BN Scripting Department</font>.</p>
", VERSION]
    ]
];
