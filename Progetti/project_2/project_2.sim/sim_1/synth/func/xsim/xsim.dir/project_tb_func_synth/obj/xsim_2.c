/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_589(char*, char *);
extern void execute_590(char*, char *);
extern void execute_591(char*, char *);
extern void execute_39(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_69(char*, char *);
extern void execute_80(char*, char *);
extern void execute_85(char*, char *);
extern void execute_88(char*, char *);
extern void execute_99(char*, char *);
extern void execute_133(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_136(char*, char *);
extern void execute_137(char*, char *);
extern void execute_138(char*, char *);
extern void execute_139(char*, char *);
extern void execute_215(char*, char *);
extern void execute_220(char*, char *);
extern void execute_224(char*, char *);
extern void execute_227(char*, char *);
extern void execute_230(char*, char *);
extern void execute_239(char*, char *);
extern void execute_241(char*, char *);
extern void execute_244(char*, char *);
extern void execute_246(char*, char *);
extern void execute_247(char*, char *);
extern void execute_248(char*, char *);
extern void execute_258(char*, char *);
extern void execute_260(char*, char *);
extern void execute_261(char*, char *);
extern void execute_293(char*, char *);
extern void execute_300(char*, char *);
extern void execute_306(char*, char *);
extern void execute_309(char*, char *);
extern void execute_312(char*, char *);
extern void execute_314(char*, char *);
extern void execute_315(char*, char *);
extern void execute_428(char*, char *);
extern void execute_432(char*, char *);
extern void execute_440(char*, char *);
extern void execute_442(char*, char *);
extern void execute_453(char*, char *);
extern void execute_467(char*, char *);
extern void execute_469(char*, char *);
extern void execute_473(char*, char *);
extern void execute_559(char*, char *);
extern void execute_570(char*, char *);
extern void execute_575(char*, char *);
extern void execute_584(char*, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_85(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_131(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_132(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_135(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_137(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_160(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_161(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_187(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_201(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_222(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_229(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_236(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_257(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_270(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_277(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_284(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_297(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_304(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_311(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_331(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_338(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_345(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_352(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_365(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_373(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_380(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_387(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_393(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_400(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_407(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_414(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_421(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_428(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_435(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_442(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_449(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_456(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_463(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_470(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_477(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_484(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_491(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_498(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_505(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_512(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_519(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_526(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_533(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_546(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_553(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_560(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_567(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_580(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_587(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_594(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[176] = {(funcp)execute_589, (funcp)execute_590, (funcp)execute_591, (funcp)execute_39, (funcp)execute_41, (funcp)execute_42, (funcp)execute_43, (funcp)execute_69, (funcp)execute_80, (funcp)execute_85, (funcp)execute_88, (funcp)execute_99, (funcp)execute_133, (funcp)execute_134, (funcp)execute_135, (funcp)execute_136, (funcp)execute_137, (funcp)execute_138, (funcp)execute_139, (funcp)execute_215, (funcp)execute_220, (funcp)execute_224, (funcp)execute_227, (funcp)execute_230, (funcp)execute_239, (funcp)execute_241, (funcp)execute_244, (funcp)execute_246, (funcp)execute_247, (funcp)execute_248, (funcp)execute_258, (funcp)execute_260, (funcp)execute_261, (funcp)execute_293, (funcp)execute_300, (funcp)execute_306, (funcp)execute_309, (funcp)execute_312, (funcp)execute_314, (funcp)execute_315, (funcp)execute_428, (funcp)execute_432, (funcp)execute_440, (funcp)execute_442, (funcp)execute_453, (funcp)execute_467, (funcp)execute_469, (funcp)execute_473, (funcp)execute_559, (funcp)execute_570, (funcp)execute_575, (funcp)execute_584, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_38, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_84, (funcp)transaction_85, (funcp)transaction_86, (funcp)transaction_98, (funcp)transaction_100, (funcp)transaction_104, (funcp)transaction_118, (funcp)transaction_119, (funcp)transaction_120, (funcp)transaction_121, (funcp)transaction_127, (funcp)transaction_128, (funcp)transaction_129, (funcp)transaction_131, (funcp)transaction_132, (funcp)transaction_133, (funcp)transaction_134, (funcp)transaction_135, (funcp)transaction_136, (funcp)transaction_137, (funcp)transaction_146, (funcp)transaction_147, (funcp)transaction_148, (funcp)transaction_149, (funcp)transaction_150, (funcp)transaction_160, (funcp)transaction_161, (funcp)transaction_181, (funcp)transaction_182, (funcp)transaction_187, (funcp)transaction_194, (funcp)transaction_201, (funcp)transaction_208, (funcp)transaction_215, (funcp)transaction_222, (funcp)transaction_229, (funcp)transaction_236, (funcp)transaction_243, (funcp)transaction_250, (funcp)transaction_257, (funcp)transaction_270, (funcp)transaction_277, (funcp)transaction_284, (funcp)transaction_297, (funcp)transaction_304, (funcp)transaction_311, (funcp)transaction_318, (funcp)transaction_331, (funcp)transaction_338, (funcp)transaction_345, (funcp)transaction_352, (funcp)transaction_365, (funcp)transaction_373, (funcp)transaction_380, (funcp)transaction_387, (funcp)transaction_393, (funcp)transaction_400, (funcp)transaction_407, (funcp)transaction_414, (funcp)transaction_421, (funcp)transaction_428, (funcp)transaction_435, (funcp)transaction_442, (funcp)transaction_449, (funcp)transaction_456, (funcp)transaction_463, (funcp)transaction_470, (funcp)transaction_477, (funcp)transaction_484, (funcp)transaction_491, (funcp)transaction_498, (funcp)transaction_505, (funcp)transaction_512, (funcp)transaction_519, (funcp)transaction_526, (funcp)transaction_533, (funcp)transaction_546, (funcp)transaction_553, (funcp)transaction_560, (funcp)transaction_567, (funcp)transaction_580, (funcp)transaction_587, (funcp)transaction_594};
const int NumRelocateId= 176;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/project_tb_func_synth/xsim.reloc",  (void **)funcTab, 176);
	iki_vhdl_file_variable_register(dp + 1180056);
	iki_vhdl_file_variable_register(dp + 1180112);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/project_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/project_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/project_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
