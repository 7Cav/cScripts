#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function removes and recreates a given unit as a agent when in proximity.
 * Run this function in the object or unit init.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_makeAgent
 *
 */

params [["_unit", objNull, [objNull]]];

private _classname = typeOf _unit;
private _postion   = getPosASL _unit;
private _vectorUp  = vectorUp _unit;
private _vectorDir = vectorDir _unit;
private _side      = side _unit;

deleteVehicle _unit;

_agent = createAgent [_classname, _postion, [], 0, 'CAN_COLLIDE'];
_agent setPosASL _postion;
_agent setVectorDirAndUp [_vectorDir, _vectorUp];

INFO_3("Agent", "Converted %1 (%2) to agent %3 (%2).", _unit, _classname, _agent);

if (_side == civilian) then {
    [{
        params ["_agent"];
        _agent unassignItem "ItemMap";
        _agent removeItem "ItemMap";
        _agent unassignItem "ItemCompass";
        _agent removeItem "ItemCompass";
        
        private _watch = selectRandom ["ItemWatch", "", ""];
        if (_watch == "") then {
            _agent unassignItem "ItemWatch";
            _agent removeItem "ItemWatch";
        };
        
        private _money = selectRandom ["Money_roll", "Money_bunch", "Money_bunch", "Money_bunch", "Money_bunch", "", ""];
        if (_money != "") then {
            [_agent, _money] call CBA_fnc_addItem;
        };
        
        private _wallet = selectRandom ["Wallet_ID", "Wallet_ID", ""];
        if (_wallet != "") then {
            [_agent, _wallet] call CBA_fnc_addItem;
        };
        
        private _phone = selectRandom ["MobilePhone", "MobilePhone", "MobilePhone", "SmartPhone", "", "", "", ""];
        if (_phone != "") then {
            [_agent, _phone] call CBA_fnc_addItem;
        };    
    }, [_agent]] call CBA_fnc_execNextFrame;
};

