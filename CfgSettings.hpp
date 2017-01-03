class CfgSettings {
    isDebugMode                 =   0;      // 0 or 1 Add debug messages in the log (Default: 0)
    isMissionType               =   2;      // 0 = Custom, 1 = Operation, 2 = Training (Default: 1)
    isMissionOpenTerrain        =   0;      // 0 or 1 Changes AI spot distance too far. Recommended for Steps and desert islands. (Default: 0)
    
    // Hints and documents
    useRedLightStart            =   1;      // 0 or 1 Allow the mission to run the RedLightHint script (Default: 1)
    setRedLightTime             =   60;     // Seconds for how long it is red light (Default: 60)
    showDiaryRecords            =   1;      // 0 or 1 Allow the mission to add Radio Reports and 7th Cavalry records on mission start. (Default: 1)
    
    useTrainingHintStart        =   1;      //  0 or 1 Allow the mission to run the TrainingMissionHint script (Default: 1)
    setTrainingHintTime         =   15;     //  Seconds for how long the hint is shown (Default: 15)
    
    // Custom mission start
    useCustomInit               =   1;      // 0 or 1 Allow the mission to run CustomInits on mission start. (Default: 1)
    useScriptVehicleInventory   =   1;      // 0 or 1 Allow the mission to change Vehicles inventory on mission start. (Default: 1)
    useScriptSupplyInventory    =   1;      // 0 or 1 Allow the mission to change Supply crate inventorys on mission start. (Default: 1)
    
    addUH60SelectGetOut         =   0;      // 0 or 1 Allow the mission to add Get Out Left/Right on the UH60. (Default: 0)
};