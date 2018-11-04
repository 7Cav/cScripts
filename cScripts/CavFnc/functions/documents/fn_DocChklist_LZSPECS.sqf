#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A and SGT.Argus.J
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 *  call cScripts_fnc_Doc_LZSPECS
 *
 */

player createDiaryRecord["Chklists",
    ["LZ/PZ SPECIFICATIONS",
        "
<font color='#ffc61a' size='20'>                        LZ / PZ SPECIFICATIONS<br/>
-----------------------------------------------------------------</font><br/><br/>
<font color='#ffc61a'>LANDING POINT SPECIFICATIONS</font><br/><br/>
<img image='cScripts\Data\Images\LPSIZES.paa' width='367' height='166'/><br/><br/>
<font color='#ffc61a'>LZ / PZ TYPES</font><br/><br/>
<img image='cScripts\Data\Images\LZTYPES.paa' width='367' height='338'/><br/><br/>
<font color='#ffc61a'>LZ / PZ MARKINGS</font><br/><br/>
<img image='cScripts\Data\Images\LZ-MAP-MARKINGS.paa' width='367' height='245'/>
        "
    ]
];
