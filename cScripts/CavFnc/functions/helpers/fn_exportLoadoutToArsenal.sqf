#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function export a given company or a classname loadout. Primarly used for the Cav Arsenal function.
 * The function retun a array or strings as well as clipboard export.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Equipment <ARRAY of STRINGS>
 *
 * Example:
 * call cScripts_fnc_exportLoadoutToArsenal
 *
 * Public: Yes
 */

if (is3DEN) exitWith {};

LOADOUTARRAY = [];
private _loadoutList = "getText (_x >> 'displayName') != ''" configClasses (missionConfigFile >> "CfgLoadouts");  
{  
   
    private _loadout = configName (_x); 
    private _unitCompany = getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "company"); 
    _unitCompany = [_unitCompany] call CBA_fnc_capitalize;
    private _unitName = getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "displayName"); 
 
    [player, _loadout] call Poppy_fnc_applyLoadout;
    private _loadoutArray = getUnitLoadout player;
    
    private _br = toString[13,10];
    _string = formatText["[""[7CAV] %1 - %2"", %3] call ace_arsenal_fnc_addDefaultLoadout; //%4%5", _unitCompany, _unitName, _loadoutArray, _loadout, _br];

    [_string, "Export"] call FUNC(logInfo);
    LOADOUTARRAY pushBack _string;
} forEach _loadoutList;

_export = LOADOUTARRAY joinString "";

copyToClipboard _export;
LOADOUTARRAY;
