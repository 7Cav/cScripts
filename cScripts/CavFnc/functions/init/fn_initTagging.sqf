#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This adds custom spray tags to all units.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initTagging
 *
 * Public: No
 */

#ifdef DEBUG_MODE
    ["Initializing custom spray tags."] call FUNC(logInfo);
#endif

[   "cScripts_tagging_cav_black",
    "Cav Black",
    "ACE_SpraypaintBlack",
    ["z\cav\addons\textures\data\tagging\tag_cav_black_ca.paa"],
    "z\cav\addons\textures\data\tagging\icon_action_black_ca.paa"
] call ace_tagging_fnc_addCustomTag;

[   "cScripts_tagging_cav_blue",
    "Cav Blue",
    "ACE_SpraypaintBlue",
    ["z\cav\addons\textures\data\tagging\tag_cav_blue_ca.paa"],
    "z\cav\addons\textures\data\tagging\icon_action_blue_ca.paa"
] call ace_tagging_fnc_addCustomTag;

[   "cScripts_tagging_cav_green",
    "Cav Green",
    "ACE_SpraypaintGreen",
    ["z\cav\addons\textures\data\tagging\tag_cav_green_ca.paa"],
    "z\cav\addons\textures\data\tagging\icon_action_green_ca.paa"
] call ace_tagging_fnc_addCustomTag;

[   "cScripts_tagging_cav_red",
    "Cav Red",
    "ACE_SpraypaintRed",
    ["z\cav\addons\textures\data\tagging\tag_cav_red_ca.paa"],
    "z\cav\addons\textures\data\tagging\icon_action_red_ca.paa"
] call ace_tagging_fnc_addCustomTag;

#ifdef DEBUG_MODE
    ["Custom spray tags initialization complete."] call FUNC(logInfo);
#endif
