#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A and SGT.Argus.J
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 *  call cScripts_fnc_Doc_SPOTREP
 *
 */

player createDiaryRecord["radioReports",
    ["SPOTREP",
        "
<font color='#ffc61a'>Bandit 5, this is Bandit 1, SPOTREP over!</font><br/><br/>
<font color='#ffc61a'>Line 1: Size</font><br/>
    - 8 infantry becomes squad<br/>
    - 20+ infantry becomes platoon<br/>
    - Specify vehicles<br/><br/>
<font color='#ffc61a'>Line 2: Activity</font><br/>
    - Digging in<br/>
    - Moving slowly northwest<br/>
    - Attacking<br/><br/>
<font color='#ffc61a'>Line 3: Location</font><br/>
    - 6 or 8 digit grid reference of enemy location<br/><br/>
<font color='#ffc61a'>Line 4: Uniform/Unit (Optional)</font><br/>
    - Russian light infantry<br/>
    - Russion mechanized infantry<br/><br/>
<font color='#ffc61a'>Line 5: Time Observed</font><br/>
    - Time Now<br/>
    - 1530Z<br/><br/>
<font color='#ffc61a'>Line 6: Equipment (Optional)</font><br/>
    - Multiple RPGs<br/>
    - NVGs<br/>
    - Comms Antenna<br/>
    - AAA emplacement<br/><br/>
<font color='#ffc61a'>Line 7: Actions/Intentions/Recommendations</font><br/>
    - Assaulting<br/>
    - Continuing to observe<br/><br/>
        "
    ]
];
