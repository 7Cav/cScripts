#include "..\script_component.hpp"
private ["_items", "_itemsUnique", "_itemsCounter", "_itemIndex", "_generated", "_loadoutIndex"];

{
    _loadoutIndex = LOADOUT_INDEXES find _x;
    _items = _this select _loadoutIndex;
    _itemsUnique = _items arrayIntersect _items;
    _itemsCounter = _itemsUnique apply {0};

    {
        _itemIndex = _itemsUnique find _x;
        _itemsCounter set [_itemIndex, (_itemsCounter select _itemIndex) + 1];
        false
    } count _items;

    _generated = [];
    {
        _generated pushBack _x;
        if (_itemsCounter select _forEachIndex > 1) then {
            _generated pushBack (_itemsCounter select _forEachIndex);
        };
    } forEach _itemsUnique;

    _this set [_loadoutIndex, _generated];
    false
} count ["items", "magazines"];

_this
