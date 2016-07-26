#include "defines.h"
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the view distance dependant on whether the player
	is on foot, a car or an aircraft.
*/
private "_dist";
switch (true) do {
	case (!(EQUAL(SEL(UAVControl getConnectedUAV player,1),""))): {
		setViewDistance tawvd_drone;
		_dist = tawvd_drone;
	};
	
	case ((vehicle player) isKindOf "Man"): {
		setViewDistance tawvd_foot;
		_dist = tawvd_foot;
	};
	
	case ((vehicle player) isKindOf "LandVehicle"): {
		setViewDistance tawvd_car;
		_dist = tawvd_car;
	};
	
	case ((vehicle player) isKindOf "Air"): {
		setViewDistance tawvd_air;
		_dist = tawvd_air;
	};
};

if(tawvd_syncObject) then {
	setObjectViewDistance [_dist,100];
	tawvd_object = _dist;
};