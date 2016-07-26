### This is the 7th Cavalry Operations Template.

To see what versions of scripts we are using look in the readme file in the `cScripts` folder.

#### Automatic gear selection
The mission template support a automatic gear selection based on the unit Variable Name.
All the names of the gear can be found in `cScripts\Loadouts` folder.


#### Functions and systems
Used functions
##### ReGear
Sometimes you mess upp your gear or your back att base and whant to reset your inventory this addAction. It gives you a fresh lodout.
``` c++
_this addAction ["<t color=""#ffcc33"">ReGear</t>","[] call A3G_Loadout_fnc_ApplyLoadout;"];
```
##### CAV_fnc_BaseCrate
This fuction adds a Base Crate containing a humungus ammount of resourses. You can scale the ammount by changing the second parameter between `0 to 1` (You can go over 1 but its not recomended.)

``` c++
[this,1] call CAV_fnc_BaseCrate;
```

##### CAV_fnc_BaseMedCrate
This fuction adds a medical Base Crate containing a humungus ammount of medical equipment. You can scale the ammount by changing the second parameter between `0 to 1` (You can go over 1 but its not recomended.)

``` c++
[this,1] call CAV_fnc_BaseMedCrate;
```

##### CAV_fnc_SupplyCrate
This function adds a resuply crate for resupplying a platoon size unit. You can scale the ammount by changing the second parameter between `0 to 1` (You can go over 1 but its not recomended.)

``` c++
[this,1] call CAV_fnc_SupplyCrate;
```

##### CAV_fnc_VehCargo
This function handle our veichles. The function gives spesific vecihle a spesific cargo and equipment. You can scale the ammount by changing the second parameter between `0 to 1` (You can go over 1 but its not recomended.)

``` c++
[this,1] call CAV_fnc_VehCargo;
```