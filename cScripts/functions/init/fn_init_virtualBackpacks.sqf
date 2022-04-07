#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function handle the virtual backpack system
 *
 * Example:
 * call cScripts_fnc_init_virtualBackpacks
 *
 * Public: No
 */

if !(GVAR(isPlayer)) exitWith {};

private _condition = { true };
private _virtualBackpackCat = [QEGVAR(Actions,virtualBackpacks), "Backpacks", "", {true}, _condition] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _virtualBackpackCat] call ace_interact_menu_fnc_addActionToObject;

// First Actions
private _condition_Save1 = {
    (count (player getVariable [QEGVAR(player,backpack), []]) < 1) &&
    {(backpack player != "") &&
    {(count (player getVariable [QEGVAR(player,virtualBackpack_1), []]) < 1)}}
};
private _virtualBackpack_1_save = [QEGVAR(Actions,virtualBackpack_1_save),
    "Put away backpack", "", {
    [player, QEGVAR(player,virtualBackpack_1)] call FUNC(saveVirtualBackpack);
}, _condition_Save1] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", QEGVAR(Actions,virtualBackpacks)], _virtualBackpack_1_save] call ace_interact_menu_fnc_addActionToObject;

private _condition_Load1 = {
    (count (player getVariable [QEGVAR(player,backpack), []]) < 1) &&
    {(backpack player == "") &&
    {(count (player getVariable [QEGVAR(player,virtualBackpack_1), []]) > 1)}}
};
private _virtualBackpack_1_Load = [QEGVAR(Actions,virtualBackpack_1_load),
    format ["Take out %1", [player, QEGVAR(player,virtualBackpack_1)] call FUNC(getVirtualBackpackName)], "", {
    [player, QEGVAR(player,virtualBackpack_1)] call FUNC(loadVirtualBackpack);
}, _condition_Load1] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", QEGVAR(Actions,virtualBackpacks)], _virtualBackpack_1_Load] call ace_interact_menu_fnc_addActionToObject;

private _condition_Swap1 = {
    (count (player getVariable [QEGVAR(player,backpack), []]) < 1) &&
    {(backpack player != "") &&
    {(count (player getVariable [QEGVAR(player,virtualBackpack_1), []]) > 1)}}
};
private _virtualBackpack_1_Swap = [QEGVAR(Actions,virtualBackpack_1_Swap),
    format ["Swap out to %1", [player, QEGVAR(player,virtualBackpack_1)] call FUNC(getVirtualBackpackName)], "", {
    [player, QEGVAR(player,virtualBackpack_1)] call FUNC(swapVirtualBackpack);
}, _condition_Swap1] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", QEGVAR(Actions,virtualBackpacks)], _virtualBackpack_1_Swap] call ace_interact_menu_fnc_addActionToObject;

// Second Actions
private _condition_Save2 = {
    (count (player getVariable [QEGVAR(player,backpack), []]) < 1) &&
    {(backpack player != "") &&
    {(count (player getVariable [QEGVAR(player,virtualBackpack_2), []]) < 1)}}
};
private _virtualBackpack_2_save = [QEGVAR(Actions,virtualBackpack_2_save),
    "Put away backpack", "", {
    [player, QEGVAR(player,virtualBackpack_2)] call FUNC(saveVirtualBackpack);
}, _condition_Save2] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", QEGVAR(Actions,virtualBackpacks)], _virtualBackpack_2_save] call ace_interact_menu_fnc_addActionToObject;

private _condition_Load2 = {
    (count (player getVariable [QEGVAR(player,backpack), []]) < 1) &&
    {(backpack player == "") &&
    {(count (player getVariable [QEGVAR(player,virtualBackpack_2), []]) > 1)}}
};
private _virtualBackpack_2_Load = [QEGVAR(Actions,virtualBackpack_2_load),
    format ["Take out %1", [player, QEGVAR(player,virtualBackpack_2)] call FUNC(getVirtualBackpackName)], "", {
    [player, QEGVAR(player,virtualBackpack_2)] call FUNC(loadVirtualBackpack);
}, _condition_Load2] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", QEGVAR(Actions,virtualBackpacks)], _virtualBackpack_2_Load] call ace_interact_menu_fnc_addActionToObject;

private _condition_Swap2 = {
    (count (player getVariable [QEGVAR(player,backpack), []]) < 1) &&
    {(backpack player != "") &&
    {(count (player getVariable [QEGVAR(player,virtualBackpack_2), []]) > 1)}}
};
private _virtualBackpack_2_Swap = [QEGVAR(Actions,virtualBackpack_2_Swap),
    format ["Swap out to %1", [player, QEGVAR(player,virtualBackpack_2)] call FUNC(getVirtualBackpackName)], "", {
    [player, QEGVAR(player,virtualBackpack_2)] call FUNC(swapVirtualBackpack);
}, _condition_Swap2] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", QEGVAR(Actions,virtualBackpacks)], _virtualBackpack_2_Swap] call ace_interact_menu_fnc_addActionToObject;


// Event handlers
["CAManBase", "Respawn", {
    params ["_unit"];
    if (_unit == player) then {
        if (count (player getVariable [QEGVAR(player,virtualBackpack_1), []]) > 1) then {
            _unit setVariable [QEGVAR(player,virtualBackpack_1), []];
        };
        if (count (player getVariable [QEGVAR(player,virtualBackpack_2), []]) > 1) then {
            _unit setVariable [QEGVAR(player,virtualBackpack_2), []];
        };
    };
}] call CBA_fnc_addClassEventHandler;