#include "..\script_component.hpp"
params ["_display", ["_time", 0.5]];

private _height = (ctrlPosition (_display displayCtrl 0)) select 3;
private _deltaHeight = _height - 0.1; //0.1 buffer

{
    private _ctrl         = _display displayCtrl _x;
    private _ctrlPosition = ctrlPosition _ctrl;
    _ctrl ctrlSetPosition [
        _ctrlPosition select 0,
        (_ctrlPosition select 1) - _deltaHeight,
        _ctrlPosition select 2,
        _ctrlPosition select 3
    ];
    _ctrl ctrlCommit _time;

    false
} count [0, 10, 11, 12, 20, 21, 22, 23, 24];
