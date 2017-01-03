class CfgSettings {
    debugMode                   =   0;      // NOT IMPLEMENTED (Default: 0)
    isOperation                 =   1;      // NOT IMPLEMENTED (Default: 1)
    isTrainingMap               =   0;      // NOT IMPLEMENTED (Default: 0)
    
    // Hints and documents
    useRedLightStart            =   1;      // 0 or 1 Allow the mission to run the RedLightHint script (Default: 1)
    setRedLightTime             =   60;     // Seconds for how long it is red light (Default: 60)
    showDiaryRecords            =   1;      // 0 or 1 Allow the mission to add Radio Reports and 7th Cavalry records on mission start. (Default: 1)
    
    useTrainingHintStart        =   0;
    setTrainingHintTime         =   20;     //Seconds (Default: 20)
    
    // Custom mission start
    useCustomInit               =   1;      // 0 or 1 Allow the mission to run CustomInits on mission start. (Default: 1)
    useScriptVehicleInventory   =   1;      // 0 or 1 Allow the mission to change Vehicles inventory on mission start. (Default: 1)
    useScriptSupplyInventory    =   1;      // 0 or 1 Allow the mission to change Supply crate inventorys on mission start. (Default: 1)
    
    addUH60SelectGetOut         =   0;
};