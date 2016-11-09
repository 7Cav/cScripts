#include "..\script_component.hpp"

{
    _x setGroupIdGlobal [groupID _x];
    false
} count allGroups;

GVAR(groupIDsSynched) = true;
publicVariable QGVAR(groupIDsSynched);
