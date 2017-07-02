#include "..\script_component.hpp"

private _diaryRecord = "";

{
    if !(_x in ["Throw", "Put"] || {_x isKindOf ["Binocular", configFile >> "CfgWeapons"]}) then {
        private _picture = getText (configFile >> "CfgWeapons" >> _x >> "picture");
        if (_picture find "." == -1) then {
            _picture = _picture + ".paa";
        };

        _diaryRecord = _diaryRecord + "<p align=""center""><img image="""
                     + _picture
                     + """ width=200 height=100 /><br />"
                     + "<font size=15>"
                     + getText (configFile >> "CfgWeapons" >> _x >> "displayName")
                     + "</font></p><br />";
    };
    false
} count (weapons player);
_diaryRecord = _diaryRecord + "<br />";

{
    private _currentMagazine = _x;
    private _picture         = getText (configFile >> "CfgMagazines" >> _currentMagazine >> "picture");
    if (_picture find "." == -1) then {
        _picture = _picture + ".paa";
    };

    _diaryRecord = _diaryRecord + "<br /><img image="""
                 + _picture
                 + """ width=30 height=30 />"
                 + "<font size=15> " + (getText (configFile >> "CfgMagazines" >> _currentMagazine >> "displayName"))
                 + " x " + str ({_x == _currentMagazine} count (magazines player)) + "</font>";
    false
} count ((magazines player) arrayIntersect (magazines player));

player createDiarySubject ["poppy", "Loadout"];
player createDiaryRecord ["poppy", ["Loadout", _diaryRecord]];
