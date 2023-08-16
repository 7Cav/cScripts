#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add diary records.
 *
 * Example:
 * call cScripts_fnc_init_diary
 *
 * Public: No
 */

waitUntil {!isNull player && player == player};
waitUntil {profileName != ""};
if (!isNil{player getVariable QEGVAR(player,documents)}) exitWith {SHOW_WARNING_1("initDiary", "Diary Records already applied for %1.", player)};

INFO_1("initDiary", "Applying Diary Records to %1...", player);

// Add New Topic (7th Cavalry)
if !(player diarySubjectExists "7Cav") then {
    player createDiarySubject ["7Cav","7th Cavalry"];

    // Load diary records (NOTE! The load order is reversed. So the top will be at the bottom after load.)
    call FUNC(Doc_MissionControl);
    call FUNC(Doc_Radio);
    call FUNC(Doc_Info);
};

// Add New Topic (Checklists)
if !(player diarySubjectExists "Chklists") then {
    player createDiarySubject ["Chklists","Checklists"];

    // Load diary records (NOTE! The load order is reversed. So the top will be at the bottom after load.)
    call FUNC(DocChklist_LZEXTRACT);
    call FUNC(DocChklist_LZINSERT);
    call FUNC(DocChklist_LZSPECS);
    call FUNC(DocChklist_JMTASKS);
    call FUNC(DocChklist_CFF);
};

// Add New Topic (Radio Reports)
if !(player diarySubjectExists "radioReports") then {
    player createDiarySubject ["radioReports","Radio Reports"];

    // Load diary records (NOTE! The load order is reversed. So the top will be at the bottom after load.)
    call FUNC(DocRadio_LACEACE);
    call FUNC(DocRadio_MEDEVAC);
    call FUNC(DocRadio_ROTARYPICKUP);
    call FUNC(DocRadio_SPOTREP);
};

player setVariable [QEGVAR(player,documents), true];
