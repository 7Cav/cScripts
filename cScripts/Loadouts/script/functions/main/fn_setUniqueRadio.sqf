#include "..\script_component.hpp"
params ["_unit", "_radio"];

switch (true) do {
    case (GVAR(usesACRE)): {
        _unit linkItem "ItemRadioAcreFlagged";
        switch (true) do {
            case !(_unit canAdd _radio):              { GVAR(overflowItems) pushBack _radio };
            case (_unit canAddItemToVest _radio):     { _unit addItemToVest _radio };
            case (_unit canAddItemToUniform _radio):  { _unit addItemToUniform _radio };
            case (_unit canAddItemToBackpack _radio): { _unit addItemToBackpack _radio };
        };
    };
    case (GVAR(usesTFAR)): {
        _unit linkItem _radio;
    };
    default {
        _unit linkItem "ItemRadio";
    };
};
