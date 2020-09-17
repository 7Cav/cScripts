#include "..\script_component.hpp";
#include "vehicleList.sqf";

createDialog "RscGarageDialog";

_serverTitleCbo = ((findDisplay 1601) displayCtrl (10));
_title = "7Cav Vehicle Garage";
_serverTitleCbo ctrlSetStructuredText parseText format ["<t align='left' size='1.3'>%1</t>",_title];
_serverTitleCbo = ((findDisplay 1601) displayCtrl (12));

[] call cScripts_fnc_loadVehicle;

_spawnButton = (findDisplay 1601) displayCtrl 6;

_spawnButton ctrlShow false;
_spawnButton ctrlEnable false;	

_dropDown = ((findDisplay 1601) displayCtrl (13));
_dropDown ctrlShow false;

_spawnLocationDropDown =  ((findDisplay 1601) displayCtrl (15));
_spawnLocationDropDown ctrlShow false;