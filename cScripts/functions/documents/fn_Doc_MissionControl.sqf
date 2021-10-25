#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 *  call cScripts_fnc_Doc_MissionControl
 *
 */

private _variableName = vehicleVarName player;
private _missionController = ["DEBUG", "DEBUG_1", "DEBUG_2", "DEBUG_3", "DEBUG_4", "MissionControl", "MissionControl_1", "MissionControl_2", "MissionControl_3", "MissionControl_4", "MissionControlUnit", "MissionControlUnit_1", "MissionControlUnit_2", "MissionControlUnit_3", "MissionControlUnit_4", "MC", "MC_1", "MC_2", "MC_3", "MC_4", "Zeus", "Zeus_1", "Zeus_2", "Zeus_3", "Zeus_4", "ZeusUnit", "ZeusUnit_1", "ZeusUnit_2", "ZeusUnit_3", "ZeusUnit_4", "S3", "S3_1", "S3_2", "S3_3", "S3_4"];

if !(_variableName in _missionController) exitWith {};

player createDiaryRecord["7Cav",
    ["S3 Mission Control",
        '<executeClose expression="openCuratorInterface">Open Zeus Interface</executeClose>'
    ]
];
