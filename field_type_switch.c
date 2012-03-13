#include "gcc.h"
#define ENTER
#define PREFIX "field type :"

//void process_field_type_enum_tree_code(tree t) { 	
void field_type_ENUMERAL_TYPE2(tree t){
  // 
  //field_type_TREE_CODE_ENUMERAL_TYPE(t); 
  //  process_enum ( t ); the debug routine
  //  process_enum_tree_code_generate_gcc (t );
  process_enum_emit(t);
};

// void process_enum_tree_code(tree t) 
void emit_tree_code(const char * pstr)
{
  fprintf( code_outputfile,"TREECODE(\"%s\"),\n",pstr);
}

void field_type_ERROR_MARK(tree t){emit_tree_code("ERROR_MARK");
};
void field_type_IDENTIFIER_NODE(tree t){emit_tree_code("IDENTIFIER_NODE");
};
void field_type_TREE_LIST(tree t){emit_tree_code("TREE_LIST");
};
void field_type_TREE_VEC(tree t){emit_tree_code("TREE_VEC");
};
void field_type_GCC_BLOCK(tree t){emit_tree_code("GCC_BLOCK");
};
void field_type_OFFSET_TYPE(tree t){emit_tree_code("OFFSET_TYPE");
};
void field_type_ENUMERAL_TYPE(tree t){
  emit_tree_code("ENUMERAL_TYPE");
  field_type_ENUMERAL_TYPE2(t);
};
void field_type_BOOLEAN_TYPE(tree t){emit_tree_code("BOOLEAN_TYPE");
};
void field_type_INTEGER_TYPE(tree t){emit_tree_code("INTEGER_TYPE");
};
void field_type_REAL_TYPE(tree t){emit_tree_code("REAL_TYPE");
};
void field_type_POINTER_TYPE(tree t){emit_tree_code("POINTER_TYPE");
};
void field_type_FIXED_POINT_TYPE(tree t){emit_tree_code("FIXED_POINT_TYPE");
};
void field_type_REFERENCE_TYPE(tree t){emit_tree_code("REFERENCE_TYPE");
};
void field_type_COMPLEX_TYPE(tree t){emit_tree_code("COMPLEX_TYPE");
};
void field_type_VECTOR_TYPE(tree t){emit_tree_code("VECTOR_TYPE");
};
void field_type_ARRAY_TYPE(tree t){emit_tree_code("ARRAY_TYPE");
};
void field_type_RECORD_TYPE(tree t){emit_tree_code("RECORD_TYPE");
};
void field_type_UNION_TYPE(tree t){emit_tree_code("UNION_TYPE");
};
void field_type_QUAL_UNION_TYPE(tree t){emit_tree_code("QUAL_UNION_TYPE");
};
void field_type_VOID_TYPE(tree t){emit_tree_code("VOID_TYPE");
};
void field_type_FUNCTION_TYPE(tree t){emit_tree_code("FUNCTION_TYPE");
};
void field_type_METHOD_TYPE(tree t){emit_tree_code("METHOD_TYPE");
};
void field_type_LANG_TYPE(tree t){emit_tree_code("LANG_TYPE");
};
void field_type_INTEGER_CST(tree t){emit_tree_code("INTEGER_CST");
};
void field_type_REAL_CST(tree t){emit_tree_code("REAL_CST");
};
void field_type_FIXED_CST(tree t){emit_tree_code("FIXED_CST");
};
void field_type_COMPLEX_CST(tree t){emit_tree_code("COMPLEX_CST");
};
void field_type_VECTOR_CST(tree t){emit_tree_code("VECTOR_CST");
};
void field_type_STRING_CST(tree t){emit_tree_code("STRING_CST");
};
void field_type_FUNCTION_DECL(tree t){emit_tree_code("FUNCTION_DECL");
};
void field_type_LABEL_DECL(tree t){emit_tree_code("LABEL_DECL");
};
void field_type_FIELD_DECL(tree t){emit_tree_code("FIELD_DECL");
};
void field_type_VAR_DECL(tree t){emit_tree_code("VAR_DECL");
};
void field_type_CONST_DECL(tree t){emit_tree_code("CONST_DECL");
};
void field_type_PARM_DECL(tree t){emit_tree_code("PARM_DECL");
};
void field_type_TYPE_DECL(tree t){emit_tree_code("TYPE_DECL");
};
void field_type_RESULT_DECL(tree t){emit_tree_code("RESULT_DECL");
};
void field_type_DEBUG_EXPR_DECL(tree t){emit_tree_code("DEBUG_EXPR_DECL");
};
void field_type_NAMESPACE_DECL(tree t){emit_tree_code("NAMESPACE_DECL");
};
void field_type_IMPORTED_DECL(tree t){emit_tree_code("IMPORTED_DECL");
};
void field_type_TRANSLATION_UNIT_DECL(tree t){emit_tree_code("TRANSLATION_UNIT_DECL");
};
void field_type_COMPONENT_REF(tree t){emit_tree_code("COMPONENT_REF");
};
void field_type_BIT_FIELD_REF(tree t){emit_tree_code("BIT_FIELD_REF");
};
void field_type_REALPART_EXPR(tree t){emit_tree_code("REALPART_EXPR");
};
void field_type_IMAGPART_EXPR(tree t){emit_tree_code("IMAGPART_EXPR");
};
void field_type_ARRAY_REF(tree t){emit_tree_code("ARRAY_REF");
};
void field_type_ARRAY_RANGE_REF(tree t){emit_tree_code("ARRAY_RANGE_REF");
};
void field_type_INDIRECT_REF(tree t){emit_tree_code("INDIRECT_REF");
};
void field_type_ALIGN_INDIRECT_REF(tree t){emit_tree_code("ALIGN_INDIRECT_REF");
};
void field_type_MISALIGNED_INDIRECT_REF(tree t){emit_tree_code("MISALIGNED_INDIRECT_REF");
};
void field_type_OBJ_TYPE_REF(tree t){emit_tree_code("OBJ_TYPE_REF");
};
void field_type_CONSTRUCTOR(tree t){emit_tree_code("CONSTRUCTOR");
};
void field_type_COMPOUND_EXPR(tree t){emit_tree_code("COMPOUND_EXPR");
};
void field_type_MODIFY_EXPR(tree t){emit_tree_code("MODIFY_EXPR");
};
void field_type_INIT_EXPR(tree t){emit_tree_code("INIT_EXPR");
};
void field_type_TARGET_EXPR(tree t){emit_tree_code("TARGET_EXPR");
};
void field_type_COND_EXPR(tree t){emit_tree_code("COND_EXPR");
};
void field_type_VEC_COND_EXPR(tree t){emit_tree_code("VEC_COND_EXPR");
};
void field_type_BIND_EXPR(tree t){emit_tree_code("BIND_EXPR");
};
void field_type_CALL_EXPR(tree t){emit_tree_code("CALL_EXPR");
};
void field_type_WITH_CLEANUP_EXPR(tree t){emit_tree_code("WITH_CLEANUP_EXPR");
};
void field_type_CLEANUP_POINT_EXPR(tree t){emit_tree_code("CLEANUP_POINT_EXPR");
};
void field_type_PLACEHOLDER_EXPR(tree t){emit_tree_code("PLACEHOLDER_EXPR");
};
void field_type_PLUS_EXPR(tree t){emit_tree_code("PLUS_EXPR");
};
void field_type_MINUS_EXPR(tree t){emit_tree_code("MINUS_EXPR");
};
void field_type_MULT_EXPR(tree t){emit_tree_code("MULT_EXPR");
};
void field_type_POINTER_PLUS_EXPR(tree t){emit_tree_code("POINTER_PLUS_EXPR");
};
void field_type_TRUNC_DIV_EXPR(tree t){emit_tree_code("TRUNC_DIV_EXPR");
};
void field_type_CEIL_DIV_EXPR(tree t){emit_tree_code("CEIL_DIV_EXPR");
};
void field_type_FLOOR_DIV_EXPR(tree t){emit_tree_code("FLOOR_DIV_EXPR");
};
void field_type_ROUND_DIV_EXPR(tree t){emit_tree_code("ROUND_DIV_EXPR");
};
void field_type_TRUNC_MOD_EXPR(tree t){emit_tree_code("TRUNC_MOD_EXPR");
};
void field_type_CEIL_MOD_EXPR(tree t){emit_tree_code("CEIL_MOD_EXPR");
};
void field_type_FLOOR_MOD_EXPR(tree t){emit_tree_code("FLOOR_MOD_EXPR");
};
void field_type_ROUND_MOD_EXPR(tree t){emit_tree_code("ROUND_MOD_EXPR");
};
void field_type_RDIV_EXPR(tree t){emit_tree_code("RDIV_EXPR");
};
void field_type_EXACT_DIV_EXPR(tree t){emit_tree_code("EXACT_DIV_EXPR");
};
void field_type_FIX_TRUNC_EXPR(tree t){emit_tree_code("FIX_TRUNC_EXPR");
};
void field_type_FLOAT_EXPR(tree t){emit_tree_code("FLOAT_EXPR");
};
void field_type_NEGATE_EXPR(tree t){emit_tree_code("NEGATE_EXPR");
};
void field_type_MIN_EXPR(tree t){emit_tree_code("MIN_EXPR");
};
void field_type_MAX_EXPR(tree t){emit_tree_code("MAX_EXPR");
};
void field_type_ABS_EXPR(tree t){emit_tree_code("ABS_EXPR");
};
void field_type_LSHIFT_EXPR(tree t){emit_tree_code("LSHIFT_EXPR");
};
void field_type_RSHIFT_EXPR(tree t){emit_tree_code("RSHIFT_EXPR");
};
void field_type_LROTATE_EXPR(tree t){emit_tree_code("LROTATE_EXPR");
};
void field_type_RROTATE_EXPR(tree t){emit_tree_code("RROTATE_EXPR");
};
void field_type_BIT_IOR_EXPR(tree t){emit_tree_code("BIT_IOR_EXPR");
};
void field_type_BIT_XOR_EXPR(tree t){emit_tree_code("BIT_XOR_EXPR");
};
void field_type_BIT_AND_EXPR(tree t){emit_tree_code("BIT_AND_EXPR");
};
void field_type_BIT_NOT_EXPR(tree t){emit_tree_code("BIT_NOT_EXPR");
};
void field_type_TRUTH_ANDIF_EXPR(tree t){emit_tree_code("TRUTH_ANDIF_EXPR");
};
void field_type_TRUTH_ORIF_EXPR(tree t){emit_tree_code("TRUTH_ORIF_EXPR");
};
void field_type_TRUTH_AND_EXPR(tree t){emit_tree_code("TRUTH_AND_EXPR");
};
void field_type_TRUTH_OR_EXPR(tree t){emit_tree_code("TRUTH_OR_EXPR");
};
void field_type_TRUTH_XOR_EXPR(tree t){emit_tree_code("TRUTH_XOR_EXPR");
};
void field_type_TRUTH_NOT_EXPR(tree t){emit_tree_code("TRUTH_NOT_EXPR");
};
void field_type_LT_EXPR(tree t){emit_tree_code("LT_EXPR");
};
void field_type_LE_EXPR(tree t){emit_tree_code("LE_EXPR");
};
void field_type_GT_EXPR(tree t){emit_tree_code("GT_EXPR");
};
void field_type_GE_EXPR(tree t){emit_tree_code("GE_EXPR");
};
void field_type_EQ_EXPR(tree t){emit_tree_code("EQ_EXPR");
};
void field_type_NE_EXPR(tree t){emit_tree_code("NE_EXPR");
};
void field_type_UNORDERED_EXPR(tree t){emit_tree_code("UNORDERED_EXPR");
};
void field_type_ORDERED_EXPR(tree t){emit_tree_code("ORDERED_EXPR");
};
void field_type_UNLT_EXPR(tree t){emit_tree_code("UNLT_EXPR");
};
void field_type_UNLE_EXPR(tree t){emit_tree_code("UNLE_EXPR");
};
void field_type_UNGT_EXPR(tree t){emit_tree_code("UNGT_EXPR");
};
void field_type_UNGE_EXPR(tree t){emit_tree_code("UNGE_EXPR");
};
void field_type_UNEQ_EXPR(tree t){emit_tree_code("UNEQ_EXPR");
};
void field_type_LTGT_EXPR(tree t){emit_tree_code("LTGT_EXPR");
};
void field_type_RANGE_EXPR(tree t){emit_tree_code("RANGE_EXPR");
};
void field_type_PAREN_EXPR(tree t){emit_tree_code("PAREN_EXPR");
};
void field_type_CONVERT_EXPR(tree t){emit_tree_code("CONVERT_EXPR");
};
void field_type_ADDR_SPACE_CONVERT_EXPR(tree t){emit_tree_code("ADDR_SPACE_CONVERT_EXPR");
};
void field_type_FIXED_CONVERT_EXPR(tree t){emit_tree_code("FIXED_CONVERT_EXPR");
};
void field_type_NOP_EXPR(tree t){emit_tree_code("NOP_EXPR");
};
void field_type_NON_LVALUE_EXPR(tree t){emit_tree_code("NON_LVALUE_EXPR");
};
void field_type_VIEW_CONVERT_EXPR(tree t){emit_tree_code("VIEW_CONVERT_EXPR");
};
void field_type_COMPOUND_LITERAL_EXPR(tree t){emit_tree_code("COMPOUND_LITERAL_EXPR");
};
void field_type_SAVE_EXPR(tree t){emit_tree_code("SAVE_EXPR");
};
void field_type_ADDR_EXPR(tree t){emit_tree_code("ADDR_EXPR");
};
void field_type_FDESC_EXPR(tree t){emit_tree_code("FDESC_EXPR");
};
void field_type_COMPLEX_EXPR(tree t){emit_tree_code("COMPLEX_EXPR");
};
void field_type_CONJ_EXPR(tree t){emit_tree_code("CONJ_EXPR");
};
void field_type_PREDECREMENT_EXPR(tree t){emit_tree_code("PREDECREMENT_EXPR");
};
void field_type_PREINCREMENT_EXPR(tree t){emit_tree_code("PREINCREMENT_EXPR");
};
void field_type_POSTDECREMENT_EXPR(tree t){emit_tree_code("POSTDECREMENT_EXPR");
};
void field_type_POSTINCREMENT_EXPR(tree t){emit_tree_code("POSTINCREMENT_EXPR");
};
void field_type_VA_ARG_EXPR(tree t){emit_tree_code("VA_ARG_EXPR");
};
void field_type_TRY_CATCH_EXPR(tree t){emit_tree_code("TRY_CATCH_EXPR");
};
void field_type_TRY_FINALLY_EXPR(tree t){emit_tree_code("TRY_FINALLY_EXPR");
};
void field_type_DECL_EXPR(tree t){emit_tree_code("DECL_EXPR");
};
void field_type_LABEL_EXPR(tree t){emit_tree_code("LABEL_EXPR");
};
void field_type_GOTO_EXPR(tree t){emit_tree_code("GOTO_EXPR");
};
void field_type_RETURN_EXPR(tree t){emit_tree_code("RETURN_EXPR");
};
void field_type_EXIT_EXPR(tree t){emit_tree_code("EXIT_EXPR");
};
void field_type_LOOP_EXPR(tree t){emit_tree_code("LOOP_EXPR");
};
void field_type_SWITCH_EXPR(tree t){emit_tree_code("SWITCH_EXPR");
};
void field_type_CASE_LABEL_EXPR(tree t){emit_tree_code("CASE_LABEL_EXPR");
};
void field_type_ASM_EXPR(tree t){emit_tree_code("ASM_EXPR");
};
void field_type_SSA_NAME(tree t){emit_tree_code("SSA_NAME");
};
void field_type_CATCH_EXPR(tree t){emit_tree_code("CATCH_EXPR");
};
void field_type_EH_FILTER_EXPR(tree t){emit_tree_code("EH_FILTER_EXPR");
};
void field_type_SCEV_KNOWN(tree t){emit_tree_code("SCEV_KNOWN");
};
void field_type_SCEV_NOT_KNOWN(tree t){emit_tree_code("SCEV_NOT_KNOWN");
};
void field_type_POLYNOMIAL_CHREC(tree t){emit_tree_code("POLYNOMIAL_CHREC");
};
void field_type_STATEMENT_LIST(tree t){emit_tree_code("STATEMENT_LIST");
};
void field_type_ASSERT_EXPR(tree t){emit_tree_code("ASSERT_EXPR");
};
void field_type_TREE_BINFO(tree t){emit_tree_code("TREE_BINFO");
};
void field_type_WITH_SIZE_EXPR(tree t){emit_tree_code("WITH_SIZE_EXPR");
};
void field_type_REALIGN_LOAD_EXPR(tree t){emit_tree_code("REALIGN_LOAD_EXPR");
};
void field_type_TARGET_MEM_REF(tree t){emit_tree_code("TARGET_MEM_REF");
};
void field_type_OMP_PARALLEL(tree t){emit_tree_code("OMP_PARALLEL");
};
void field_type_OMP_TASK(tree t){emit_tree_code("OMP_TASK");
};
void field_type_OMP_FOR(tree t){emit_tree_code("OMP_FOR");
};
void field_type_OMP_SECTIONS(tree t){emit_tree_code("OMP_SECTIONS");
};
void field_type_OMP_SINGLE(tree t){emit_tree_code("OMP_SINGLE");
};
void field_type_OMP_SECTION(tree t){emit_tree_code("OMP_SECTION");
};
void field_type_OMP_MASTER(tree t){emit_tree_code("OMP_MASTER");
};
void field_type_OMP_ORDERED(tree t){emit_tree_code("OMP_ORDERED");
};
void field_type_OMP_CRITICAL(tree t){emit_tree_code("OMP_CRITICAL");
};
void field_type_OMP_ATOMIC(tree t){emit_tree_code("OMP_ATOMIC");
};
void field_type_OMP_CLAUSE(tree t){emit_tree_code("OMP_CLAUSE");
};
void field_type_REDUC_MAX_EXPR(tree t){emit_tree_code("REDUC_MAX_EXPR");
};
void field_type_REDUC_MIN_EXPR(tree t){emit_tree_code("REDUC_MIN_EXPR");
};
void field_type_REDUC_PLUS_EXPR(tree t){emit_tree_code("REDUC_PLUS_EXPR");
};
void field_type_DOT_PROD_EXPR(tree t){emit_tree_code("DOT_PROD_EXPR");
};
void field_type_WIDEN_SUM_EXPR(tree t){emit_tree_code("WIDEN_SUM_EXPR");
};
void field_type_WIDEN_MULT_EXPR(tree t){emit_tree_code("WIDEN_MULT_EXPR");
};
void field_type_VEC_LSHIFT_EXPR(tree t){emit_tree_code("VEC_LSHIFT_EXPR");
};
void field_type_VEC_RSHIFT_EXPR(tree t){emit_tree_code("VEC_RSHIFT_EXPR");
};
void field_type_VEC_WIDEN_MULT_HI_EXPR(tree t){emit_tree_code("VEC_WIDEN_MULT_HI_EXPR");
};
void field_type_VEC_WIDEN_MULT_LO_EXPR(tree t){emit_tree_code("VEC_WIDEN_MULT_LO_EXPR");
};
void field_type_VEC_UNPACK_HI_EXPR(tree t){emit_tree_code("VEC_UNPACK_HI_EXPR");
};
void field_type_VEC_UNPACK_LO_EXPR(tree t){emit_tree_code("VEC_UNPACK_LO_EXPR");
};
void field_type_VEC_UNPACK_FLOAT_HI_EXPR(tree t){emit_tree_code("VEC_UNPACK_FLOAT_HI_EXPR");
};
void field_type_VEC_UNPACK_FLOAT_LO_EXPR(tree t){emit_tree_code("VEC_UNPACK_FLOAT_LO_EXPR");
};
void field_type_VEC_PACK_TRUNC_EXPR(tree t){emit_tree_code("VEC_PACK_TRUNC_EXPR");
};
void field_type_VEC_PACK_SAT_EXPR(tree t){emit_tree_code("VEC_PACK_SAT_EXPR");
};
void field_type_VEC_PACK_FIX_TRUNC_EXPR(tree t){emit_tree_code("VEC_PACK_FIX_TRUNC_EXPR");
};
void field_type_VEC_EXTRACT_EVEN_EXPR(tree t){emit_tree_code("VEC_EXTRACT_EVEN_EXPR");
};
void field_type_VEC_EXTRACT_ODD_EXPR(tree t){emit_tree_code("VEC_EXTRACT_ODD_EXPR");
};
void field_type_VEC_INTERLEAVE_HIGH_EXPR(tree t){emit_tree_code("VEC_INTERLEAVE_HIGH_EXPR");
};
void field_type_VEC_INTERLEAVE_LOW_EXPR(tree t){emit_tree_code("VEC_INTERLEAVE_LOW_EXPR");
};
void field_type_PREDICT_EXPR(tree t){emit_tree_code("PREDICT_EXPR");
};
void field_type_OPTIMIZATION_NODE(tree t){emit_tree_code("OPTIMIZATION_NODE");
};
void field_type_TARGET_OPTION_NODE(tree t){emit_tree_code("TARGET_OPTION_NODE");
};
void field_type_LAST_AND_UNUSED_TREE_CODE(tree t){emit_tree_code("LAST_AND_UNUSED_TREE_CODE");
};
void field_type_C_MAYBE_CONST_EXPR(tree t){emit_tree_code("C_MAYBE_CONST_EXPR");
};
void field_type_EXCESS_PRECISION_EXPR(tree t){emit_tree_code("EXCESS_PRECISION_EXPR");
};
void field_type_UNCONSTRAINED_ARRAY_TYPE(tree t){emit_tree_code("UNCONSTRAINED_ARRAY_TYPE");
};
void field_type_UNCONSTRAINED_ARRAY_REF(tree t){emit_tree_code("UNCONSTRAINED_ARRAY_REF");
};
void field_type_NULL_EXPR(tree t){emit_tree_code("NULL_EXPR");
};
void field_type_PLUS_NOMOD_EXPR(tree t){emit_tree_code("PLUS_NOMOD_EXPR");
};
void field_type_MINUS_NOMOD_EXPR(tree t){emit_tree_code("MINUS_NOMOD_EXPR");
};
void field_type_ATTR_ADDR_EXPR(tree t){emit_tree_code("ATTR_ADDR_EXPR");
};
void field_type_STMT_STMT(tree t){emit_tree_code("STMT_STMT");
};
void field_type_LOOP_STMT(tree t){emit_tree_code("LOOP_STMT");
};
void field_type_EXIT_STMT(tree t){emit_tree_code("EXIT_STMT");
};
void field_type_OFFSET_REF(tree t){emit_tree_code("OFFSET_REF");
};
void field_type_PTRMEM_CST(tree t){emit_tree_code("PTRMEM_CST");
};
void field_type_NEW_EXPR(tree t){emit_tree_code("NEW_EXPR");
};
void field_type_VEC_NEW_EXPR(tree t){emit_tree_code("VEC_NEW_EXPR");
};
void field_type_DELETE_EXPR(tree t){emit_tree_code("DELETE_EXPR");
};
void field_type_VEC_DELETE_EXPR(tree t){emit_tree_code("VEC_DELETE_EXPR");
};
void field_type_SCOPE_REF(tree t){emit_tree_code("SCOPE_REF");
};
void field_type_MEMBER_REF(tree t){emit_tree_code("MEMBER_REF");
};
void field_type_TYPE_EXPR(tree t){emit_tree_code("TYPE_EXPR");
};
void field_type_AGGR_INIT_EXPR(tree t){emit_tree_code("AGGR_INIT_EXPR");
};
void field_type_VEC_INIT_EXPR(tree t){emit_tree_code("VEC_INIT_EXPR");
};
void field_type_THROW_EXPR(tree t){emit_tree_code("THROW_EXPR");
};
void field_type_EMPTY_CLASS_EXPR(tree t){emit_tree_code("EMPTY_CLASS_EXPR");
};
void field_type_BASELINK(tree t){emit_tree_code("BASELINK");
};
void field_type_TEMPLATE_DECL(tree t){emit_tree_code("TEMPLATE_DECL");
};
void field_type_TEMPLATE_PARM_INDEX(tree t){emit_tree_code("TEMPLATE_PARM_INDEX");
};
void field_type_TEMPLATE_TEMPLATE_PARM(tree t){emit_tree_code("TEMPLATE_TEMPLATE_PARM");
};
void field_type_TEMPLATE_TYPE_PARM(tree t){emit_tree_code("TEMPLATE_TYPE_PARM");
};
void field_type_TYPENAME_TYPE(tree t){emit_tree_code("TYPENAME_TYPE");
};
void field_type_TYPEOF_TYPE(tree t){emit_tree_code("TYPEOF_TYPE");
};
void field_type_BOUND_TEMPLATE_TEMPLATE_PARM(tree t){emit_tree_code("BOUND_TEMPLATE_TEMPLATE_PARM");
};
void field_type_UNBOUND_CLASS_TEMPLATE(tree t){emit_tree_code("UNBOUND_CLASS_TEMPLATE");
};
void field_type_USING_DECL(tree t){emit_tree_code("USING_DECL");
};
void field_type_USING_STMT(tree t){emit_tree_code("USING_STMT");
};
void field_type_DEFAULT_ARG(tree t){emit_tree_code("DEFAULT_ARG");
};
void field_type_TEMPLATE_ID_EXPR(tree t){emit_tree_code("TEMPLATE_ID_EXPR");
};
void field_type_OVERLOAD(tree t){emit_tree_code("OVERLOAD");
};
void field_type_PSEUDO_DTOR_EXPR(tree t){emit_tree_code("PSEUDO_DTOR_EXPR");
};
void field_type_MODOP_EXPR(tree t){emit_tree_code("MODOP_EXPR");
};
void field_type_CAST_EXPR(tree t){emit_tree_code("CAST_EXPR");
};
void field_type_REINTERPRET_CAST_EXPR(tree t){emit_tree_code("REINTERPRET_CAST_EXPR");
};
void field_type_CONST_CAST_EXPR(tree t){emit_tree_code("CONST_CAST_EXPR");
};
void field_type_STATIC_CAST_EXPR(tree t){emit_tree_code("STATIC_CAST_EXPR");
};
void field_type_DYNAMIC_CAST_EXPR(tree t){emit_tree_code("DYNAMIC_CAST_EXPR");
};
void field_type_DOTSTAR_EXPR(tree t){emit_tree_code("DOTSTAR_EXPR");
};
void field_type_TYPEID_EXPR(tree t){emit_tree_code("TYPEID_EXPR");
};
void field_type_NON_DEPENDENT_EXPR(tree t){emit_tree_code("NON_DEPENDENT_EXPR");
};
void field_type_CTOR_INITIALIZER(tree t){emit_tree_code("CTOR_INITIALIZER");
};
void field_type_TRY_BLOCK(tree t){emit_tree_code("TRY_BLOCK");
};
void field_type_EH_SPEC_BLOCK(tree t){emit_tree_code("EH_SPEC_BLOCK");
};
void field_type_HANDLER(tree t){emit_tree_code("HANDLER");
};
void field_type_MUST_NOT_THROW_EXPR(tree t){emit_tree_code("MUST_NOT_THROW_EXPR");
};
void field_type_CLEANUP_STMT(tree t){emit_tree_code("CLEANUP_STMT");
};
void field_type_IF_STMT(tree t){emit_tree_code("IF_STMT");
};
void field_type_FOR_STMT(tree t){emit_tree_code("FOR_STMT");
};
void field_type_WHILE_STMT(tree t){emit_tree_code("WHILE_STMT");
};
void field_type_DO_STMT(tree t){emit_tree_code("DO_STMT");
};
void field_type_BREAK_STMT(tree t){emit_tree_code("BREAK_STMT");
};
void field_type_CONTINUE_STMT(tree t){emit_tree_code("CONTINUE_STMT");
};
void field_type_SWITCH_STMT(tree t){emit_tree_code("SWITCH_STMT");
};
void field_type_EXPR_STMT(tree t){emit_tree_code("EXPR_STMT");
};
void field_type_TAG_DEFN(tree t){emit_tree_code("TAG_DEFN");
};
void field_type_OFFSETOF_EXPR(tree t){emit_tree_code("OFFSETOF_EXPR");
};
void field_type_SIZEOF_EXPR(tree t){emit_tree_code("SIZEOF_EXPR");
};
void field_type_ARROW_EXPR(tree t){emit_tree_code("ARROW_EXPR");
};
void field_type_ALIGNOF_EXPR(tree t){emit_tree_code("ALIGNOF_EXPR");
};
void field_type_STMT_EXPR(tree t){emit_tree_code("STMT_EXPR");
};
void field_type_UNARY_PLUS_EXPR(tree t){emit_tree_code("UNARY_PLUS_EXPR");
};
void field_type_STATIC_ASSERT(tree t){emit_tree_code("STATIC_ASSERT");
};
void field_type_TYPE_ARGUMENT_PACK(tree t){emit_tree_code("TYPE_ARGUMENT_PACK");
};
void field_type_NONTYPE_ARGUMENT_PACK(tree t){emit_tree_code("NONTYPE_ARGUMENT_PACK");
};
void field_type_TYPE_PACK_EXPANSION(tree t){emit_tree_code("TYPE_PACK_EXPANSION");
};
void field_type_EXPR_PACK_EXPANSION(tree t){emit_tree_code("EXPR_PACK_EXPANSION");
};
void field_type_ARGUMENT_PACK_SELECT(tree t){emit_tree_code("ARGUMENT_PACK_SELECT");
};
void field_type_TRAIT_EXPR(tree t){emit_tree_code("TRAIT_EXPR");
};
void field_type_LAMBDA_EXPR(tree t){emit_tree_code("LAMBDA_EXPR");
};
void field_type_DECLTYPE_TYPE(tree t){emit_tree_code("DECLTYPE_TYPE");
};
void field_type_TEMPLATE_INFO(tree t){emit_tree_code("TEMPLATE_INFO");
};
void field_type_URSHIFT_EXPR(tree t){emit_tree_code("URSHIFT_EXPR");
};
void field_type_COMPARE_EXPR(tree t){emit_tree_code("COMPARE_EXPR");
};
void field_type_COMPARE_L_EXPR(tree t){emit_tree_code("COMPARE_L_EXPR");
};
void field_type_COMPARE_G_EXPR(tree t){emit_tree_code("COMPARE_G_EXPR");
};
void field_type_CLASS_INTERFACE_TYPE(tree t){emit_tree_code("CLASS_INTERFACE_TYPE");
};
void field_type_CLASS_IMPLEMENTATION_TYPE(tree t){emit_tree_code("CLASS_IMPLEMENTATION_TYPE");
};
void field_type_CATEGORY_INTERFACE_TYPE(tree t){emit_tree_code("CATEGORY_INTERFACE_TYPE");
};
void field_type_CATEGORY_IMPLEMENTATION_TYPE(tree t){emit_tree_code("CATEGORY_IMPLEMENTATION_TYPE");
};
void field_type_PROTOCOL_INTERFACE_TYPE(tree t){emit_tree_code("PROTOCOL_INTERFACE_TYPE");
};
void field_type_KEYWORD_DECL(tree t){emit_tree_code("KEYWORD_DECL");
};
void field_type_INSTANCE_METHOD_DECL(tree t){emit_tree_code("INSTANCE_METHOD_DECL");
};
void field_type_CLASS_METHOD_DECL(tree t){emit_tree_code("CLASS_METHOD_DECL");
};
void field_type_MESSAGE_SEND_EXPR(tree t){emit_tree_code("MESSAGE_SEND_EXPR");
};
void field_type_CLASS_REFERENCE_EXPR(tree t){emit_tree_code("CLASS_REFERENCE_EXPR");
};
void field_type_MAX_TREE_CODES(tree t){emit_tree_code("MAX_TREE_CODES");
};


