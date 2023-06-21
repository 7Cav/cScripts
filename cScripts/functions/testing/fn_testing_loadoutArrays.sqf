#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function test all loadout arrays
 *
 * Arguments:
 *
 * Return Value:
 * True when done <Boolena>
 *
 * Example:
 * call cScripts_fnc_testing_loadoutArrays
 *
 */

diag_log text "";
diag_log text "###############################################################################################################";
diag_log text "";
["STARTING UNIT TEST FOR LOADOUT ARRAYS", "INFO", true, false, "TESTING"] call FUNC(log);
["There should be no script errors when this function runs.", "INFO", true, false, "TESTING"] call FUNC(log);

diag_log text "";
diag_log text "###############################################################################################################";
diag_log text "";

private _classnameList = configProperties [missionconfigfile >> "CfgLoadouts", "getNumber (_x >> 'scope') >= 2", true];
{
    private _class = configName _x;
    [format["Testing loadout %1", _class], "TEST START", false, false, "TESTING"] call FUNC(log);

    // Obtain loadout
    ["Obtaining loadout array if there are a error in between here something is wrong...", "TEST", false, false, "TESTING"] call FUNC(log);
    ["... Loadout array parse ...", "TEST", false, false, "TESTING"] call FUNC(log);
    private _loadout = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "loadout");
    _loadout = parseSimpleArray _loadout;
    ["... Loadout array parse ...", "TEST", false, false, "TESTING"] call FUNC(log);

    // Testing array size
    ["Testing array size it should be 1", "TEST", false, false, "TESTING"] call FUNC(log);
    private _arraySize = count [_loadout];
    if (_arraySize == 1) then {
        [format["SUCCESS: Array size of loadout %1 size is %2", _class, _arraySize], "SUCCESS", false, false, "TESTING"] call FUNC(log);
    } else {
        [format["FAILED: Array size of loadout %1 size is %2", _class, _arraySize], "FAILED", true, false, "TESTING"] call FUNC(log);
    };

    [format["Testing loadout %1", _class], "TEST END", false, false, "TESTING"] call FUNC(log);
    diag_log text "";

} forEach _classnameList;

["TEST COMPLETED", "INFO", true, false, "TESTING"] call FUNC(log);
diag_log text "";
diag_log text "###############################################################################################################";
diag_log text "";

true