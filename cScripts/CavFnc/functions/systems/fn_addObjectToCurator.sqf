#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Add object to all curators on next frame.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_addObjectToCurator
 *
 * Public: No
 */

params [["_object", objNull, [objNull]]];

[{
    {
        _x addCuratorEditableObjects [[_object], true];
    } forEach allCurators;
}, _object] call CBA_fnc_execNextFrame;