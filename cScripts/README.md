# cScripts
This is `cScripts` and this include all usefull functions and systems that we use during operations.

## Content
- **CavFnc**                [CavPack](https://7cav.us/)
- **Loadout**               [Poppy](https://github.com/BaerMitUmlaut/Poppy)
- **ViewingDistance**       [taw_vd (v1.5)](http://www.armaholic.com/page.php?id=19751)

## CavFnc
CavFnc are functions that is used during ops to simplyfy spawning and setting up.

## Loadout
Loadout contain our current loadouts and uses a spawn regear script to applie them without issues (See content for link).
The script applies playable unit with both variableNames and classname with a predefined loadout.
The loadouts are located `...\cScripts\Loadouts\` and are realy simple to change and edit.

To add a loadout you simply need to create a `CfgLoadouts_MyNewLoadout.hpp`

```
class <unit Classname or VariableName> : Common<Blufor|Opfor|Independant|Civilian> {
    nvgs[] = {""};
    headgear[] = {""};
    goggles[] = {""};
    uniform[] = {""};
    vest[] = {""};
    backpack[] = {""};
    
    primary[] = {""};
    secondary[] = {""};
    launcher[] = {""};
    
    magazines[] = {""};
    items[] = {""};
    
    binoculars[] = {""};
    compass[] = {""};
    gps[] = {""};
    map[] = {""};
    watch[] = {""};

    insignia[] = {""};
};
```

As you can see arrays are used for all config entries. This is for supporting
randomness - almost all config entries support randomness. This means if you
you have multiple entries, Poppy will select one of them randomly.

There are a few special entries:
- **primary[]**  
  Primary takes a special format to support attachments:  
  `{"weapon", "attachment", "attachment", "attachment"}`  
  Multiple of these subarrays are supported. You only need to fill this
  array with the attachment slots you use.
- **secondary[]**  
  Same as *primary*.
- **launcher[]**  
  Same as *primary*.
- **magazines[]**  
  Magazines does not support randomness for obvious reasons. Additionally, you
  can simplify your loadouts by using  
  `..., <magazine class name>, <amount of magazines>,...`.
- **items[]**  
  Same as *magazines*.
- **lrRadios[]**  
  This does also not support randomness. All radios within this array will be
  given to the unit.

Finaly you need to add to the `CfgLoadouts.hpp`. simply write `#include "CfgLoadouts_MyNewLoadout.hpp"`