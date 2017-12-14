/*
 * Author: CPL.Brostrom.A
 * This function generates a quick selection button.
 *
 * Arguments:
 * 0: Object <STRING>
 * 1: Lable <STRING>
 * 2: Loadout classname <STRING>
 * 3: Path to icon <STRING>                                 (Optional)
 * 4: Categorys <ARRAY>                                     (Optional)  [Default: ["ACE_MainActions","cScriptQuickSelectionMenu"]]
 * 5: Require Platoon Variable <BOOL>                       (Optional)  [Default: false]
 * 6: Allow loadout to be selectable via addAction <BOOL>   (Optional)  [Default: false]
 *
 * Example:
 * [this,"Rifleman","Class_Rifleman"] call cScripts_fnc_addQuickSelection;
 * [this,"Rifleman","Class_Rifleman","",["ACE_MainActions","cScriptQuickSelectionMenu"]] call cScripts_fnc_addQuickSelection;
 * [this,"Rifleman","Class_Rifleman","",["ACE_MainActions","cScriptQuickSelectionMenu"],false,false] call cScripts_fnc_addQuickSelection;
 */

#include "..\script_component.hpp";

params [
    ["_object", objNull, [objNull]],
    ["_lable", "", [""]],
    ["_className", "", [""]],
    ["_icon", "", [""]],
    ["_category", ["ACE_MainActions","cScriptQuickSelectionMenu"], [[]]],
    ["_requirePlatoonVariable", false],
    ["_allowAddActionSelect", false]
];

diag_log "[cScripts Manual Debug START]";
diag_log _object;
diag_log _lable;
diag_log _className;
diag_log _category;
diag_log _requirePlatoonVariable;
diag_log _allowAddActionSelect;
diag_log "[cScripts Manual Debug END]";

//make addAction for class creates.
if (_allowAddActionSelect) then {
    if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Alpha"]) then {
        if (_requirePlatoonVariable) then {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "[_this, 'CAV_isAlphaUnit'] call cScripts_fnc_canSelectLoadout;"];
        } else {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className];
        };
    };
};
if (_allowAddActionSelect) then {
    if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"]) then {
        if (_requirePlatoonVariable) then {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "[player, 'CAV_isBravoUnit'] call cScripts_fnc_canSelectLoadout;"];
        } else {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className];
        };
    };
};
if (_allowAddActionSelect) then {
    if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Chralie"]) then {
        if (_requirePlatoonVariable) then {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "[player, 'CAV_isCharlieUnit'] call FUNC(canSelectLoadout);"];
        } else {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className];
        };
    };
    if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Ranger"]) then {
        if (_requirePlatoonVariable) then {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "[_this, 'CAV_isRangerUnit'] call FUNC(canSelectLoadout);"];
        } else {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className];
        };
    };
    if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Medical"]) then {
        if (_requirePlatoonVariable) then {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "[_this, 'CAV_isMedicalUnit'] call FUNC(canSelectLoadout);"];
        } else {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className];
        };
    };
    /* if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu"]) then {
        _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className];
    }; */
};

// add aceAction selection
if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Alpha"]) then {
    if (_requirePlatoonVariable) then {
        private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {[player, 'CAV_isAlphaUnit'] call FUNC(canSelectLoadout);}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection] call ace_interact_menu_fnc_addActionToObject;
    } else {
        private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection] call ace_interact_menu_fnc_addActionToObject;
    };
};
if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"]) then {
    if (_requirePlatoonVariable) then {
        private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {[player, 'CAV_isBravoUnit'] call FUNC(canSelectLoadout);}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection] call ace_interact_menu_fnc_addActionToObject;
    } else {
        private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection] call ace_interact_menu_fnc_addActionToObject;
    };
};
if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Chralie"]) then {
    if (_requirePlatoonVariable) then {
        private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {[player, 'CAV_isCharlieUnit'] call FUNC(canSelectLoadout);}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection] call ace_interact_menu_fnc_addActionToObject;
    } else {
        private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection] call ace_interact_menu_fnc_addActionToObject;
    };
};
if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Ranger"]) then {
    if (_requirePlatoonVariable) then {
        private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {[player, 'CAV_isRangerUnit'] call FUNC(canSelectLoadout);}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection] call ace_interact_menu_fnc_addActionToObject;
    } else {
        private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection] call ace_interact_menu_fnc_addActionToObject;
    };
};
if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Medical"]) then {
    if (_requirePlatoonVariable) then {
        private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {[player, 'CAV_isMedicalUnit'] call FUNC(canSelectLoadout);}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection] call ace_interact_menu_fnc_addActionToObject;
    } else {
        private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection] call ace_interact_menu_fnc_addActionToObject;
    };
};
