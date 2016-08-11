/*
 * Author: A.Brostrom
 * This create diary records to all players.
 *
 * Arguments:
 *
 * Example:
 * [this] call cScripts_fnc_DocMedicalSystemBasic;
 */

player createDiaryRecord["7Cav",
    ["Medical System Basic",
        "
            This mission is running the basic medical system. You can fully heal a person with packing bandages. Good for arcade play.
        "
    ]
];