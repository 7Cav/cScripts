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

INFO_1("addObjectToCurator", "%1 have been added to all curators.", _object);

[{
    {
        _x addCuratorEditableObjects [[_this], true];
    } forEach allCurators;
}, _object] call CBA_fnc_execNextFrame;