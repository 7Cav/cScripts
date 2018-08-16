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

private _mission = switch (cScripts_Settings_setMissionType) do {
    case (0): {"Mission"};
    case (1): {"Operation"};
    case (2): {"Training Mission"};
};
private _motivational = switch (cScripts_Settings_setMissionType) do {
    case (0): {"Make sure to read the <font color='#ffc61a'>OPORD</font> and <font color='#ffc61a'>SOI</font>; they contain vital information"};
    case (1): {"Make sure to read the <font color='#ffc61a'>OPORD</font> and <font color='#ffc61a'>SOI</font>; they contain vital information"};
    case (2): {"Make sure to have a pen and paper avalible, as well as your training material open"};
};

player createDiaryRecord["7Cav",
    ["Information",
        format["
Welcome to this 7th Cavalry %1. %2.<br/><br/>
<p>This mission is running <font color='#ffc61a'>cScripts v%3</font>, a mission script framework created and maintained by the <font color='#ffc61a'>S3 Battlestaff Scripting Department.</font><br/>
cScripts is always being updated and improved. If you have suggestions, bug or a better way of writing something go to our github and submit a issue or even better fork me!:<br/>
<font color='#ffc61a'><a href='https://github.com/7Cav/cScripts/'>https://github.com/7Cav/cScripts/</a></font></p><br/><br/>
<p>Have fun and good luck!</p>
        ", _mission, _motivational, VERSION]
    ]
];
