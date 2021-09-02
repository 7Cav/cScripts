#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A and SGT.Argus.J
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 *  call cScripts_fnc_Doc_ROTARYOICUP
 *
 */

player createDiaryRecord["radioReports",
    ["ROTARY PICKUP REQUEST",
        "
<font color='#ffc61a'>Misfit 5, this is Misfit 1, PICKUP REQUEST over!</font><br/><br/>
<font color='#ffc61a'>Line 1: Location</font><br/>
    - 6 or 8 digit grid reference of PZ<br/><br/>
<font color='#ffc61a'>Line 2: PZ Orientation and type</font><br/>
    - Orientation of approach axis of PZ in degrees and formation to be used by<br/>
       aircraft<br/><br/>
<font color='#ffc61a'>Line 3: SR Freq and Call-sign</font><br/>
    - SR Freq and Call-sign of requesting unit on ground<br/><br/>
<font color='#ffc61a'>Line 4: Number of troops</font><br/>
    - Number of troopers to be picked up<br/><br/>
<font color='#ffc61a'>Line 5: Security at PZ</font><br/>
    - Green - No enemy in area<br/>
    - Yellow/Orange/Amber - Possible enemy in area (include grid locations of<br/>
       known or suspected enemy locations)<br/>
    - Red - Troops in contact at PZ (include grid locations of known or suspected<br/>
       enemy locations)<br/><br/>
<font color='#ffc61a'>Line 6: Mark Method</font><br/>
    - Smoke<br/>
    - Strobe<br/>
    - Other (Specify)<br/><br/>
        "
    ]
];
