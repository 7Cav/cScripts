// vehicle is defined by
// [classname, cooldown (minutes), max # available at once, "message", "default spawn location (land/air)", {conditions}, {after create callback}]

GarageVehicles = [

    // MRZR 4
    ["rhsusf_mrzr4_d", 5, -1, "", "land", {}, {}],

    // POLARIS
    ["B_LSV_01_unarmed_F", 5, -1, "", "land", {}, {}],

    // HWWMV (M2)
    ["rhsusf_m1025_d_m2", 5, -1, "", "land", {}, {}],

    // HWWMV (MK19)
    ["rhsusf_m1025_w_mk19", 5, -1, "", "land", {}, {}],

    // HWWMV (SPG)
    ["rhsusf_m1045_d", 5, -1, "", "land", {}, {}],

    // HWWMV (Open)
    ["rhsusf_m998_d_4dr", 5, -1, "", "land", {}, {}],


    // M1083A1 (M2 Flatbed)
    ["rhsusf_M1083A1P2_B_M2_D_flatbed_fmtv_usarmy", 5, -1, "", "land", {}, {}],

    // M977A4 (Ammo)
    ["rhsusf_M977A4_AMMO_usarmy_d", 5, -1, "", "land", {}, {}],

    // M977A4 (Repair)
    ["rhsusf_M977A4_REPAIR_usarmy_d", 5, -1, "", "land", {}, {}],

    
    // M109
    ["rhsusf_m109d_usarmy", 5, -1, "", "land", {}, {}],


    // M1240 (M2 CROWS)
    ["rhsusf_m1240a1_m2crows_usarmy_d", 5, -1, "", "land", {}, {}],

    // M1240 (MK19 CROWS)
    ["rhsusf_m1240a1_mk19crows_usarmy_d", 5, -1, "", "land", {}, {}],

    // M1220 (M2 CROWS)
    ["rhsusf_M1220_M153_M2_usarmy_d", 5, -1, "", "land", {}, {}],

    // M1220 (MK19 CROWS)
    ["rhsusf_M1220_M153_MK19_usarmy_d", 5, -1, "", "land", {}, {}],

    // M1230A1 (MEDEVAC)
    ["rhsusf_M1230a1_usarmy_d", 5, -1, "", "land", {}, {}],

    
    // Merkava
    ["B_MBT_01_cannon_F", 5, -1, "You must be in a Saber slot to drive/gun/command", "land", {}, {}],

    // M1A2 Tusk 2
    ["rhsusf_m1a2sep1tuskiid_usarmy", 5, -1, "You must be in a Saber slot to drive/gun/command", "land", {}, {}],

    // Leopard 2
    ["I_MBT_03_cannon_F", 5, -1, "You must be in a Saber slot to drive/gun/command.", "land", {}, {}],

    // Weisel
    ["I_LT_01_cannon_F", 5, 2, "", "land", {}, {}],


    // M113 (M2)
    ["rhsusf_m113d_usarmy", 5, -1, "", "land", {}, {}],

    // M113 (MEV)
    ["rhsusf_m113d_usarmy_medical", 5, -1, "Must be in Atlas 1/2 slot to drive", "land", {}, {(_this select 0) setvariable ["ace_medical_isMedicalFacility", true, true];}],

    // Namerra
    ["B_APC_Tracked_01_CRV_F", 5, -1, "Must be in Atlas 3/4 slot to drive", "land", {}, {
        [_this select 0, 16] call ace_cargo_fnc_setSpace;
        [_this select 0, -1] call ace_cargo_fnc_setSize;
        [_this select 0, 6000] call ace_refuel_fnc_setFuel;
        [_this select 0, 1200] call ace_rearm_fnc_setSupplyCount;
        (_this select 0) setVariable ["ACE_isRepairVehicle", true, true];
    }],

    // M2A3 Busk 3
    ["RHS_M2A3_BUSKIII_wd", 5, -1, "", "land", {}, {}],

    // M6A2
    ["RHS_M6_wd", 5, -1, "", "land", {}, {}],


    // Blackfish
    ["B_T_VTOL_01_infantry_F", 5, -1, "Must be in Buffalo/Titan slot to fly", "air", {}, {}],

    // Armed Blackfish
    ["B_T_VTOL_01_armed_F", 5, -1, "Must be in Buffalo to fly, all can gun", "air", {}, {}],

    
    // UGV Stomper
    ["B_UGV_01_F", 5, -1, "", "land", {}, {createVehicleCrew (_this select 0);}],

    // Predator Drone
    ["B_UAV_02_F", 5, -1, "", "air", {}, {createVehicleCrew (_this select 0);}],

    // Stealth UAV
    ["B_UAV_05_F", 5, -1, "", "air", {}, {createVehicleCrew (_this select 0);}],

    
    // UH60
    ["RHS_UH60M", 5, -1, "Must be in Buffalo slot to drive", "air", {}, {(_this select 0) setvariable ["ace_medical_isMedicalFacility", true, true];}],

    // UH60 (MEV)
    ["RHS_UH60M_MEV", 5, -1, "Must be in Buffalo slot to drive", "air", {}, {(_this select 0) setvariable ["ace_medical_isMedicalFacility", true, true];}],

    // Huey (Unarmed)
    ["rhs_uh1h_hidf", 5, -1, "Must be in Buffalo slot to fly", "air", {}, {}],

    // AH64-D
    ["RHS_AH64D", 5, -1, "Must be in Raider/Sparrow to fly", "air", {}, {}],

    // UH1Y (Armed)
    ["RHS_UH1Y", 5, -1, "Must be in Buffalo slot to fly", "air", {}, {}],

    // CH-47
    ["B_Heli_Transport_03_F", 5, -1, "Must be in Buffalo slot to fly", "air", {}, {}],

    // AH1Z Viper
    ["RHS_AH1Z", 5, -1, "Must be in Raider/Sparrow slot to fly/gun", "air", {}, {}],

    // Commanche
    ["B_Heli_Attack_01_dynamicLoadout_F", 5, -1, "Must be in Raider/Sparrow slot to fly/gun", "air", {}, {}],

    // AH-6M
    ["RHS_MELB_AH6M", 5, -1, "Must be in Raider/Sparrow slot to fly/gun", "air", {}, {}],

    // MH-6M
    ["RHS_MELB_MH6M", 5, -1, "Must be in Raider/Sparrow slot to fly/gun", "air", {}, {}],

    
    // F/A-181
    ["B_Plane_Fighter_01_F", 5, -1, "Must be in Eagle to fly", "air", {}, {}],

    // F16-D
    ["FIR_F16D_WP_Fanton", 5, -1, "Must be in Eagle to fly", "air", {}, {}],

    // F-22A
    ["rhsusf_f22", 5, -1, "Must be in Eagle to fly", "air", {}, {}],

    // A-10C
    ["FIR_A10C_Blank", 5, -1, "Must be in Eagle/Hog to fly", "air", {}, {}]

];