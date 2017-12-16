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
As Mission Control, you can execute functions mid-mission on vehicles and objects via the <font color='#ffc61a'>Execute Code Module</font> located under <font color='#ffc61a'>Development Tools</font> in Zeus. Simply drop the module ontop of the target, then enter the one of these functions or other desired code.<br/><br/>
<p><font color='#ffc61a'>Here are some useful functions you can use:</font>
<br/><br/>
        <font color='#ffc61a'>Add starter crate actions and inventory:</font><br/>
                [_this select 1] call cScripts_fnc_doStarterCrate;<br/>
                Optional arguments: <br/>
                    1: Quick Select option: 'full','medium','lite', or 'none'<br/>
                    2: Add ReGear action (true or false, default true)
                    3: Add Heal action (true or false, default true)
                    4: Add Insignia actions (true or false, default true)
                    5: Inventory Quantity Multiplier (any positive number, default 1; 0.5 for half, 2 for double, etc)
                [_this select 1,'none',true,true,true,1] call cScripts_fnc_doStarterCrate;<br/>
<br/>
        <font color='#ffc61a'>Set a flag to the 7th Cavalry garry owen texture:</font><br/>
                [_this select 1] call cScripts_fnc_flag;<br/>
<br/>
        <font color='#ffc61a'>Set UH-60 tail number (currently only b1 to b5 available):</font><br/>
                [_this select 1,'b1'] call cScripts_fnc_UH60TailNumber;</p>
        "
    ]
];
