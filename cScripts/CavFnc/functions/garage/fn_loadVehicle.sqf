_cbo = ((findDisplay 1601) displayCtrl (7));

lbCLear _cbo;
    {
        _vehicleClass = _x select 0;
        _vehiclePoints = _x select 1;

        _vIndex = _cbo lbAdd(getText(configFile >> "cfgVehicles" >> _vehicleClass >> "displayName"));
        _cbo lbSetData[_vIndex, str _forEachIndex];

        _cbo lbSetValue [_vIndex,  _vehiclePoints];

        _picture = (getText(configFile >> "cfgVehicles" >> _vehicleClass >> "picture"));
        _cbo lbSetPicture[_vIndex,_picture];
    } foreach GarageVehicles;

lbSortByValue _cbo