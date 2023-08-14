#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function test all loadout arrays
 *
 * Arguments:
 *
 * Return Value:
 * True or False
 *
 * Example:
 * call cScripts_fnc_testing_loadoutArrays
 * 0 spawn compile preprocessFileLineNumbers 'cScripts\functions\testing\fn_testing_loadoutArrays.sqf'
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


private _return = true;

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
        _return = false;
    };

    // Testing loadout array structure
    ["Testing loadout array structure", "TEST", false, false, "TESTING"] call FUNC(log);
        switch (_forEachIndex) do {
            private _element = _x;
            case 0: {
                if (!_element isEqualType []) then { 
                    [format["FAILED: Loadout %1 Primary Weapon is not a array got %2", _class, _element], "FAILED", true, false, "TESTING"] call FUNC(log);
                    _return = false;
                };
            };
            case 1: {
                if (_element isEqualType []) then { 
                    [format["FAILED: Loadout %1 Secondary Weapon is not a array got %2", _class, _element], "FAILED", true, false, "TESTING"] call FUNC(log);
                    _return = false;
                };
            };
            case 2: {
                if (_element isEqualType []) then { 
                    [format["FAILED: Loadout %1 Handgun Weapon is not a array got %2", _class, _element], "FAILED", true, false, "TESTING"] call FUNC(log);
                    _return = false;
                };
            };
            case 3: {
                if (_element isEqualType []) then { 
                    [format["FAILED: Loadout %1 Uniform is not a array got %2", _class, typeName _element], "FAILED", true, false, "TESTING"] call FUNC(log);
                    _return = false;
                };
            };
            case 4: {
                if (_element isEqualType []) then { 
                    [format["FAILED: Loadout %1 Vest is not a array got %2", _class, typeName _element], "FAILED", true, false, "TESTING"] call FUNC(log);
                    _return = false;
                };
            case 5: {
                if (_element isEqualType []) then { 
                    [format["FAILED: Loadout %1 Backpack is not a array got %2", _class, typeName _element], "FAILED", true, false, "TESTING"] call FUNC(log);
                    _return = false;
                };
            };
            case 6: {
                if (_element isEqualType "") then { 
                    [format["FAILED: Loadout %1 Headgear is not a string got %1", _class, typeName _element], "FAILED", true, false, "TESTING"] call FUNC(log);
                    _return = false;
                };
            };
            case 7: {
                if (typeName _element != "") then { 
                    [format["FAILED: Loadout %1 Goggles/Facewear is not a string got %1", _class, typeName _element], "FAILED", true, false, "TESTING"] call FUNC(log);
                    _return = false;
                };
            };
            case 8: {
                if (_element isEqualType []) then { 
                    [format["FAILED: Loadout %1 Binoculars is not a array got %2", _class, typeName _element], "FAILED", true, false, "TESTING"] call FUNC(log);
                    _return = false;
                };
            };
            case 9: {
                if (_element isEqualType []) then { 
                    [format["FAILED: Loadout %1 Assigned Items is not a array got %2", _class, typeName _element], "FAILED", true, false, "TESTING"] call FUNC(log);
                    _return = false;
                };
                if (count _element != 6) then { 
                    [format["FAILED: Loadout %1 Assigned Items size array is wrong expected 6 got %2", _class, count _element], "FAILED", true, false, "TESTING"] call FUNC(log);
                    _return = false;
                };
                {
                    if (_element isEqualType "") then { 
                        [format["FAILED: Loadout %1 Assigned Items expected item in string got %2", _class, typeName _x], "FAILED", true, false, "TESTING"] call FUNC(log);
                        _return = false;
                    }
                } forEach _element;
            };
        };
    } forEach _loadout;


    [format["Testing loadout %1", _class], "TEST END", false, false, "TESTING"] call FUNC(log);
    diag_log text "";

} forEach _classnameList;


if (_return) then {
    ["TEST SUCCESSFUL", "INFO", true, false, "TESTING"] call FUNC(log);
} else {
    ["TEST FAILED", "INFO", true, false, "TESTING"] call FUNC(log);
};
["TEST COMPLETED", "INFO", true, false, "TESTING"] call FUNC(log);
diag_log text "";
diag_log text "###############################################################################################################";
diag_log text "";

_return;
