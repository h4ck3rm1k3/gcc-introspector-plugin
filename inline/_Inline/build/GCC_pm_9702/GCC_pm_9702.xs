#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "INLINE.h"
#include "gcc.h"


void greet(char* name) {
    printf("Hello %s!\n", name);
}

void print_tree(tree* t) {
    printf("%p %ld code %d!\n", t, t,  t->base.code);
}
/*
struct tree_base {
    enum tree_code code : 16;
    unsigned side_effects_flag : 1;
  unsigned constant_flag : 1;
  unsigned addressable_flag : 1;
  unsigned volatile_flag : 1;
  unsigned readonly_flag : 1;
  unsigned unsigned_flag : 1;
  unsigned asm_written_flag: 1;
  unsigned nowarning_flag : 1;

  unsigned used_flag : 1;
  unsigned nothrow_flag : 1;
  unsigned static_flag : 1;
  unsigned public_flag : 1;
  unsigned private_flag : 1;
  unsigned protected_flag : 1;
  unsigned deprecated_flag : 1;
  unsigned saturating_flag : 1;

  unsigned default_def_flag : 1;
  unsigned lang_flag_0 : 1;
  unsigned lang_flag_1 : 1;
  unsigned lang_flag_2 : 1;
  unsigned lang_flag_3 : 1;
  unsigned lang_flag_4 : 1;
  unsigned lang_flag_5 : 1;
  unsigned lang_flag_6 : 1;

  unsigned visited : 1;
  unsigned packed_flag : 1;
  unsigned user_align : 1;
  unsigned nameless_flag : 1;
  unsigned spare : 12;
  unsigned address_space : 8;
};

struct tree_common {
  struct tree_base base;
  tree chain;
  tree type;
};

union                                                         
tree_node {
  struct tree_base base;
  struct tree_common common;
  struct tree_int_cst int_cst;
  struct tree_real_cst real_cst;
  struct tree_fixed_cst fixed_cst;
  struct tree_vector vector;
  struct tree_string string;
  //struct tree_complex complex;
  struct tree_identifier identifier;
  struct tree_decl_minimal decl_minimal;
  struct tree_decl_common decl_common;
  struct tree_decl_with_rtl decl_with_rtl;
  struct tree_decl_non_common decl_non_common;
  struct tree_parm_decl parm_decl;
  struct tree_decl_with_vis decl_with_vis;
  struct tree_var_decl var_decl;
  struct tree_field_decl field_decl;
  struct tree_label_decl label_decl;
  struct tree_result_decl result_decl;
  struct tree_const_decl const_decl;
  struct tree_type_decl type_decl;
  struct tree_function_decl function_decl;
  struct tree_translation_unit_decl
    translation_unit_decl;
  struct tree_type type;
  struct tree_list list;
  struct tree_vec vec;
  struct tree_exp exp;
  struct tree_ssa_name ssa_name;
  struct tree_block block;
  struct tree_binfo binfo;
  struct tree_statement_list stmt_list;
  struct tree_constructor constructor;
  struct tree_omp_clause omp_clause;
  struct tree_optimization_option optimization;
  struct tree_target_option target_option;
};

*/

MODULE = GCC_pm_9702	PACKAGE = main	

PROTOTYPES: DISABLE


void
greet (name)
	char *	name
	PREINIT:
	I32* temp;
	PPCODE:
	temp = PL_markstack_ptr++;
	greet(name);
	if (PL_markstack_ptr != temp) {
          /* truly void, because dXSARGS not invoked */
	  PL_markstack_ptr = temp;
	  XSRETURN_EMPTY; /* return empty stack */
        }
        /* must have used dXSARGS; list context implied */
	return; /* assume stack size is correct */

