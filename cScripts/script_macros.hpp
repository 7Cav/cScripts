//#include "\x\cba\addons\main\script_macros_mission.hpp"

#define QUOTE(var) #var
#define DOUBLES(var1,var2) ##var1##_##var2
#define TRIPLES(var1,var2,var3) ##var1##_##var2##_##var3

#define _QUA0(a)
#define _QUA1(a) a
#define _QUA2(a) a, a
#define _QUA3(a) a, a, a
#define _QUA4(a) a, a, a, a
#define _QUA5(a) a, a, a, a, a
#define _QUA6(a) a, a, a, a, a, a
#define _QUA7(a) a, a, a, a, a, a, a
#define _QUA8(a) a, a, a, a, a, a, a, a
#define _QUA9(a) a, a, a, a, a, a, a, a, a
#define _QUA10(a) a, a, a, a, a, a, a, a, a, a
#define _QUA11(a) a, a, a, a, a, a, a, a, a, a, a
#define _QUA12(a) a, a, a, a, a, a, a, a, a, a, a, a

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
#define QFUNC(var) QUOTE(FUNC(var))

#define MACRO_UNITINSIGNIA(var1,var2) \
class TRIPLES(Cav,Insignia,var2) { \
    displayName = QUOTE([7CAV] var1); \
    author = QUOTE(7th Cavalry Gaming); \
    texture = QUOTE(cScripts\Data\Insignia\var2.paa); \
}