void process_enum_tree_code(tree t) { 	
  switch(TREE_CODE(t))
    {
    case ERROR_MARK:
      field_type_ERROR_MARK(t);
      break;
    case IDENTIFIER_NODE:
      field_type_IDENTIFIER_NODE(t);
      break;
    case TREE_LIST:
      field_type_TREE_LIST(t);
      break;
    case TREE_VEC:
      field_type_TREE_VEC(t);
      break;
    case GCC_BLOCK:
      field_type_GCC_BLOCK(t);
      break;
    case OFFSET_TYPE:
      field_type_OFFSET_TYPE(t);
      break;
    case ENUMERAL_TYPE:
      field_type_ENUMERAL_TYPE(t);
      break;
    case BOOLEAN_TYPE:
      field_type_BOOLEAN_TYPE(t);
      break;
    case INTEGER_TYPE:
      field_type_INTEGER_TYPE(t);
      break;
    case REAL_TYPE:
      field_type_REAL_TYPE(t);
      break;
    case POINTER_TYPE:
      field_type_POINTER_TYPE(t);
      break;
    case FIXED_POINT_TYPE:
      field_type_FIXED_POINT_TYPE(t);
      break;
    case REFERENCE_TYPE:
      field_type_REFERENCE_TYPE(t);
      break;
    case COMPLEX_TYPE:
      field_type_COMPLEX_TYPE(t);
      break;
    case VECTOR_TYPE:
      field_type_VECTOR_TYPE(t);
      break;
    case ARRAY_TYPE:
      field_type_ARRAY_TYPE(t);
      break;
    case RECORD_TYPE:
      field_type_RECORD_TYPE(t);
      break;
    case UNION_TYPE:
      field_type_UNION_TYPE(t);
      break;
    case QUAL_UNION_TYPE:
      field_type_QUAL_UNION_TYPE(t);
      break;
    case VOID_TYPE:
      field_type_VOID_TYPE(t);
      break;
    case FUNCTION_TYPE:
      field_type_FUNCTION_TYPE(t);
      break;
    case METHOD_TYPE:
      field_type_METHOD_TYPE(t);
      break;
    case LANG_TYPE:
      field_type_LANG_TYPE(t);
      break;
    case INTEGER_CST:
      field_type_INTEGER_CST(t);
      break;
    case REAL_CST:
      field_type_REAL_CST(t);
      break;
    case FIXED_CST:
      field_type_FIXED_CST(t);
      break;
    case COMPLEX_CST:
      field_type_COMPLEX_CST(t);
      break;
    case VECTOR_CST:
      field_type_VECTOR_CST(t);
      break;
    case STRING_CST:
      field_type_STRING_CST(t);
      break;
    case FUNCTION_DECL:
      field_type_FUNCTION_DECL(t);
      break;
    case LABEL_DECL:
      field_type_LABEL_DECL(t);
      break;
    case FIELD_DECL:
      field_type_FIELD_DECL(t);
      break;
    case VAR_DECL:
      field_type_VAR_DECL(t);
      break;
    case CONST_DECL:
      field_type_CONST_DECL(t);
      break;
    case PARM_DECL:
      field_type_PARM_DECL(t);
      break;
case TYPE_DECL:
	field_type_TYPE_DECL(t);
	break;
case RESULT_DECL:
	field_type_RESULT_DECL(t);
	break;
case DEBUG_EXPR_DECL:
	field_type_DEBUG_EXPR_DECL(t);
	break;
case NAMESPACE_DECL:
	field_type_NAMESPACE_DECL(t);
	break;
case IMPORTED_DECL:
	field_type_IMPORTED_DECL(t);
	break;
case TRANSLATION_UNIT_DECL:
	field_type_TRANSLATION_UNIT_DECL(t);
	break;
case COMPONENT_REF:
	field_type_COMPONENT_REF(t);
	break;
case BIT_FIELD_REF:
	field_type_BIT_FIELD_REF(t);
	break;
case REALPART_EXPR:
	field_type_REALPART_EXPR(t);
	break;
case IMAGPART_EXPR:
	field_type_IMAGPART_EXPR(t);
	break;
case ARRAY_REF:
	field_type_ARRAY_REF(t);
	break;
case ARRAY_RANGE_REF:
	field_type_ARRAY_RANGE_REF(t);
	break;
case INDIRECT_REF:
	field_type_INDIRECT_REF(t);
	break;
case ALIGN_INDIRECT_REF:
	field_type_ALIGN_INDIRECT_REF(t);
	break;
case MISALIGNED_INDIRECT_REF:
	field_type_MISALIGNED_INDIRECT_REF(t);
	break;
case OBJ_TYPE_REF:
	field_type_OBJ_TYPE_REF(t);
	break;
case CONSTRUCTOR:
	field_type_CONSTRUCTOR(t);
	break;
case COMPOUND_EXPR:
	field_type_COMPOUND_EXPR(t);
	break;
case MODIFY_EXPR:
	field_type_MODIFY_EXPR(t);
	break;
case INIT_EXPR:
	field_type_INIT_EXPR(t);
	break;
case TARGET_EXPR:
	field_type_TARGET_EXPR(t);
	break;
case COND_EXPR:
	field_type_COND_EXPR(t);
	break;
case VEC_COND_EXPR:
	field_type_VEC_COND_EXPR(t);
	break;
case BIND_EXPR:
	field_type_BIND_EXPR(t);
	break;
case CALL_EXPR:
	field_type_CALL_EXPR(t);
	break;
case WITH_CLEANUP_EXPR:
	field_type_WITH_CLEANUP_EXPR(t);
	break;
case CLEANUP_POINT_EXPR:
	field_type_CLEANUP_POINT_EXPR(t);
	break;
case PLACEHOLDER_EXPR:
	field_type_PLACEHOLDER_EXPR(t);
	break;
case PLUS_EXPR:
	field_type_PLUS_EXPR(t);
	break;
case MINUS_EXPR:
	field_type_MINUS_EXPR(t);
	break;
case MULT_EXPR:
	field_type_MULT_EXPR(t);
	break;
case POINTER_PLUS_EXPR:
	field_type_POINTER_PLUS_EXPR(t);
	break;
case TRUNC_DIV_EXPR:
	field_type_TRUNC_DIV_EXPR(t);
	break;
case CEIL_DIV_EXPR:
	field_type_CEIL_DIV_EXPR(t);
	break;
case FLOOR_DIV_EXPR:
	field_type_FLOOR_DIV_EXPR(t);
	break;
case ROUND_DIV_EXPR:
	field_type_ROUND_DIV_EXPR(t);
	break;
case TRUNC_MOD_EXPR:
	field_type_TRUNC_MOD_EXPR(t);
	break;
case CEIL_MOD_EXPR:
	field_type_CEIL_MOD_EXPR(t);
	break;
case FLOOR_MOD_EXPR:
	field_type_FLOOR_MOD_EXPR(t);
	break;
case ROUND_MOD_EXPR:
	field_type_ROUND_MOD_EXPR(t);
	break;
case RDIV_EXPR:
	field_type_RDIV_EXPR(t);
	break;
case EXACT_DIV_EXPR:
	field_type_EXACT_DIV_EXPR(t);
	break;
case FIX_TRUNC_EXPR:
	field_type_FIX_TRUNC_EXPR(t);
	break;
case FLOAT_EXPR:
	field_type_FLOAT_EXPR(t);
	break;
case NEGATE_EXPR:
	field_type_NEGATE_EXPR(t);
	break;
case MIN_EXPR:
	field_type_MIN_EXPR(t);
	break;
case MAX_EXPR:
	field_type_MAX_EXPR(t);
	break;
case ABS_EXPR:
	field_type_ABS_EXPR(t);
	break;
case LSHIFT_EXPR:
	field_type_LSHIFT_EXPR(t);
	break;
case RSHIFT_EXPR:
	field_type_RSHIFT_EXPR(t);
	break;
case LROTATE_EXPR:
	field_type_LROTATE_EXPR(t);
	break;
case RROTATE_EXPR:
	field_type_RROTATE_EXPR(t);
	break;
case BIT_IOR_EXPR:
	field_type_BIT_IOR_EXPR(t);
	break;
case BIT_XOR_EXPR:
	field_type_BIT_XOR_EXPR(t);
	break;
case BIT_AND_EXPR:
	field_type_BIT_AND_EXPR(t);
	break;
case BIT_NOT_EXPR:
	field_type_BIT_NOT_EXPR(t);
	break;
case TRUTH_ANDIF_EXPR:
	field_type_TRUTH_ANDIF_EXPR(t);
	break;
case TRUTH_ORIF_EXPR:
	field_type_TRUTH_ORIF_EXPR(t);
	break;
case TRUTH_AND_EXPR:
	field_type_TRUTH_AND_EXPR(t);
	break;
case TRUTH_OR_EXPR:
	field_type_TRUTH_OR_EXPR(t);
	break;
case TRUTH_XOR_EXPR:
	field_type_TRUTH_XOR_EXPR(t);
	break;
case TRUTH_NOT_EXPR:
	field_type_TRUTH_NOT_EXPR(t);
	break;
case LT_EXPR:
	field_type_LT_EXPR(t);
	break;
case LE_EXPR:
	field_type_LE_EXPR(t);
	break;
case GT_EXPR:
	field_type_GT_EXPR(t);
	break;
case GE_EXPR:
	field_type_GE_EXPR(t);
	break;
case EQ_EXPR:
	field_type_EQ_EXPR(t);
	break;
case NE_EXPR:
	field_type_NE_EXPR(t);
	break;
case UNORDERED_EXPR:
	field_type_UNORDERED_EXPR(t);
	break;
case ORDERED_EXPR:
	field_type_ORDERED_EXPR(t);
	break;
case UNLT_EXPR:
	field_type_UNLT_EXPR(t);
	break;
case UNLE_EXPR:
	field_type_UNLE_EXPR(t);
	break;
case UNGT_EXPR:
	field_type_UNGT_EXPR(t);
	break;
case UNGE_EXPR:
	field_type_UNGE_EXPR(t);
	break;
case UNEQ_EXPR:
	field_type_UNEQ_EXPR(t);
	break;
case LTGT_EXPR:
	field_type_LTGT_EXPR(t);
	break;
case RANGE_EXPR:
	field_type_RANGE_EXPR(t);
	break;
case PAREN_EXPR:
	field_type_PAREN_EXPR(t);
	break;
case CONVERT_EXPR:
	field_type_CONVERT_EXPR(t);
	break;
case ADDR_SPACE_CONVERT_EXPR:
	field_type_ADDR_SPACE_CONVERT_EXPR(t);
	break;
case FIXED_CONVERT_EXPR:
	field_type_FIXED_CONVERT_EXPR(t);
	break;
case NOP_EXPR:
	field_type_NOP_EXPR(t);
	break;
case NON_LVALUE_EXPR:
	field_type_NON_LVALUE_EXPR(t);
	break;
case VIEW_CONVERT_EXPR:
	field_type_VIEW_CONVERT_EXPR(t);
	break;
case COMPOUND_LITERAL_EXPR:
	field_type_COMPOUND_LITERAL_EXPR(t);
	break;
case SAVE_EXPR:
	field_type_SAVE_EXPR(t);
	break;
case ADDR_EXPR:
	field_type_ADDR_EXPR(t);
	break;
case FDESC_EXPR:
	field_type_FDESC_EXPR(t);
	break;
case COMPLEX_EXPR:
	field_type_COMPLEX_EXPR(t);
	break;
case CONJ_EXPR:
	field_type_CONJ_EXPR(t);
	break;
case PREDECREMENT_EXPR:
	field_type_PREDECREMENT_EXPR(t);
	break;
case PREINCREMENT_EXPR:
	field_type_PREINCREMENT_EXPR(t);
	break;
case POSTDECREMENT_EXPR:
	field_type_POSTDECREMENT_EXPR(t);
	break;
case POSTINCREMENT_EXPR:
	field_type_POSTINCREMENT_EXPR(t);
	break;
case VA_ARG_EXPR:
	field_type_VA_ARG_EXPR(t);
	break;
case TRY_CATCH_EXPR:
	field_type_TRY_CATCH_EXPR(t);
	break;
case TRY_FINALLY_EXPR:
	field_type_TRY_FINALLY_EXPR(t);
	break;
case DECL_EXPR:
	field_type_DECL_EXPR(t);
	break;
case LABEL_EXPR:
	field_type_LABEL_EXPR(t);
	break;
case GOTO_EXPR:
	field_type_GOTO_EXPR(t);
	break;
case RETURN_EXPR:
	field_type_RETURN_EXPR(t);
	break;
case EXIT_EXPR:
	field_type_EXIT_EXPR(t);
	break;
case LOOP_EXPR:
	field_type_LOOP_EXPR(t);
	break;
case SWITCH_EXPR:
	field_type_SWITCH_EXPR(t);
	break;
case CASE_LABEL_EXPR:
	field_type_CASE_LABEL_EXPR(t);
	break;
case ASM_EXPR:
	field_type_ASM_EXPR(t);
	break;
case SSA_NAME:
	field_type_SSA_NAME(t);
	break;
case CATCH_EXPR:
	field_type_CATCH_EXPR(t);
	break;
case EH_FILTER_EXPR:
	field_type_EH_FILTER_EXPR(t);
	break;
case SCEV_KNOWN:
	field_type_SCEV_KNOWN(t);
	break;
case SCEV_NOT_KNOWN:
	field_type_SCEV_NOT_KNOWN(t);
	break;
case POLYNOMIAL_CHREC:
	field_type_POLYNOMIAL_CHREC(t);
	break;
case STATEMENT_LIST:
	field_type_STATEMENT_LIST(t);
	break;
case ASSERT_EXPR:
	field_type_ASSERT_EXPR(t);
	break;
case TREE_BINFO:
	field_type_TREE_BINFO(t);
	break;
case WITH_SIZE_EXPR:
	field_type_WITH_SIZE_EXPR(t);
	break;
case REALIGN_LOAD_EXPR:
	field_type_REALIGN_LOAD_EXPR(t);
	break;
case TARGET_MEM_REF:
	field_type_TARGET_MEM_REF(t);
	break;
case OMP_PARALLEL:
	field_type_OMP_PARALLEL(t);
	break;
case OMP_TASK:
	field_type_OMP_TASK(t);
	break;
case OMP_FOR:
	field_type_OMP_FOR(t);
	break;
case OMP_SECTIONS:
	field_type_OMP_SECTIONS(t);
	break;
case OMP_SINGLE:
	field_type_OMP_SINGLE(t);
	break;
case OMP_SECTION:
	field_type_OMP_SECTION(t);
	break;
case OMP_MASTER:
	field_type_OMP_MASTER(t);
	break;
case OMP_ORDERED:
	field_type_OMP_ORDERED(t);
	break;
case OMP_CRITICAL:
	field_type_OMP_CRITICAL(t);
	break;
case OMP_ATOMIC:
	field_type_OMP_ATOMIC(t);
	break;
case OMP_CLAUSE:
	field_type_OMP_CLAUSE(t);
	break;
case REDUC_MAX_EXPR:
	field_type_REDUC_MAX_EXPR(t);
	break;
case REDUC_MIN_EXPR:
	field_type_REDUC_MIN_EXPR(t);
	break;
case REDUC_PLUS_EXPR:
	field_type_REDUC_PLUS_EXPR(t);
	break;
case DOT_PROD_EXPR:
	field_type_DOT_PROD_EXPR(t);
	break;
case WIDEN_SUM_EXPR:
	field_type_WIDEN_SUM_EXPR(t);
	break;
case WIDEN_MULT_EXPR:
	field_type_WIDEN_MULT_EXPR(t);
	break;
case VEC_LSHIFT_EXPR:
	field_type_VEC_LSHIFT_EXPR(t);
	break;
case VEC_RSHIFT_EXPR:
	field_type_VEC_RSHIFT_EXPR(t);
	break;
case VEC_WIDEN_MULT_HI_EXPR:
	field_type_VEC_WIDEN_MULT_HI_EXPR(t);
	break;
case VEC_WIDEN_MULT_LO_EXPR:
	field_type_VEC_WIDEN_MULT_LO_EXPR(t);
	break;
case VEC_UNPACK_HI_EXPR:
	field_type_VEC_UNPACK_HI_EXPR(t);
	break;
case VEC_UNPACK_LO_EXPR:
	field_type_VEC_UNPACK_LO_EXPR(t);
	break;
case VEC_UNPACK_FLOAT_HI_EXPR:
	field_type_VEC_UNPACK_FLOAT_HI_EXPR(t);
	break;
case VEC_UNPACK_FLOAT_LO_EXPR:
	field_type_VEC_UNPACK_FLOAT_LO_EXPR(t);
	break;
case VEC_PACK_TRUNC_EXPR:
	field_type_VEC_PACK_TRUNC_EXPR(t);
	break;
case VEC_PACK_SAT_EXPR:
	field_type_VEC_PACK_SAT_EXPR(t);
	break;
case VEC_PACK_FIX_TRUNC_EXPR:
	field_type_VEC_PACK_FIX_TRUNC_EXPR(t);
	break;
case VEC_EXTRACT_EVEN_EXPR:
	field_type_VEC_EXTRACT_EVEN_EXPR(t);
	break;
case VEC_EXTRACT_ODD_EXPR:
	field_type_VEC_EXTRACT_ODD_EXPR(t);
	break;
case VEC_INTERLEAVE_HIGH_EXPR:
	field_type_VEC_INTERLEAVE_HIGH_EXPR(t);
	break;
case VEC_INTERLEAVE_LOW_EXPR:
	field_type_VEC_INTERLEAVE_LOW_EXPR(t);
	break;
case PREDICT_EXPR:
	field_type_PREDICT_EXPR(t);
	break;
case OPTIMIZATION_NODE:
	field_type_OPTIMIZATION_NODE(t);
	break;
case TARGET_OPTION_NODE:
	field_type_TARGET_OPTION_NODE(t);
	break;
case LAST_AND_UNUSED_TREE_CODE:
	field_type_LAST_AND_UNUSED_TREE_CODE(t);
	break;
case C_MAYBE_CONST_EXPR:
	field_type_C_MAYBE_CONST_EXPR(t);
	break;
case EXCESS_PRECISION_EXPR:
	field_type_EXCESS_PRECISION_EXPR(t);
	break;
case UNCONSTRAINED_ARRAY_TYPE:
	field_type_UNCONSTRAINED_ARRAY_TYPE(t);
	break;
case UNCONSTRAINED_ARRAY_REF:
	field_type_UNCONSTRAINED_ARRAY_REF(t);
	break;
case NULL_EXPR:
	field_type_NULL_EXPR(t);
	break;
case PLUS_NOMOD_EXPR:
	field_type_PLUS_NOMOD_EXPR(t);
	break;
case MINUS_NOMOD_EXPR:
	field_type_MINUS_NOMOD_EXPR(t);
	break;
case ATTR_ADDR_EXPR:
	field_type_ATTR_ADDR_EXPR(t);
	break;
case STMT_STMT:
	field_type_STMT_STMT(t);
	break;
case LOOP_STMT:
	field_type_LOOP_STMT(t);
	break;
case EXIT_STMT:
	field_type_EXIT_STMT(t);
	break;
case OFFSET_REF:
	field_type_OFFSET_REF(t);
	break;
case PTRMEM_CST:
	field_type_PTRMEM_CST(t);
	break;
case NEW_EXPR:
	field_type_NEW_EXPR(t);
	break;
case VEC_NEW_EXPR:
	field_type_VEC_NEW_EXPR(t);
	break;
case DELETE_EXPR:
	field_type_DELETE_EXPR(t);
	break;
case VEC_DELETE_EXPR:
	field_type_VEC_DELETE_EXPR(t);
	break;
case SCOPE_REF:
	field_type_SCOPE_REF(t);
	break;
case MEMBER_REF:
	field_type_MEMBER_REF(t);
	break;
case TYPE_EXPR:
	field_type_TYPE_EXPR(t);
	break;
case AGGR_INIT_EXPR:
	field_type_AGGR_INIT_EXPR(t);
	break;
case VEC_INIT_EXPR:
	field_type_VEC_INIT_EXPR(t);
	break;
case THROW_EXPR:
	field_type_THROW_EXPR(t);
	break;
case EMPTY_CLASS_EXPR:
	field_type_EMPTY_CLASS_EXPR(t);
	break;
case BASELINK:
	field_type_BASELINK(t);
	break;
case TEMPLATE_DECL:
	field_type_TEMPLATE_DECL(t);
	break;
case TEMPLATE_PARM_INDEX:
	field_type_TEMPLATE_PARM_INDEX(t);
	break;
case TEMPLATE_TEMPLATE_PARM:
	field_type_TEMPLATE_TEMPLATE_PARM(t);
	break;
case TEMPLATE_TYPE_PARM:
	field_type_TEMPLATE_TYPE_PARM(t);
	break;
case TYPENAME_TYPE:
	field_type_TYPENAME_TYPE(t);
	break;
case TYPEOF_TYPE:
	field_type_TYPEOF_TYPE(t);
	break;
case BOUND_TEMPLATE_TEMPLATE_PARM:
	field_type_BOUND_TEMPLATE_TEMPLATE_PARM(t);
	break;
case UNBOUND_CLASS_TEMPLATE:
	field_type_UNBOUND_CLASS_TEMPLATE(t);
	break;
case USING_DECL:
	field_type_USING_DECL(t);
	break;
case USING_STMT:
	field_type_USING_STMT(t);
	break;
case DEFAULT_ARG:
	field_type_DEFAULT_ARG(t);
	break;
case TEMPLATE_ID_EXPR:
	field_type_TEMPLATE_ID_EXPR(t);
	break;
case OVERLOAD:
	field_type_OVERLOAD(t);
	break;
case PSEUDO_DTOR_EXPR:
	field_type_PSEUDO_DTOR_EXPR(t);
	break;
case MODOP_EXPR:
	field_type_MODOP_EXPR(t);
	break;
case CAST_EXPR:
	field_type_CAST_EXPR(t);
	break;
case REINTERPRET_CAST_EXPR:
	field_type_REINTERPRET_CAST_EXPR(t);
	break;
case CONST_CAST_EXPR:
	field_type_CONST_CAST_EXPR(t);
	break;
case STATIC_CAST_EXPR:
	field_type_STATIC_CAST_EXPR(t);
	break;
case DYNAMIC_CAST_EXPR:
	field_type_DYNAMIC_CAST_EXPR(t);
	break;
case DOTSTAR_EXPR:
	field_type_DOTSTAR_EXPR(t);
	break;
case TYPEID_EXPR:
	field_type_TYPEID_EXPR(t);
	break;
case NON_DEPENDENT_EXPR:
	field_type_NON_DEPENDENT_EXPR(t);
	break;
case CTOR_INITIALIZER:
	field_type_CTOR_INITIALIZER(t);
	break;
case TRY_BLOCK:
	field_type_TRY_BLOCK(t);
	break;
case EH_SPEC_BLOCK:
	field_type_EH_SPEC_BLOCK(t);
	break;
case HANDLER:
	field_type_HANDLER(t);
	break;
case MUST_NOT_THROW_EXPR:
	field_type_MUST_NOT_THROW_EXPR(t);
	break;
case CLEANUP_STMT:
	field_type_CLEANUP_STMT(t);
	break;
case IF_STMT:
	field_type_IF_STMT(t);
	break;
case FOR_STMT:
	field_type_FOR_STMT(t);
	break;
case WHILE_STMT:
	field_type_WHILE_STMT(t);
	break;
case DO_STMT:
	field_type_DO_STMT(t);
	break;
case BREAK_STMT:
	field_type_BREAK_STMT(t);
	break;
case CONTINUE_STMT:
	field_type_CONTINUE_STMT(t);
	break;
case SWITCH_STMT:
	field_type_SWITCH_STMT(t);
	break;
case EXPR_STMT:
	field_type_EXPR_STMT(t);
	break;
case TAG_DEFN:
	field_type_TAG_DEFN(t);
	break;
case OFFSETOF_EXPR:
	field_type_OFFSETOF_EXPR(t);
	break;
case SIZEOF_EXPR:
	field_type_SIZEOF_EXPR(t);
	break;
case ARROW_EXPR:
	field_type_ARROW_EXPR(t);
	break;
case ALIGNOF_EXPR:
	field_type_ALIGNOF_EXPR(t);
	break;
case STMT_EXPR:
	field_type_STMT_EXPR(t);
	break;
case UNARY_PLUS_EXPR:
	field_type_UNARY_PLUS_EXPR(t);
	break;
case STATIC_ASSERT:
	field_type_STATIC_ASSERT(t);
	break;
case TYPE_ARGUMENT_PACK:
	field_type_TYPE_ARGUMENT_PACK(t);
	break;
case NONTYPE_ARGUMENT_PACK:
	field_type_NONTYPE_ARGUMENT_PACK(t);
	break;
case TYPE_PACK_EXPANSION:
	field_type_TYPE_PACK_EXPANSION(t);
	break;
case EXPR_PACK_EXPANSION:
	field_type_EXPR_PACK_EXPANSION(t);
	break;
case ARGUMENT_PACK_SELECT:
	field_type_ARGUMENT_PACK_SELECT(t);
	break;
case TRAIT_EXPR:
	field_type_TRAIT_EXPR(t);
	break;
case LAMBDA_EXPR:
	field_type_LAMBDA_EXPR(t);
	break;
case DECLTYPE_TYPE:
	field_type_DECLTYPE_TYPE(t);
	break;
case TEMPLATE_INFO:
	field_type_TEMPLATE_INFO(t);
	break;
case URSHIFT_EXPR:
	field_type_URSHIFT_EXPR(t);
	break;
case COMPARE_EXPR:
	field_type_COMPARE_EXPR(t);
	break;
case COMPARE_L_EXPR:
	field_type_COMPARE_L_EXPR(t);
	break;
case COMPARE_G_EXPR:
	field_type_COMPARE_G_EXPR(t);
	break;
case CLASS_INTERFACE_TYPE:
	field_type_CLASS_INTERFACE_TYPE(t);
	break;
case CLASS_IMPLEMENTATION_TYPE:
	field_type_CLASS_IMPLEMENTATION_TYPE(t);
	break;
case CATEGORY_INTERFACE_TYPE:
	field_type_CATEGORY_INTERFACE_TYPE(t);
	break;
case CATEGORY_IMPLEMENTATION_TYPE:
	field_type_CATEGORY_IMPLEMENTATION_TYPE(t);
	break;
case PROTOCOL_INTERFACE_TYPE:
	field_type_PROTOCOL_INTERFACE_TYPE(t);
	break;
case KEYWORD_DECL:
	field_type_KEYWORD_DECL(t);
	break;
case INSTANCE_METHOD_DECL:
	field_type_INSTANCE_METHOD_DECL(t);
	break;
case CLASS_METHOD_DECL:
	field_type_CLASS_METHOD_DECL(t);
	break;
case MESSAGE_SEND_EXPR:
	field_type_MESSAGE_SEND_EXPR(t);
	break;
case CLASS_REFERENCE_EXPR:
	field_type_CLASS_REFERENCE_EXPR(t);
	break;
case MAX_TREE_CODES:
	field_type_MAX_TREE_CODES(t);
	break;
	default : ;
};

};
