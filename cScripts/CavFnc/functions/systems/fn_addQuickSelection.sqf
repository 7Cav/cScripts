#include "..\script_component.hpp";
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
 * 5: Require Company Variable <BOOL>                       (Optional)  [Default: false]
 * 6: Allow loadout to be selectable via addAction <BOOL>   (Optional)  [Default: false]
 *
 * Example:
 * [this,"Rifleman","Class_Rifleman"] call cScripts_fnc_addQuickSelection;
 * [this,"Rifleman","Class_Rifleman","",["ACE_MainActions","cScriptQuickSelectionMenu"]] call cScripts_fnc_addQuickSelection;
 * [this,"Rifleman","Class_Rifleman","",["ACE_MainActions","cScriptQuickSelectionMenu"],false,false] call cScripts_fnc_addQuickSelection;
 */

params [
    ["_object", objNull, [objNull]],
    ["_lable", "", [""]],
    ["_className", "", [""]],
    ["_icon", "", [""]],
    ["_category", ["ACE_MainActions","cScriptQuickSelectionMenu"], [[]]],
    ["_requireCompanyVariable", true],
    ["_allowAddActionSelect", false]
];

//make addAction for class creates.
if (_allowAddActionSelect) then {
    if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Alpha"]) then {
        if (_requireCompanyVariable) then {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "", QUOTE([ARR_2(_this,'Alpha')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "", "true", 5]
        };
    };
    if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"]) then {
        if (_requireCompanyVariable) then {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "", QUOTE([ARR_2(_this,'Bravo')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "", "true", 5]
        };
    };
    if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]) then {
        if (_requireCompanyVariable) then {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "", QUOTE([ARR_2(_this,'Charlie')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "", "true", 5]
        };
    };
    if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Ranger"]) then {
        if (_requireCompanyVariable) then {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "", QUOTE([ARR_2(_this,'Ranger')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "", "true", 5]
        };
    };
    if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Medical"]) then {
        if (_requireCompanyVariable) then {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "", QUOTE([ARR_2(_this,'Medical')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction [format ["   <t color='#ffd966'>%1</t>", _lable], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className, 1.5, true, true, "", "true", 5]
        };
    };
};

// add aceAction selection
if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Alpha"]) then {
    if (_requireCompanyVariable) then {
        private _quickSelection_Alpha = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {[ARR_2(player,'Alpha')] call FUNC(hasCompanyVariable)}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection_Alpha] call ace_interact_menu_fnc_addActionToObject;
    } else {
        private _quickSelection_Alpha = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection_Alpha] call ace_interact_menu_fnc_addActionToObject;
    };
};
if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"]) then {
    if (_requireCompanyVariable) then {
        private _quickSelection_Bravo = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {[ARR_2(player,'Bravo')] call FUNC(hasCompanyVariable)}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection_Bravo] call ace_interact_menu_fnc_addActionToObject;
    } else {
        private _quickSelection_Bravo = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection_Bravo] call ace_interact_menu_fnc_addActionToObject;
    };
};
if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]) then {
    if (_requireCompanyVariable) then {
        private _quickSelection_Charlie = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {[ARR_2(player,'Charlie')] call FUNC(hasCompanyVariable)}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection_Charlie] call ace_interact_menu_fnc_addActionToObject;
    } else {
        private _quickSelection_Charlie = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection_Charlie] call ace_interact_menu_fnc_addActionToObject;
    };
};
if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Ranger"]) then {
    if (_requireCompanyVariable) then {
        private _quickSelection_Ranger = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {[ARR_2(player,'Ranger')] call FUNC(hasCompanyVariable)}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection_Ranger] call ace_interact_menu_fnc_addActionToObject;
    } else {
        private _quickSelection_Ranger = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection_Ranger] call ace_interact_menu_fnc_addActionToObject;
    };
};
if (_category isEqualTo ["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Medical"]) then {
    if (_requireCompanyVariable) then {
        private _quickSelection_Medical = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {[ARR_2(player,'Medical')] call FUNC(hasCompanyVariable)}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection_Medical] call ace_interact_menu_fnc_addActionToObject;
    } else {
        private _quickSelection_Medical = [format ["cScriptQuickSelection_%1", _className], _lable, _icon, {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
        [_object, 0, _category, _quickSelection_Medical] call ace_interact_menu_fnc_addActionToObject;
    };
};
