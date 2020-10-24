//#include "\x\cba\addons\main\script_macros_mission.hpp"

#define QUOTE(var) #var
#define DOUBLES(var1,var2) ##var1##_##var2
#define TRIPLES(var1,var2,var3) ##var1##_##var2##_##var3

#define MULT0(a)
#define MULT1(a) a
#define MULT2(a) MULT1(a), a
#define MULT3(a) MULT2(a), a
#define MULT4(a) MULT3(a), a
#define MULT5(a) MULT4(a), a
#define MULT6(a) MULT5(a), a
#define MULT7(a) MULT6(a), a
#define MULT8(a) MULT7(a), a
#define MULT9(a) MULT8(a), a
#define MULT10(a) MULT9(a), a
#define MULT11(a) MULT10(a), a
#define MULT12(a) MULT11(a), a
#define MULT13(a) MULT12(a), a
#define MULT14(a) MULT13(a), a
#define MULT15(a) MULT14(a), a
#define MULT16(a) MULT15(a), a
#define MULT17(a) MULT16(a), a
#define MULT18(a) MULT17(a), a
#define MULT19(a) MULT18(a), a
#define MULT20(a) MULT19(a), a


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
#define EFUNC(var1,var2) FUNC(DOUBLES(var1,var2))
#define QEFUNC(var1,var2) QUOTE(EFUNC(var1,var2))
