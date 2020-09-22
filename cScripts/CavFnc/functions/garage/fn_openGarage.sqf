#include "..\script_component.hpp";
/*
 * Author: CPL.Liber.N
 * This fuction displays garage UI.
 *
 * Arguments:
 * None.
 *
 * Example:
 * [] spawn cScripts_fnc_openVehicle
 *
 */

[] call cScripts_fnc_vehicleList;

createDialog "RscGarageDialog";

private _serverTitleCbo = ((findDisplay 1601) displayCtrl (10));
_serverTitleCbo ctrlSetStructuredText parseText format ["<t align='left' size='1.3'>%1</t>", "7Cav Vehicle Garage"];
_serverTitleCbo = ((findDisplay 1601) displayCtrl (12));

[] call cScripts_fnc_loadVehicle;

private _spawnButton = (findDisplay 1601) displayCtrl 6;

_spawnButton ctrlShow false;
_spawnButton ctrlEnable false;

private _dropDown = ((findDisplay 1601) displayCtrl (13));
_dropDown ctrlShow false;

private _spawnLocationDropDown =  ((findDisplay 1601) displayCtrl (15));
_spawnLocationDropDown ctrlShow false;