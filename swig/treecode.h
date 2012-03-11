typedef enum {
  ERROR_MARK,
  IDENTIFIER_NODE,
  TREE_LIST,
  TREE_VEC,
  // 79 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
  GCC_BLOCK,
// 123 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
OFFSET_TYPE,
// 136 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
ENUMERAL_TYPE,BOOLEAN_TYPE,
// 150 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
INTEGER_TYPE,REAL_TYPE,
// 163 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
POINTER_TYPE,REFERENCE_TYPE,
NULLPTR_TYPE,
FIXED_POINT_TYPE,
// 184 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
COMPLEX_TYPE,
VECTOR_TYPE,
// 205 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
ARRAY_TYPE,
// 215 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
RECORD_TYPE,UNION_TYPE,QUAL_UNION_TYPE,
VOID_TYPE,FUNCTION_TYPE,
METHOD_TYPE,LANG_TYPE,
// 268 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
INTEGER_CST,
REAL_CST,
FIXED_CST,COMPLEX_CST,
VECTOR_CST,
STRING_CST,
// 344 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
FUNCTION_DECL,
LABEL_DECL,
FIELD_DECL,
VAR_DECL,
CONST_DECL,
PARM_DECL,
TYPE_DECL,
RESULT_DECL,DEBUG_EXPR_DECL,NAMESPACE_DECL,
// 374 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
IMPORTED_DECL,TRANSLATION_UNIT_DECL,
// 391 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
COMPONENT_REF,
// 401 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
BIT_FIELD_REF,REALPART_EXPR,
IMAGPART_EXPR,
ARRAY_REF,
ARRAY_RANGE_REF,
INDIRECT_REF,
// 430 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
OBJ_TYPE_REF,
// 446 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
CONSTRUCTOR,
// 456 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
COMPOUND_EXPR,
MODIFY_EXPR,
INIT_EXPR,TARGET_EXPR,
// 486 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
COND_EXPR,
// 498 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
VEC_COND_EXPR,
// 521 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
BIND_EXPR,CALL_EXPR,
WITH_CLEANUP_EXPR,
// 553 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
CLEANUP_POINT_EXPR,
// 605 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
PLACEHOLDER_EXPR,
PLUS_EXPR,
MINUS_EXPR,
MULT_EXPR,POINTER_PLUS_EXPR,
TRUNC_DIV_EXPR,
CEIL_DIV_EXPR,
FLOOR_DIV_EXPR,
ROUND_DIV_EXPR,
TRUNC_MOD_EXPR,
CEIL_MOD_EXPR,
FLOOR_MOD_EXPR,
ROUND_MOD_EXPR,
RDIV_EXPR,EXACT_DIV_EXPR,
FIX_TRUNC_EXPR,
FLOAT_EXPR,
NEGATE_EXPR,
MIN_EXPR,
MAX_EXPR,ABS_EXPR,
// 675 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
LSHIFT_EXPR,
RSHIFT_EXPR,
LROTATE_EXPR,
RROTATE_EXPR,
BIT_IOR_EXPR,
BIT_XOR_EXPR,
BIT_AND_EXPR,
BIT_NOT_EXPR,
// 695 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
TRUTH_ANDIF_EXPR,
TRUTH_ORIF_EXPR,
TRUTH_AND_EXPR,
TRUTH_OR_EXPR,
TRUTH_XOR_EXPR,
TRUTH_NOT_EXPR,LT_EXPR,
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
LTGT_EXPR,RANGE_EXPR,PAREN_EXPR,
CONVERT_EXPR,ADDR_SPACE_CONVERT_EXPR,
FIXED_CONVERT_EXPR,
NOP_EXPR,
NON_LVALUE_EXPR,
// 765 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
VIEW_CONVERT_EXPR,
COMPOUND_LITERAL_EXPR,
SAVE_EXPR,ADDR_EXPR,FDESC_EXPR,COMPLEX_EXPR,
CONJ_EXPR,
PREDECREMENT_EXPR,
PREINCREMENT_EXPR,
POSTDECREMENT_EXPR,
POSTINCREMENT_EXPR,
VA_ARG_EXPR,
TRY_CATCH_EXPR,
TRY_FINALLY_EXPR,DECL_EXPR,
LABEL_EXPR,GOTO_EXPR,
RETURN_EXPR,EXIT_EXPR,
LOOP_EXPR,
// 860 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
SWITCH_EXPR,CASE_LABEL_EXPR,
ASM_EXPR,
SSA_NAME,CATCH_EXPR,EH_FILTER_EXPR,SCEV_KNOWN,SCEV_NOT_KNOWN,POLYNOMIAL_CHREC,STATEMENT_LIST,
// 923 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
ASSERT_EXPR,TREE_BINFO,
WITH_SIZE_EXPR,
// 945 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
REALIGN_LOAD_EXPR,
// 961 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
TARGET_MEM_REF,
// 971 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
MEM_REF,OMP_PARALLEL,OMP_TASK,
// 1006 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
OMP_FOR,
OMP_SECTIONS,
OMP_SINGLE,OMP_SECTION,OMP_MASTER,OMP_ORDERED,
OMP_CRITICAL,OMP_ATOMIC,
OMP_CLAUSE,REDUC_MAX_EXPR,
REDUC_MIN_EXPR,
REDUC_PLUS_EXPR,
// 1065 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
DOT_PROD_EXPR,
// 1074 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
WIDEN_SUM_EXPR,
WIDEN_MULT_EXPR,
// 1090 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
WIDEN_MULT_PLUS_EXPR,
WIDEN_MULT_MINUS_EXPR,FMA_EXPR,
VEC_LSHIFT_EXPR,
VEC_RSHIFT_EXPR,
VEC_WIDEN_MULT_HI_EXPR,
VEC_WIDEN_MULT_LO_EXPR,VEC_UNPACK_HI_EXPR,
VEC_UNPACK_LO_EXPR,VEC_UNPACK_FLOAT_HI_EXPR,
VEC_UNPACK_FLOAT_LO_EXPR,VEC_PACK_TRUNC_EXPR,
VEC_PACK_SAT_EXPR,VEC_PACK_FIX_TRUNC_EXPR,
VEC_EXTRACT_EVEN_EXPR,
VEC_EXTRACT_ODD_EXPR,
VEC_INTERLEAVE_HIGH_EXPR,
VEC_INTERLEAVE_LOW_EXPR,
PREDICT_EXPR,
OPTIMIZATION_NODE,
TARGET_OPTION_NODE,
// 2 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
LAST_AND_UNUSED_TREE_CODE,
// 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.def" 1
// 41 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.def"
C_MAYBE_CONST_EXPR,
EXCESS_PRECISION_EXPR,
// 4 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
// 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def" 1
// 29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def"
UNCONSTRAINED_ARRAY_TYPE,UNCONSTRAINED_ARRAY_REF,
NULL_EXPR,PLUS_NOMOD_EXPR,MINUS_NOMOD_EXPR,
ATTR_ADDR_EXPR,
// 62 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def"
STMT_STMT,LOOP_STMT,EXIT_STMT,
// 5 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
// 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def" 1
// 43 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
OFFSET_REF,
PTRMEM_CST,NEW_EXPR,
VEC_NEW_EXPR,
DELETE_EXPR,
VEC_DELETE_EXPR,
SCOPE_REF,
MEMBER_REF,TYPE_EXPR,
AGGR_INIT_EXPR,
VEC_INIT_EXPR,THROW_EXPR,EMPTY_CLASS_EXPR,
// 109 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
BASELINK,
// 126 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_DECL,
// 161 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_PARM_INDEX,
// 170 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_TEMPLATE_PARM,
// 179 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_TYPE_PARM,TYPENAME_TYPE,TYPEOF_TYPE,BOUND_TEMPLATE_TEMPLATE_PARM,UNBOUND_CLASS_TEMPLATE,USING_DECL,
USING_STMT,
DEFAULT_ARG,
TEMPLATE_ID_EXPR,OVERLOAD,
// 238 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
PSEUDO_DTOR_EXPR,MODOP_EXPR,
CAST_EXPR,
REINTERPRET_CAST_EXPR,
CONST_CAST_EXPR,
STATIC_CAST_EXPR,
DYNAMIC_CAST_EXPR,
DOTSTAR_EXPR,
TYPEID_EXPR,
NOEXCEPT_EXPR,
// 261 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
NON_DEPENDENT_EXPR,CTOR_INITIALIZER,TRY_BLOCK,EH_SPEC_BLOCK,HANDLER,MUST_NOT_THROW_EXPR,
CLEANUP_STMT,IF_STMT,FOR_STMT,
RANGE_FOR_STMT,WHILE_STMT,DO_STMT,
BREAK_STMT,
CONTINUE_STMT,SWITCH_STMT,EXPR_STMT,TAG_DEFN,
OFFSETOF_EXPR,
SIZEOF_EXPR,
ARROW_EXPR,ALIGNOF_EXPR,AT_ENCODE_EXPR,
STMT_EXPR,UNARY_PLUS_EXPR,STATIC_ASSERT,
// 376 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TYPE_ARGUMENT_PACK,
// 385 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
NONTYPE_ARGUMENT_PACK,
// 408 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TYPE_PACK_EXPANSION,
EXPR_PACK_EXPANSION,
// 427 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
ARGUMENT_PACK_SELECT,
TRAIT_EXPR,
// 441 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
LAMBDA_EXPR,
// 450 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
DECLTYPE_TYPE,
// 460 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_INFO,
// 6 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
// 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/java/java-tree.def" 1
// 23 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/java/java-tree.def"
URSHIFT_EXPR,COMPARE_EXPR,
COMPARE_L_EXPR,COMPARE_G_EXPR,
// 7 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
// 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def" 1
// 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def"
CLASS_INTERFACE_TYPE,
CLASS_IMPLEMENTATION_TYPE,CATEGORY_INTERFACE_TYPE,
CATEGORY_IMPLEMENTATION_TYPE,PROTOCOL_INTERFACE_TYPE,
KEYWORD_DECL,
INSTANCE_METHOD_DECL,
CLASS_METHOD_DECL,
PROPERTY_DECL,
MESSAGE_SEND_EXPR,
CLASS_REFERENCE_EXPR,
// 71 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def"
PROPERTY_REF,
// 7 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
// 44 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
MAX_TREE_CODES
} GccTreeCode;
//tree_code
