#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function generates a insignia selection button.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Lable <STRING>
 * 2: actionName <STRING>
 * 3: Path to icon <STRING>
 * 4: Categorys <ARRAY> (Optional)
 *
 * Example:
 * [this,"Remove Insignia"] call cScripts_fnc_addInsigniaSelection;
 * [this,"Squad Insignia 1/1/C/1-7","11C_17_Insignia","cScripts\Data\Insignia\1-1-C-17.paa"] call cScripts_fnc_addInsigniaSelection;
 * [this,"Platoon Insignia 1/1/C/1-7","2C_17_Insignia","cScripts\Data\Insignia\2-C-17.paa"] call cScripts_fnc_addInsigniaSelection;
 */

params [
    ["_object", objNull, [objNull]],
    ["_lable", "", [""]],
    ["_className", "", [""]],
    ["_icon", "", [""]],
    ["_category", ["ACE_MainActions","cScriptInsigniaSelectionMenu"], [[]]]
];

if (_className != '') then {
    _className = format[QUOTE(TRIPLES(Cav,Insignia,%1)), _className];
} else {
    _className = _className;
};

INFO_2("InsigniaSelection", "Created insignia selection for '%1' on '%2'", _className, _object);

//add addAction
if (!isPlayer _object) then {
    if (_category isEqualTo ["ACE_MainActions", "cScriptInsigniaSelectionMenu"]) then {
        _object addAction [format ["   <img image='%1' /> <t color='#66ff66'>%2</t>", _icon, _lable], {
            [player, _this select 3] call EFUNC(unit,setInsignia);
        }, _className, 1.5, true, true, "", "true", 5];
    };
};

//add aceInteraction
private _insigniaSelection = [format ["cScriptInsigniaSelection_%1", _className], _lable, _icon, {
    params ["_object", "_caller", "_params"];
    _params params ["_className"];
    [player, _className] call EFUNC(unit,setInsignia);
}, {true}, {}, [_className]] call ace_interact_menu_fnc_createAction;

private _actionType = parseNumber (isPlayer _object);
[_object, _actionType, _category, _insigniaSelection] call ace_interact_menu_fnc_addActionToObject;
