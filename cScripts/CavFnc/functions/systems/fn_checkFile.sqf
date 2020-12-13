#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function return true or false if a file exist or not.
 *
 * Arguments:
 * 0: FileNamePath <STRING>
 *
 * Return Value:
 * File exist <BOOL>
 *
 * Example:
 * ["myFile.txt"] call cScripts_fnc_checkFile
 */

params ["_fileNamePath"];

if (_fileNamePath isEqualTo "") exitWith {false};

private _file = _fileNamePath;

if ((loadFile _file) isEqualTo "") exitWith {false};

true