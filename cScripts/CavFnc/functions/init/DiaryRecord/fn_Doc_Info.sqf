/*
 * Author: CPL.Brostrom.A 
 * This create a diary record subject called by initDocuments.
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_Doc_Info;
 */

player createDiaryRecord["7Cav",
    ["Information",
        "
Welcome to this 7th Cavalry Mission. Make sure to read the <font color='#ffc61a'>OPORD</font> and <font color='#ffc61a'>SOI</font>; they contain vital information.<br/><br/>
<p>This mission is running <font color='#ffc61a'>cScripts</font>, our mission script framework.<br/>
In order to give you a top notch experience, we always improve and fix the bugs we find. If you have suggestions, feedback, or found a bug, go to our official github and add an issue.<br/><br/>
<font color='#ffc61a'><a href='https://github.com/7Cav/cScripts/issues'>https://github.com/7Cav/cScripts/issues</a></font></p><br/><br/>
<p>You can also contact <font color='#ffc61a'>SGM.Tully.B</font> or <font color='#ffc61a'>CPL.Brostrom.A</font> and they will link you to the issue tracker.</p>
        "
    ]
];

