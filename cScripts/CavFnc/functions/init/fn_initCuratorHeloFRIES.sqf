/*
 * Author: SSG.Argus.J
 * This fuction is executed to give all helicopters on curator placement to apply FRIES to all helos.
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_initCuratorHeloFRIES;
 */

#include "..\script_component.hpp";
{
    addFRIES = _x addEventHandler ["CuratorObjectPlaced", {
        _entity = _this select 1;
        if (_entity isKindOf "Helicopter") then {
            [_entity] call ace_fastroping_fnc_equipFRIES;
        };
    }];
} forEach allCurators;