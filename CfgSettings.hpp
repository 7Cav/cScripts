class CfgSettings {
    isDebugMode                 =   0;      // 0 or 1 Add debug messages in the log (Default: 0)
    isMissionType               =   1;      // 0: Custom, 1: Operation, 2: Training (Default: 1)
    aiSystemDifficulty          =   0;      // 0: Day, 1: Night/Jungle, 2: (Default: 0)
    use7cavZeusModules          =   1;      // 0 or 1 Allow the misson to use the 7Cav module system. (Default: 1)

    // Hints and documents
    useStartHint                =   1;      // 0 or 1 Allow the mission to run the RedLightHint or TrainingMissionHint depends on mission type (Default: 1)
    setRedLightTime             =   30;     // Seconds for how long it is red light (Default: 60)
    setTrainingHintTime         =   15;     // Seconds for how long the hint is shown (Default: 15)
    setCustomHintTopic          =   "My custom Mission!"; // Sets a custom mission hint topic. (Requires: isMissionType=0)
    setCustomHintText           =   "I have design this mission! Yey for me!"; // Sets a custom mission hint text. (Requires: isMissionType=0)

    showDiaryRecords            =   1;      // 0 or 1 Allow the mission to add Radio Reports and 7th Cavalry records on mission start. (Default: 1)

    // Custom mission start
    useCustomInit               =   1;      // 0 or 1 Allow the mission to run CustomInits on mission start. (Default: 1)
    useScriptVehicleInventory   =   1;      // 0 or 1 Allow the mission to change Vehicles inventory on mission start. (Default: 0)
    useScriptSupplyInventory    =   0;      // 0 or 1 Allow the mission to change Supply crate inventorys on mission start. (Default: 0)

    usePlaneJumpOut             =   1;      // 0 or 1 Allow the mission to add jump out action on C130. (Default: 1)
    useHeloGetOutRL             =   1;      // 0 or 1 Allow the mission to add Get Out Left/Right on helicopters. (Default: 1)
};
