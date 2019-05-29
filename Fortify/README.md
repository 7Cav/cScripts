Place this inside the description.ext, make sure you don't overlap anything.

Note you don't need to place a ';' after an #include.
class CfgFunctions
{
	#include "Fortify\CfgFunctions.hpp"
};

This needs to go in the initServer.sqf

_null = [] execVM "Fortify\fortifyInit.sqf";



Now onto the Editor...
Now that we have setup the settings and the object list, we need to call a specific vehicle that will allow us to build when near. 
We do not want people to build without some sort of HQ vehicle.. The distance from the vehicle can be cahnged from the fortifyInit.sqf

Place this into the Init of your selected Vehicle:
_null = [this] execVM "Fortify\Base_FOB.sqf";

