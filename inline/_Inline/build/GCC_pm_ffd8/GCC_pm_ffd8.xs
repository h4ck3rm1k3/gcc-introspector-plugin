#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "INLINE.h"
#include "gcc.h"

enum tree_code {
ERROR_MARK,
IDENTIFIER_NODE,
TREE_LIST,
TREE_VEC,
GCC_BLOCK,
OFFSET_TYPE,
ENUMERAL_TYPE,
BOOLEAN_TYPE,
INTEGER_TYPE,
REAL_TYPE,
POINTER_TYPE,
REFERENCE_TYPE,


NULLPTR_TYPE,




FIXED_POINT_TYPE,

COMPLEX_TYPE,




VECTOR_TYPE,

ARRAY_TYPE,

RECORD_TYPE,





UNION_TYPE,





QUAL_UNION_TYPE,






VOID_TYPE,







FUNCTION_TYPE,






METHOD_TYPE,




`
LANG_TYPE,
// LINE268 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
INTEGER_CST,


REAL_CST,


FIXED_CST,



COMPLEX_CST,


VECTOR_CST,


STRING_CST,
// LINE344 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
FUNCTION_DECL,
LABEL_DECL,




FIELD_DECL,
VAR_DECL,
CONST_DECL,
PARM_DECL,
TYPE_DECL,
RESULT_DECL,



DEBUG_EXPR_DECL,



NAMESPACE_DECL,
// LINE374 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
IMPORTED_DECL,



TRANSLATION_UNIT_DECL,
// LINE391 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
COMPONENT_REF,
// LINE401 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
BIT_FIELD_REF,



REALPART_EXPR,
IMAGPART_EXPR,






ARRAY_REF,




ARRAY_RANGE_REF,


INDIRECT_REF,
// LINE430 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
OBJ_TYPE_REF,
// LINE446 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
CONSTRUCTOR,
// LINE456 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
COMPOUND_EXPR,


MODIFY_EXPR,




INIT_EXPR,







TARGET_EXPR,
// LINE486 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
COND_EXPR,
// LINE498 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
VEC_COND_EXPR,
// LINE521 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
BIND_EXPR,







CALL_EXPR,






WITH_CLEANUP_EXPR,
// LINE553 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
CLEANUP_POINT_EXPR,
// LINE605 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
PLACEHOLDER_EXPR,


PLUS_EXPR,
MINUS_EXPR,
MULT_EXPR,



POINTER_PLUS_EXPR,


TRUNC_DIV_EXPR,


CEIL_DIV_EXPR,


FLOOR_DIV_EXPR,


ROUND_DIV_EXPR,


TRUNC_MOD_EXPR,
CEIL_MOD_EXPR,
FLOOR_MOD_EXPR,
ROUND_MOD_EXPR,


RDIV_EXPR,



EXACT_DIV_EXPR,


FIX_TRUNC_EXPR,


FLOAT_EXPR,


NEGATE_EXPR,




MIN_EXPR,
MAX_EXPR,





ABS_EXPR,
// LINE675 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
LSHIFT_EXPR,
RSHIFT_EXPR,
LROTATE_EXPR,
RROTATE_EXPR,


BIT_IOR_EXPR,
BIT_XOR_EXPR,
BIT_AND_EXPR,
BIT_NOT_EXPR,
// LINE695 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
TRUTH_ANDIF_EXPR,
TRUTH_ORIF_EXPR,
TRUTH_AND_EXPR,
TRUTH_OR_EXPR,
TRUTH_XOR_EXPR,
TRUTH_NOT_EXPR,







LT_EXPR,
LE_EXPR,
GT_EXPR,
GE_EXPR,
EQ_EXPR,
NE_EXPR,


UNORDERED_EXPR,
ORDERED_EXPR,


UNLT_EXPR,
UNLE_EXPR,
UNGT_EXPR,
UNGE_EXPR,
UNEQ_EXPR,


LTGT_EXPR,

RANGE_EXPR,



PAREN_EXPR,




CONVERT_EXPR,



ADDR_SPACE_CONVERT_EXPR,




FIXED_CONVERT_EXPR,


NOP_EXPR,


NON_LVALUE_EXPR,
// LINE765 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
VIEW_CONVERT_EXPR,






COMPOUND_LITERAL_EXPR,




SAVE_EXPR,



ADDR_EXPR,



FDESC_EXPR,



COMPLEX_EXPR,


CONJ_EXPR,




PREDECREMENT_EXPR,
PREINCREMENT_EXPR,
POSTDECREMENT_EXPR,
POSTINCREMENT_EXPR,


VA_ARG_EXPR,






TRY_CATCH_EXPR,




TRY_FINALLY_EXPR,





DECL_EXPR,




LABEL_EXPR,



GOTO_EXPR,






RETURN_EXPR,



EXIT_EXPR,




LOOP_EXPR,
// LINE860 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
SWITCH_EXPR,





CASE_LABEL_EXPR,






ASM_EXPR,




SSA_NAME,



CATCH_EXPR,





EH_FILTER_EXPR,



SCEV_KNOWN,



SCEV_NOT_KNOWN,



POLYNOMIAL_CHREC,



STATEMENT_LIST,
// LINE923 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
ASSERT_EXPR,



TREE_BINFO,






WITH_SIZE_EXPR,
// LINE945 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
REALIGN_LOAD_EXPR,
// LINE961 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
TARGET_MEM_REF,
// LINE971 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
MEM_REF,







OMP_PARALLEL,





OMP_TASK,
// LINE1006 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
OMP_FOR,




OMP_SECTIONS,




OMP_SINGLE,



OMP_SECTION,



OMP_MASTER,



OMP_ORDERED,




OMP_CRITICAL,







OMP_ATOMIC,


OMP_CLAUSE,







REDUC_MAX_EXPR,
REDUC_MIN_EXPR,
REDUC_PLUS_EXPR,
// LINE1065 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
DOT_PROD_EXPR,
// LINE1074 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
WIDEN_SUM_EXPR,






WIDEN_MULT_EXPR,
// LINE1090 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
WIDEN_MULT_PLUS_EXPR,


WIDEN_MULT_MINUS_EXPR,





FMA_EXPR,




VEC_LSHIFT_EXPR,
VEC_RSHIFT_EXPR,






VEC_WIDEN_MULT_HI_EXPR,
VEC_WIDEN_MULT_LO_EXPR,





VEC_UNPACK_HI_EXPR,
VEC_UNPACK_LO_EXPR,





VEC_UNPACK_FLOAT_HI_EXPR,
VEC_UNPACK_FLOAT_LO_EXPR,





VEC_PACK_TRUNC_EXPR,
VEC_PACK_SAT_EXPR,





VEC_PACK_FIX_TRUNC_EXPR,


VEC_EXTRACT_EVEN_EXPR,
VEC_EXTRACT_ODD_EXPR,


VEC_INTERLEAVE_HIGH_EXPR,
VEC_INTERLEAVE_LOW_EXPR,






PREDICT_EXPR,


OPTIMIZATION_NODE,


TARGET_OPTION_NODE,
// LINE2 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
LAST_AND_UNUSED_TREE_CODE,
// LINE1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.def" 1
// LINE41 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.def"
C_MAYBE_CONST_EXPR,






EXCESS_PRECISION_EXPR,
// LINE4 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
// LINE1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def" 1
// LINE29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def"
UNCONSTRAINED_ARRAY_TYPE,





UNCONSTRAINED_ARRAY_REF,




NULL_EXPR,



PLUS_NOMOD_EXPR,



MINUS_NOMOD_EXPR,




ATTR_ADDR_EXPR,
// LINE62 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def"
STMT_STMT,





LOOP_STMT,





EXIT_STMT,
// LINE5 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
// LINE1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def" 1
// LINE43 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
OFFSET_REF,




PTRMEM_CST,





NEW_EXPR,
VEC_NEW_EXPR,




DELETE_EXPR,
VEC_DELETE_EXPR,




SCOPE_REF,




MEMBER_REF,



TYPE_EXPR,






AGGR_INIT_EXPR,




VEC_INIT_EXPR,



THROW_EXPR,



EMPTY_CLASS_EXPR,
// LINE109 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
BASELINK,
// LINE126 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_DECL,
// LINE161 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_PARM_INDEX,
// LINE170 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_TEMPLATE_PARM,
// LINE179 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_TYPE_PARM,





TYPENAME_TYPE,



TYPEOF_TYPE,





BOUND_TEMPLATE_TEMPLATE_PARM,





UNBOUND_CLASS_TEMPLATE,





USING_DECL,


USING_STMT,




DEFAULT_ARG,






TEMPLATE_ID_EXPR,



OVERLOAD,
// LINE238 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
PSEUDO_DTOR_EXPR,



MODOP_EXPR,
CAST_EXPR,
REINTERPRET_CAST_EXPR,
CONST_CAST_EXPR,
STATIC_CAST_EXPR,
DYNAMIC_CAST_EXPR,
DOTSTAR_EXPR,
TYPEID_EXPR,
NOEXCEPT_EXPR,
// LINE261 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
NON_DEPENDENT_EXPR,



CTOR_INITIALIZER,

TRY_BLOCK,

EH_SPEC_BLOCK,





HANDLER,



MUST_NOT_THROW_EXPR,




CLEANUP_STMT,





IF_STMT,



FOR_STMT,




RANGE_FOR_STMT,



WHILE_STMT,



DO_STMT,


BREAK_STMT,


CONTINUE_STMT,



SWITCH_STMT,



EXPR_STMT,

TAG_DEFN,


OFFSETOF_EXPR,


SIZEOF_EXPR,


ARROW_EXPR,



ALIGNOF_EXPR,



AT_ENCODE_EXPR,




STMT_EXPR,



UNARY_PLUS_EXPR,







STATIC_ASSERT,
// LINE376 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TYPE_ARGUMENT_PACK,
// LINE385 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
NONTYPE_ARGUMENT_PACK,
// LINE408 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TYPE_PACK_EXPANSION,






EXPR_PACK_EXPANSION,
// LINE427 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
ARGUMENT_PACK_SELECT,




TRAIT_EXPR,
// LINE441 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
LAMBDA_EXPR,
// LINE450 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
DECLTYPE_TYPE,
// LINE460 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_INFO,
// LINE6 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
// LINE1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/java/java-tree.def" 1
// LINE23 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/java/java-tree.def"
URSHIFT_EXPR,



COMPARE_EXPR,


COMPARE_L_EXPR,

COMPARE_G_EXPR,
// LINE7 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
// LINE1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def" 1
// LINE25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def"
CLASS_INTERFACE_TYPE,
CLASS_IMPLEMENTATION_TYPE,

CATEGORY_INTERFACE_TYPE,
CATEGORY_IMPLEMENTATION_TYPE,

PROTOCOL_INTERFACE_TYPE,


KEYWORD_DECL,
INSTANCE_METHOD_DECL,
CLASS_METHOD_DECL,
PROPERTY_DECL,


MESSAGE_SEND_EXPR,
CLASS_REFERENCE_EXPR,
// LINE71 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def"
PROPERTY_REF,
// LINE7 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
// LINE44 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
MAX_TREE_CODES
};




extern unsigned char tree_contains_struct[MAX_TREE_CODES][64];
// LINE61 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
enum tree_code_class {
  tcc_exceptional,
  tcc_constant,

  tcc_type,
  tcc_declaration,
  tcc_reference,
  tcc_comparison,
  tcc_unary,
  tcc_binary,
  tcc_statement,

  tcc_vl_exp,

  tcc_expression
};




extern const char *const tree_code_class_strings[];






extern const enum tree_code_class tree_code_type[];
// LINE175 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern const unsigned char tree_code_length[];




extern const char *const tree_code_name[];
// LINE190 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
typedef enum {
  ALIAS_DIAG_NONE = 0x0,
  ALIAS_DIAG_TO_UNDEF = 0x1,
  ALIAS_DIAG_TO_EXTERN = 0x2
} alias_diag_flags;


union tree_node;
typedef union tree_node *tree;

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

enum tree_node_structure_enum {
// LINE"/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/treestruct.def"

TS_BASE,
TS_COMMON,
TS_INT_CST,
TS_REAL_CST,
TS_FIXED_CST,
TS_VECTOR,
TS_STRING,
TS_COMPLEX,
TS_IDENTIFIER,
TS_DECL_MINIMAL,
TS_DECL_COMMON,
TS_DECL_WRTL,
TS_DECL_NON_COMMON,
TS_DECL_WITH_VIS,
TS_FIELD_DECL,
TS_VAR_DECL,
TS_PARM_DECL,
TS_LABEL_DECL,
TS_RESULT_DECL,
TS_CONST_DECL,
TS_TYPE_DECL,
TS_FUNCTION_DECL,
TS_TRANSLATION_UNIT_DECL,
TS_TYPE,
TS_LIST,
TS_VEC,
TS_EXP,
TS_SSA_NAME,
TS_BLOCK,
TS_BINFO,
TS_STATEMENT_LIST,
TS_CONSTRUCTOR,
TS_OMP_CLAUSE,
TS_OPTIMIZATION,
TS_TARGET_OPTION,

  LAST_TS_ENUM
};
struct tree_int_cst {
  struct tree_common common;
  double_int int_cst;
};

void greet(char* name) {
    printf("Hello %s!\n", name);
}

MODULE = GCC_pm_ffd8	PACKAGE = main	

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

