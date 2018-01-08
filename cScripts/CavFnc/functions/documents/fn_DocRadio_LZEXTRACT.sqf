/*
 * Author: CPL.Brostrom.A and SGT.Argus.J
 * This create a diary record subject called by initDocuments.
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_DocRadio_LZEXTRACT;
 */

player createDiaryRecord["Chklists",
    ["HELO EXTRACTION CHECKLISTS",
        "
<font color='#ffc61a' size='20'>                       EXTRACTION CHECKLISTS<br/>
-----------------------------------------------------------------</font><br/><br/>
<font color='#ffc61a'>ADMIN CHECKLIST</font><br/><br/>
<img image='cScripts\Data\Images\extract-admin-checklist.paa' width='367' height='293'/><br/><br/>
<font color='#ffc61a'>EXTRACT CHECKLIST</font><br/><br/>
<img image='cScripts\Data\Images\extract-extract-checklist.paa' width='367' height='264'/>
        "
    ]
];
