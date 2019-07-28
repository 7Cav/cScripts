#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A and SGT.Argus.J
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 *  call cScripts_fnc_Doc_MEDEVAC
 *
 */

player createDiaryRecord["radioReports",
    ["MEDEVAC REQUEST",
        "
<font color='#ffc61a'>Gunslinger 5, this is Gunslinger 1, MEDEVAC REQUEST over!</font><br/><br/>

<font color='#ffc61a'>Line 1: Location</font><br/>
    - 6 or 8 digit grid reference of PZ<br/><br/>

<font color='#ffc61a'>Line 2: PZ Orientation and type</font><br/>
    - Orientation of approach axis of PZ in degrees and formation to be used by<br/>
       aircraft<br/><br/>

<font color='#ffc61a'>Line 3: SR Freq and Call-sign</font><br/>
    - SR Freq and Call-sign of requesting unit on ground<br/><br/>

<font color='#ffc61a'>Line 4: Number of casualties by priority</font><br/>
    - Urgent/Red - Combat ineffective, life threatening injuries, unstable<br/>
    - Priority/Yellow/Orange/Amber - Combat ineffective, stable<br/>
    - Routine/Green - Combat effective, require return to full health<br/><br/>

<font color='#ffc61a'>Line 5: Security at the PZ</font><br/>
    - Green - No enemy in area<br/>
    - Yellow/Orange/Amber - Possible enemy in area (include grid locations of<br/>
       known or suspected enemy locations)<br/>
    - Red - Troops in contact at PZ (include grid locations of known or suspected<br/>
       enemy locations)<br/><br/>

<font color='#ffc61a'>Line 6: Mark method</font><br/>
    - Smoke<br/>
    - Strobe<br/>
    - Other (Specify)<br/><br/>
        "
    ]
];
