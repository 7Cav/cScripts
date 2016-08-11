/*
 * Author: A.Brostrom
 * This create diary records to all players.
 *
 * Arguments:
 *
 * Example:
 * [this] call cScripts_fnc_DocMedicalSystemAdvanced;
 */

player createDiaryRecord["7Cav",
    ["Medical System Advanced",
        "
            <p>This is the standard Advanced medical system used during operations and hardcore sandbox players.<br/><br/>
            <font color='#ffc61a'>PAK and Surgical Kit Usage</font><br/>
            Medics will only be able to apply PAK and Surgical Kit inside a medical facility or vehicle. The Kit and PAK will be removed after usage.</p>
        "
    ]
];