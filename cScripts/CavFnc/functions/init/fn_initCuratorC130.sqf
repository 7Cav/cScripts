/*
 * Author: SSG.Argus.J
 * This function adds a jump out action to a curator spawned C130.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initCuratorC130
 */

#include "..\script_component.hpp";
{
    addPlaneJump = _x addEventHandler ["CuratorObjectPlaced", {
        private _plane = ["RHS_C130J"];
        private _entity = _this select 1;
        if ((typeOf _entity) in _plane) then {
            [_entity] call FUNC(addJump);
        };
    }];
} forEach allCurators;
