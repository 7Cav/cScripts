#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function crates a arsenal on the given object with items used in each company.
 * If full, none, or empty value is given the arsenal will be "full".
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Company <STRING>
 *
 * Example:
 * ["box", "full"] call cScripts_fnc_addArsenal
 */

params [
    ["_category", ["ACE_MainActions"], [["ACE_MainActions"]]]
];

private _icon = "cScripts\Data\Icon\icon_arsenal_ca.paa";
private _arsenalStatement = {
    ace_arsenal_defaultLoadoutsList = [];
    [] call FUNC(getUnitArsenalDefault);

    private _items = call FUNC(getArsenalWhitelist);
    [player, _items] call ace_arsenal_fnc_initBox;
    [{
        [player, player, false] call ace_arsenal_fnc_openBox;
        [{
            private _loadout = [player] call EFUNC(gear,getCurrentLoadout);
            private _name = getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "displayName");
            private _company = getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "company");
            [(findDisplay 1127001), format["Arsenal for %1 Co. %2 loaded", [_company] call CBA_fnc_capitalize, _name]] call ace_arsenal_fnc_message;
        }, [], 0.5] call CBA_fnc_waitAndExecute;
    }] call CBA_fnc_execNextFrame;

    [{
        [player, false] call ace_arsenal_fnc_removeBox;
    }] call CBA_fnc_execNextFrame;
};

private _arsenalAction = [QEGVAR(Actions,ArsenalAction), "Arsenal", _icon, _arsenalStatement, {true}] call ace_interact_menu_fnc_createAction;
[player, 1, _category, _arsenalAction] call ace_interact_menu_fnc_addActionToObject;

// Recreate after closing
["ace_arsenal_displayClosed", {
    [] call EFUNC(init,aceArsenalDefault);
}] call CBA_fnc_addEventHandler;