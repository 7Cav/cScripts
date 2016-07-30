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
You can also aply this script mid mission simply by making a repeatable trigger located sugestivle on a reparepad or another place.
To do this folow this simple steps:

1. Place down a trigger and make it a good size.
1. Set type to `None`.
1. Set activation to `Anybody`.
1. Set activation Type to `Present`.
1. Check the `repeatable` box.
1. Add this to the On Activation box: `{[_x] call cScripts_fnc_initVehicle;} forEach thislist;`
1. Set timer type to `Countdown`
1. Set time on Min, Mid and Max to `60`

#### checkCrate

[this] call cScripts_fnc_checkCrate;
[this,1] call cScripts_fnc_equipBase;
[this,1] call cScripts_fnc_equipCrate;
[this,1] call cScripts_fnc_equipMedicalCrate;





