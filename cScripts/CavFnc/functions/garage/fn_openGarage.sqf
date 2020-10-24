#include "..\script_component.hpp";
/*
 * Author: CPL.Liber.N
 * This fuction displays garage UI.
 *
 * Arguments:
 * None
 *
 * Example:
 * call cScripts_fnc_openGarage
 *
 */

#define DEBUG_MODE

createDialog "RscGarageDialog";

private _serverTitleCbo = ((findDisplay 1601) displayCtrl (10));
_serverTitleCbo ctrlSetStructuredText parseText format ["<t align='left' size='1.3'>%1</t>", "7Cav Vehicle Garage"];
_serverTitleCbo = ((findDisplay 1601) displayCtrl (12));

private _vehicleList = call FUNC(vehicleList);
private _cbo = ((findDisplay 1601) displayCtrl (7));

lbCLear _cbo;
{
    private _vehicleClass = _x select 0;
    private _vehiclePoints = _x select 1;

    private _vIndex = _cbo lbAdd(getText(configFile >> "cfgVehicles" >> _vehicleClass >> "displayName"));
    _cbo lbSetData[_vIndex, str _forEachIndex];

    _cbo lbSetValue [_vIndex,  _vehiclePoints];

    private _picture = (getText(configFile >> "cfgVehicles" >> _vehicleClass >> "picture"));
    _cbo lbSetPicture[_vIndex,_picture];
} foreach _vehicleList;

lbSortByValue _cbo;

private _spawnButton = (findDisplay 1601) displayCtrl 6;

_spawnButton ctrlShow false;
_spawnButton ctrlEnable false;

private _dropDown = ((findDisplay 1601) displayCtrl (13));
_dropDown ctrlShow false;

private _spawnLocationDropDown =  ((findDisplay 1601) displayCtrl (15));
_spawnLocationDropDown ctrlShow false;