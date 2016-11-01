/*
 * Author: CPL.Brostrom.A 
 * This changes a given flag texture to a better one. (Works on all flag poles)
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initTagging
 */

#include "..\script_component.hpp";

[
    "cScripts_tagging_7cavLogo",
    "7th Cavalry",
    "ACE_SpraypaintBlack",
    ["cScripts\Data\Tagging\black_7cav.paa"],
    "cScripts\Data\Tagging\black_icon.paa"
] call ace_tagging_fnc_addCustomTag;