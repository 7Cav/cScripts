#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function creates a "CavArsenal".
 * This arsenal is created and destroyed on usage to maek sure the items inside are populated with correct items.
 *
 * Arguments:
 * 0: aceCategory <ARRAY> (Default: ["ACE_MainActions"])
 *
 * Example:
 * call cScripts_fnc_addArsenal
 */

params [
    ["_category", ["ACE_MainActions"], [["ACE_MainActions"]]]
];

private _icon = "cScripts\Data\Icon\icon_arsenal_ca.paa";
private _arsenalStatement = {
    INFO_2("Staging Arsenal", "Creating staging arsenal for %1 [%2]", player, typeOf player);

    call FUNC(clearDefaultArsenalLoadouts);
    waitUntil { count ace_arsenal_defaultLoadoutsList == 0 };
    call FUNC(addDefaultArsenalLoadout);
    waitUntil { count ace_arsenal_defaultLoadoutsList != 0 };

    if (EGVAR(Settings,useFilteredArsenal)) then {
        private _items = GETVAR(player,EGVAR(Player,ArsenalWhitelist), []);
        if (_items isEqualTo []) then {
            SHOW_WARNING_2("Staging Arsenal", "Whitleist was empty for %1 [%2] attepting to recreate it", player, typeOf player);
            private _whitelist = call cScripts_fnc_getArsenalWhitelist;
            SETVAR(player,EGVAR(Player,ArsenalWhitelist), _whitelist);
            _items = GETVAR(player,EGVAR(Player,ArsenalWhitelist), []);
        };

        INFO_3("Staging Arsenal", "Whitleist containing %1 items added to %2 [%3]", count _items, player, typeOf player);
        if (_items isEqualTo []) exitWith {
            SHOW_WARNING_2("Staging Arsenal", "Whitleist is empty for %1 [%2]", player, typeOf player);
            [
                [],
                ["Arsenal is not avalible for your class."],
                [""],
                [""]
            ] call CBA_fnc_notify;
        };
        [player, _items] call ace_arsenal_fnc_addVirtualItems;
    } else {
        [player, true] call ace_arsenal_fnc_addVirtualItems;
    };


    [{
        INFO_2("Staging Arsenal", "Opening Staging Arsenal for %1 [%2]", player, typeOf player);
        [player, player, false] call ace_arsenal_fnc_openBox;
        [QEGVAR(StagingArsenal,displayOpen)] call CBA_fnc_localEvent;
        [{
            private _loadout = [player] call EFUNC(gear,getLoadoutName);
            private _name = getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "displayName");
            private _company = getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "company");
            [(findDisplay 1127001), format["Arsenal for %1 Co. %2 loaded", [_company] call CBA_fnc_capitalize, _name]] call ace_arsenal_fnc_message;
        }, [], 0.35] call CBA_fnc_waitAndExecute;
    }] call CBA_fnc_execNextFrame;
};

INFO_2("Staging Arsenal", "Adding staging arsenal action to %1 [%2]", player, typeOf player);
private _arsenalAction = [QEGVAR(Actions,ArsenalAction), "Arsenal", _icon, _arsenalStatement, {true}] call ace_interact_menu_fnc_createAction;
[player, 1, _category, _arsenalAction] call ace_interact_menu_fnc_addActionToObject;