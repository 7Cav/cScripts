#define PREFIX Poppy
#define VERSION "1.1.0"

#define QUOTE(var) #var
#define DOUBLES(var1,var2) ##var1##_##var2
#define TRIPLES(var1,var2,var3) ##var1##_##var2##_##var3

#define GVAR(var)  DOUBLES(PREFIX,var)
#define QGVAR(var) QUOTE(GVAR(var))
#define FUNC(var)  TRIPLES(PREFIX,fnc,var)
#define QFUNC(var) QUOTE(FUNC(var))

#define UNIFORM  {uniformContainer  _this}
#define VEST     {vestContainer     _this}
#define BACKPACK {backpackContainer _this}

#define ACE_MEDICAL_ITEMS [ \
    "ace_adenosine", \
    "ace_bloodiv", \
    "ace_bloodiv_250", \
    "ace_bloodiv_500", \
    "ace_bodybag", \
    "ace_elasticbandage", \
    "ace_epinephrine", \
    "ace_fielddressing", \
    "ace_morphine", \
    "ace_packingbandage", \
    "ace_personalaidkit", \
    "ace_plasmaiv", \
    "ace_plasmaiv_250", \
    "ace_plasmaiv_500", \
    "ace_quikclot", \
    "ace_salineiv", \
    "ace_salineiv_250", \
    "ace_salineiv_500", \
    "ace_surgicalkit", \
    "ace_tourniquet", \
    "ace_splint" \
]

#define GEAR_ITEMS [ \
    "ace_mx2a", \
    \
    "rhsusf_anpvs_14", \
    "rhsusf_anpvs_15", \
    \
    "ace_entrenchingtool",\
    "ace_wirecutter",\
    "ace_fortify",\
    \
    "ace_rope12",\
    "ace_rope15",\
    "ace_rope18",\
    "ace_rope27",\
    "ace_rope36",\
    \
    "ace_spraypaintblack",\
    "ace_spraypaintblue",\
    "ace_spraypaintgreen",\
    "ace_spraypaintred",\
    \
    "ace_canteen", \
    "ace_canteen_half", \
    "ace_canteen_empty", \
    "ace_can_franta", \
    "ace_can_redgull", \
    "ace_can_spirit", \
    "ace_humanitarian_ration", \
    "ace_mre_beefstew", \
    "ace_mre_chickenntikkamasala", \
    "ace_mre_chickeherbdumplings", \
    "ace_mre_creamchickensoup", \
    "ace_mre_creamtomatosoup", \
    "ace_mre_lambcurry", \
    "ace_mre_meatballspasta", \
    "ace_mre_steakvegetables", \
    "ace_waterbottle", \
    "ace_waterbottle_half", \
    "ace_waterbottle_empty", \
    "ace_banana", \
    \
    "rhsusf_oakley_goggles_clr"\
]

#define ACRE_RADIO_ITEMS [ \
    "acre_prc148", \
    "acre_prc152", \
    "acre_prc343" \
]

/*
    Loadout Indexes
    Defines the structure of any loadout array. Order:
    -Containers
    -Weapons
    -Items
    -Gear
    -Special
*/

#define LOADOUT_INDEXES [ \
    "uniform", "vest", "backpack", \
    "primary", "secondary", "launcher", \
    "magazines", "items", \
    "binoculars", "compass", "goggles", \
    "gps", "headgear", "map", \
    "nvgs", "watch", \
    "insignia"]
