class CfgSettings {
    isDebugMode                 =   0;      // 0 or 1 Add debug messages in the log (Default: 0)
    isMissionType               =   1;      // 0: Custom, 1: Operation, 2: Training (Default: 1)
    aiSystemDifficulty          =   0;      // 0: Standard, 1: Desert, 2: Dumb As Fuck (Default: 0)
    use7cavZeusModuels          =   1;      // 0 or 1 Allow the misson to use the 7Cav moduel system. (Default: 1)

    // Hints and documents
    useStartHint                =   1;      // 0 or 1 Allow the mission to run the RedLightHint or TrainingMissionHint depends on mission type (Default: 1)
    setRedLightTime             =   60;     // Seconds for how long it is red light (Default: 60)
    setTrainingHintTime         =   15;     // Seconds for how long the hint is shown (Default: 15)
    setCustomHintTopic          =   "My custom Mission!"; // Sets a custom mission hint topic. (Requires: isMissionType=0)
    setCustomHintText           =   "I have design this mission! Yey for me!"; // Sets a custom mission hint text. (Requires: isMissionType=0)
    
    showDiaryRecords            =   1;      // 0 or 1 Allow the mission to add Radio Reports and 7th Cavalry records on mission start. (Default: 1)

    // Custom mission start
    useCustomInit               =   1;      // 0 or 1 Allow the mission to run CustomInits on mission start. (Default: 1)
    useScriptVehicleInventory   =   0;      // 0 or 1 Allow the mission to change Vehicles inventory on mission start. (Default: 0)
    useScriptSupplyInventory    =   0;      // 0 or 1 Allow the mission to change Supply crate inventorys on mission start. (Default: 0)

    useHeloGetOutRL             =   1;      // 0 or 1 Allow the mission to add Get Out Left/Right on helicopters. (Default: 1)
    addFRIESonZeusSpawn         =   0;      // 0 or 1 Allow the mission to add FRIE to helicopters spawned by Zeus. (Default: 0)
};