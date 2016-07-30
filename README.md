# cScripts
This is cScripts a easy to use framework for S3 mission making. This framework contain functions scripts and for easy handleing and adaptation to the 7CAV Standard.

## Scripts insalled
- **CavFnc**                    -   <a href="https://7cav.us/">7th Cavalry cScripts (1.0.0)</a>
- **Loadouts**                  -   <a href="https://7cav.us/">7th Cavalry Loadouts 160730</a>
- **Loadouts/Script**           -   <a href="https://github.com/BaerMitUmlaut/Poppy">Poppy (1.0.0)</a>
- **ViewingDistance**           -   <a href="http://www.armaholic.com/page.php?id=19751">taw_vd (v1.5)</a>

### Instalation
If you use the included Description.ext you do not need to do anything otherwise you need to include the folowing block:
``` c++
    #include "cScripts\ViewingDistance\GUI.h"
    #include "cScripts\Loadouts\script\CfgPoppy.hpp"
    class CfgFunctions {
        #include "cScripts\ViewingDistance\CfgFunctions.hpp"
        #include "cScripts\CavFnc\CfgFunctions.hpp"
        #include "cScripts\Loadouts\script\CfgFunctions.hpp"
    };
    #include "cScripts\CavFnc\functions\insignia\CfgUnitInsignia.hpp"
    #include "cScripts\Loadouts\CfgLoadouts.hpp"
```

### Uninstall
If you whant to remove a function or script you need to remove the following for each script:

**Loadouts Script** *(Poppy) `cScripts\Loadouts\...`*
``` c++
    #include "cScripts\Loadouts\script\CfgPoppy.hpp"
    class CfgFunctions {
        #include "cScripts\Loadouts\script\CfgFunctions.hpp"
    };
    #include "cScripts\Loadouts\CfgLoadouts.hpp"
```

**Viewing Distance** *(taw_vd) `cScripts\ViewingDistance\...`*
``` c++
    #include "cScripts\ViewingDistance\GUI.h"
    class CfgFunctions {
        #include "cScripts\ViewingDistance\CfgFunctions.hpp"
    };
```

## CAV Functions
CAV Functions are usable functions and scripts that can be called for to easy up your life. You can read more about hte scripts below or visit the mission script viwer in the editor.

## Main
#### initMain
initMain is best run on a crate or cargo container that have an inventory. The script add vital function to the object including; `equipBase`, `ReGear add action`, `Quick Selections` and `Insignia Selection`
To call the function add this to the initLine of the crate:
``` c++
    [this] call cScripts_fnc_initMain;
````
#### initMain
initMainSandbox is simular to initMain but adds a all included arsenal to the box as well. (See above for details.)
To call the function add this to the initLine of the crate:
``` c++
    [this] call cScripts_fnc_initMainSandbox;
````

#### initVehicle
initVehicle is a repurpuse script that is runned on vehicles at the start of the mission. The script changes the inventory of the Vehicle suit our standard.
To call the function add this to the initLine of the veichle:
``` c++
    [this,1] call cScripts_fnc_initVehicle;
```
Tip:
You can also apply this script mid mission simply by making a repeatable trigger located sugestivle on a reparepad or another place.
To do this folow this simple steps:

1. Place down a trigger and make it a good size.
2. Set type to `None`.
3. Set activation to `Anybody`.
4. Set activation Type to `Present`.
5. Check the `repeatable` box.
6. Add this to the On Activation box: `{[_x] call cScripts_fnc_initVehicle;} forEach thislist;`
7. Set timer type to `Countdown`
8. Set time on Min, Mid and Max to `60`

### supplies

#### equipCrate
equipCrate changes the inventory of the given item to a platoon sized supply crate. 
To call the function add this to the initLine of a supply crate  or container:
``` c++
    [this,1] call cScripts_fnc_equipCrate;
```
Tip!
You can use this script mid mission by using checkCrate. See below.

#### equipMedicalCrate
equipMedicalCrate populats a given crate with medical equipment.

To call the function add this to the initLine of a crate:
``` c++
    [this,1] call cScripts_fnc_equipMedicalCrate;
```

#### equipBase
equipBase changes the inventory of the given item to a rediculus sized crate with weapon and equipment suiatable for spawn armory. This script is used by `initMain` and `initMainSandbox` to fill a crate.
To call the function add this to the initLine of a supply crate  or container:
``` c++
    [this,1] call cScripts_fnc_equipBase;
```

#### checkCrate
checkCrate checks and applyes a new inventory to a crate suitable for resupplying a platoonsize element. The function is best runned on a trigger that changes the crate mid mission. At start of missions running `equipCrate` on a crate is recomended.

To call the function add this to the initLine of a supply crate:
``` c++
    [this] call cScripts_fnc_checkCrate;
```

To run the function mid mission follow this steps:

1. Place down a trigger and make it a good size.
2. Set type to `None`.
3. Set activation to `Anybody`.
4. Set activation Type to `Present`.
5. Check the `repeatable` box.
6. Add this to the On Activation box: `{[_x] call cScripts_fnc_checkCrate;} forEach thislist;`
7. Set timer type to `Countdown`
8. Set time on Min, Mid and Max to `60`

Following classnames are supported by this script:
`CargoNet_01_box_F`, `B_CargoNet_01_ammo_F`, `CargoNet_01_barrels_F` and `B_supplyCrate_F`

# Other tips and tricks
##Make a cool CQB experience
In order to make a, hopfylly, cool CQB experience you can disabled the AI's pathing. This will make the AI stay put and still be able to turn around and change stance.
Put this in the InitLine of the soldier: `this disableAI 'PATH';`
If you whant to lock the AI in standing stance add this as well: `this setUnitPos 'UP';`

Click on the script command about [setUnitPos](https://community.bistudio.com/wiki/setUnitPos) and [disableAI](https://community.bistudio.com/wiki/disableAI)

