//#include "\x\cba addons\main\script_macros_common.hpp"
//#include "\x\cba\addons\main\script_macros_mission.hpp"

#define QUOTE(var) #var
#define DOUBLES(var1,var2) ##var1##_##var2
#define TRIPLES(var1,var2,var3) ##var1##_##var2##_##var3

#define ARR_1(ARG1) ARG1
#define ARR_2(ARG1,ARG2) ARG1, ARG2
#define ARR_3(ARG1,ARG2,ARG3) ARG1, ARG2, ARG3
#define ARR_4(ARG1,ARG2,ARG3,ARG4) ARG1, ARG2, ARG3, ARG4
#define ARR_5(ARG1,ARG2,ARG3,ARG4,ARG5) ARG1, ARG2, ARG3, ARG4, ARG5
#define ARR_6(ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) ARG1, ARG2, ARG3, ARG4, ARG5, ARG6
#define ARR_7(ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7
#define ARR_8(ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7, ARG8

#define GVAR(var1) DOUBLES(PREFIX,var1)
#define EGVAR(var1,var2) TRIPLES(PREFIX,var1,var2)
#define QGVAR(var1) QUOTE(GVAR(var1))
#define QEGVAR(var1,var2) QUOTE(EGVAR(var1,var2))
#define QQGVAR(var1) QUOTE(QGVAR(var1))
#define QQEGVAR(var1,var2) QUOTE(QEGVAR(var1,var2))

#define FUNC(var) TRIPLES(PREFIX,fnc,var)
#define EFUNC(var1,var2) FUNC(DOUBLES(var1,var2))
#define QFUNC(var) QUOTE(FUNC(var))
#define QEFUNC(var1,var2) QUOTE(EFUNC(var1,var2))

#define GETVAR_SYS(var1,var2) getVariable [ARR_2(QUOTE(var1),var2)]
#define SETVAR_SYS(var1,var2) setVariable [ARR_2(QUOTE(var1),var2)]
#define SETPVAR_SYS(var1,var2) setVariable [ARR_3(QUOTE(var1),var2,true)]

#define GETVAR(var1,var2,var3) (var1 GETVAR_SYS(var2,var3))
#define GETMVAR(var1,var2) (missionNamespace GETVAR_SYS(var1,var2))
#define GETUVAR(var1,var2) (uiNamespace GETVAR_SYS(var1,var2))
#define GETPRVAR(var1,var2) (profileNamespace GETVAR_SYS(var1,var2))
#define GETPAVAR(var1,var2) (parsingNamespace GETVAR_SYS(var1,var2))

#define SETVAR(var1,var2,var3) var1 SETVAR_SYS(var2,var3)
#define SETPVAR(var1,var2,var3) var1 SETPVAR_SYS(var2,var3)
#define SETMVAR(var1,var2) missionNamespace SETVAR_SYS(var1,var2)
#define SETUVAR(var1,var2) uiNamespace SETVAR_SYS(var1,var2)
#define SETPRVAR(var1,var2) profileNamespace SETVAR_SYS(var1,var2)
#define SETPAVAR(var1,var2) parsingNamespace SETVAR_SYS(var1,var2)

#define GETGVAR(var1,var2) GETMVAR(GVAR(var1),var2)
#define GETEGVAR(var1,var2,var3) GETMVAR(EGVAR(var1,var2),var3)

#define FORMAT_1(STR,ARG1) format[STR, ARG1]
#define FORMAT_2(STR,ARG1,ARG2) format[STR, ARG1, ARG2]
#define FORMAT_3(STR,ARG1,ARG2,ARG3) format[STR, ARG1, ARG2, ARG3]
#define FORMAT_4(STR,ARG1,ARG2,ARG3,ARG4) format[STR, ARG1, ARG2, ARG3, ARG4]
#define FORMAT_5(STR,ARG1,ARG2,ARG3,ARG4,ARG5) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5]
#define FORMAT_6(STR,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5, ARG6]
#define FORMAT_7(STR,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7]
#define FORMAT_8(STR,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7, ARG8]

/* TESTING */
#define TEST_INIT(NAME) \
    #define COMPONANT NAME\
    diag_log text "================================================"; \
    diag_log FORMAT_1("TESTING: %1", NAME); \
    diag_log text "================================================"


#define RUN_TEST(FILE) 0 spawn compile preprocessFileLineNumbers QUOTE(_TESTING_\FILE.sqf)


/* LOGGING */
#define LOG_SYS_FORMAT(LEVEL,MESSAGE) format ['%1 (%2) %3: %4', PREFIX, COMPONENT, LEVEL, MESSAGE]
#define LOG_SYS(LEVEL,MESSAGE) diag_log text LOG_SYS_FORMAT(LEVEL, MESSAGE)

/* DEBUG LOG LOGGING */
#ifdef DEBUG_MODE
#define LOG(MESSAGE) LOG_SYS('LOG', MESSAGE)
#define LOG_1(MESSAGE,ARG1) LOG(FORMAT_1(MESSAGE,ARG1))
#define LOG_2(MESSAGE,ARG1,ARG2) LOG(FORMAT_2(MESSAGE,ARG1,ARG2))
#define LOG_3(MESSAGE,ARG1,ARG2,ARG3) LOG(FORMAT_3(MESSAGE,ARG1,ARG2,ARG3))
#define LOG_4(MESSAGE,ARG1,ARG2,ARG3,ARG4) LOG(FORMAT_4(MESSAGE,ARG1,ARG2,ARG3,ARG4))
#define LOG_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5) LOG(FORMAT_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5))
#define LOG_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) LOG(FORMAT_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6))
#define LOG_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) LOG(FORMAT_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7))
#define LOG_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) LOG(FORMAT_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8))

#else

#define LOG(MESSAGE) /* disabled */
#define LOG_1(MESSAGE,ARG1) /* disabled */
#define LOG_2(MESSAGE,ARG1,ARG2) /* disabled */
#define LOG_3(MESSAGE,ARG1,ARG2,ARG3) /* disabled */
#define LOG_4(MESSAGE,ARG1,ARG2,ARG3,ARG4) /* disabled */
#define LOG_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5) /* disabled */
#define LOG_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) /* disabled */
#define LOG_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) /* disabled */
#define LOG_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) /* disabled */

#endif
