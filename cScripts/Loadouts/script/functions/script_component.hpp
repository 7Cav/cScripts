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
    "ace_atropine", \
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
    "ace_tourniquet" \
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
