/*
 * Author: A.Brostrom
 * This create diary records to all players.
 *
 * Arguments:
 *
 * Example:
 * [this] call cScripts_fnc_initDoc;
 */
 
if (!isServer) exitWith {};

waitUntil {!isNull player && player == player};

if(player diarySubjectExists "7Cav")exitwith{};
player createDiarySubject ["7Cav","7th Cavalry"];
player createDiaryRecord["7Cav",
    [
        "S3 Mission Control",
            "
                You can as Mission Control execute functions mid mission on veichles and objects via the <font color='#ffc61a'>Execute Code Moduel</font> located under <font color='#ffc61a'>Development Tools</font>. Simply drop the moduel ontop of the target.<br/><br/>
                <p><font color='#ffc61a'>Here are some usefull functions:</font><br/>For more information about them visit the wiki:<br/>https://7cav.us/wiki/Wiki-Pages/cScript</p>
                <br/><br/>
                <font color='#ffc61a'>[this] call cScripts_fnc_initMain;</font>
                <br/>
                <font color='#ffc61a'>[this] call cScripts_fnc_initMainSandbox;</font>
                <br/>
                <font color='#ffc61a'>[this] call cScripts_fnc_initVehicle;</font>
                <br/><br/>
                <font color='#ffc61a'>[this,1] call cScripts_fnc_equipCrate;</font>
                <br/>
                <font color='#ffc61a'>[this,1] call cScripts_fnc_equipMedicalCrate;</font>
                <br/>
                <font color='#ffc61a'>[this,1] call cScripts_fnc_initMainSandbox;</font>
                <br/>
                <br/>
            "
    ]
];