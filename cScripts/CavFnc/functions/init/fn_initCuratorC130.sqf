/*
 * Author: SSG.Argus.J
 * This function adds a get out right and left action to all spawned helicopters
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_initCuratorHeloGetOutRL;
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
