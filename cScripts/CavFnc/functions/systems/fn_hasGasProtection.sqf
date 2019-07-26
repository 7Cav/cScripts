params ["_unit"];

private _gasmasks = [
    "G_AirPurifyingRespirator_01_nofilter_F",
    "G_AirPurifyingRespirator_01_F",
    "G_AirPurifyingRespirator_02_black_F",
    "G_AirPurifyingRespirator_02_olive_F",
    "G_AirPurifyingRespirator_02_sand_F",
    "G_RegulatorMask_F"
];

private _return = goggles _unit in _gasmasks;
_return;