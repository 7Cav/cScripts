/*
 * Author: A.Brostrom
 * This create diary records to all players.
 *
 * Arguments:
 *
 * Example:
 * [this] call cScripts_fnc_DocMC;
 */


 
player createDiaryRecord["7Cav",
    ["S3 Mission Control",
        "
            You can as Mission Control execute functions mid mission on veichles and objects via the <font color='#ffc61a'>Execute Code Moduel</font> located under <font color='#ffc61a'>Development Tools</font>. Simply drop the moduel ontop of the target.<br/><br/>
            <p><font color='#ffc61a'>Here are some usefull functions click to copy:</font>
            <br/><br/>
            <execute expression=""_string = '[_this select 1] call cScripts_fnc_initMain;';
                copyToClipboard _string; hint 'Copied to clipboard'"">[_this select 1] call cScripts_fnc_initMain;</execute>
            <br/>
            <execute expression=""_string = '[_this select 1] call cScripts_fnc_initMainSandbox;';
                copyToClipboard _string; hint 'Copied to clipboard'"">[_this select 1] call cScripts_fnc_initMainSandbox;</execute><br/>
            <execute expression=""_string = '[_this select 1] call cScripts_fnc_initVehicle;';
                copyToClipboard _string; hint 'Copied to clipboard'"">[_this select 1] call cScripts_fnc_initVehicle;</execute><br/>
            <br/><br/>
            <execute expression=""_string = '[_this select 1,1.0] call cScripts_fnc_equipCrate;';
                copyToClipboard _string; hint 'Copied to clipboard'"">[_this select 1,1.0] call cScripts_fnc_equipCrate;</execute><br/>
            <execute expression=""_string = '[_this select 1,1.0] call cScripts_fnc_equipMedicalCrate;';
                copyToClipboard _string; hint 'Copied to clipboard'"">[_this select 1,1.0] call cScripts_fnc_equipMedicalCrate;</execute>
        "
    ]
];