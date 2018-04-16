if (!isMultipayer) then {
    ["You are using a deprecated function. Use this instead: Scripts_fnc_setVehicleLable", "WARNING", [true, false, true]] call CBA_fnc_debug;
};

params [["_vehicle", objNull, [objNull]]];

[_vehicle,"B","1"] call cScripts_fnc_attachVehicleLabel;
