/*
 * Author: CPL.Brostrom.A 
 * This adds a quick selection loadout for a CavBox Used by InitMain and InitMainSandbox
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelect;
 */

#include "..\script_component.hpp";

params ["_object"];

_object addAction ["Quick Selection", {}];
_object addAction ["   <t color='#ffd966'>Rifleman</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];
_object addAction ["   <t color='#ffd966'>Rifleman LAT</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];
_object addAction ["   <t color='#ffd966'>Rifleman HAT</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];
_object addAction ["   <t color='#ffd966'>Rifleman M-AR Assistant</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];
_object addAction ["   <t color='#ffd966'>Rifleman H-AR Assistant</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];
_object addAction ["   <t color='#ffd966'>Rifleman Ammo Bearer</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];



// ACE Actions (Quick Select)
private _Icon = "cScripts\Data\Icon\icon_00.paa";
private _quickPickMenu = ["cScriptQuickSelection", "Quick Selection", _Icon, {""}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _quickPickMenu] call ace_interact_menu_fnc_addActionToObject;

private _quickPickRifleman = ["cScriptQuickPicRifleman", "Rifleman", "", {[player,"C_R"] call Poppy_fnc_applyLoadout;}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "cScriptQuickSelection"], _quickPickRifleman] call ace_interact_menu_fnc_addActionToObject;

private _quickPickRiflemanLAT = ["cScriptQuickPicRiflemanLAT", "Rifleman LAT", "", {[player,"C_R"] call Poppy_fnc_applyLoadout;}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "cScriptQuickSelection"], _quickPickRiflemanLAT] call ace_interact_menu_fnc_addActionToObject;

private _quickPickRiflemanHAT = ["cScriptQuickPicRiflemanHAT", "Rifleman HAT", "", {[player,"C_R"] call Poppy_fnc_applyLoadout;}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "cScriptQuickSelection"], _quickPickRiflemanHAT] call ace_interact_menu_fnc_addActionToObject;

private _quickPickRiflemanMARAssistant = ["cScriptQuickPicRiflemanMARAssistant", "Rifleman M-AR Assistant", "", {[player,"C_R"] call Poppy_fnc_applyLoadout;}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "cScriptQuickSelection"], _quickPickRiflemanMARAssistant] call ace_interact_menu_fnc_addActionToObject;

private _quickPickRiflemanHARAssistant = ["cScriptQuickPicRiflemanHARAssistant", "Rifleman H-AR Assistant", "", {[player,"C_R"] call Poppy_fnc_applyLoadout;}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "cScriptQuickSelection"], _quickPickRiflemanHARAssistant] call ace_interact_menu_fnc_addActionToObject;

private _quickPickRiflemanAmmoBearer = ["cScriptQuickPicRiflemanAmmoBearer", "Rifleman Ammo Bearer", "", {[player,"C_R"] call Poppy_fnc_applyLoadout;}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "cScriptQuickSelection"], _quickPickRiflemanAmmoBearer] call ace_interact_menu_fnc_addActionToObject;
