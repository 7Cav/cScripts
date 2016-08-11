/*
 * Author: A.Brostrom
 * This create diary records to all players.
 *
 * Arguments:
 *
 * Example:
 * [] call cScripts_fnc_DocMedicalSystemAdvancedEasy;
 */

player createDiaryRecord["7Cav",
    ["Medical System Advanced (Easy)",
        "
            <p>You are running the Advanced Easy Medical System<br/>
            This system allows for a more friendly experience usign the ACE advanced medical system.<br/><br/>
            <font color='#ffc61a'>PAK Usage</font><br/>
            Medics are able to where ever they are located, when a patient is stable, able to apply <font color='#ffc61a'>A Personal Aid Kit</font> (PAK). In addition the PAK do not disappear after usage and can be reused manytimes.<br/><br/>
            <font color='#ffc61a'>Surgical Kit Usage</font><br/>
            Medics are able to stitch a injury where ever you are and at anytime. The kit will not disappear after usage, So you will be able to stitch the next patient with your unclean equipment.<br/><br/>
            <font color='#ffc61a'>Revive Timer</font><br/>
            When you are hit and go down there is a <font color='#ffc61a'>120 second</font> count down. During this time a medic or teammate can try to revive you using CPR.</p>
        "
    ]
];