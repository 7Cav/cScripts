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
            You can as Mission Control execute functions mid mission on vehicles and objects via the <font color='#ffc61a'>Execute Code Module</font> located under <font color='#ffc61a'>Development Tools</font>. Simply drop the module ontop of the target.<br/><br/>
            <p><font color='#ffc61a'>Here are some useful functions click to copy:</font>
            <br/><br/>
            <executeClose expression=""_string = '[_this select 1] call cScripts_fnc_initMain;';
                copyToClipboard _string; hint 'Copied to clipboard'"">[_this select 1] call cScripts_fnc_initMain;</executeClose>
            <br/>
            <executeClose expression=""_string = '[_this select 1] call cScripts_fnc_initMainSandbox;';
                copyToClipboard _string; hint 'Copied to clipboard'"">[_this select 1] call cScripts_fnc_initMainSandbox;</executeClose><br/>
            <executeClose expression=""_string = '[_this select 1] call cScripts_fnc_initVehicle;';
                copyToClipboard _string; hint 'Copied to clipboard'"">[_this select 1] call cScripts_fnc_initVehicle;</executeClose><br/>
            <br/><br/>
            <executeClose expression=""_string = '[_this select 1,1.0] call cScripts_fnc_equipCrate;';
                copyToClipboard _string; hint 'Copied to clipboard'"">[_this select 1,1.0] call cScripts_fnc_equipCrate;</executeClose><br/>
            <executeClose expression=""_string = '[_this select 1,1.0] call cScripts_fnc_equipMedicalCrate;';
                copyToClipboard _string; hint 'Copied to clipboard'"">[_this select 1,1.0] call cScripts_fnc_equipMedicalCrate;</executeClose><br/>
            <br/><br/>
            <executeClose expression=""_string = '[_this select 1] call cScripts_fnc_flag;';
                copyToClipboard _string; hint 'Copied to clipboard'"">[_this select 1] call cScripts_fnc_flag;</executeClose><br/></p>
        "
    ]
];