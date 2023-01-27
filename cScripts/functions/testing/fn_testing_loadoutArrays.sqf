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

["There should be no script errors when this function runs.", "INFO", true, false, "TESTING"] call FUNC(log);

private _classnameList = configProperties [missionconfigfile >> "CfgLoadouts", "getNumber (_x >> 'scope') >= 2", true];
{
    private _class = configName _x;
    [format["Testing loadout %1", _class], "TEST START", true, false, "TESTING"] call FUNC(log);

    // Obtain loadout
    ["... Loadout array parse ...", "TEST", false, false, "TESTING"] call FUNC(log);
    private _loadout = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "loadout");
    _loadout = parseSimpleArray _loadout;
    ["... Loadout array parse ...", "TEST", false, false, "TESTING"] call FUNC(log);

    // Testing array size
    ["Testing array size it should be 1", "TEST", true, false, "TESTING"] call FUNC(log);
    private _arraySize = count [_loadout];
    if (_arraySize == 1) then {
        [format["SUCCESS: Array size of loadout %1 size is %1", _classnameList, _arraySize], "SUCCESS", true, false, "TESTING"] call FUNC(log);
    } else {
        [format["FAILED: Array size of loadout %1 size is %1", _classnameList, _arraySize], "FAILED", true, false, "TESTING"] call FUNC(log);
    };

    [format["Testing loadout %1", _class], "TEST END", true, false, "TESTING"] call FUNC(log);

} forEach _classnameList;

true