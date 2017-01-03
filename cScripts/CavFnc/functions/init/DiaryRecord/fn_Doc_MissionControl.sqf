/*
 * Author: CPL.Brostrom.A 
 * This create a diary record subject called by initDocuments.
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_Doc_MissionControl;
 */

player createDiaryRecord["7Cav",
    ["S3 Mission Control",
        "
You can as Mission Control execute functions mid mission on vehicles and objects via the <font color='#ffc61a'>Execute Code Module</font> located under <font color='#ffc61a'>Development Tools</font>. Simply drop the module ontop of the target.<br/><br/>
<p><font color='#ffc61a'>Here are some useful functions you can use:</font>
<br/><br/>
        <font color='#ffc61a'>Call on basicly any item.</font><br/>
                [_this select 1] call cScripts_fnc_doStarterCrate;<br/>
                [_this select 1,'none',true,true,true,1] call cScripts_fnc_doStarterCrate;<br/>
<br/>
        <font color='#ffc61a'>Call on a Vehicle</font><br/>
                call cScripts_fnc_initVehicle;<br/>
<br/>
        <font color='#ffc61a'>Call on a NATO Crates</font><br/>
                call cScripts_fnc_initSupply;<br/>
<br/>
        <font color='#ffc61a'>Call on any flag pole</font><br/>
                [_this select 1] call cScripts_fnc_flag;<br/>
<br/>
        <font color='#ffc61a'>Call on a UH60</font><br/>
                [_this select 1,'b1'] call cScripts_fnc_UH60TailNumber;</p>
        "
    ]
];
