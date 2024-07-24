/*
 * Author: SGT.Brostrom.A
 * This function allow you to keep targets down as well as resetting the targets
 *
 * Arguments:
 * 0: resetButtonObject <OBJECT>
 * 1: listOfTargets <ARRAY>
 * 2: actionCaption <STRING> (Optional)
 *
 * Return:
 * ActionID
 * 
 * Example:
 * [this, [MyTargetVariableName], "Reset Range Targets"] call cScripts_fnc_training_addTargetComputer;
 * [this, [T1,T2,T3,T4]] call cScripts_fnc_training_addTargetComputer;
 */

params [
    ["_object", objNull, [objNull]],
    ["_targets",[], [[]]],
    ["_action", "Reset Range Targets", [""]]
];

{
    _x setVariable ["BIS_poppingEnabled", false];
    _x setVariable ["BIS_isPopping", false];
    _x addEventHandler ["HitPart", {
        (_this select 0) params ["_target"];

        _target setVariable ["nopop", true];

        _target setVariable ["BIS_isLeaning", false];
        _target setVariable ["BIS_leaningEnabled", false];
        private _rpm = _target getVariable ["BIS_rpm", 6];
        _target animate [format ["Swivel_%1rpm_rot", _rpm], _target animationPhase (format ["Swivel_%1rpm_rot", _rpm])];
        _target setVariable ["BIS_isPopping", false];

        _target animate ["Terc", 1];
    }];
} forEach _targets;

[
    _object,
    _action,
    "", "",
    "true", "true",
    {},
    {},
    {
        params ["", "", "", "_arguments"];
        _arguments params ["_targets"];
        {
            _x setVariable ["nopop", nil];

            _x setVariable ["BIS_isLeaning", _x getVariable ["BIS_leaningEnabled", false]];
            _x setVariable ["BIS_poppingEnabled", false];
            _x setVariable ["BIS_isPopping", false];
            _x animate ["terc", 0];

            _x setVariable ["BIS_leaningEnabled", true];
            if (_x getVariable ["BIS_leaningEnabled", false]) then {
                _x animate [_x getVariable ["BIS_animName", "Swivel_6rpm_rot"], _x getVariable ["BIS_animPhaseTarget", _x animationPhase (_x getVariable ["BIS_animName", "Swivel_6rpm_rot"])]];
            };
        } forEach _targets;
    },
    {},
    [_targets], 0, nil, false, false
] call BIS_fnc_holdActionAdd;
