#include <stdio.h>
//#include "gcc-plugin.h"
#include "gcc-plugin.h"
#include "tree.h"
#include "plugin-version.h"
#include "tm.h"
#include "cp/cp-tree.h"
#include "ggc.h"
#define ENTER  printf ("Enter at %s:%d\n", __FILE__, __LINE__);

void field_type_EXPR_P(tree t)
{
  ENTER; if (EXPR_P(t)) {
    printf ("EXPR_P\n");
    printf ("EXPR_P %d\n",EXPR_P(t));
  }
}
void field_type_TREE_CODE(tree t)
{
  ENTER; if (TREE_CODE(t)) {
    printf ("TREE_CODE\n");
    printf ("TREE_CODE %d\n",TREE_CODE(t));
  }
}

void field_type_TREE_CHAIN(tree t)
{
  printf ("checking TREE_CHAIN\n");
  if (TREE_CHAIN(t)) {
    printf ("TREE_CHAIN\n");
    //tree:printf ("TREE_CHAIN %d\n",TREE_CHAIN(t));
  }
}

void field_type_TREE_TYPE(tree t)
{
  printf ("checking TREE_TYPE\n");
  if (TREE_TYPE(t)) {
    printf ("TREE_TYPE\n");
    //tree:printf ("TREE_TYPE %d\n",TREE_TYPE(t));
  }
  printf ("after checking TREE_TYPE\n");
}

void field_type_TREE_BLOCK(tree t)
{
  ENTER;
  if (TREE_BLOCK(t)) {
    printf ("TREE_BLOCK\n");
    //tree :printf ("TREE_BLOCK %d\n",TREE_BLOCK(t));
  }
}
void field_type_TREE_HASH(tree t)
{
  ENTER; if (TREE_HASH(t)) {
    printf ("TREE_HASH\n");
    printf ("TREE_HASH %ld\n",TREE_HASH(t));
  }
}
void field_type_COMPLETE_TYPE_P(tree t)
{
  ENTER; if (COMPLETE_TYPE_P(t)) {
    printf ("COMPLETE_TYPE_P\n");
    printf ("COMPLETE_TYPE_P %d\n",COMPLETE_TYPE_P(t));
  }
}
void field_type_VOID_TYPE_P(tree t)
{
  ENTER; if (VOID_TYPE_P(t)) {
    printf ("VOID_TYPE_P\n");
    printf ("VOID_TYPE_P %d\n",VOID_TYPE_P(t));
  }
}
void field_type_COMPLETE_OR_VOID_TYPE_P(tree t)
{
  ENTER; if (COMPLETE_OR_VOID_TYPE_P(t)) {
    printf ("COMPLETE_OR_VOID_TYPE_P\n");
    printf ("COMPLETE_OR_VOID_TYPE_P %d\n",COMPLETE_OR_VOID_TYPE_P(t));
  }
}
void field_type_COMPLETE_OR_UNBOUND_ARRAY_TYPE_P(tree t)
{
  ENTER; if (COMPLETE_OR_UNBOUND_ARRAY_TYPE_P(t)) {
    printf ("COMPLETE_OR_UNBOUND_ARRAY_TYPE_P\n");
    printf ("COMPLETE_OR_UNBOUND_ARRAY_TYPE_P %d\n",COMPLETE_OR_UNBOUND_ARRAY_TYPE_P(t));
  }
}
void field_type_TREE_ADDRESSABLE(tree t)
{
  ENTER; 
  if (TREE_ADDRESSABLE(t)) {
    printf ("TREE_ADDRESSABLE\n");
    printf ("TREE_ADDRESSABLE %d\n",TREE_ADDRESSABLE(t));
  }
}
void field_type_CALL_EXPR_TAILCALL(tree t)
{
  ENTER; if (CALL_EXPR_TAILCALL(t)) {
    printf ("CALL_EXPR_TAILCALL\n");
    printf ("CALL_EXPR_TAILCALL %d\n",CALL_EXPR_TAILCALL(t));
  }
}
void field_type_CASE_LOW_SEEN(tree t)
{
  ENTER; if (CASE_LOW_SEEN(t)) {
    printf ("CASE_LOW_SEEN\n");
    printf ("CASE_LOW_SEEN %d\n",CASE_LOW_SEEN(t));
  }
}
void field_type_PREDICT_EXPR_OUTCOME(tree t)
{
  /*
    if (PREDICT_EXPR_OUTCOME(t)) {
    printf ("PREDICT_EXPR_OUTCOME\n");
    printf ("PREDICT_EXPR_OUTCOME %d\n",PREDICT_EXPR_OUTCOME(t));
    }
  */
}
void field_type_PREDICT_EXPR_PREDICTOR(tree t)
{
  /*       if (PREDICT_EXPR_PREDICTOR(t)) {
	   printf ("PREDICT_EXPR_PREDICTOR\n");
	   printf ("PREDICT_EXPR_PREDICTOR %d\n",PREDICT_EXPR_PREDICTOR(t));
	   }
  */
}
void field_type_TREE_STATIC(tree t)
{
  ENTER; if (TREE_STATIC(t)) {
    printf ("TREE_STATIC\n");
    printf ("TREE_STATIC %d\n",TREE_STATIC(t));
  }
}
void field_type_TREE_NO_TRAMPOLINE(tree t)
{
  ENTER; if (TREE_NO_TRAMPOLINE(t)) {
    printf ("TREE_NO_TRAMPOLINE\n");
    printf ("TREE_NO_TRAMPOLINE %d\n",TREE_NO_TRAMPOLINE(t));
  }
}
void field_type_CLEANUP_EH_ONLY(tree t)
{
  ENTER; if (CLEANUP_EH_ONLY(t)) {
    printf ("CLEANUP_EH_ONLY\n");
    printf ("CLEANUP_EH_ONLY %d\n",CLEANUP_EH_ONLY(t));
  }
}
void field_type_TRY_CATCH_IS_CLEANUP(tree t)
{
  ENTER; if (TRY_CATCH_IS_CLEANUP(t)) {
    printf ("TRY_CATCH_IS_CLEANUP\n");
    printf ("TRY_CATCH_IS_CLEANUP %d\n",TRY_CATCH_IS_CLEANUP(t));
  }
}
void field_type_CASE_HIGH_SEEN(tree t)
{
  ENTER; if (CASE_HIGH_SEEN(t)) {
    printf ("CASE_HIGH_SEEN\n");
    printf ("CASE_HIGH_SEEN %d\n",CASE_HIGH_SEEN(t));
  }
}
void field_type_CALL_CANNOT_INLINE_P(tree t)
{
  ENTER; if (CALL_CANNOT_INLINE_P(t)) {
    printf ("CALL_CANNOT_INLINE_P\n");
    printf ("CALL_CANNOT_INLINE_P %d\n",CALL_CANNOT_INLINE_P(t));
  }
}
void field_type_TREE_NO_WARNING(tree t)
{
  ENTER; if (TREE_NO_WARNING(t)) {
    printf ("TREE_NO_WARNING\n");
    printf ("TREE_NO_WARNING %d\n",TREE_NO_WARNING(t));
  }
}
void field_type_TREE_SYMBOL_REFERENCED(tree t)
{
  ENTER; if (TREE_SYMBOL_REFERENCED(t)) {
    printf ("TREE_SYMBOL_REFERENCED\n");
    printf ("TREE_SYMBOL_REFERENCED %d\n",TREE_SYMBOL_REFERENCED(t));
  }
}
void field_type_TYPE_REF_CAN_ALIAS_ALL(tree t)
{
  ENTER; if (TYPE_REF_CAN_ALIAS_ALL(t)) {
    printf ("TYPE_REF_CAN_ALIAS_ALL\n");
    printf ("TYPE_REF_CAN_ALIAS_ALL %d\n",TYPE_REF_CAN_ALIAS_ALL(t));
  }
}
void field_type_MOVE_NONTEMPORAL(tree t)
{
  ENTER; if (MOVE_NONTEMPORAL(t)) {
    printf ("MOVE_NONTEMPORAL\n");
    printf ("MOVE_NONTEMPORAL %d\n",MOVE_NONTEMPORAL(t));
  }
}
void field_type_TREE_OVERFLOW(tree t)
{
  ENTER; if (TREE_OVERFLOW(t)) {
    printf ("TREE_OVERFLOW\n");
    printf ("TREE_OVERFLOW %d\n",TREE_OVERFLOW(t));
  }
}
void field_type_TREE_PUBLIC(tree t)
{
  ENTER; if (TREE_PUBLIC(t)) {
    printf ("TREE_PUBLIC\n");
    printf ("TREE_PUBLIC %d\n",TREE_PUBLIC(t));
  }
}
void field_type_TYPE_CACHED_VALUES_P(tree t)
{
  ENTER; if (TYPE_CACHED_VALUES_P(t)) {
    printf ("TYPE_CACHED_VALUES_P\n");
    printf ("TYPE_CACHED_VALUES_P %d\n",TYPE_CACHED_VALUES_P(t));
  }
}
void field_type_SAVE_EXPR_RESOLVED_P(tree t)
{
  ENTER; if (SAVE_EXPR_RESOLVED_P(t)) {
    printf ("SAVE_EXPR_RESOLVED_P\n");
    printf ("SAVE_EXPR_RESOLVED_P %d\n",SAVE_EXPR_RESOLVED_P(t));
  }
}
void field_type_CALL_EXPR_VA_ARG_PACK(tree t)
{
  ENTER; if (CALL_EXPR_VA_ARG_PACK(t)) {
    printf ("CALL_EXPR_VA_ARG_PACK\n");
    printf ("CALL_EXPR_VA_ARG_PACK %d\n",CALL_EXPR_VA_ARG_PACK(t));
  }
}
void field_type_TREE_SIDE_EFFECTS(tree t)
{
  ENTER; if (TREE_SIDE_EFFECTS(t)) {
    printf ("TREE_SIDE_EFFECTS\n");
    printf ("TREE_SIDE_EFFECTS %d\n",TREE_SIDE_EFFECTS(t));
  }
}
void field_type_FORCED_LABEL(tree t)
{
  ENTER; if (FORCED_LABEL(t)) {
    printf ("FORCED_LABEL\n");
    printf ("FORCED_LABEL %d\n",FORCED_LABEL(t));
  }
}
void field_type_TREE_THIS_VOLATILE(tree t)
{
  ENTER; if (TREE_THIS_VOLATILE(t)) {
    printf ("TREE_THIS_VOLATILE\n");
    printf ("TREE_THIS_VOLATILE %d\n",TREE_THIS_VOLATILE(t));
  }
}
void field_type_TREE_THIS_NOTRAP(tree t)
{
  ENTER; if (TREE_THIS_NOTRAP(t)) {
    printf ("TREE_THIS_NOTRAP\n");
    printf ("TREE_THIS_NOTRAP %d\n",TREE_THIS_NOTRAP(t));
  }
}
void field_type_TREE_READONLY(tree t)
{
  ENTER; if (TREE_READONLY(t)) {
    printf ("TREE_READONLY\n");
    printf ("TREE_READONLY %d\n",TREE_READONLY(t));
  }
}
void field_type_TREE_CONSTANT(tree t)
{
  ENTER; if (TREE_CONSTANT(t)) {
    printf ("TREE_CONSTANT\n");
    printf ("TREE_CONSTANT %d\n",TREE_CONSTANT(t));
  }
}
void field_type_TYPE_SIZES_GIMPLIFIED(tree t)
{
  ENTER; if (TYPE_SIZES_GIMPLIFIED(t)) {
    printf ("TYPE_SIZES_GIMPLIFIED\n");
    printf ("TYPE_SIZES_GIMPLIFIED %d\n",TYPE_SIZES_GIMPLIFIED(t));
  }
}
void field_type_DECL_UNSIGNED(tree t)
{
  ENTER; if (DECL_UNSIGNED(t)) {
    printf ("DECL_UNSIGNED\n");
    printf ("DECL_UNSIGNED %d\n",DECL_UNSIGNED(t));
  }
}
void field_type_TYPE_UNSIGNED(tree t)
{
  ENTER; if (TYPE_UNSIGNED(t)) {
    printf ("TYPE_UNSIGNED\n");
    printf ("TYPE_UNSIGNED %d\n",TYPE_UNSIGNED(t));
  }
}
void field_type_TREE_ASM_WRITTEN(tree t)
{
  ENTER; if (TREE_ASM_WRITTEN(t)) {
    printf ("TREE_ASM_WRITTEN\n");
    printf ("TREE_ASM_WRITTEN %d\n",TREE_ASM_WRITTEN(t));
  }
}
void field_type_TREE_USED(tree t)
{
  ENTER; if (TREE_USED(t)) {
    printf ("TREE_USED\n");
    printf ("TREE_USED %d\n",TREE_USED(t));
  }
}
void field_type_TREE_NOTHROW(tree t)
{
  ENTER; if (TREE_NOTHROW(t)) {
    printf ("TREE_NOTHROW\n");
    printf ("TREE_NOTHROW %d\n",TREE_NOTHROW(t));
  }
}
void field_type_CALL_EXPR_RETURN_SLOT_OPT(tree t)
{
  ENTER; if (CALL_EXPR_RETURN_SLOT_OPT(t)) {
    printf ("CALL_EXPR_RETURN_SLOT_OPT\n");
    printf ("CALL_EXPR_RETURN_SLOT_OPT %d\n",CALL_EXPR_RETURN_SLOT_OPT(t));
  }
}
void field_type_DECL_BY_REFERENCE(tree t)
{
  ENTER; if (DECL_BY_REFERENCE(t)) {
    printf ("DECL_BY_REFERENCE\n");
    printf ("DECL_BY_REFERENCE %d\n",DECL_BY_REFERENCE(t));
  }
}
void field_type_DECL_RESTRICTED_P(tree t)
{
  ENTER; if (DECL_RESTRICTED_P(t)) {
    printf ("DECL_RESTRICTED_P\n");
    printf ("DECL_RESTRICTED_P %d\n",DECL_RESTRICTED_P(t));
  }
}
void field_type_CALL_FROM_THUNK_P(tree t)
{
  ENTER; if (CALL_FROM_THUNK_P(t)) {
    printf ("CALL_FROM_THUNK_P\n");
    printf ("CALL_FROM_THUNK_P %d\n",CALL_FROM_THUNK_P(t));
  }
}
void field_type_TYPE_ALIGN_OK(tree t)
{
  ENTER; if (TYPE_ALIGN_OK(t)) {
    printf ("TYPE_ALIGN_OK\n");
    printf ("TYPE_ALIGN_OK %d\n",TYPE_ALIGN_OK(t));
  }
}
void field_type_TREE_PRIVATE(tree t)
{
  ENTER; if (TREE_PRIVATE(t)) {
    printf ("TREE_PRIVATE\n");
    printf ("TREE_PRIVATE %d\n",TREE_PRIVATE(t));
  }
}
void field_type_TREE_PROTECTED(tree t)
{
  ENTER; if (TREE_PROTECTED(t)) {
    printf ("TREE_PROTECTED\n");
    printf ("TREE_PROTECTED %d\n",TREE_PROTECTED(t));
  }
}
void field_type_TREE_DEPRECATED(tree t)
{
  ENTER; if (TREE_DEPRECATED(t)) {
    printf ("TREE_DEPRECATED\n");
    printf ("TREE_DEPRECATED %d\n",TREE_DEPRECATED(t));
  }
}
void field_type_IDENTIFIER_TRANSPARENT_ALIAS(tree t)
{
  ENTER; if (IDENTIFIER_TRANSPARENT_ALIAS(t)) {
    printf ("IDENTIFIER_TRANSPARENT_ALIAS\n");
    printf ("IDENTIFIER_TRANSPARENT_ALIAS %d\n",IDENTIFIER_TRANSPARENT_ALIAS(t));
  }
}
void field_type_TYPE_SATURATING(tree t)
{
  ENTER; if (TYPE_SATURATING(t)) {
    printf ("TYPE_SATURATING\n");
    printf ("TYPE_SATURATING %d\n",TYPE_SATURATING(t));
  }
}
void field_type_TREE_LANG_FLAG_0(tree t)
{
  ENTER; if (TREE_LANG_FLAG_0(t)) {
    printf ("TREE_LANG_FLAG_0\n");
    printf ("TREE_LANG_FLAG_0 %d\n",TREE_LANG_FLAG_0(t));
  }
}
void field_type_TREE_LANG_FLAG_1(tree t)
{
  ENTER; if (TREE_LANG_FLAG_1(t)) {
    printf ("TREE_LANG_FLAG_1\n");
    printf ("TREE_LANG_FLAG_1 %d\n",TREE_LANG_FLAG_1(t));
  }
}
void field_type_TREE_LANG_FLAG_2(tree t)
{
  ENTER; if (TREE_LANG_FLAG_2(t)) {
    printf ("TREE_LANG_FLAG_2\n");
    printf ("TREE_LANG_FLAG_2 %d\n",TREE_LANG_FLAG_2(t));
  }
}
void field_type_TREE_LANG_FLAG_3(tree t)
{
  ENTER; if (TREE_LANG_FLAG_3(t)) {
    printf ("TREE_LANG_FLAG_3\n");
    printf ("TREE_LANG_FLAG_3 %d\n",TREE_LANG_FLAG_3(t));
  }
}
void field_type_TREE_LANG_FLAG_4(tree t)
{
  ENTER; if (TREE_LANG_FLAG_4(t)) {
    printf ("TREE_LANG_FLAG_4\n");
    printf ("TREE_LANG_FLAG_4 %d\n",TREE_LANG_FLAG_4(t));
  }
}
void field_type_TREE_LANG_FLAG_5(tree t)
{
  ENTER; if (TREE_LANG_FLAG_5(t)) {
    printf ("TREE_LANG_FLAG_5\n");
    printf ("TREE_LANG_FLAG_5 %d\n",TREE_LANG_FLAG_5(t));
  }
}
void field_type_TREE_LANG_FLAG_6(tree t)
{
  ENTER; if (TREE_LANG_FLAG_6(t)) {
    printf ("TREE_LANG_FLAG_6\n");
    printf ("TREE_LANG_FLAG_6 %d\n",TREE_LANG_FLAG_6(t));
  }
}
void field_type_TREE_INT_CST(tree t)
{
  /*
    if (TREE_INT_CST(t)) {
    printf ("TREE_INT_CST\n");
    printf ("TREE_INT_CST %d\n",TREE_INT_CST(t));
    }
  */
}
void field_type_TREE_INT_CST_LOW(tree t)
{
  ENTER; if (TREE_INT_CST_LOW(t)) {
    printf ("TREE_INT_CST_LOW\n");
    printf ("TREE_INT_CST_LOW %ld\n",TREE_INT_CST_LOW(t));
  }
}
void field_type_TREE_INT_CST_HIGH(tree t)
{
  ENTER; if (TREE_INT_CST_HIGH(t)) {
    printf ("TREE_INT_CST_HIGH\n");
    printf ("TREE_INT_CST_HIGH %ld\n",TREE_INT_CST_HIGH(t));
  }
}
void field_type_TREE_REAL_CST_PTR(tree t)
{
  ENTER; if (TREE_REAL_CST_PTR(t)) {
    printf ("TREE_REAL_CST_PTR\n");
    printf ("TREE_REAL_CST_PTR %p\n",TREE_REAL_CST_PTR(t));
  }
}
void field_type_TREE_REAL_CST(tree t)
{
  /*if (TREE_REAL_CST(t)) {
    printf ("TREE_REAL_CST\n");
    printf ("TREE_REAL_CST %d\n",TREE_REAL_CST(t));
    }*/
}
void field_type_TREE_FIXED_CST_PTR(tree t)
{
  ENTER; if (TREE_FIXED_CST_PTR(t)) {
    printf ("TREE_FIXED_CST_PTR\n");
    printf ("TREE_FIXED_CST_PTR %p\n",TREE_FIXED_CST_PTR(t));
  }
}
void field_type_TREE_FIXED_CST(tree t)
{
  /*       if (TREE_FIXED_CST(t)) {
	   printf ("TREE_FIXED_CST\n");
	   printf ("TREE_FIXED_CST %d\n",TREE_FIXED_CST(t));
	   }*/
}
void field_type_TREE_STRING_LENGTH(tree t)
{
  ENTER; if (TREE_STRING_LENGTH(t)) {
    printf ("TREE_STRING_LENGTH\n");
    printf ("TREE_STRING_LENGTH %d\n",TREE_STRING_LENGTH(t));
  }
}
void field_type_TREE_STRING_POINTER(tree t)
{
  ENTER; if (TREE_STRING_POINTER(t)) {
    printf ("TREE_STRING_POINTER\n");
    printf ("TREE_STRING_POINTER %s\n",TREE_STRING_POINTER(t));
  }
}
void field_type_TREE_REALPART(tree t)
{
  ENTER; if (TREE_REALPART(t)) {
    printf ("TREE_REALPART\n");
    printf ("TREE_REALPART %p\n",TREE_REALPART(t));
  }
}
void field_type_TREE_IMAGPART(tree t)
{
  ENTER; if (TREE_IMAGPART(t)) {
    printf ("TREE_IMAGPART\n");
    printf ("TREE_IMAGPART %p\n",TREE_IMAGPART(t));
  }
}
void field_type_TREE_VECTOR_CST_ELTS(tree t)
{
  ENTER; if (TREE_VECTOR_CST_ELTS(t)) {
    printf ("TREE_VECTOR_CST_ELTS\n");
    printf ("TREE_VECTOR_CST_ELTS %p\n",TREE_VECTOR_CST_ELTS(t));
  }
}
void field_type_IDENTIFIER_LENGTH(tree t)
{
  ENTER; if (IDENTIFIER_LENGTH(t)) {
    printf ("IDENTIFIER_LENGTH\n");
    printf ("IDENTIFIER_LENGTH %d\n",IDENTIFIER_LENGTH(t));
  }
}
void field_type_IDENTIFIER_POINTER(tree t)
{
  ENTER; if (IDENTIFIER_POINTER(t)) {
    printf ("IDENTIFIER_POINTER\n");
    printf ("IDENTIFIER_POINTER %s\n",IDENTIFIER_POINTER(t));
  }
}
void field_type_IDENTIFIER_HASH_VALUE(tree t)
{
  ENTER; if (IDENTIFIER_HASH_VALUE(t)) {
    printf ("IDENTIFIER_HASH_VALUE\n");
    printf ("IDENTIFIER_HASH_VALUE %d\n",IDENTIFIER_HASH_VALUE(t));
  }
}
void field_type_HT_IDENT_TO_GCC_IDENT(tree t)
{
  ENTER; if (HT_IDENT_TO_GCC_IDENT(t)) {
    printf ("HT_IDENT_TO_GCC_IDENT\n");
    printf ("HT_IDENT_TO_GCC_IDENT %p\n",HT_IDENT_TO_GCC_IDENT(t));
  }
}
void field_type_GCC_IDENT_TO_HT_IDENT(tree t)
{
  ENTER; if (GCC_IDENT_TO_HT_IDENT(t)) {
    printf ("GCC_IDENT_TO_HT_IDENT\n");
    printf ("GCC_IDENT_TO_HT_IDENT %p\n",GCC_IDENT_TO_HT_IDENT(t));
  }
}
void field_type_TREE_PURPOSE(tree t)
{
  ENTER; if (TREE_PURPOSE(t)) {
    printf ("TREE_PURPOSE\n");
    printf ("TREE_PURPOSE %p\n",TREE_PURPOSE(t));
  }
}
void field_type_TREE_VALUE(tree t)
{
  ENTER; if (TREE_VALUE(t)) {
    printf ("TREE_VALUE\n");
    printf ("TREE_VALUE %p\n",TREE_VALUE(t));
  }
}
void field_type_TREE_VEC_LENGTH(tree t)
{
  ENTER; if (TREE_VEC_LENGTH(t)) {
    printf ("TREE_VEC_LENGTH\n");
    printf ("TREE_VEC_LENGTH %d\n",TREE_VEC_LENGTH(t));
  }
}
void field_type_TREE_VEC_END(tree t)
{
  ENTER; if (TREE_VEC_END(t)) {
    printf ("TREE_VEC_END\n");
    printf ("TREE_VEC_END %p\n",TREE_VEC_END(t)); //union tree_node **
  }
}
void field_type_CONSTRUCTOR_ELTS(tree t)
{
  ENTER; if (CONSTRUCTOR_ELTS(t)) {
    printf ("CONSTRUCTOR_ELTS\n");
    printf ("CONSTRUCTOR_ELTS %p\n",CONSTRUCTOR_ELTS(t)); //struct VEC_constructor_elt_gc *
  }
}
void field_type_CONSTRUCTOR_NELTS(tree t)
{
  ENTER; if (CONSTRUCTOR_NELTS(t)) {
    printf ("CONSTRUCTOR_NELTS\n");
    printf ("CONSTRUCTOR_NELTS %d\n",CONSTRUCTOR_NELTS(t));
  }
}
void field_type_CONSTRUCTOR_BITFIELD_P(tree t)
{
  ENTER; if (CONSTRUCTOR_BITFIELD_P(t)) {
    printf ("CONSTRUCTOR_BITFIELD_P\n");
    printf ("CONSTRUCTOR_BITFIELD_P %d\n",CONSTRUCTOR_BITFIELD_P(t));
  }
}
void field_type_IS_EMPTY_STMT(tree t)
{
  ENTER; if (IS_EMPTY_STMT(t)) {
    printf ("IS_EMPTY_STMT\n");
    printf ("IS_EMPTY_STMT %d\n",IS_EMPTY_STMT(t));
  }
}
void field_type_TREE_OPERAND_LENGTH(tree t)
{
  ENTER; if (TREE_OPERAND_LENGTH(t)) {
    printf ("TREE_OPERAND_LENGTH\n");
    printf ("TREE_OPERAND_LENGTH %d\n",TREE_OPERAND_LENGTH(t));
  }
}
void field_type_VL_EXP_OPERAND_LENGTH(tree t)
{
  ENTER; if (VL_EXP_OPERAND_LENGTH(t)) {
    printf ("VL_EXP_OPERAND_LENGTH\n");
    printf ("VL_EXP_OPERAND_LENGTH %d\n",VL_EXP_OPERAND_LENGTH(t));
  }
}
void field_type_LOOP_EXPR_BODY(tree t)
{
  ENTER; if (LOOP_EXPR_BODY(t)) {
    printf ("LOOP_EXPR_BODY\n");
    printf ("LOOP_EXPR_BODY %p\n",LOOP_EXPR_BODY(t));//tree
  }
}
void field_type_EXPR_LOCATION(tree t)
{
  ENTER; if (EXPR_LOCATION(t)) {
    printf ("EXPR_LOCATION\n");
    printf ("EXPR_LOCATION %d\n",EXPR_LOCATION(t));
  }
}
void field_type_EXPR_HAS_LOCATION(tree t)
{
  ENTER; if (EXPR_HAS_LOCATION(t)) {
    printf ("EXPR_HAS_LOCATION\n");
    printf ("EXPR_HAS_LOCATION %d\n",EXPR_HAS_LOCATION(t));
  }
}
void field_type_EXPR_FILENAME(tree t)
{
  ENTER; if (EXPR_FILENAME(t)) {
    printf ("EXPR_FILENAME\n");
    printf ("EXPR_FILENAME %s\n",EXPR_FILENAME(t));
  }
}
void field_type_EXPR_LINENO(tree t)
{
  ENTER; if (EXPR_LINENO(t)) {
    printf ("EXPR_LINENO\n");
    printf ("EXPR_LINENO %d\n",EXPR_LINENO(t));
  }
}
void field_type_CAN_HAVE_LOCATION_P(tree t)
{
  ENTER; if (CAN_HAVE_LOCATION_P(t)) {
    printf ("CAN_HAVE_LOCATION_P\n");
    printf ("CAN_HAVE_LOCATION_P %d\n",CAN_HAVE_LOCATION_P(t));
  }
}
void field_type_TARGET_EXPR_SLOT(tree t)
{
  ENTER; 
  if (TARGET_EXPR_SLOT(t)) {
    printf ("TARGET_EXPR_SLOT\n");
    //crash printf ("TARGET_EXPR_SLOT %p\n",TARGET_EXPR_SLOT(t)); //tree
  }
}
void field_type_TARGET_EXPR_INITIAL(tree t)
{
  ENTER; if (TARGET_EXPR_INITIAL(t)) {
    printf ("TARGET_EXPR_INITIAL\n");
    printf ("TARGET_EXPR_INITIAL %p\n",TARGET_EXPR_INITIAL(t));//tree
  }
}
void field_type_TARGET_EXPR_CLEANUP(tree t)
{
  ENTER; if (TARGET_EXPR_CLEANUP(t)) {
    printf ("TARGET_EXPR_CLEANUP\n");
    printf ("TARGET_EXPR_CLEANUP %p\n",TARGET_EXPR_CLEANUP(t));//tree
  }
}
void field_type_DECL_EXPR_DECL(tree t)
{
  ENTER; if (DECL_EXPR_DECL(t)) {
    printf ("DECL_EXPR_DECL\n");
    printf ("DECL_EXPR_DECL %p\n",DECL_EXPR_DECL(t));//tree
  }
}

void field_type_EXIT_EXPR_COND(tree t)
{
  ENTER; if (EXIT_EXPR_COND(t)) {
    printf ("EXIT_EXPR_COND\n");
    printf ("EXIT_EXPR_COND %p\n",EXIT_EXPR_COND(t));//tree
  }
}
void field_type_COMPOUND_LITERAL_EXPR_DECL_EXPR(tree t)
{
  ENTER; if (COMPOUND_LITERAL_EXPR_DECL_EXPR(t)) {
    printf ("COMPOUND_LITERAL_EXPR_DECL_EXPR\n");
    printf ("COMPOUND_LITERAL_EXPR_DECL_EXPR %p\n",COMPOUND_LITERAL_EXPR_DECL_EXPR(t));//tree
  }
}
void field_type_COMPOUND_LITERAL_EXPR_DECL(tree t)
{
  ENTER; if (COMPOUND_LITERAL_EXPR_DECL(t)) {
    printf ("COMPOUND_LITERAL_EXPR_DECL\n");
    printf ("COMPOUND_LITERAL_EXPR_DECL %p\n",COMPOUND_LITERAL_EXPR_DECL(t));//tree
  }
}
void field_type_SWITCH_COND(tree t)
{
  ENTER; if (SWITCH_COND(t)) {
    printf ("SWITCH_COND\n");
    printf ("SWITCH_COND %p\n",SWITCH_COND(t));// tree
  }
}
void field_type_SWITCH_BODY(tree t)
{
  ENTER; if (SWITCH_BODY(t)) {
    printf ("SWITCH_BODY\n");
    printf ("SWITCH_BODY %p\n",SWITCH_BODY(t));// tree
  }
}

void field_type_SWITCH_LABELS(tree t)
{
  ENTER; if (SWITCH_LABELS(t)) {
    printf ("SWITCH_LABELS\n");
    printf ("SWITCH_LABELS %p\n",SWITCH_LABELS(t));
  }
}

void field_type_CASE_LOW(tree t)
{
  ENTER; if (CASE_LOW(t)) {
    printf ("CASE_LOW\n");
    printf ("CASE_LOW %p\n",CASE_LOW(t));//tree
  }
}
void field_type_CASE_HIGH(tree t)
{
  ENTER; if (CASE_HIGH(t)) {
    printf ("CASE_HIGH\n");
    printf ("CASE_HIGH %p\n",CASE_HIGH(t));//tree
  }
}

void field_type_CASE_LABEL(tree t)
{
  ENTER; if (CASE_LABEL(t)) {
    printf ("CASE_LABEL\n");
    printf ("CASE_LABEL %p\n",CASE_LABEL(t));//tree
  }
}

void field_type_TMR_SYMBOL(tree t)
{
  ENTER; //if (TMR_SYMBOL(t)) {
  //    printf ("TMR_SYMBOL CRASHES\n");
    //CRASH printf ("TMR_SYMBOL %p\n",TMR_SYMBOL(t));//tree
    //  }
}
void field_type_TMR_BASE(tree t)
{
  ENTER; if (TMR_BASE(t)) {
    printf ("TMR_BASE\n");
    printf ("TMR_BASE %p\n",TMR_BASE(t));//tree
  }
}
void field_type_TMR_INDEX(tree t)
{
  ENTER; if (TMR_INDEX(t)) {
    printf ("TMR_INDEX\n");
    printf ("TMR_INDEX %p\n",TMR_INDEX(t));//tree
  }
}
void field_type_TMR_STEP(tree t)
{
  ENTER; if (TMR_STEP(t)) {
    printf ("TMR_STEP\n");
    printf ("TMR_STEP %p\n",TMR_STEP(t));//tree
  }
}
void field_type_TMR_OFFSET(tree t)
{
  ENTER; if (TMR_OFFSET(t)) {
    printf ("TMR_OFFSET\n");
    printf ("TMR_OFFSET %p\n",TMR_OFFSET(t));//tree
  }
}
void field_type_TMR_ORIGINAL(tree t)
{
  ENTER; if (TMR_ORIGINAL(t)) {
    printf ("TMR_ORIGINAL\n");
    printf ("TMR_ORIGINAL %p\n",TMR_ORIGINAL(t));//tree
  }
}
void field_type_BIND_EXPR_VARS(tree t)
{
  ENTER; if (BIND_EXPR_VARS(t)) {
    printf ("BIND_EXPR_VARS\n");
    printf ("BIND_EXPR_VARS %p\n",BIND_EXPR_VARS(t));//tree
  }
}
void field_type_BIND_EXPR_BODY(tree t)
{
  ENTER; if (BIND_EXPR_BODY(t)) {
    printf ("BIND_EXPR_BODY\n");
    printf ("BIND_EXPR_BODY %p\n",BIND_EXPR_BODY(t));//tree
  }
}
void field_type_BIND_EXPR_BLOCK(tree t)
{
  ENTER; if (BIND_EXPR_BLOCK(t)) {
    printf ("BIND_EXPR_BLOCK\n");
    printf ("BIND_EXPR_BLOCK %p\n",BIND_EXPR_BLOCK(t));//tree
  }
}
void field_type_GOTO_DESTINATION(tree t)
{
  ENTER; if (GOTO_DESTINATION(t)) {
    printf ("GOTO_DESTINATION\n");
    printf ("GOTO_DESTINATION %p\n",GOTO_DESTINATION(t));//tree
  }
}
void field_type_ASM_STRING(tree t)
{
  ENTER; if (ASM_STRING(t)) {
    printf ("ASM_STRING\n");
    printf ("ASM_STRING %p\n",ASM_STRING(t));//tree
  }
}
void field_type_ASM_OUTPUTS(tree t)
{
  ENTER; if (ASM_OUTPUTS(t)) {
    printf ("ASM_OUTPUTS\n");
    printf ("ASM_OUTPUTS %p\n",ASM_OUTPUTS(t));//tree
  }
}
void field_type_ASM_INPUTS(tree t)
{
  ENTER; if (ASM_INPUTS(t)) {
    printf ("ASM_INPUTS\n");
    printf ("ASM_INPUTS %p\n",ASM_INPUTS(t));//tree
  }
}
void field_type_ASM_CLOBBERS(tree t)
{
  ENTER; if (ASM_CLOBBERS(t)) {
    printf ("ASM_CLOBBERS\n");
    printf ("ASM_CLOBBERS %p\n",ASM_CLOBBERS(t));//tree
  }
}
void field_type_ASM_LABELS(tree t)
{
  ENTER; if (ASM_LABELS(t)) {
    printf ("ASM_LABELS\n");
    printf ("ASM_LABELS %p\n",ASM_LABELS(t));//tree
  }
}
void field_type_ASM_INPUT_P(tree t)
{
  ENTER; if (ASM_INPUT_P(t)) {
    printf ("ASM_INPUT_P\n");
    printf ("ASM_INPUT_P %d\n",ASM_INPUT_P(t));
  }
}
void field_type_ASM_VOLATILE_P(tree t)
{
  ENTER; if (ASM_VOLATILE_P(t)) {
    printf ("ASM_VOLATILE_P\n");
    printf ("ASM_VOLATILE_P %d\n",ASM_VOLATILE_P(t));
  }
}
void field_type_COND_EXPR_COND(tree t)
{
  ENTER; if (COND_EXPR_COND(t)) {
    printf ("COND_EXPR_COND\n");
    printf ("COND_EXPR_COND %p\n",COND_EXPR_COND(t));//tree
  }
}
void field_type_COND_EXPR_THEN(tree t)
{
  ENTER; if (COND_EXPR_THEN(t)) {
    printf ("COND_EXPR_THEN\n");
    printf ("COND_EXPR_THEN %p\n",COND_EXPR_THEN(t));//tree
  }
}
void field_type_COND_EXPR_ELSE(tree t)
{
  ENTER; if (COND_EXPR_ELSE(t)) {
    printf ("COND_EXPR_ELSE\n");
    printf ("COND_EXPR_ELSE %p\n",COND_EXPR_ELSE(t));//tree
  }
}
void field_type_CHREC_VAR(tree t)
{
  ENTER; if (CHREC_VAR(t)) {
    printf ("CHREC_VAR\n");
    printf ("CHREC_VAR %p\n",CHREC_VAR(t));//tree
  }
}
void field_type_CHREC_LEFT(tree t)
{
  ENTER; if (CHREC_LEFT(t)) {
    printf ("CHREC_LEFT\n");
    printf ("CHREC_LEFT %p\n",CHREC_LEFT(t));//tree
  }
}
void field_type_CHREC_RIGHT(tree t)
{
  ENTER; if (CHREC_RIGHT(t)) {
    printf ("CHREC_RIGHT\n");
    printf ("CHREC_RIGHT %p\n",CHREC_RIGHT(t));//tree
  }
}
void field_type_CHREC_VARIABLE(tree t)
{
  ENTER; if (CHREC_VARIABLE(t)) {
    printf ("CHREC_VARIABLE\n");
    printf ("CHREC_VARIABLE %lu\n",CHREC_VARIABLE(t));
  }
}
void field_type_LABEL_EXPR_LABEL(tree t)
{
  ENTER; if (LABEL_EXPR_LABEL(t)) {
    printf ("LABEL_EXPR_LABEL\n");
    printf ("LABEL_EXPR_LABEL %p\n",LABEL_EXPR_LABEL(t));//tree
  }
}
void field_type_CATCH_TYPES(tree t)
{
  ENTER; if (CATCH_TYPES(t)) {
    printf ("CATCH_TYPES\n");
    printf ("CATCH_TYPES %p\n",CATCH_TYPES(t));//tree
  }
}
void field_type_CATCH_BODY(tree t)
{
  ENTER; if (CATCH_BODY(t)) {
    printf ("CATCH_BODY\n");
    printf ("CATCH_BODY %p\n",CATCH_BODY(t));//tree
  }
}
void field_type_EH_FILTER_TYPES(tree t)
{
  ENTER; if (EH_FILTER_TYPES(t)) {
    printf ("EH_FILTER_TYPES\n");
    printf ("EH_FILTER_TYPES %p\n",EH_FILTER_TYPES(t));//tree
  }
}
void field_type_EH_FILTER_FAILURE(tree t)
{
  ENTER; if (EH_FILTER_FAILURE(t)) {
    printf ("EH_FILTER_FAILURE\n");
    printf ("EH_FILTER_FAILURE %p\n",EH_FILTER_FAILURE(t));//tree
  }
}
void field_type_OBJ_TYPE_REF_EXPR(tree t)
{
  ENTER; if (OBJ_TYPE_REF_EXPR(t)) {
    printf ("OBJ_TYPE_REF_EXPR\n");
    printf ("OBJ_TYPE_REF_EXPR %p\n",OBJ_TYPE_REF_EXPR(t));//tree
  }
}
void field_type_OBJ_TYPE_REF_OBJECT(tree t)
{
  ENTER; if (OBJ_TYPE_REF_OBJECT(t)) {
    printf ("OBJ_TYPE_REF_OBJECT\n");
    printf ("OBJ_TYPE_REF_OBJECT %p\n",OBJ_TYPE_REF_OBJECT(t));//tree
  }
}
void field_type_OBJ_TYPE_REF_TOKEN(tree t)
{
  ENTER; if (OBJ_TYPE_REF_TOKEN(t)) {
    printf ("OBJ_TYPE_REF_TOKEN\n");
    printf ("OBJ_TYPE_REF_TOKEN %p\n",OBJ_TYPE_REF_TOKEN(t));//tree
  }
}
void field_type_ASSERT_EXPR_VAR(tree t)
{
  ENTER; if (ASSERT_EXPR_VAR(t)) {
    printf ("ASSERT_EXPR_VAR\n");
    printf ("ASSERT_EXPR_VAR %p\n",ASSERT_EXPR_VAR(t));//tree
  }
}
void field_type_ASSERT_EXPR_COND(tree t)
{
  ENTER; if (ASSERT_EXPR_COND(t)) {
    printf ("ASSERT_EXPR_COND\n");
    printf ("ASSERT_EXPR_COND %p\n",ASSERT_EXPR_COND(t));
  }
}
void field_type_CALL_EXPR_FN(tree t)
{
  ENTER; if (CALL_EXPR_FN(t)) {
    printf ("CALL_EXPR_FN\n");
    printf ("CALL_EXPR_FN %p\n",CALL_EXPR_FN(t));//tree
  }
}
void field_type_CALL_EXPR_STATIC_CHAIN(tree t)
{
  ENTER; if (CALL_EXPR_STATIC_CHAIN(t)) {
    printf ("CALL_EXPR_STATIC_CHAIN\n");
    printf ("CALL_EXPR_STATIC_CHAIN %p\n",CALL_EXPR_STATIC_CHAIN(t));
  }
}
void field_type_CALL_EXPR_ARGS(tree t)
{
  ENTER; if (CALL_EXPR_ARGS(t)) {
    printf ("CALL_EXPR_ARGS\n");
    printf ("CALL_EXPR_ARGS %p\n",CALL_EXPR_ARGS(t));
  }
}
void field_type_call_expr_nargs(tree t)
{
  ENTER; if (call_expr_nargs(t)) {
    printf ("call_expr_nargs\n");
    printf ("call_expr_nargs %d\n",call_expr_nargs(t));
  }
}
void field_type_CALL_EXPR_ARGP(tree t)
{
  ENTER; if (CALL_EXPR_ARGP(t)) {
    printf ("CALL_EXPR_ARGP\n");
    printf ("CALL_EXPR_ARGP %p\n",CALL_EXPR_ARGP(t));//union tree_node **
  }
}
void field_type_OMP_BODY(tree t)
{
  ENTER; if (OMP_BODY(t)) {
    printf ("OMP_BODY\n");
    printf ("OMP_BODY %p\n",OMP_BODY(t));
  }
}
void field_type_OMP_CLAUSES(tree t)
{
  ENTER; if (OMP_CLAUSES(t)) {
    printf ("OMP_CLAUSES\n");
    printf ("OMP_CLAUSES %p\n",OMP_CLAUSES(t));
  }
}
void field_type_OMP_PARALLEL_BODY(tree t)
{
  ENTER; if (OMP_PARALLEL_BODY(t)) {
    printf ("OMP_PARALLEL_BODY\n");
    printf ("OMP_PARALLEL_BODY %p\n",OMP_PARALLEL_BODY(t));
  }
}
void field_type_OMP_PARALLEL_CLAUSES(tree t)
{
  ENTER; if (OMP_PARALLEL_CLAUSES(t)) {
    printf ("OMP_PARALLEL_CLAUSES\n");
    printf ("OMP_PARALLEL_CLAUSES %p\n",OMP_PARALLEL_CLAUSES(t));
  }
}
void field_type_OMP_TASK_BODY(tree t)
{
  ENTER; if (OMP_TASK_BODY(t)) {
    printf ("OMP_TASK_BODY\n");
    printf ("OMP_TASK_BODY %p\n",OMP_TASK_BODY(t));
  }
}
void field_type_OMP_TASK_CLAUSES(tree t)
{
  ENTER; if (OMP_TASK_CLAUSES(t)) {
    printf ("OMP_TASK_CLAUSES\n");
    printf ("OMP_TASK_CLAUSES %p\n",OMP_TASK_CLAUSES(t));
  }
}
void field_type_OMP_TASKREG_CHECK(tree t)
{
  ENTER; if (OMP_TASKREG_CHECK(t)) {
    printf ("OMP_TASKREG_CHECK\n");
    printf ("OMP_TASKREG_CHECK %p\n",OMP_TASKREG_CHECK(t));
  }
}
void field_type_OMP_TASKREG_BODY(tree t)
{
  ENTER; if (OMP_TASKREG_BODY(t)) {
    printf ("OMP_TASKREG_BODY\n");
    printf ("OMP_TASKREG_BODY %p\n",OMP_TASKREG_BODY(t));
  }
}
void field_type_OMP_TASKREG_CLAUSES(tree t)
{
  ENTER; if (OMP_TASKREG_CLAUSES(t)) {
    printf ("OMP_TASKREG_CLAUSES\n");
    printf ("OMP_TASKREG_CLAUSES %p\n",OMP_TASKREG_CLAUSES(t));
  }
}
void field_type_OMP_FOR_BODY(tree t)
{
  ENTER; if (OMP_FOR_BODY(t)) {
    printf ("OMP_FOR_BODY\n");
    printf ("OMP_FOR_BODY %p\n",OMP_FOR_BODY(t));
  }
}
void field_type_OMP_FOR_CLAUSES(tree t)
{
  ENTER; if (OMP_FOR_CLAUSES(t)) {
    printf ("OMP_FOR_CLAUSES\n");
    printf ("OMP_FOR_CLAUSES %p\n",OMP_FOR_CLAUSES(t));
  }
}
void field_type_OMP_FOR_INIT(tree t)
{
  ENTER; if (OMP_FOR_INIT(t)) {
    printf ("OMP_FOR_INIT\n");
    printf ("OMP_FOR_INIT %p\n",OMP_FOR_INIT(t));
  }
}
void field_type_OMP_FOR_COND(tree t)
{
  ENTER; if (OMP_FOR_COND(t)) {
    printf ("OMP_FOR_COND\n");
    printf ("OMP_FOR_COND %p\n",OMP_FOR_COND(t));
  }
}
void field_type_OMP_FOR_INCR(tree t)
{
  ENTER; if (OMP_FOR_INCR(t)) {
    printf ("OMP_FOR_INCR\n");
    printf ("OMP_FOR_INCR %p\n",OMP_FOR_INCR(t));
  }
}
void field_type_OMP_FOR_PRE_BODY(tree t)
{
  ENTER; if (OMP_FOR_PRE_BODY(t)) {
    printf ("OMP_FOR_PRE_BODY\n");
    printf ("OMP_FOR_PRE_BODY %p\n",OMP_FOR_PRE_BODY(t));
  }
}
void field_type_OMP_SECTIONS_BODY(tree t)
{
  ENTER; if (OMP_SECTIONS_BODY(t)) {
    printf ("OMP_SECTIONS_BODY\n");
    printf ("OMP_SECTIONS_BODY %p\n",OMP_SECTIONS_BODY(t));
  }
}
void field_type_OMP_SECTIONS_CLAUSES(tree t)
{
  ENTER; if (OMP_SECTIONS_CLAUSES(t)) {
    printf ("OMP_SECTIONS_CLAUSES\n");
    printf ("OMP_SECTIONS_CLAUSES %p\n",OMP_SECTIONS_CLAUSES(t));
  }
}
void field_type_OMP_SECTION_BODY(tree t)
{
  ENTER; if (OMP_SECTION_BODY(t)) {
    printf ("OMP_SECTION_BODY\n");
    printf ("OMP_SECTION_BODY %p\n",OMP_SECTION_BODY(t));
  }
}
void field_type_OMP_SINGLE_BODY(tree t)
{
  ENTER; if (OMP_SINGLE_BODY(t)) {
    printf ("OMP_SINGLE_BODY\n");
    printf ("OMP_SINGLE_BODY %p\n",OMP_SINGLE_BODY(t));
  }
}
void field_type_OMP_SINGLE_CLAUSES(tree t)
{
  ENTER; if (OMP_SINGLE_CLAUSES(t)) {
    printf ("OMP_SINGLE_CLAUSES\n");
    printf ("OMP_SINGLE_CLAUSES %p\n",OMP_SINGLE_CLAUSES(t));
  }
}
void field_type_OMP_MASTER_BODY(tree t)
{
  ENTER; if (OMP_MASTER_BODY(t)) {
    printf ("OMP_MASTER_BODY\n");
    printf ("OMP_MASTER_BODY %p\n",OMP_MASTER_BODY(t));
  }
}
void field_type_OMP_ORDERED_BODY(tree t)
{
  ENTER; if (OMP_ORDERED_BODY(t)) {
    printf ("OMP_ORDERED_BODY\n");
    printf ("OMP_ORDERED_BODY %p\n",OMP_ORDERED_BODY(t));
  }
}
void field_type_OMP_CRITICAL_BODY(tree t)
{
  ENTER; if (OMP_CRITICAL_BODY(t)) {
    printf ("OMP_CRITICAL_BODY\n");
    printf ("OMP_CRITICAL_BODY %p\n",OMP_CRITICAL_BODY(t));
  }
}
void field_type_OMP_CRITICAL_NAME(tree t)
{
  ENTER; if (OMP_CRITICAL_NAME(t)) {
    printf ("OMP_CRITICAL_NAME\n");
    printf ("OMP_CRITICAL_NAME %p\n",OMP_CRITICAL_NAME(t));
  }
}
void field_type_OMP_CLAUSE_CHAIN(tree t)
{
  ENTER; if (OMP_CLAUSE_CHAIN(t)) {
    printf ("OMP_CLAUSE_CHAIN\n");
    printf ("OMP_CLAUSE_CHAIN %p\n",OMP_CLAUSE_CHAIN(t));
  }
}
void field_type_OMP_CLAUSE_DECL(tree t)
{
  ENTER; if (OMP_CLAUSE_DECL(t)) {
    printf ("OMP_CLAUSE_DECL\n");
    printf ("OMP_CLAUSE_DECL %p\n",OMP_CLAUSE_DECL(t));
  }
}
void field_type_OMP_CLAUSE_HAS_LOCATION(tree t)
{
  ENTER; if (OMP_CLAUSE_HAS_LOCATION(t)) {
    printf ("OMP_CLAUSE_HAS_LOCATION\n");
    printf ("OMP_CLAUSE_HAS_LOCATION %d\n",OMP_CLAUSE_HAS_LOCATION(t));
  }
}
void field_type_OMP_CLAUSE_LOCATION(tree t)
{
  ENTER; if (OMP_CLAUSE_LOCATION(t)) {
    printf ("OMP_CLAUSE_LOCATION\n");
    printf ("OMP_CLAUSE_LOCATION %d\n",OMP_CLAUSE_LOCATION(t));
  }
}
void field_type_OMP_SECTION_LAST(tree t)
{
  ENTER; if (OMP_SECTION_LAST(t)) {
    printf ("OMP_SECTION_LAST\n");
    printf ("OMP_SECTION_LAST %d\n",OMP_SECTION_LAST(t));
  }
}
void field_type_OMP_PARALLEL_COMBINED(tree t)
{
  ENTER; if (OMP_PARALLEL_COMBINED(t)) {
    printf ("OMP_PARALLEL_COMBINED\n");
    printf ("OMP_PARALLEL_COMBINED %d\n",OMP_PARALLEL_COMBINED(t));
  }
}
void field_type_OMP_CLAUSE_PRIVATE_DEBUG(tree t)
{
  ENTER; if (OMP_CLAUSE_PRIVATE_DEBUG(t)) {
    printf ("OMP_CLAUSE_PRIVATE_DEBUG\n");
    printf ("OMP_CLAUSE_PRIVATE_DEBUG %d\n",OMP_CLAUSE_PRIVATE_DEBUG(t));
  }
}
void field_type_OMP_CLAUSE_PRIVATE_OUTER_REF(tree t)
{
  ENTER; if (OMP_CLAUSE_PRIVATE_OUTER_REF(t)) {
    printf ("OMP_CLAUSE_PRIVATE_OUTER_REF\n");
    printf ("OMP_CLAUSE_PRIVATE_OUTER_REF %d\n",OMP_CLAUSE_PRIVATE_OUTER_REF(t));
  }
}
void field_type_OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE(tree t)
{
  ENTER; if (OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE(t)) {
    printf ("OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE\n");
    printf ("OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE %d\n",OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE(t));
  }
}
void field_type_OMP_CLAUSE_LASTPRIVATE_STMT(tree t)
{
  ENTER; if (OMP_CLAUSE_LASTPRIVATE_STMT(t)) {
    printf ("OMP_CLAUSE_LASTPRIVATE_STMT\n");
    printf ("OMP_CLAUSE_LASTPRIVATE_STMT %p\n",OMP_CLAUSE_LASTPRIVATE_STMT(t));
  }
}
void field_type_OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ(tree t)
{
  ENTER; if (OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ(t)) {
    printf ("OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ\n");
    //printf ("OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ %d\n",OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ(t));
  }//gimple_seq
}
void field_type_OMP_CLAUSE_IF_EXPR(tree t)
{
  ENTER; if (OMP_CLAUSE_IF_EXPR(t)) {
    printf ("OMP_CLAUSE_IF_EXPR\n");
    printf ("OMP_CLAUSE_IF_EXPR %p\n",OMP_CLAUSE_IF_EXPR(t));
  }
}
void field_type_OMP_CLAUSE_NUM_THREADS_EXPR(tree t)
{
  ENTER; if (OMP_CLAUSE_NUM_THREADS_EXPR(t)) {
    printf ("OMP_CLAUSE_NUM_THREADS_EXPR\n");
    printf ("OMP_CLAUSE_NUM_THREADS_EXPR %p\n",OMP_CLAUSE_NUM_THREADS_EXPR(t));
  }
}
void field_type_OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(tree t)
{
  ENTER; if (OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(t)) {
    printf ("OMP_CLAUSE_SCHEDULE_CHUNK_EXPR\n");
    printf ("OMP_CLAUSE_SCHEDULE_CHUNK_EXPR %p\n",OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(t));
  }
}
void field_type_OMP_CLAUSE_COLLAPSE_EXPR(tree t)
{
  ENTER; if (OMP_CLAUSE_COLLAPSE_EXPR(t)) {
    printf ("OMP_CLAUSE_COLLAPSE_EXPR\n");
    printf ("OMP_CLAUSE_COLLAPSE_EXPR %p\n",OMP_CLAUSE_COLLAPSE_EXPR(t));
  }
}
void field_type_OMP_CLAUSE_COLLAPSE_ITERVAR(tree t)
{
  ENTER; if (OMP_CLAUSE_COLLAPSE_ITERVAR(t)) {
    printf ("OMP_CLAUSE_COLLAPSE_ITERVAR\n");
    printf ("OMP_CLAUSE_COLLAPSE_ITERVAR %p\n",OMP_CLAUSE_COLLAPSE_ITERVAR(t));
  }
}
void field_type_OMP_CLAUSE_COLLAPSE_COUNT(tree t)
{
  ENTER; if (OMP_CLAUSE_COLLAPSE_COUNT(t)) {
    printf ("OMP_CLAUSE_COLLAPSE_COUNT\n");
    printf ("OMP_CLAUSE_COLLAPSE_COUNT %p\n",OMP_CLAUSE_COLLAPSE_COUNT(t));
  }
}
void field_type_OMP_CLAUSE_REDUCTION_CODE(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_CODE(t)) {
    printf ("OMP_CLAUSE_REDUCTION_CODE\n");
    printf ("OMP_CLAUSE_REDUCTION_CODE %d\n",OMP_CLAUSE_REDUCTION_CODE(t));
  }
}
void field_type_OMP_CLAUSE_REDUCTION_INIT(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_INIT(t)) {
    printf ("OMP_CLAUSE_REDUCTION_INIT\n");
    printf ("OMP_CLAUSE_REDUCTION_INIT %p\n",OMP_CLAUSE_REDUCTION_INIT(t));
  }
}
void field_type_OMP_CLAUSE_REDUCTION_MERGE(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_MERGE(t)) {
    printf ("OMP_CLAUSE_REDUCTION_MERGE\n");
    printf ("OMP_CLAUSE_REDUCTION_MERGE %p\n",OMP_CLAUSE_REDUCTION_MERGE(t));
  }
}
void field_type_OMP_CLAUSE_REDUCTION_GIMPLE_INIT(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_GIMPLE_INIT(t)) {
    printf ("OMP_CLAUSE_REDUCTION_GIMPLE_INIT\n");
    //gimple_seq printf ("OMP_CLAUSE_REDUCTION_GIMPLE_INIT %d\n",OMP_CLAUSE_REDUCTION_GIMPLE_INIT(t));
  }
}
void field_type_OMP_CLAUSE_REDUCTION_GIMPLE_MERGE(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_GIMPLE_MERGE(t)) {
    printf ("OMP_CLAUSE_REDUCTION_GIMPLE_MERGE\n");
    //gimple_seq         printf ("OMP_CLAUSE_REDUCTION_GIMPLE_MERGE %d\n",OMP_CLAUSE_REDUCTION_GIMPLE_MERGE(t));
  }
}
void field_type_OMP_CLAUSE_REDUCTION_PLACEHOLDER(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_PLACEHOLDER(t)) {
    printf ("OMP_CLAUSE_REDUCTION_PLACEHOLDER\n");
    printf ("OMP_CLAUSE_REDUCTION_PLACEHOLDER %p\n",OMP_CLAUSE_REDUCTION_PLACEHOLDER(t));
  }
}
void field_type_OMP_CLAUSE_SCHEDULE_KIND(tree t)
{
  ENTER; if (OMP_CLAUSE_SCHEDULE_KIND(t)) {
    printf ("OMP_CLAUSE_SCHEDULE_KIND\n");
    printf ("OMP_CLAUSE_SCHEDULE_KIND %d\n",OMP_CLAUSE_SCHEDULE_KIND(t));
  }
}
void field_type_OMP_CLAUSE_DEFAULT_KIND(tree t)
{
  ENTER; if (OMP_CLAUSE_DEFAULT_KIND(t)) {
    printf ("OMP_CLAUSE_DEFAULT_KIND\n");
    printf ("OMP_CLAUSE_DEFAULT_KIND %d\n",OMP_CLAUSE_DEFAULT_KIND(t));
  }
}
void field_type_SSA_NAME_VAR(tree t)
{
  ENTER; if (SSA_NAME_VAR(t)) {
    printf ("SSA_NAME_VAR\n");
    printf ("SSA_NAME_VAR %p\n",SSA_NAME_VAR(t));
  }
}
void field_type_SSA_NAME_DEF_STMT(tree t)
{
  ENTER; if (SSA_NAME_DEF_STMT(t)) {
    printf ("SSA_NAME_DEF_STMT\n");
    //gimple        printf ("SSA_NAME_DEF_STMT %d\n",SSA_NAME_DEF_STMT(t));
  }
}
void field_type_SSA_NAME_VERSION(tree t)
{
  ENTER; if (SSA_NAME_VERSION(t)) {
    printf ("SSA_NAME_VERSION\n");
    printf ("SSA_NAME_VERSION %d\n",SSA_NAME_VERSION(t));
  }
}
void field_type_SSA_NAME_OCCURS_IN_ABNORMAL_PHI(tree t)
{
  ENTER; if (SSA_NAME_OCCURS_IN_ABNORMAL_PHI(t)) {
    printf ("SSA_NAME_OCCURS_IN_ABNORMAL_PHI\n");
    printf ("SSA_NAME_OCCURS_IN_ABNORMAL_PHI %d\n",SSA_NAME_OCCURS_IN_ABNORMAL_PHI(t));
  }
}
void field_type_SSA_NAME_IN_FREE_LIST(tree t)
{
  ENTER; if (SSA_NAME_IN_FREE_LIST(t)) {
    printf ("SSA_NAME_IN_FREE_LIST\n");
    printf ("SSA_NAME_IN_FREE_LIST %d\n",SSA_NAME_IN_FREE_LIST(t));
  }
}
void field_type_SSA_NAME_IS_DEFAULT_DEF(tree t)
{
  ENTER; if (SSA_NAME_IS_DEFAULT_DEF(t)) {
    printf ("SSA_NAME_IS_DEFAULT_DEF\n");
    printf ("SSA_NAME_IS_DEFAULT_DEF %d\n",SSA_NAME_IS_DEFAULT_DEF(t));
  }
}
void field_type_SSA_NAME_IMM_USE_NODE(tree t)
{
  /*       if (SSA_NAME_IMM_USE_NODE(t)) {
	   printf ("SSA_NAME_IMM_USE_NODE\n");
	   printf ("SSA_NAME_IMM_USE_NODE %d\n",SSA_NAME_IMM_USE_NODE(t));
	   }
  */
}
void field_type_OMP_CLAUSE_CODE(tree t)
{
  ENTER; if (OMP_CLAUSE_CODE(t)) {
    printf ("OMP_CLAUSE_CODE\n");
    printf ("OMP_CLAUSE_CODE %d\n",OMP_CLAUSE_CODE(t));
  }
}

void field_type_BLOCK_VARS(tree t)
{
  ENTER; if (BLOCK_VARS(t)) {
    printf ("BLOCK_VARS\n");
    printf ("BLOCK_VARS %p\n",BLOCK_VARS(t));
  }
}
void field_type_BLOCK_NONLOCALIZED_VARS(tree t)
{
  ENTER; if (BLOCK_NONLOCALIZED_VARS(t)) {
    printf ("BLOCK_NONLOCALIZED_VARS\n");
    //printf ("BLOCK_NONLOCALIZED_VARS %d\n",BLOCK_NONLOCALIZED_VARS(t));
    //struct VEC_tree_gc *
  }
}
void field_type_BLOCK_NUM_NONLOCALIZED_VARS(tree t)
{
  ENTER; if (BLOCK_NUM_NONLOCALIZED_VARS(t)) {
    printf ("BLOCK_NUM_NONLOCALIZED_VARS\n");
    printf ("BLOCK_NUM_NONLOCALIZED_VARS %d\n",BLOCK_NUM_NONLOCALIZED_VARS(t));
  }
}
void field_type_BLOCK_SUBBLOCKS(tree t)
{
  ENTER; if (BLOCK_SUBBLOCKS(t)) {
    printf ("BLOCK_SUBBLOCKS\n");
    printf ("BLOCK_SUBBLOCKS %p\n",BLOCK_SUBBLOCKS(t));
  }
}
void field_type_BLOCK_SUPERCONTEXT(tree t)
{
  ENTER; if (BLOCK_SUPERCONTEXT(t)) {
    printf ("BLOCK_SUPERCONTEXT\n");
    printf ("BLOCK_SUPERCONTEXT %p\n",BLOCK_SUPERCONTEXT(t));
  }
}
void field_type_BLOCK_CHAIN(tree t)
{
  ENTER; if (BLOCK_CHAIN(t)) {
    printf ("BLOCK_CHAIN\n");
    printf ("BLOCK_CHAIN %p\n",BLOCK_CHAIN(t));
  }
}
void field_type_BLOCK_ABSTRACT_ORIGIN(tree t)
{
  ENTER; if (BLOCK_ABSTRACT_ORIGIN(t)) {
    printf ("BLOCK_ABSTRACT_ORIGIN\n");
    printf ("BLOCK_ABSTRACT_ORIGIN %p\n",BLOCK_ABSTRACT_ORIGIN(t));
  }
}
void field_type_BLOCK_ABSTRACT(tree t)
{
  ENTER; if (BLOCK_ABSTRACT(t)) {
    printf ("BLOCK_ABSTRACT\n");
    printf ("BLOCK_ABSTRACT %d\n",BLOCK_ABSTRACT(t));
  }
}
void field_type_BLOCK_NUMBER(tree t)
{
  ENTER; if (BLOCK_NUMBER(t)) {
    printf ("BLOCK_NUMBER\n");
    printf ("BLOCK_NUMBER %d\n",BLOCK_NUMBER(t));
  }
}
void field_type_BLOCK_FRAGMENT_ORIGIN(tree t)
{
  ENTER; if (BLOCK_FRAGMENT_ORIGIN(t)) {
    printf ("BLOCK_FRAGMENT_ORIGIN\n");
    printf ("BLOCK_FRAGMENT_ORIGIN %p\n",BLOCK_FRAGMENT_ORIGIN(t));
  }
}
void field_type_BLOCK_FRAGMENT_CHAIN(tree t)
{
  ENTER; if (BLOCK_FRAGMENT_CHAIN(t)) {
    printf ("BLOCK_FRAGMENT_CHAIN\n");
    printf ("BLOCK_FRAGMENT_CHAIN %p\n",BLOCK_FRAGMENT_CHAIN(t));
  }
}
void field_type_BLOCK_SOURCE_LOCATION(tree t)
{
  ENTER; if (BLOCK_SOURCE_LOCATION(t)) {
    printf ("BLOCK_SOURCE_LOCATION\n");
    printf ("BLOCK_SOURCE_LOCATION %d\n",BLOCK_SOURCE_LOCATION(t));
  }
}
void field_type_TYPE_UID(tree t)
{
  ENTER; if (TYPE_UID(t)) {
    printf ("TYPE_UID\n");
    printf ("TYPE_UID %d\n",TYPE_UID(t));
  }
}
void field_type_TYPE_SIZE(tree t)
{
  ENTER; if (TYPE_SIZE(t)) {
    printf ("TYPE_SIZE\n");
    printf ("TYPE_SIZE %p\n",TYPE_SIZE(t));
  }
}
void field_type_TYPE_SIZE_UNIT(tree t)
{
  ENTER; if (TYPE_SIZE_UNIT(t)) {
    printf ("TYPE_SIZE_UNIT\n");
    printf ("TYPE_SIZE_UNIT %p\n",TYPE_SIZE_UNIT(t));
  }
}
void field_type_TYPE_VALUES(tree t)
{
  ENTER; if (TYPE_VALUES(t)) {
    printf ("TYPE_VALUES\n");
    printf ("TYPE_VALUES %p\n",TYPE_VALUES(t));
  }
}
void field_type_TYPE_DOMAIN(tree t)
{
  ENTER; if (TYPE_DOMAIN(t)) {
    printf ("TYPE_DOMAIN\n");
    printf ("TYPE_DOMAIN %p\n",TYPE_DOMAIN(t));
  }
}
void field_type_TYPE_FIELDS(tree t)
{
  ENTER; if (TYPE_FIELDS(t)) {
    printf ("TYPE_FIELDS\n");
    printf ("TYPE_FIELDS %p\n",TYPE_FIELDS(t));
  }
}
void field_type_TYPE_CACHED_VALUES(tree t)
{
  ENTER; if (TYPE_CACHED_VALUES(t)) {
    printf ("TYPE_CACHED_VALUES\n");
    printf ("TYPE_CACHED_VALUES %p\n",TYPE_CACHED_VALUES(t));
  }
}
void field_type_TYPE_ORIG_SIZE_TYPE(tree t)
{
  ENTER; if (TYPE_ORIG_SIZE_TYPE(t)) {
    printf ("TYPE_ORIG_SIZE_TYPE\n");
    //printf ("TYPE_ORIG_SIZE_TYPE %d\n",TYPE_ORIG_SIZE_TYPE(t));
    //union tree_node *
  }
}
void field_type_TYPE_METHODS(tree t)
{
  ENTER; if (TYPE_METHODS(t)) {
    printf ("TYPE_METHODS\n");
    printf ("TYPE_METHODS %p\n",TYPE_METHODS(t));
  }
}
void field_type_TYPE_VFIELD(tree t)
{
  ENTER; if (TYPE_VFIELD(t)) {
    printf ("TYPE_VFIELD\n");
    printf ("TYPE_VFIELD %p\n",TYPE_VFIELD(t));
  }
}
void field_type_TYPE_ARG_TYPES(tree t)
{
  ENTER; if (TYPE_ARG_TYPES(t)) {
    printf ("TYPE_ARG_TYPES\n");
    printf ("TYPE_ARG_TYPES %p\n",TYPE_ARG_TYPES(t));
  }
}
void field_type_TYPE_METHOD_BASETYPE(tree t)
{
  ENTER; if (TYPE_METHOD_BASETYPE(t)) {
    printf ("TYPE_METHOD_BASETYPE\n");
    printf ("TYPE_METHOD_BASETYPE %p\n",TYPE_METHOD_BASETYPE(t));
  }
}
void field_type_TYPE_OFFSET_BASETYPE(tree t)
{
  ENTER; if (TYPE_OFFSET_BASETYPE(t)) {
    printf ("TYPE_OFFSET_BASETYPE\n");
    printf ("TYPE_OFFSET_BASETYPE %p\n",TYPE_OFFSET_BASETYPE(t));
  }
}
void field_type_TYPE_POINTER_TO(tree t)
{
  ENTER; if (TYPE_POINTER_TO(t)) {
    printf ("TYPE_POINTER_TO\n");
    printf ("TYPE_POINTER_TO %p\n",TYPE_POINTER_TO(t));
  }
}
void field_type_TYPE_REFERENCE_TO(tree t)
{
  ENTER; if (TYPE_REFERENCE_TO(t)) {
    printf ("TYPE_REFERENCE_TO\n");
    printf ("TYPE_REFERENCE_TO %p\n",TYPE_REFERENCE_TO(t));
  }
}
void field_type_TYPE_NEXT_PTR_TO(tree t)
{
  ENTER; if (TYPE_NEXT_PTR_TO(t)) {
    printf ("TYPE_NEXT_PTR_TO\n");
    printf ("TYPE_NEXT_PTR_TO %p\n",TYPE_NEXT_PTR_TO(t));
  }
}
void field_type_TYPE_NEXT_REF_TO(tree t)
{
  ENTER; if (TYPE_NEXT_REF_TO(t)) {
    printf ("TYPE_NEXT_REF_TO\n");
    printf ("TYPE_NEXT_REF_TO %p\n",TYPE_NEXT_REF_TO(t));
  }
}
void field_type_TYPE_MIN_VALUE(tree t)
{
  ENTER; if (TYPE_MIN_VALUE(t)) {
    printf ("TYPE_MIN_VALUE\n");
    printf ("TYPE_MIN_VALUE %p\n",TYPE_MIN_VALUE(t));
  }
}
void field_type_TYPE_MAX_VALUE(tree t)
{
  ENTER; if (TYPE_MAX_VALUE(t)) {
    printf ("TYPE_MAX_VALUE\n");
    printf ("TYPE_MAX_VALUE %p\n",TYPE_MAX_VALUE(t));
  }
}
void field_type_TYPE_PRECISION(tree t)
{
  ENTER; if (TYPE_PRECISION(t)) {
    printf ("TYPE_PRECISION\n");
    printf ("TYPE_PRECISION %d\n",TYPE_PRECISION(t));
  }
}
void field_type_TYPE_SYMTAB_ADDRESS(tree t)
{
  ENTER; if (TYPE_SYMTAB_ADDRESS(t)) {
    printf ("TYPE_SYMTAB_ADDRESS\n");
    printf ("TYPE_SYMTAB_ADDRESS %d\n",TYPE_SYMTAB_ADDRESS(t));
  }
}
void field_type_TYPE_SYMTAB_POINTER(tree t)
{
  ENTER; if (TYPE_SYMTAB_POINTER(t)) {
    printf ("TYPE_SYMTAB_POINTER\n");
    printf ("TYPE_SYMTAB_POINTER %s\n",TYPE_SYMTAB_POINTER(t));
  }
}
void field_type_TYPE_SYMTAB_DIE(tree t)
{
  ENTER; if (TYPE_SYMTAB_DIE(t)) {
    printf ("TYPE_SYMTAB_DIE\n");
    //printf ("TYPE_SYMTAB_DIE %d\n",TYPE_SYMTAB_DIE(t));
    //struct die_struct *
  }
}
void field_type_TYPE_NAME(tree t)
{
  ENTER; if (TYPE_NAME(t)) {
    printf ("TYPE_NAME\n");
    printf ("TYPE_NAME %p\n",TYPE_NAME(t));
  }
}
void field_type_TYPE_NEXT_VARIANT(tree t)
{
  ENTER; if (TYPE_NEXT_VARIANT(t)) {
    printf ("TYPE_NEXT_VARIANT\n");
    printf ("TYPE_NEXT_VARIANT %p\n",TYPE_NEXT_VARIANT(t));
  }
}
void field_type_TYPE_MAIN_VARIANT(tree t)
{
  ENTER; if (TYPE_MAIN_VARIANT(t)) {
    printf ("TYPE_MAIN_VARIANT\n");
    printf ("TYPE_MAIN_VARIANT %p\n",TYPE_MAIN_VARIANT(t));
  }
}
void field_type_TYPE_CONTEXT(tree t)
{
  ENTER; if (TYPE_CONTEXT(t)) {
    printf ("TYPE_CONTEXT\n");
    printf ("TYPE_CONTEXT %p\n",TYPE_CONTEXT(t));
  }
}
void field_type_TYPE_MAXVAL(tree t)
{
  ENTER; if (TYPE_MAXVAL(t)) {
    printf ("TYPE_MAXVAL\n");
    printf ("TYPE_MAXVAL %p\n",TYPE_MAXVAL(t));
  }
}
void field_type_TYPE_MINVAL(tree t)
{
  ENTER; if (TYPE_MINVAL(t)) {
    printf ("TYPE_MINVAL\n");
    printf ("TYPE_MINVAL %p\n",TYPE_MINVAL(t));
  }
}
void field_type_TYPE_MODE(tree t)
{
  ENTER; if (TYPE_MODE(t)) {
    printf ("TYPE_MODE\n");
    printf ("TYPE_MODE %d\n",TYPE_MODE(t));
  }
}
void field_type_TYPE_CANONICAL(tree t)
{
  ENTER; if (TYPE_CANONICAL(t)) {
    printf ("TYPE_CANONICAL\n");
    printf ("TYPE_CANONICAL %p\n",TYPE_CANONICAL(t));
  }
}
void field_type_TYPE_STRUCTURAL_EQUALITY_P(tree t)
{
  ENTER; if (TYPE_STRUCTURAL_EQUALITY_P(t)) {
    printf ("TYPE_STRUCTURAL_EQUALITY_P\n");
    printf ("TYPE_STRUCTURAL_EQUALITY_P %d\n",TYPE_STRUCTURAL_EQUALITY_P(t));
  }
}
void field_type_SET_TYPE_STRUCTURAL_EQUALITY(tree t)
{
  ENTER; if (SET_TYPE_STRUCTURAL_EQUALITY(t)) {
    printf ("SET_TYPE_STRUCTURAL_EQUALITY\n");
    printf ("SET_TYPE_STRUCTURAL_EQUALITY %p\n",SET_TYPE_STRUCTURAL_EQUALITY(t));
  }
}
void field_type_TYPE_LANG_SPECIFIC(tree t)
{
  ENTER; if (TYPE_LANG_SPECIFIC(t)) {
    printf ("TYPE_LANG_SPECIFIC\n");
    //printf ("TYPE_LANG_SPECIFIC %d\n",TYPE_LANG_SPECIFIC(t));
    //struct lang_type *
  }
}
void field_type_TYPE_IBIT(tree t)
{
  ENTER; if (TYPE_IBIT(t)) {
    printf ("TYPE_IBIT\n");
    printf ("TYPE_IBIT %d\n",TYPE_IBIT(t));
  }
}
void field_type_TYPE_FBIT(tree t)
{
  ENTER; if (TYPE_FBIT(t)) {
    printf ("TYPE_FBIT\n");
    printf ("TYPE_FBIT %d\n",TYPE_FBIT(t));
  }
}
void field_type_TYPE_DEBUG_REPRESENTATION_TYPE(tree t)
{
  ENTER; if (TYPE_DEBUG_REPRESENTATION_TYPE(t)) {
    printf ("TYPE_DEBUG_REPRESENTATION_TYPE\n");
    printf ("TYPE_DEBUG_REPRESENTATION_TYPE %p\n",TYPE_DEBUG_REPRESENTATION_TYPE(t));
  }
}
void field_type_TYPE_BINFO(tree t)
{
  ENTER; if (TYPE_BINFO(t)) {
    printf ("TYPE_BINFO\n");
    printf ("TYPE_BINFO %p\n",TYPE_BINFO(t));
  }
}
void field_type_TYPE_LANG_SLOT_1(tree t)
{
  ENTER; if (TYPE_LANG_SLOT_1(t)) {
    printf ("TYPE_LANG_SLOT_1\n");
    printf ("TYPE_LANG_SLOT_1 %p\n",TYPE_LANG_SLOT_1(t));
  }
}
void field_type_TYPE_ALIAS_SET(tree t)
{
  ENTER; if (TYPE_ALIAS_SET(t)) {
    printf ("TYPE_ALIAS_SET\n");
    printf ("TYPE_ALIAS_SET %d\n",TYPE_ALIAS_SET(t));
  }
}
void field_type_TYPE_ALIAS_SET_KNOWN_P(tree t)
{
  ENTER; if (TYPE_ALIAS_SET_KNOWN_P(t)) {
    printf ("TYPE_ALIAS_SET_KNOWN_P\n");
    printf ("TYPE_ALIAS_SET_KNOWN_P %d\n",TYPE_ALIAS_SET_KNOWN_P(t));
  }
}
void field_type_TYPE_ATTRIBUTES(tree t)
{
  ENTER; if (TYPE_ATTRIBUTES(t)) {
    printf ("TYPE_ATTRIBUTES\n");
    printf ("TYPE_ATTRIBUTES %p\n",TYPE_ATTRIBUTES(t));
  }
}
void field_type_TYPE_ALIGN(tree t)
{
  ENTER; if (TYPE_ALIGN(t)) {
    printf ("TYPE_ALIGN\n");
    printf ("TYPE_ALIGN %d\n",TYPE_ALIGN(t));
  }
}
void field_type_TYPE_USER_ALIGN(tree t)
{
  ENTER; if (TYPE_USER_ALIGN(t)) {
    printf ("TYPE_USER_ALIGN\n");
    printf ("TYPE_USER_ALIGN %d\n",TYPE_USER_ALIGN(t));
  }
}
void field_type_TYPE_ALIGN_UNIT(tree t)
{
  ENTER; if (TYPE_ALIGN_UNIT(t)) {
    printf ("TYPE_ALIGN_UNIT\n");
    printf ("TYPE_ALIGN_UNIT %d\n",TYPE_ALIGN_UNIT(t));
  }
}
void field_type_TYPE_STUB_DECL(tree t)
{
  ENTER; if (TYPE_STUB_DECL(t)) {
    printf ("TYPE_STUB_DECL\n");
    printf ("TYPE_STUB_DECL %p\n",TYPE_STUB_DECL(t));
  }
}
void field_type_TYPE_NO_FORCE_BLK(tree t)
{
  ENTER; if (TYPE_NO_FORCE_BLK(t)) {
    printf ("TYPE_NO_FORCE_BLK\n");
    printf ("TYPE_NO_FORCE_BLK %d\n",TYPE_NO_FORCE_BLK(t));
  }
}
void field_type_TYPE_IS_SIZETYPE(tree t)
{
  ENTER; if (TYPE_IS_SIZETYPE(t)) {
    printf ("TYPE_IS_SIZETYPE\n");
    printf ("TYPE_IS_SIZETYPE %d\n",TYPE_IS_SIZETYPE(t));
  }
}
void field_type_TYPE_VOLATILE(tree t)
{
  ENTER; if (TYPE_VOLATILE(t)) {
    printf ("TYPE_VOLATILE\n");
    printf ("TYPE_VOLATILE %d\n",TYPE_VOLATILE(t));
  }
}
void field_type_TYPE_READONLY(tree t)
{
  ENTER; if (TYPE_READONLY(t)) {
    printf ("TYPE_READONLY\n");
    printf ("TYPE_READONLY %d\n",TYPE_READONLY(t));
  }
}
void field_type_TYPE_RESTRICT(tree t)
{
  ENTER; if (TYPE_RESTRICT(t)) {
    printf ("TYPE_RESTRICT\n");
    printf ("TYPE_RESTRICT %d\n",TYPE_RESTRICT(t));
  }
}
void field_type_TYPE_ADDR_SPACE(tree t)
{
  ENTER; if (TYPE_ADDR_SPACE(t)) {
    printf ("TYPE_ADDR_SPACE\n");
    printf ("TYPE_ADDR_SPACE %d\n",TYPE_ADDR_SPACE(t));
  }
}
void field_type_TYPE_QUALS(tree t)
{
  ENTER; if (TYPE_QUALS(t)) {
    printf ("TYPE_QUALS\n");
    printf ("TYPE_QUALS %d\n",TYPE_QUALS(t));
  }
}
void field_type_TYPE_QUALS_NO_ADDR_SPACE(tree t)
{
  ENTER; if (TYPE_QUALS_NO_ADDR_SPACE(t)) {
    printf ("TYPE_QUALS_NO_ADDR_SPACE\n");
    printf ("TYPE_QUALS_NO_ADDR_SPACE %d\n",TYPE_QUALS_NO_ADDR_SPACE(t));
  }
}
void field_type_TYPE_LANG_FLAG_0(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_0(t)) {
    printf ("TYPE_LANG_FLAG_0\n");
    printf ("TYPE_LANG_FLAG_0 %d\n",TYPE_LANG_FLAG_0(t));
  }
}
void field_type_TYPE_LANG_FLAG_1(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_1(t)) {
    printf ("TYPE_LANG_FLAG_1\n");
    printf ("TYPE_LANG_FLAG_1 %d\n",TYPE_LANG_FLAG_1(t));
  }
}
void field_type_TYPE_LANG_FLAG_2(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_2(t)) {
    printf ("TYPE_LANG_FLAG_2\n");
    printf ("TYPE_LANG_FLAG_2 %d\n",TYPE_LANG_FLAG_2(t));
  }
}
void field_type_TYPE_LANG_FLAG_3(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_3(t)) {
    printf ("TYPE_LANG_FLAG_3\n");
    printf ("TYPE_LANG_FLAG_3 %d\n",TYPE_LANG_FLAG_3(t));
  }
}
void field_type_TYPE_LANG_FLAG_4(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_4(t)) {
    printf ("TYPE_LANG_FLAG_4\n");
    printf ("TYPE_LANG_FLAG_4 %d\n",TYPE_LANG_FLAG_4(t));
  }
}
void field_type_TYPE_LANG_FLAG_5(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_5(t)) {
    printf ("TYPE_LANG_FLAG_5\n");
    printf ("TYPE_LANG_FLAG_5 %d\n",TYPE_LANG_FLAG_5(t));
  }
}
void field_type_TYPE_LANG_FLAG_6(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_6(t)) {
    printf ("TYPE_LANG_FLAG_6\n");
    printf ("TYPE_LANG_FLAG_6 %d\n",TYPE_LANG_FLAG_6(t));
  }
}
void field_type_TREE_VISITED(tree t)
{
  ENTER; if (TREE_VISITED(t)) {
    printf ("TREE_VISITED\n");
    printf ("TREE_VISITED %d\n",TREE_VISITED(t));
  }
}
void field_type_TYPE_STRING_FLAG(tree t)
{
  ENTER; if (TYPE_STRING_FLAG(t)) {
    printf ("TYPE_STRING_FLAG\n");
    printf ("TYPE_STRING_FLAG %d\n",TYPE_STRING_FLAG(t));
  }
}
void field_type_TYPE_VECTOR_OPAQUE(tree t)
{
  ENTER; if (TYPE_VECTOR_OPAQUE(t)) {
    printf ("TYPE_VECTOR_OPAQUE\n");
    printf ("TYPE_VECTOR_OPAQUE %d\n",TYPE_VECTOR_OPAQUE(t));
  }
}
void field_type_TYPE_NEEDS_CONSTRUCTING(tree t)
{
  ENTER; if (TYPE_NEEDS_CONSTRUCTING(t)) {
    printf ("TYPE_NEEDS_CONSTRUCTING\n");
    printf ("TYPE_NEEDS_CONSTRUCTING %d\n",TYPE_NEEDS_CONSTRUCTING(t));
  }
}
void field_type_TYPE_TRANSPARENT_AGGR(tree t)
{
  ENTER; if (TYPE_TRANSPARENT_AGGR(t)) {
    printf ("TYPE_TRANSPARENT_AGGR\n");
    printf ("TYPE_TRANSPARENT_AGGR %d\n",TYPE_TRANSPARENT_AGGR(t));
  }
}
void field_type_TYPE_NONALIASED_COMPONENT(tree t)
{
  ENTER; if (TYPE_NONALIASED_COMPONENT(t)) {
    printf ("TYPE_NONALIASED_COMPONENT\n");
    printf ("TYPE_NONALIASED_COMPONENT %d\n",TYPE_NONALIASED_COMPONENT(t));
  }
}
void field_type_TYPE_PACKED(tree t)
{
  ENTER; if (TYPE_PACKED(t)) {
    printf ("TYPE_PACKED\n");
    printf ("TYPE_PACKED %d\n",TYPE_PACKED(t));
  }
}
void field_type_TYPE_CONTAINS_PLACEHOLDER_INTERNAL(tree t)
{
  ENTER; if (TYPE_CONTAINS_PLACEHOLDER_INTERNAL(t)) {
    printf ("TYPE_CONTAINS_PLACEHOLDER_INTERNAL\n");
    printf ("TYPE_CONTAINS_PLACEHOLDER_INTERNAL %d\n",TYPE_CONTAINS_PLACEHOLDER_INTERNAL(t));
  }
}
void field_type_BINFO_VIRTUAL_P(tree t)
{
  ENTER; if (BINFO_VIRTUAL_P(t)) {
    printf ("BINFO_VIRTUAL_P\n");
    printf ("BINFO_VIRTUAL_P %d\n",BINFO_VIRTUAL_P(t));
  }
}
void field_type_BINFO_MARKED(tree t)
{
  ENTER; if (BINFO_MARKED(t)) {
    printf ("BINFO_MARKED\n");
    printf ("BINFO_MARKED %d\n",BINFO_MARKED(t));
  }
}
void field_type_BINFO_FLAG_1(tree t)
{
  ENTER; if (BINFO_FLAG_1(t)) {
    printf ("BINFO_FLAG_1\n");
    printf ("BINFO_FLAG_1 %d\n",BINFO_FLAG_1(t));
  }
}
void field_type_BINFO_FLAG_2(tree t)
{
  ENTER; if (BINFO_FLAG_2(t)) {
    printf ("BINFO_FLAG_2\n");
    printf ("BINFO_FLAG_2 %d\n",BINFO_FLAG_2(t));
  }
}
void field_type_BINFO_FLAG_3(tree t)
{
  ENTER; if (BINFO_FLAG_3(t)) {
    printf ("BINFO_FLAG_3\n");
    printf ("BINFO_FLAG_3 %d\n",BINFO_FLAG_3(t));
  }
}
void field_type_BINFO_FLAG_4(tree t)
{
  ENTER; if (BINFO_FLAG_4(t)) {
    printf ("BINFO_FLAG_4\n");
    printf ("BINFO_FLAG_4 %d\n",BINFO_FLAG_4(t));
  }
}
void field_type_BINFO_FLAG_5(tree t)
{
  ENTER; if (BINFO_FLAG_5(t)) {
    printf ("BINFO_FLAG_5\n");
    printf ("BINFO_FLAG_5 %d\n",BINFO_FLAG_5(t));
  }
}
void field_type_BINFO_FLAG_6(tree t)
{
  ENTER; if (BINFO_FLAG_6(t)) {
    printf ("BINFO_FLAG_6\n");
    printf ("BINFO_FLAG_6 %d\n",BINFO_FLAG_6(t));
  }
}
void field_type_BINFO_TYPE(tree t)
{
  ENTER; if (BINFO_TYPE(t)) {
    printf ("BINFO_TYPE\n");
    printf ("BINFO_TYPE %p\n",BINFO_TYPE(t));
  }
}
void field_type_BINFO_OFFSET(tree t)
{
  ENTER; if (BINFO_OFFSET(t)) {
    printf ("BINFO_OFFSET\n");
    printf ("BINFO_OFFSET %p\n",BINFO_OFFSET(t));
  }
}
void field_type_BINFO_OFFSET_ZEROP(tree t)
{
  ENTER; if (BINFO_OFFSET_ZEROP(t)) {
    printf ("BINFO_OFFSET_ZEROP\n");
    printf ("BINFO_OFFSET_ZEROP %d\n",BINFO_OFFSET_ZEROP(t));
  }
}
void field_type_BINFO_VTABLE(tree t)
{
  ENTER; if (BINFO_VTABLE(t)) {
    printf ("BINFO_VTABLE\n");
    printf ("BINFO_VTABLE %p\n",BINFO_VTABLE(t));
  }
}
void field_type_BINFO_VIRTUALS(tree t)
{
  ENTER; if (BINFO_VIRTUALS(t)) {
    printf ("BINFO_VIRTUALS\n");
    printf ("BINFO_VIRTUALS %p\n",BINFO_VIRTUALS(t));
  }
}
void field_type_BINFO_BASE_BINFOS(tree t)
{
  ENTER; if (BINFO_BASE_BINFOS(t)) {
    printf ("BINFO_BASE_BINFOS\n");
    //printf ("BINFO_BASE_BINFOS %d\n",BINFO_BASE_BINFOS(t));
    //struct VEC_tree_none *
  }
}
void field_type_BINFO_N_BASE_BINFOS(tree t)
{
  ENTER; if (BINFO_N_BASE_BINFOS(t)) {
    printf ("BINFO_N_BASE_BINFOS\n");
    printf ("BINFO_N_BASE_BINFOS %d\n",BINFO_N_BASE_BINFOS(t));
  }
}
void field_type_BINFO_VPTR_FIELD(tree t)
{
  ENTER; if (BINFO_VPTR_FIELD(t)) {
    printf ("BINFO_VPTR_FIELD\n");
    printf ("BINFO_VPTR_FIELD %p\n",BINFO_VPTR_FIELD(t));
  }
}
void field_type_BINFO_BASE_ACCESSES(tree t)
{
  ENTER; if (BINFO_BASE_ACCESSES(t)) {
    printf ("BINFO_BASE_ACCESSES\n");
    //printf ("BINFO_BASE_ACCESSES %d\n",BINFO_BASE_ACCESSES(t));
    //struct VEC_tree_gc *
  }
}
void field_type_BINFO_SUBVTT_INDEX(tree t)
{
  ENTER; if (BINFO_SUBVTT_INDEX(t)) {
    printf ("BINFO_SUBVTT_INDEX\n");
    printf ("BINFO_SUBVTT_INDEX %p\n",BINFO_SUBVTT_INDEX(t));
  }
}
void field_type_BINFO_VPTR_INDEX(tree t)
{
  ENTER; if (BINFO_VPTR_INDEX(t)) {
    printf ("BINFO_VPTR_INDEX\n");
    printf ("BINFO_VPTR_INDEX %p\n",BINFO_VPTR_INDEX(t));
  }
}
void field_type_BINFO_INHERITANCE_CHAIN(tree t)
{
  ENTER; if (BINFO_INHERITANCE_CHAIN(t)) {
    printf ("BINFO_INHERITANCE_CHAIN\n");
    printf ("BINFO_INHERITANCE_CHAIN %p\n",BINFO_INHERITANCE_CHAIN(t));
  }
}
void field_type_DECL_NAME(tree t)
{
  ENTER; if (DECL_NAME(t)) {
    printf ("DECL_NAME\n");
    printf ("DECL_NAME %p\n",DECL_NAME(t));
  }
}
void field_type_DECL_UID(tree t)
{
  ENTER; if (DECL_UID(t)) {
    printf ("DECL_UID\n");
    printf ("DECL_UID %d\n",DECL_UID(t));
  }
}
void field_type_DEBUG_TEMP_UID(tree t)
{
  ENTER; if (DEBUG_TEMP_UID(t)) {
    printf ("DEBUG_TEMP_UID\n");
    printf ("DEBUG_TEMP_UID %d\n",DEBUG_TEMP_UID(t));
  }
}
void field_type_DECL_SOURCE_LOCATION(tree t)
{
  ENTER; if (DECL_SOURCE_LOCATION(t)) {
    printf ("DECL_SOURCE_LOCATION\n");
    printf ("DECL_SOURCE_LOCATION %d\n",DECL_SOURCE_LOCATION(t));
  }
}
void field_type_DECL_SOURCE_FILE(tree t)
{
  ENTER; if (DECL_SOURCE_FILE(t)) {
    printf ("DECL_SOURCE_FILE\n");
    printf ("DECL_SOURCE_FILE %s\n",DECL_SOURCE_FILE(t));
  }
}
void field_type_DECL_SOURCE_LINE(tree t)
{
  ENTER; if (DECL_SOURCE_LINE(t)) {
    printf ("DECL_SOURCE_LINE\n");
    printf ("DECL_SOURCE_LINE %d\n",DECL_SOURCE_LINE(t));
  }
}
void field_type_DECL_CONTEXT(tree t)
{
  ENTER; if (DECL_CONTEXT(t)) {
    printf ("DECL_CONTEXT\n");
    printf ("DECL_CONTEXT %p\n",DECL_CONTEXT(t));
  }
}
void field_type_DECL_FIELD_CONTEXT(tree t)
{
  ENTER; if (DECL_FIELD_CONTEXT(t)) {
    printf ("DECL_FIELD_CONTEXT\n");
    printf ("DECL_FIELD_CONTEXT %p\n",DECL_FIELD_CONTEXT(t));
  }
}
void field_type_DECL_ABSTRACT_ORIGIN(tree t)
{
  ENTER; if (DECL_ABSTRACT_ORIGIN(t)) {
    printf ("DECL_ABSTRACT_ORIGIN\n");
    printf ("DECL_ABSTRACT_ORIGIN %p\n",DECL_ABSTRACT_ORIGIN(t));
  }
}
void field_type_DECL_ORIGIN(tree t)
{
  ENTER; if (DECL_ORIGIN(t)) {
    printf ("DECL_ORIGIN\n");
    printf ("DECL_ORIGIN %p\n",DECL_ORIGIN(t));
  }
}
void field_type_DECL_FROM_INLINE(tree t)
{
  ENTER; if (DECL_FROM_INLINE(t)) {
    printf ("DECL_FROM_INLINE\n");
    printf ("DECL_FROM_INLINE %d\n",DECL_FROM_INLINE(t));
  }
}
void field_type_DECL_ATTRIBUTES(tree t)
{
  ENTER; if (DECL_ATTRIBUTES(t)) {
    printf ("DECL_ATTRIBUTES\n");
    printf ("DECL_ATTRIBUTES %p\n",DECL_ATTRIBUTES(t));
  }
}
void field_type_DECL_INITIAL(tree t)
{
  ENTER; if (DECL_INITIAL(t)) {
    printf ("DECL_INITIAL\n");
    printf ("DECL_INITIAL %p\n",DECL_INITIAL(t));
  }
}
void field_type_DECL_SIZE(tree t)
{
  ENTER; if (DECL_SIZE(t)) {
    printf ("DECL_SIZE\n");
    printf ("DECL_SIZE %p\n",DECL_SIZE(t));
  }
}
void field_type_DECL_SIZE_UNIT(tree t)
{
  ENTER; if (DECL_SIZE_UNIT(t)) {
    printf ("DECL_SIZE_UNIT\n");
    printf ("DECL_SIZE_UNIT %p\n",DECL_SIZE_UNIT(t));
  }
}
void field_type_DECL_ALIGN(tree t)
{
  ENTER; 

  //if (DECL_ALIGN(t)) 
  //{
    printf ("DECL_ALIGN does not work...\n");
    //    printf ("DECL_ALIGN %d\n",DECL_ALIGN(t));
    //  }
}
void field_type_DECL_ALIGN_UNIT(tree t)
{
  ENTER; 
  //  if (DECL_ALIGN_UNIT(t)) {
  //    printf ("DECL_ALIGN_UNIT\n");
    //  printf ("DECL_ALIGN_UNIT %d\n",DECL_ALIGN_UNIT(t));// CRASH todo
    //hello.c:336:1: internal compiler error: in lhd_set_decl_assembler_name, at langhooks.c:164
    //  }
}
void field_type_DECL_USER_ALIGN(tree t)
{
  ENTER; if (DECL_USER_ALIGN(t)) {
    printf ("DECL_USER_ALIGN\n");
    printf ("DECL_USER_ALIGN %d\n",DECL_USER_ALIGN(t));
  }
}
void field_type_DECL_MODE(tree t)
{
  ENTER; if (DECL_MODE(t)) {
    printf ("DECL_MODE\n");
    printf ("DECL_MODE %d\n",DECL_MODE(t));
  }
}
void field_type_DECL_FUNCTION_CODE(tree t)
{
  ENTER; if (DECL_FUNCTION_CODE(t)) {
    printf ("DECL_FUNCTION_CODE\n");
    printf ("DECL_FUNCTION_CODE %d\n",DECL_FUNCTION_CODE(t));
  }
}
void field_type_DECL_DEBUG_EXPR_IS_FROM(tree t)
{
  ENTER; if (DECL_DEBUG_EXPR_IS_FROM(t)) {
    printf ("DECL_DEBUG_EXPR_IS_FROM\n");
    printf ("DECL_DEBUG_EXPR_IS_FROM %d\n",DECL_DEBUG_EXPR_IS_FROM(t));
  }
}
void field_type_DECL_FUNCTION_PERSONALITY(tree t)
{
  ENTER; if (DECL_FUNCTION_PERSONALITY(t)) {
    printf ("DECL_FUNCTION_PERSONALITY\n");
    printf ("DECL_FUNCTION_PERSONALITY %p\n",DECL_FUNCTION_PERSONALITY(t));
  }
}
void field_type_DECL_IGNORED_P(tree t)
{
  ENTER; if (DECL_IGNORED_P(t)) {
    printf ("DECL_IGNORED_P\n");
    printf ("DECL_IGNORED_P %d\n",DECL_IGNORED_P(t));
  }
}
void field_type_DECL_ABSTRACT(tree t)
{
  ENTER; if (DECL_ABSTRACT(t)) {
    printf ("DECL_ABSTRACT\n");
    printf ("DECL_ABSTRACT %d\n",DECL_ABSTRACT(t));
  }
}
void field_type_DECL_LANG_SPECIFIC(tree t)
{
  ENTER; if (DECL_LANG_SPECIFIC(t)) {
    printf ("DECL_LANG_SPECIFIC\n");
    //printf ("DECL_LANG_SPECIFIC %d\n",DECL_LANG_SPECIFIC(t));
    // struct lang_decl *
  }
}
void field_type_DECL_EXTERNAL(tree t)
{
  ENTER; if (DECL_EXTERNAL(t)) {
    printf ("DECL_EXTERNAL\n");
    printf ("DECL_EXTERNAL %d\n",DECL_EXTERNAL(t));
  }
}
void field_type_DECL_NONLOCAL(tree t)
{
  ENTER; if (DECL_NONLOCAL(t)) {
    printf ("DECL_NONLOCAL\n");
    printf ("DECL_NONLOCAL %d\n",DECL_NONLOCAL(t));
  }
}
void field_type_DECL_VIRTUAL_P(tree t)
{
  ENTER; if (DECL_VIRTUAL_P(t)) {
    printf ("DECL_VIRTUAL_P\n");
    printf ("DECL_VIRTUAL_P %d\n",DECL_VIRTUAL_P(t));
  }
}
void field_type_DECL_ARTIFICIAL(tree t)
{
  ENTER; if (DECL_ARTIFICIAL(t)) {
    printf ("DECL_ARTIFICIAL\n");
    printf ("DECL_ARTIFICIAL %d\n",DECL_ARTIFICIAL(t));
  }
}
void field_type_DECL_LANG_FLAG_0(tree t)
{
  ENTER; if (DECL_LANG_FLAG_0(t)) {
    printf ("DECL_LANG_FLAG_0\n");
    printf ("DECL_LANG_FLAG_0 %d\n",DECL_LANG_FLAG_0(t));
  }
}
void field_type_DECL_LANG_FLAG_1(tree t)
{
  ENTER; if (DECL_LANG_FLAG_1(t)) {
    printf ("DECL_LANG_FLAG_1\n");
    printf ("DECL_LANG_FLAG_1 %d\n",DECL_LANG_FLAG_1(t));
  }
}
void field_type_DECL_LANG_FLAG_2(tree t)
{
  ENTER; if (DECL_LANG_FLAG_2(t)) {
    printf ("DECL_LANG_FLAG_2\n");
    printf ("DECL_LANG_FLAG_2 %d\n",DECL_LANG_FLAG_2(t));
  }
}
void field_type_DECL_LANG_FLAG_3(tree t)
{
  ENTER; if (DECL_LANG_FLAG_3(t)) {
    printf ("DECL_LANG_FLAG_3\n");
    printf ("DECL_LANG_FLAG_3 %d\n",DECL_LANG_FLAG_3(t));
  }
}
void field_type_DECL_LANG_FLAG_4(tree t)
{
  ENTER; if (DECL_LANG_FLAG_4(t)) {
    printf ("DECL_LANG_FLAG_4\n");
    printf ("DECL_LANG_FLAG_4 %d\n",DECL_LANG_FLAG_4(t));
  }
}
void field_type_DECL_LANG_FLAG_5(tree t)
{
  ENTER; if (DECL_LANG_FLAG_5(t)) {
    printf ("DECL_LANG_FLAG_5\n");
    printf ("DECL_LANG_FLAG_5 %d\n",DECL_LANG_FLAG_5(t));
  }
}
void field_type_DECL_LANG_FLAG_6(tree t)
{
  ENTER; if (DECL_LANG_FLAG_6(t)) {
    printf ("DECL_LANG_FLAG_6\n");
    printf ("DECL_LANG_FLAG_6 %d\n",DECL_LANG_FLAG_6(t));
  }
}
void field_type_DECL_LANG_FLAG_7(tree t)
{
  ENTER; if (DECL_LANG_FLAG_7(t)) {
    printf ("DECL_LANG_FLAG_7\n");
    printf ("DECL_LANG_FLAG_7 %d\n",DECL_LANG_FLAG_7(t));
  }
}
void field_type_DECL_LANG_FLAG_8(tree t)
{
  ENTER; if (DECL_LANG_FLAG_8(t)) {
    printf ("DECL_LANG_FLAG_8\n");
    printf ("DECL_LANG_FLAG_8 %d\n",DECL_LANG_FLAG_8(t));
  }
}
void field_type_DECL_HAS_VALUE_EXPR_P(tree t)
{
  ENTER; if (DECL_HAS_VALUE_EXPR_P(t)) {
    printf ("DECL_HAS_VALUE_EXPR_P\n");
    printf ("DECL_HAS_VALUE_EXPR_P %d\n",DECL_HAS_VALUE_EXPR_P(t));
  }
}
void field_type_DECL_VALUE_EXPR(tree t)
{
  ENTER; if (DECL_VALUE_EXPR(t)) {
    printf ("DECL_VALUE_EXPR\n");
    printf ("DECL_VALUE_EXPR %p\n",DECL_VALUE_EXPR(t));
  }
}
void field_type_DECL_RTL(tree t)
{
  ENTER; if (DECL_RTL(t)) {
    printf ("DECL_RTL\n");
    //        printf ("DECL_RTL %d\n",DECL_RTL(t));
    // rtx
  }
}
void field_type_HAS_RTL_P(tree t)
{
  ENTER; if (HAS_RTL_P(t)) {
    printf ("HAS_RTL_P\n");
    printf ("HAS_RTL_P %d\n",HAS_RTL_P(t));
  }
}
void field_type_DECL_RTL_SET_P(tree t)
{
  ENTER; if (DECL_RTL_SET_P(t)) {
    printf ("DECL_RTL_SET_P\n");
    printf ("DECL_RTL_SET_P %d\n",DECL_RTL_SET_P(t));
  }
}
void field_type_DECL_RTL_IF_SET(tree t)
{
  ENTER; if (DECL_RTL_IF_SET(t)) {
    printf ("DECL_RTL_IF_SET\n");
    //        printf ("DECL_RTL_IF_SET %d\n",DECL_RTL_IF_SET(t));
    // rtx
  }
}
void field_type_DECL_REGISTER(tree t)
{
  ENTER; if (DECL_REGISTER(t)) {
    printf ("DECL_REGISTER\n");
    printf ("DECL_REGISTER %d\n",DECL_REGISTER(t));
  }
}
void field_type_DECL_FIELD_OFFSET(tree t)
{
  ENTER; if (DECL_FIELD_OFFSET(t)) {
    printf ("DECL_FIELD_OFFSET\n");
    printf ("DECL_FIELD_OFFSET %p\n",DECL_FIELD_OFFSET(t));
  }
}
void field_type_DECL_FIELD_BIT_OFFSET(tree t)
{
  ENTER; if (DECL_FIELD_BIT_OFFSET(t)) {
    printf ("DECL_FIELD_BIT_OFFSET\n");
    printf ("DECL_FIELD_BIT_OFFSET %p\n",DECL_FIELD_BIT_OFFSET(t));//tree
  }
}
void field_type_DECL_BIT_FIELD_TYPE(tree t)
{
  ENTER; if (DECL_BIT_FIELD_TYPE(t)) {
    printf ("DECL_BIT_FIELD_TYPE\n");
    printf ("DECL_BIT_FIELD_TYPE %p\n",DECL_BIT_FIELD_TYPE(t));//tree
  }
}
void field_type_DECL_QUALIFIER(tree t)
{
  ENTER; if (DECL_QUALIFIER(t)) {
    printf ("DECL_QUALIFIER\n");
    printf ("DECL_QUALIFIER %p\n",DECL_QUALIFIER(t));//tree
  }
}
void field_type_DECL_OFFSET_ALIGN(tree t)
{
  ENTER; if (DECL_OFFSET_ALIGN(t)) {
    printf ("DECL_OFFSET_ALIGN\n");
    printf ("DECL_OFFSET_ALIGN %lu\n",DECL_OFFSET_ALIGN(t));
  }
}
void field_type_DECL_FCONTEXT(tree t)
{
  ENTER; if (DECL_FCONTEXT(t)) {
    printf ("DECL_FCONTEXT\n");
    printf ("DECL_FCONTEXT %p\n",DECL_FCONTEXT(t));//tree
  }
}
void field_type_DECL_PACKED(tree t)
{
  ENTER; if (DECL_PACKED(t)) {
    printf ("DECL_PACKED\n");
    printf ("DECL_PACKED %d\n",DECL_PACKED(t));
  }
}
void field_type_DECL_BIT_FIELD(tree t)
{
  ENTER; if (DECL_BIT_FIELD(t)) {
    printf ("DECL_BIT_FIELD\n");
    printf ("DECL_BIT_FIELD %d\n",DECL_BIT_FIELD(t));
  }
}
void field_type_DECL_NONADDRESSABLE_P(tree t)
{
  ENTER; if (DECL_NONADDRESSABLE_P(t)) {
    printf ("DECL_NONADDRESSABLE_P\n");
    printf ("DECL_NONADDRESSABLE_P %d\n",DECL_NONADDRESSABLE_P(t));
  }
}
void field_type_LABEL_DECL_UID(tree t)
{
  ENTER; if (LABEL_DECL_UID(t)) {
    printf ("LABEL_DECL_UID\n");
    printf ("LABEL_DECL_UID %d\n",LABEL_DECL_UID(t));
  }
}
void field_type_EH_LANDING_PAD_NR(tree t)
{
  ENTER; if (EH_LANDING_PAD_NR(t)) {
    printf ("EH_LANDING_PAD_NR\n");
    printf ("EH_LANDING_PAD_NR %d\n",EH_LANDING_PAD_NR(t));
  }
}
void field_type_DECL_ERROR_ISSUED(tree t)
{
  ENTER; if (DECL_ERROR_ISSUED(t)) {
    printf ("DECL_ERROR_ISSUED\n");
    printf ("DECL_ERROR_ISSUED %d\n",DECL_ERROR_ISSUED(t));
  }
}
void field_type_DECL_ARG_TYPE(tree t)
{
  ENTER; if (DECL_ARG_TYPE(t)) {
    printf ("DECL_ARG_TYPE\n");
    printf ("DECL_ARG_TYPE %p\n",DECL_ARG_TYPE(t));//tree
  }
}
void field_type_DECL_INCOMING_RTL(tree t)
{
  ENTER; if (DECL_INCOMING_RTL(t)) {
    printf ("DECL_INCOMING_RTL\n");
    //rtx        printf ("DECL_INCOMING_RTL %d\n",DECL_INCOMING_RTL(t));
  }
}
void field_type_DECL_SEEN_IN_BIND_EXPR_P(tree t)
{
  ENTER; if (DECL_SEEN_IN_BIND_EXPR_P(t)) {
    printf ("DECL_SEEN_IN_BIND_EXPR_P\n");
    printf ("DECL_SEEN_IN_BIND_EXPR_P %d\n",DECL_SEEN_IN_BIND_EXPR_P(t));
  }
}
void field_type_DECL_DEFER_OUTPUT(tree t)
{
  ENTER; if (DECL_DEFER_OUTPUT(t)) {
    printf ("DECL_DEFER_OUTPUT\n");
    printf ("DECL_DEFER_OUTPUT %d\n",DECL_DEFER_OUTPUT(t));
  }
}
void field_type_DECL_IN_SYSTEM_HEADER(tree t)
{
  ENTER; if (DECL_IN_SYSTEM_HEADER(t)) {
    printf ("DECL_IN_SYSTEM_HEADER\n");
    printf ("DECL_IN_SYSTEM_HEADER %d\n",DECL_IN_SYSTEM_HEADER(t));
  }
}
void field_type_DECL_WEAK(tree t)
{
  ENTER; if (DECL_WEAK(t)) {
    printf ("DECL_WEAK\n");
    printf ("DECL_WEAK %d\n",DECL_WEAK(t));
  }
}
void field_type_DECL_DLLIMPORT_P(tree t)
{
  ENTER; if (DECL_DLLIMPORT_P(t)) {
    printf ("DECL_DLLIMPORT_P\n");
    printf ("DECL_DLLIMPORT_P %d\n",DECL_DLLIMPORT_P(t));
  }
}
void field_type_DECL_COMDAT(tree t)
{
  ENTER; if (DECL_COMDAT(t)) {
    printf ("DECL_COMDAT\n");
    printf ("DECL_COMDAT %d\n",DECL_COMDAT(t));
  }
}
void field_type_DECL_COMDAT_GROUP(tree t)
{
  ENTER; if (DECL_COMDAT_GROUP(t)) {
    printf ("DECL_COMDAT_GROUP\n");
    printf ("DECL_COMDAT_GROUP %p\n",DECL_COMDAT_GROUP(t));//tree
  }
}
void field_type_DECL_REPLACEABLE_P(tree t)
{
  /*
    field_type.c:2600: error: 'targetm' undeclared (first use in this function)
    if (DECL_REPLACEABLE_P(t)) {
    printf ("DECL_REPLACEABLE_P\n");
    printf ("DECL_REPLACEABLE_P %d\n",DECL_REPLACEABLE_P(t));
    }
  */
}
void field_type_DECL_ASSEMBLER_NAME(tree t)
{
  ENTER; if (DECL_ASSEMBLER_NAME(t)) {
    printf ("DECL_ASSEMBLER_NAME\n");
    printf ("DECL_ASSEMBLER_NAME %p\n",DECL_ASSEMBLER_NAME(t));//tree
  }
}
void field_type_HAS_DECL_ASSEMBLER_NAME_P(tree t)
{
  ENTER; if (HAS_DECL_ASSEMBLER_NAME_P(t)) {
    printf ("HAS_DECL_ASSEMBLER_NAME_P\n");
    printf ("HAS_DECL_ASSEMBLER_NAME_P %d\n",HAS_DECL_ASSEMBLER_NAME_P(t));
  }
}
void field_type_DECL_ASSEMBLER_NAME_SET_P(tree t)
{
  ENTER; if (DECL_ASSEMBLER_NAME_SET_P(t)) {
    printf ("DECL_ASSEMBLER_NAME_SET_P\n");
    printf ("DECL_ASSEMBLER_NAME_SET_P %d\n",DECL_ASSEMBLER_NAME_SET_P(t));
  }
}
void field_type_DECL_SECTION_NAME(tree t)
{
  ENTER; if (DECL_SECTION_NAME(t)) {
    printf ("DECL_SECTION_NAME\n");
    printf ("DECL_SECTION_NAME %p\n",DECL_SECTION_NAME(t));//tree
  }
}
void field_type_DECL_VISIBILITY(tree t)
{
  ENTER; if (DECL_VISIBILITY(t)) {
    printf ("DECL_VISIBILITY\n");
    printf ("DECL_VISIBILITY %d\n",DECL_VISIBILITY(t));
  }
}
void field_type_DECL_VISIBILITY_SPECIFIED(tree t)
{
  ENTER; if (DECL_VISIBILITY_SPECIFIED(t)) {
    printf ("DECL_VISIBILITY_SPECIFIED\n");
    printf ("DECL_VISIBILITY_SPECIFIED %d\n",DECL_VISIBILITY_SPECIFIED(t));
  }
}
void field_type_DECL_ONE_ONLY(tree t)
{
  ENTER; if (DECL_ONE_ONLY(t)) {
    printf ("DECL_ONE_ONLY\n");
    printf ("DECL_ONE_ONLY %d\n",DECL_ONE_ONLY(t));
  }
}
void field_type_DECL_IN_TEXT_SECTION(tree t)
{
  ENTER; if (DECL_IN_TEXT_SECTION(t)) {
    printf ("DECL_IN_TEXT_SECTION\n");
    printf ("DECL_IN_TEXT_SECTION %d\n",DECL_IN_TEXT_SECTION(t));
  }
}
void field_type_DECL_COMMON(tree t)
{
  ENTER; if (DECL_COMMON(t)) {
    printf ("DECL_COMMON\n");
    printf ("DECL_COMMON %d\n",DECL_COMMON(t));
  }
}
void field_type_DECL_HARD_REGISTER(tree t)
{
  ENTER; if (DECL_HARD_REGISTER(t)) {
    printf ("DECL_HARD_REGISTER\n");
    printf ("DECL_HARD_REGISTER %d\n",DECL_HARD_REGISTER(t));
  }
}
void field_type_DECL_DEBUG_EXPR(tree t)
{
  ENTER; if (DECL_DEBUG_EXPR(t)) {
    printf ("DECL_DEBUG_EXPR\n");
    printf ("DECL_DEBUG_EXPR %p\n",DECL_DEBUG_EXPR(t));//tree
  }
}
void field_type_DECL_HAS_INIT_PRIORITY_P(tree t)
{
  ENTER; if (DECL_HAS_INIT_PRIORITY_P(t)) {
    printf ("DECL_HAS_INIT_PRIORITY_P\n");
    printf ("DECL_HAS_INIT_PRIORITY_P %d\n",DECL_HAS_INIT_PRIORITY_P(t));
  }
}
void field_type_DECL_INIT_PRIORITY(tree t)
{
  ENTER; if (DECL_INIT_PRIORITY(t)) {
    printf ("DECL_INIT_PRIORITY\n");
    printf ("DECL_INIT_PRIORITY %d\n",DECL_INIT_PRIORITY(t));
  }
}
void field_type_DECL_FINI_PRIORITY(tree t)
{
  ENTER; if (DECL_FINI_PRIORITY(t)) {
    printf ("DECL_FINI_PRIORITY\n");
    printf ("DECL_FINI_PRIORITY %d\n",DECL_FINI_PRIORITY(t));
  }
}
void field_type_DECL_TLS_MODEL(tree t)
{
  ENTER; if (DECL_TLS_MODEL(t)) {
    printf ("DECL_TLS_MODEL\n");
    printf ("DECL_TLS_MODEL %d\n",DECL_TLS_MODEL(t));
  }
}
void field_type_DECL_THREAD_LOCAL_P(tree t)
{
  ENTER; if (DECL_THREAD_LOCAL_P(t)) {
    printf ("DECL_THREAD_LOCAL_P\n");
    printf ("DECL_THREAD_LOCAL_P %d\n",DECL_THREAD_LOCAL_P(t));
  }
}
void field_type_DECL_VAR_ANN_PTR(tree t)
{
  ENTER; if (DECL_VAR_ANN_PTR(t)) {
    printf ("DECL_VAR_ANN_PTR\n");
    //printf ("DECL_VAR_ANN_PTR %d\n",DECL_VAR_ANN_PTR(t));
    //struct var_ann_d **
  }
}
void field_type_DECL_RESULT_FLD(tree t)
{
  ENTER; if (DECL_RESULT_FLD(t)) {
    printf ("DECL_RESULT_FLD\n");
    printf ("DECL_RESULT_FLD %p\n",DECL_RESULT_FLD(t));//tree
  }
}
void field_type_DECL_VINDEX(tree t)
{
  ENTER; if (DECL_VINDEX(t)) {
    printf ("DECL_VINDEX\n");
    printf ("DECL_VINDEX %p\n",DECL_VINDEX(t));//tree
  }
}
void field_type_DECL_RESULT(tree t)
{
  ENTER; if (DECL_RESULT(t)) {
    printf ("DECL_RESULT\n");
    printf ("DECL_RESULT %p\n",DECL_RESULT(t));//tree
  }
}
void field_type_DECL_UNINLINABLE(tree t)
{
  ENTER; if (DECL_UNINLINABLE(t)) {
    printf ("DECL_UNINLINABLE\n");
    printf ("DECL_UNINLINABLE %d\n",DECL_UNINLINABLE(t));
  }
}
void field_type_DECL_SAVED_TREE(tree t)
{
  ENTER; if (DECL_SAVED_TREE(t)) {
    printf ("DECL_SAVED_TREE\n");
    printf ("DECL_SAVED_TREE %p\n",DECL_SAVED_TREE(t));//tree
  }
}
void field_type_DECL_IS_MALLOC(tree t)
{
  ENTER; if (DECL_IS_MALLOC(t)) {
    printf ("DECL_IS_MALLOC\n");
    printf ("DECL_IS_MALLOC %d\n",DECL_IS_MALLOC(t));
  }
}
void field_type_DECL_IS_OPERATOR_NEW(tree t)
{
  ENTER; if (DECL_IS_OPERATOR_NEW(t)) {
    printf ("DECL_IS_OPERATOR_NEW\n");
    printf ("DECL_IS_OPERATOR_NEW %d\n",DECL_IS_OPERATOR_NEW(t));
  }
}
void field_type_DECL_IS_RETURNS_TWICE(tree t)
{
  ENTER; if (DECL_IS_RETURNS_TWICE(t)) {
    printf ("DECL_IS_RETURNS_TWICE\n");
    printf ("DECL_IS_RETURNS_TWICE %d\n",DECL_IS_RETURNS_TWICE(t));
  }
}
void field_type_DECL_PURE_P(tree t)
{
  ENTER; if (DECL_PURE_P(t)) {
    printf ("DECL_PURE_P\n");
    printf ("DECL_PURE_P %d\n",DECL_PURE_P(t));
  }
}
void field_type_DECL_LOOPING_CONST_OR_PURE_P(tree t)
{
  ENTER; if (DECL_LOOPING_CONST_OR_PURE_P(t)) {
    printf ("DECL_LOOPING_CONST_OR_PURE_P\n");
    printf ("DECL_LOOPING_CONST_OR_PURE_P %d\n",DECL_LOOPING_CONST_OR_PURE_P(t));
  }
}
void field_type_DECL_IS_NOVOPS(tree t)
{
  ENTER; if (DECL_IS_NOVOPS(t)) {
    printf ("DECL_IS_NOVOPS\n");
    printf ("DECL_IS_NOVOPS %d\n",DECL_IS_NOVOPS(t));
  }
}
void field_type_DECL_STATIC_CONSTRUCTOR(tree t)
{
  ENTER; if (DECL_STATIC_CONSTRUCTOR(t)) {
    printf ("DECL_STATIC_CONSTRUCTOR\n");
    printf ("DECL_STATIC_CONSTRUCTOR %d\n",DECL_STATIC_CONSTRUCTOR(t));
  }
}
void field_type_DECL_STATIC_DESTRUCTOR(tree t)
{
  ENTER; if (DECL_STATIC_DESTRUCTOR(t)) {
    printf ("DECL_STATIC_DESTRUCTOR\n");
    printf ("DECL_STATIC_DESTRUCTOR %d\n",DECL_STATIC_DESTRUCTOR(t));
  }
}
void field_type_DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT(tree t)
{
  ENTER; if (DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT(t)) {
    printf ("DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT\n");
    printf ("DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT %d\n",DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT(t));
  }
}
void field_type_DECL_NO_LIMIT_STACK(tree t)
{
  ENTER; if (DECL_NO_LIMIT_STACK(t)) {
    printf ("DECL_NO_LIMIT_STACK\n");
    printf ("DECL_NO_LIMIT_STACK %d\n",DECL_NO_LIMIT_STACK(t));
  }
}
void field_type_DECL_STATIC_CHAIN(tree t)
{
  ENTER; if (DECL_STATIC_CHAIN(t)) {
    printf ("DECL_STATIC_CHAIN\n");
    printf ("DECL_STATIC_CHAIN %d\n",DECL_STATIC_CHAIN(t));
  }
}
void field_type_DECL_DECLARED_INLINE_P(tree t)
{
  ENTER; if (DECL_DECLARED_INLINE_P(t)) {
    printf ("DECL_DECLARED_INLINE_P\n");
    printf ("DECL_DECLARED_INLINE_P %d\n",DECL_DECLARED_INLINE_P(t));
  }
}
void field_type_DECL_NO_INLINE_WARNING_P(tree t)
{
  ENTER; if (DECL_NO_INLINE_WARNING_P(t)) {
    printf ("DECL_NO_INLINE_WARNING_P\n");
    printf ("DECL_NO_INLINE_WARNING_P %d\n",DECL_NO_INLINE_WARNING_P(t));
  }
}
void field_type_DECL_DISREGARD_INLINE_LIMITS(tree t)
{
  ENTER; if (DECL_DISREGARD_INLINE_LIMITS(t)) {
    printf ("DECL_DISREGARD_INLINE_LIMITS\n");
    printf ("DECL_DISREGARD_INLINE_LIMITS %d\n",DECL_DISREGARD_INLINE_LIMITS(t));
  }
}
void field_type_DECL_STRUCT_FUNCTION(tree t)
{
  ENTER; if (DECL_STRUCT_FUNCTION(t)) {
    printf ("DECL_STRUCT_FUNCTION\n");
    //printf ("DECL_STRUCT_FUNCTION %d\n",DECL_STRUCT_FUNCTION(t));
    ///struct function *
  }
}
void field_type_DECL_BUILT_IN(tree t)
{
  ENTER; if (DECL_BUILT_IN(t)) {
    printf ("DECL_BUILT_IN\n");
    printf ("DECL_BUILT_IN %d\n",DECL_BUILT_IN(t));
  }
}
void field_type_DECL_BUILT_IN_CLASS(tree t)
{
  ENTER; if (DECL_BUILT_IN_CLASS(t)) {
    printf ("DECL_BUILT_IN_CLASS\n");
    printf ("DECL_BUILT_IN_CLASS %d\n",DECL_BUILT_IN_CLASS(t));
  }
}
void field_type_DECL_ARGUMENTS(tree t)
{
  ENTER; if (DECL_ARGUMENTS(t)) {
    printf ("DECL_ARGUMENTS\n");
    //    printf ("DECL_ARGUMENTS %d\n",DECL_ARGUMENTS(t));
  }
}
void field_type_DECL_ARGUMENT_FLD(tree t)
{
  ENTER; if (DECL_ARGUMENT_FLD(t)) {
    printf ("DECL_ARGUMENT_FLD\n");
    printf ("DECL_ARGUMENT_FLD %p\n",DECL_ARGUMENT_FLD(t));//tree
  }
}
void field_type_DECL_FUNCTION_SPECIFIC_TARGET(tree t)
{
  ENTER; if (DECL_FUNCTION_SPECIFIC_TARGET(t)) {
    printf ("DECL_FUNCTION_SPECIFIC_TARGET\n");
    printf ("DECL_FUNCTION_SPECIFIC_TARGET %p\n",DECL_FUNCTION_SPECIFIC_TARGET(t));//tree
  }
}
void field_type_DECL_FUNCTION_SPECIFIC_OPTIMIZATION(tree t)
{
  ENTER; if (DECL_FUNCTION_SPECIFIC_OPTIMIZATION(t)) {
    printf ("DECL_FUNCTION_SPECIFIC_OPTIMIZATION\n");
    printf ("DECL_FUNCTION_SPECIFIC_OPTIMIZATION %p\n",DECL_FUNCTION_SPECIFIC_OPTIMIZATION(t));//tree
  }
}
void field_type_DECL_ORIGINAL_TYPE(tree t)
{
  ENTER; if (DECL_ORIGINAL_TYPE(t)) {
    printf ("DECL_ORIGINAL_TYPE\n");
    printf ("DECL_ORIGINAL_TYPE %p\n",DECL_ORIGINAL_TYPE(t));// treeo
  }
}
void field_type_TYPE_DECL_SUPPRESS_DEBUG(tree t)
{
  ENTER; if (TYPE_DECL_SUPPRESS_DEBUG(t)) {
    printf ("TYPE_DECL_SUPPRESS_DEBUG\n");
    printf ("TYPE_DECL_SUPPRESS_DEBUG %d\n",TYPE_DECL_SUPPRESS_DEBUG(t));
  }
}
void field_type_IMPORTED_DECL_ASSOCIATED_DECL(tree t)
{
  ENTER; if (IMPORTED_DECL_ASSOCIATED_DECL(t)) {
    printf ("IMPORTED_DECL_ASSOCIATED_DECL\n");
    printf ("IMPORTED_DECL_ASSOCIATED_DECL %p\n",IMPORTED_DECL_ASSOCIATED_DECL(t));//tree
  }
}
void field_type_STATEMENT_LIST_HEAD(tree t)
{
  ENTER; if (STATEMENT_LIST_HEAD(t)) {
    printf ("STATEMENT_LIST_HEAD\n");
    //        printf ("STATEMENT_LIST_HEAD %d\n",STATEMENT_LIST_HEAD(t));
    //struct tree_statement_list_node *
  }
}
void field_type_STATEMENT_LIST_TAIL(tree t)
{
  ENTER; if (STATEMENT_LIST_TAIL(t)) {
    printf ("STATEMENT_LIST_TAIL\n");
    //printf ("STATEMENT_LIST_TAIL %d\n",STATEMENT_LIST_TAIL(t));
    //struct tree_statement_list_node *
  }
}
void field_type_TREE_OPTIMIZATION(tree t)
{
  ENTER; if (TREE_OPTIMIZATION(t)) {
    printf ("TREE_OPTIMIZATION\n");
    //        printf ("TREE_OPTIMIZATION %d\n",TREE_OPTIMIZATION(t));
    //struct cl_optimization *
  }
}
void field_type_TREE_TARGET_OPTION(tree t)
{
  ENTER; if (TREE_TARGET_OPTION(t)) {
    printf ("TREE_TARGET_OPTION\n");
    //        printf ("TREE_TARGET_OPTION %d\n",TREE_TARGET_OPTION(t));
    //struct cl_target_option *
  }
}
void field_type_MAIN_NAME_P(tree t)
{
  ENTER; if (MAIN_NAME_P(t)) {
    printf ("MAIN_NAME_P\n");
    printf ("MAIN_NAME_P %d\n",MAIN_NAME_P(t));
  }
}

void field_type(tree t)
{
  printf ( "field type tree_code:%d and name %s\n", TREE_CODE(t),tree_code_name[TREE_CODE(t)]);

  field_type_ASM_CLOBBERS(t);
  field_type_ASM_INPUTS(t);
  field_type_ASM_INPUT_P(t);
  field_type_ASM_LABELS(t);
  field_type_ASM_OUTPUTS(t);
  field_type_ASM_STRING(t);
  field_type_ASM_VOLATILE_P(t);
  field_type_ASSERT_EXPR_COND(t);
  field_type_ASSERT_EXPR_VAR(t);
  field_type_BIND_EXPR_BLOCK(t);
  field_type_BIND_EXPR_BODY(t);
  field_type_BIND_EXPR_VARS(t);
  field_type_BINFO_BASE_ACCESSES(t);
  field_type_BINFO_BASE_BINFOS(t);
  field_type_BINFO_FLAG_1(t);
  field_type_BINFO_FLAG_2(t);
  field_type_BINFO_FLAG_3(t);
  field_type_BINFO_FLAG_4(t);
  field_type_BINFO_FLAG_5(t);
  field_type_BINFO_FLAG_6(t);
  field_type_BINFO_INHERITANCE_CHAIN(t);
  field_type_BINFO_MARKED(t);
  field_type_BINFO_N_BASE_BINFOS(t);
  field_type_BINFO_OFFSET(t);
  field_type_BINFO_OFFSET_ZEROP(t);
  field_type_BINFO_SUBVTT_INDEX(t);
  field_type_BINFO_TYPE(t);
  field_type_BINFO_VIRTUALS(t);
  field_type_BINFO_VIRTUAL_P(t);
  field_type_BINFO_VPTR_FIELD(t);
  field_type_BINFO_VPTR_INDEX(t);
  field_type_BINFO_VTABLE(t);
  field_type_BLOCK_ABSTRACT(t);
  field_type_BLOCK_ABSTRACT_ORIGIN(t);
  field_type_BLOCK_CHAIN(t);
  field_type_BLOCK_FRAGMENT_CHAIN(t);
  field_type_BLOCK_FRAGMENT_ORIGIN(t);
  field_type_BLOCK_NONLOCALIZED_VARS(t);
  field_type_BLOCK_NUMBER(t);
  field_type_BLOCK_NUM_NONLOCALIZED_VARS(t);
  field_type_BLOCK_SOURCE_LOCATION(t);
  field_type_BLOCK_SUBBLOCKS(t);
  field_type_BLOCK_SUPERCONTEXT(t);
  field_type_BLOCK_VARS(t);
  field_type_CALL_CANNOT_INLINE_P(t);
  field_type_CALL_EXPR_ARGP(t);
  field_type_CALL_EXPR_ARGS(t);
  field_type_CALL_EXPR_FN(t);
  field_type_CALL_EXPR_RETURN_SLOT_OPT(t);
  field_type_CALL_EXPR_STATIC_CHAIN(t);
  field_type_CALL_EXPR_TAILCALL(t);
  field_type_CALL_EXPR_VA_ARG_PACK(t);
  field_type_CALL_FROM_THUNK_P(t);
  field_type_CAN_HAVE_LOCATION_P(t);
  field_type_CASE_HIGH(t);
  field_type_CASE_HIGH_SEEN(t);
  field_type_CASE_LABEL(t);
  field_type_CASE_LOW(t);
  field_type_CASE_LOW_SEEN(t);
  field_type_CATCH_BODY(t);
  field_type_CATCH_TYPES(t);
  field_type_CHREC_LEFT(t);
  field_type_CHREC_RIGHT(t);
  field_type_CHREC_VAR(t);
  field_type_CHREC_VARIABLE(t);
  field_type_CLEANUP_EH_ONLY(t);
  field_type_COMPLETE_OR_UNBOUND_ARRAY_TYPE_P(t);
  field_type_COMPLETE_OR_VOID_TYPE_P(t);
  field_type_COMPLETE_TYPE_P(t);
  field_type_COMPOUND_LITERAL_EXPR_DECL(t);
  field_type_COMPOUND_LITERAL_EXPR_DECL_EXPR(t);
  field_type_COND_EXPR_COND(t);
  field_type_COND_EXPR_ELSE(t);
  field_type_COND_EXPR_THEN(t);
  field_type_CONSTRUCTOR_BITFIELD_P(t);
  field_type_CONSTRUCTOR_ELTS(t);
  field_type_CONSTRUCTOR_NELTS(t);
  field_type_DEBUG_TEMP_UID(t);
  field_type_DECL_ABSTRACT(t);
  field_type_DECL_ABSTRACT_ORIGIN(t);
  //  field_type_DECL_ALIGN(t);
  //  field_type_DECL_ALIGN_UNIT(t);
  /*  field_type_DECL_ARGUMENTS(t);
  field_type_DECL_ARGUMENT_FLD(t);
  field_type_DECL_ARG_TYPE(t);
  field_type_DECL_ARTIFICIAL(t);
  field_type_DECL_ASSEMBLER_NAME(t);
  field_type_DECL_ASSEMBLER_NAME_SET_P(t);
  field_type_DECL_ATTRIBUTES(t);
  field_type_DECL_BIT_FIELD(t);
  field_type_DECL_BIT_FIELD_TYPE(t);
  field_type_DECL_BUILT_IN(t);
  field_type_DECL_BUILT_IN_CLASS(t);
  field_type_DECL_BY_REFERENCE(t);
  field_type_DECL_COMDAT(t);
  field_type_DECL_COMDAT_GROUP(t);
  field_type_DECL_COMMON(t);
  field_type_DECL_CONTEXT(t);
  field_type_DECL_DEBUG_EXPR(t);
  field_type_DECL_DEBUG_EXPR_IS_FROM(t);
  field_type_DECL_DECLARED_INLINE_P(t);
  field_type_DECL_DEFER_OUTPUT(t);
  field_type_DECL_DISREGARD_INLINE_LIMITS(t);
  field_type_DECL_DLLIMPORT_P(t);
  field_type_DECL_ERROR_ISSUED(t);
  field_type_DECL_EXPR_DECL(t);
  field_type_DECL_EXTERNAL(t);
  field_type_DECL_FCONTEXT(t);
  field_type_DECL_FIELD_BIT_OFFSET(t);
  field_type_DECL_FIELD_CONTEXT(t);
  field_type_DECL_FIELD_OFFSET(t);
  field_type_DECL_FINI_PRIORITY(t);
  field_type_DECL_FROM_INLINE(t);
  field_type_DECL_FUNCTION_CODE(t);
  field_type_DECL_FUNCTION_PERSONALITY(t);
  field_type_DECL_FUNCTION_SPECIFIC_OPTIMIZATION(t);
  field_type_DECL_FUNCTION_SPECIFIC_TARGET(t);
  field_type_DECL_HARD_REGISTER(t);
  field_type_DECL_HAS_INIT_PRIORITY_P(t);
  field_type_DECL_HAS_VALUE_EXPR_P(t);
  field_type_DECL_IGNORED_P(t);
  field_type_DECL_INCOMING_RTL(t);
  field_type_DECL_INITIAL(t);
  field_type_DECL_INIT_PRIORITY(t);
  field_type_DECL_IN_SYSTEM_HEADER(t);
  field_type_DECL_IN_TEXT_SECTION(t);
  field_type_DECL_IS_MALLOC(t);
  field_type_DECL_IS_NOVOPS(t);
  field_type_DECL_IS_OPERATOR_NEW(t);
  field_type_DECL_IS_RETURNS_TWICE(t);
  field_type_DECL_LANG_FLAG_0(t);
  field_type_DECL_LANG_FLAG_1(t);
  field_type_DECL_LANG_FLAG_2(t);
  field_type_DECL_LANG_FLAG_3(t);
  field_type_DECL_LANG_FLAG_4(t);
  field_type_DECL_LANG_FLAG_5(t);
  field_type_DECL_LANG_FLAG_6(t);
  field_type_DECL_LANG_FLAG_7(t);
  field_type_DECL_LANG_FLAG_8(t);
  field_type_DECL_LANG_SPECIFIC(t);
  field_type_DECL_LOOPING_CONST_OR_PURE_P(t);
  field_type_DECL_MODE(t);
  field_type_DECL_NAME(t);
  field_type_DECL_NONADDRESSABLE_P(t);
  field_type_DECL_NONLOCAL(t);
  field_type_DECL_NO_INLINE_WARNING_P(t);
  field_type_DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT(t);
  field_type_DECL_NO_LIMIT_STACK(t);
  field_type_DECL_OFFSET_ALIGN(t);
  field_type_DECL_ONE_ONLY(t);
  field_type_DECL_ORIGIN(t);
  field_type_DECL_ORIGINAL_TYPE(t);
  field_type_DECL_PACKED(t);
  field_type_DECL_PURE_P(t);
  field_type_DECL_QUALIFIER(t);
  field_type_DECL_REGISTER(t);
  field_type_DECL_REPLACEABLE_P(t);
  field_type_DECL_RESTRICTED_P(t);
  field_type_DECL_RESULT(t);
  field_type_DECL_RESULT_FLD(t);
  field_type_DECL_RTL(t);
  field_type_DECL_RTL_IF_SET(t);
  field_type_DECL_RTL_SET_P(t);
  field_type_DECL_SAVED_TREE(t);
  field_type_DECL_SECTION_NAME(t);
  field_type_DECL_SEEN_IN_BIND_EXPR_P(t);
  field_type_DECL_SIZE(t);
  field_type_DECL_SIZE_UNIT(t);
  field_type_DECL_SOURCE_FILE(t);
  field_type_DECL_SOURCE_LINE(t);
  field_type_DECL_SOURCE_LOCATION(t);
  field_type_DECL_STATIC_CHAIN(t);
  field_type_DECL_STATIC_CONSTRUCTOR(t);
  field_type_DECL_STATIC_DESTRUCTOR(t);
  field_type_DECL_STRUCT_FUNCTION(t);
  field_type_DECL_THREAD_LOCAL_P(t);
  field_type_DECL_TLS_MODEL(t);
  field_type_DECL_UID(t);
  field_type_DECL_UNINLINABLE(t);
  field_type_DECL_UNSIGNED(t);
  field_type_DECL_USER_ALIGN(t);
  field_type_DECL_VALUE_EXPR(t);
  field_type_DECL_VAR_ANN_PTR(t);
  field_type_DECL_VINDEX(t);
  field_type_DECL_VIRTUAL_P(t);
  field_type_DECL_VISIBILITY(t);
  field_type_DECL_VISIBILITY_SPECIFIED(t);
  field_type_DECL_WEAK(t);
  */
  field_type_EH_FILTER_FAILURE(t);
  field_type_EH_FILTER_TYPES(t);
  field_type_EH_LANDING_PAD_NR(t);
  field_type_EXIT_EXPR_COND(t);
  field_type_EXPR_FILENAME(t);
  field_type_EXPR_HAS_LOCATION(t);
  field_type_EXPR_LINENO(t);
  field_type_EXPR_LOCATION(t);
  field_type_EXPR_P(t);
  field_type_FORCED_LABEL(t);
  field_type_GCC_IDENT_TO_HT_IDENT(t);
  field_type_GOTO_DESTINATION(t);
  field_type_HAS_DECL_ASSEMBLER_NAME_P(t);
  field_type_HAS_RTL_P(t);
  field_type_HT_IDENT_TO_GCC_IDENT(t);
  field_type_IDENTIFIER_HASH_VALUE(t);
  field_type_IDENTIFIER_LENGTH(t);
  field_type_IDENTIFIER_POINTER(t);
  field_type_IDENTIFIER_TRANSPARENT_ALIAS(t);
  field_type_IMPORTED_DECL_ASSOCIATED_DECL(t);
  field_type_IS_EMPTY_STMT(t);
  field_type_LABEL_DECL_UID(t);
  field_type_LABEL_EXPR_LABEL(t);
  field_type_LOOP_EXPR_BODY(t);
  field_type_MAIN_NAME_P(t);
  field_type_MOVE_NONTEMPORAL(t);
  field_type_OBJ_TYPE_REF_EXPR(t);
  field_type_OBJ_TYPE_REF_OBJECT(t);
  field_type_OBJ_TYPE_REF_TOKEN(t);
  field_type_OMP_BODY(t);
  field_type_OMP_CLAUSES(t);
  field_type_OMP_CLAUSE_CHAIN(t);
  field_type_OMP_CLAUSE_CODE(t);
  field_type_OMP_CLAUSE_CODE(t);
  field_type_OMP_CLAUSE_COLLAPSE_COUNT(t);
  field_type_OMP_CLAUSE_COLLAPSE_EXPR(t);
  field_type_OMP_CLAUSE_COLLAPSE_ITERVAR(t);
  field_type_OMP_CLAUSE_DECL(t);
  field_type_OMP_CLAUSE_DEFAULT_KIND(t);
  field_type_OMP_CLAUSE_HAS_LOCATION(t);
  field_type_OMP_CLAUSE_IF_EXPR(t);
  field_type_OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE(t);
  field_type_OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ(t);
  field_type_OMP_CLAUSE_LASTPRIVATE_STMT(t);
  field_type_OMP_CLAUSE_LOCATION(t);
  field_type_OMP_CLAUSE_NUM_THREADS_EXPR(t);
  field_type_OMP_CLAUSE_PRIVATE_DEBUG(t);
  field_type_OMP_CLAUSE_PRIVATE_OUTER_REF(t);
  field_type_OMP_CLAUSE_REDUCTION_CODE(t);
  field_type_OMP_CLAUSE_REDUCTION_GIMPLE_INIT(t);
  field_type_OMP_CLAUSE_REDUCTION_GIMPLE_MERGE(t);
  field_type_OMP_CLAUSE_REDUCTION_INIT(t);
  field_type_OMP_CLAUSE_REDUCTION_MERGE(t);
  field_type_OMP_CLAUSE_REDUCTION_PLACEHOLDER(t);
  field_type_OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(t);
  field_type_OMP_CLAUSE_SCHEDULE_KIND(t);
  field_type_OMP_CRITICAL_BODY(t);
  field_type_OMP_CRITICAL_NAME(t);
  field_type_OMP_FOR_BODY(t);
  field_type_OMP_FOR_CLAUSES(t);
  field_type_OMP_FOR_COND(t);
  field_type_OMP_FOR_INCR(t);
  field_type_OMP_FOR_INIT(t);
  field_type_OMP_FOR_PRE_BODY(t);
  field_type_OMP_MASTER_BODY(t);
  field_type_OMP_ORDERED_BODY(t);
  field_type_OMP_PARALLEL_BODY(t);
  field_type_OMP_PARALLEL_CLAUSES(t);
  field_type_OMP_PARALLEL_COMBINED(t);
  field_type_OMP_SECTIONS_BODY(t);
  field_type_OMP_SECTIONS_CLAUSES(t);
  field_type_OMP_SECTION_BODY(t);
  field_type_OMP_SECTION_LAST(t);
  field_type_OMP_SINGLE_BODY(t);
  field_type_OMP_SINGLE_CLAUSES(t);
  field_type_OMP_TASKREG_BODY(t);
  field_type_OMP_TASKREG_CHECK(t);
  field_type_OMP_TASKREG_CLAUSES(t);
  field_type_OMP_TASK_BODY(t);
  field_type_OMP_TASK_CLAUSES(t);
  field_type_PREDICT_EXPR_OUTCOME(t);
  field_type_PREDICT_EXPR_PREDICTOR(t);
  field_type_SAVE_EXPR_RESOLVED_P(t);
  field_type_SET_TYPE_STRUCTURAL_EQUALITY(t);
  field_type_SSA_NAME_DEF_STMT(t);
  field_type_SSA_NAME_IMM_USE_NODE(t);
  field_type_SSA_NAME_IN_FREE_LIST(t);
  field_type_SSA_NAME_IS_DEFAULT_DEF(t);
  field_type_SSA_NAME_OCCURS_IN_ABNORMAL_PHI(t);
  field_type_SSA_NAME_VAR(t);
  field_type_SSA_NAME_VERSION(t);
  field_type_STATEMENT_LIST_HEAD(t);
  field_type_STATEMENT_LIST_TAIL(t);
  //  field_type_SWITCH_BODY(t);
  //  field_type_SWITCH_COND(t);
  //  field_type_SWITCH_LABELS(t);
  //  field_type_TARGET_EXPR_CLEANUP(t);
  field_type_TARGET_EXPR_INITIAL(t);
  //  field_type_TARGET_EXPR_SLOT(t);
  field_type_TMR_BASE(t);
  //field_type_TMR_INDEX(t);
  //  field_type_TMR_OFFSET(t);
  //  field_type_TMR_ORIGINAL(t);
  //  field_type_TMR_STEP(t);
  //  field_type_TMR_SYMBOL(t);
  field_type_TREE_ADDRESSABLE(t);
  field_type_TREE_ASM_WRITTEN(t);
  //  field_type_TREE_BLOCK(t);
  field_type_TREE_CHAIN(t);
  field_type_TREE_CODE(t);
  field_type_TREE_CONSTANT(t);
  field_type_TREE_DEPRECATED(t);
  field_type_TREE_FIXED_CST(t);
  field_type_TREE_FIXED_CST_PTR(t);
  field_type_TREE_HASH(t);
  field_type_TREE_IMAGPART(t);
  field_type_TREE_INT_CST(t);
  field_type_TREE_INT_CST_HIGH(t);
  field_type_TREE_INT_CST_LOW(t);
  field_type_TREE_LANG_FLAG_0(t);
  field_type_TREE_LANG_FLAG_1(t);
  field_type_TREE_LANG_FLAG_2(t);
  field_type_TREE_LANG_FLAG_3(t);
  field_type_TREE_LANG_FLAG_4(t);
  field_type_TREE_LANG_FLAG_5(t);
  field_type_TREE_LANG_FLAG_6(t);
  field_type_TREE_NOTHROW(t);
  field_type_TREE_NO_TRAMPOLINE(t);
  field_type_TREE_NO_WARNING(t);
  field_type_TREE_OPERAND_LENGTH(t);
  field_type_TREE_OPTIMIZATION(t);
  field_type_TREE_OVERFLOW(t);
  field_type_TREE_PRIVATE(t);
  field_type_TREE_PROTECTED(t);
  field_type_TREE_PUBLIC(t);
  field_type_TREE_PURPOSE(t);
  field_type_TREE_READONLY(t);
  field_type_TREE_REALPART(t);
  field_type_TREE_REAL_CST(t);
  field_type_TREE_REAL_CST_PTR(t);
  field_type_TREE_SIDE_EFFECTS(t);
  field_type_TREE_STATIC(t);
  field_type_TREE_STRING_LENGTH(t);
  field_type_TREE_STRING_POINTER(t);
  field_type_TREE_SYMBOL_REFERENCED(t);
  field_type_TREE_TARGET_OPTION(t);
  field_type_TREE_THIS_NOTRAP(t);
  field_type_TREE_THIS_VOLATILE(t);
  field_type_TREE_TYPE(t);
  field_type_TREE_USED(t);
  field_type_TREE_VALUE(t);
  field_type_TREE_VECTOR_CST_ELTS(t);
  field_type_TREE_VEC_END(t);
  field_type_TREE_VEC_LENGTH(t);
  field_type_TREE_VISITED(t);
  field_type_TRY_CATCH_IS_CLEANUP(t);
  field_type_TYPE_ADDR_SPACE(t);
  field_type_TYPE_ALIAS_SET(t);
  field_type_TYPE_ALIAS_SET_KNOWN_P(t);
  field_type_TYPE_ALIGN(t);
  field_type_TYPE_ALIGN_OK(t);
  field_type_TYPE_ALIGN_UNIT(t);
  field_type_TYPE_ARG_TYPES(t);
  field_type_TYPE_ATTRIBUTES(t);
  field_type_TYPE_BINFO(t);
  field_type_TYPE_CACHED_VALUES(t);
  field_type_TYPE_CACHED_VALUES_P(t);
  field_type_TYPE_CANONICAL(t);
  field_type_TYPE_CONTAINS_PLACEHOLDER_INTERNAL(t);
  field_type_TYPE_CONTEXT(t);
  field_type_TYPE_DEBUG_REPRESENTATION_TYPE(t);
  field_type_TYPE_DECL_SUPPRESS_DEBUG(t);
  field_type_TYPE_DOMAIN(t);
  field_type_TYPE_FBIT(t);
  field_type_TYPE_FIELDS(t);
  field_type_TYPE_IBIT(t);
  field_type_TYPE_IS_SIZETYPE(t);
  field_type_TYPE_LANG_FLAG_0(t);
  field_type_TYPE_LANG_FLAG_1(t);
  field_type_TYPE_LANG_FLAG_2(t);
  field_type_TYPE_LANG_FLAG_3(t);
  field_type_TYPE_LANG_FLAG_4(t);
  field_type_TYPE_LANG_FLAG_5(t);
  field_type_TYPE_LANG_FLAG_6(t);
  field_type_TYPE_LANG_SLOT_1(t);
  field_type_TYPE_LANG_SPECIFIC(t);
  field_type_TYPE_MAIN_VARIANT(t);
  field_type_TYPE_MAXVAL(t);
  field_type_TYPE_MAX_VALUE(t);
  field_type_TYPE_METHODS(t);
  field_type_TYPE_METHOD_BASETYPE(t);
  field_type_TYPE_MINVAL(t);
  field_type_TYPE_MIN_VALUE(t);
  field_type_TYPE_MODE(t);
  field_type_TYPE_NAME(t);
  field_type_TYPE_NEEDS_CONSTRUCTING(t);
  field_type_TYPE_NEXT_PTR_TO(t);
  field_type_TYPE_NEXT_REF_TO(t);
  field_type_TYPE_NEXT_VARIANT(t);
  field_type_TYPE_NONALIASED_COMPONENT(t);
  field_type_TYPE_NO_FORCE_BLK(t);
  field_type_TYPE_OFFSET_BASETYPE(t);
  field_type_TYPE_ORIG_SIZE_TYPE(t);
  field_type_TYPE_PACKED(t);
  field_type_TYPE_POINTER_TO(t);
  field_type_TYPE_PRECISION(t);
  field_type_TYPE_QUALS(t);
  field_type_TYPE_QUALS_NO_ADDR_SPACE(t);
  field_type_TYPE_READONLY(t);
  field_type_TYPE_REFERENCE_TO(t);
  field_type_TYPE_REF_CAN_ALIAS_ALL(t);
  field_type_TYPE_RESTRICT(t);
  field_type_TYPE_SATURATING(t);
  field_type_TYPE_SIZE(t);
  field_type_TYPE_SIZES_GIMPLIFIED(t);
  field_type_TYPE_SIZE_UNIT(t);
  field_type_TYPE_STRING_FLAG(t);
  field_type_TYPE_STRUCTURAL_EQUALITY_P(t);
  field_type_TYPE_STUB_DECL(t);
  field_type_TYPE_SYMTAB_ADDRESS(t);
  field_type_TYPE_SYMTAB_DIE(t);
  field_type_TYPE_SYMTAB_POINTER(t);
  field_type_TYPE_TRANSPARENT_AGGR(t);
  field_type_TYPE_UID(t);
  field_type_TYPE_UNSIGNED(t);
  field_type_TYPE_USER_ALIGN(t);
  field_type_TYPE_VALUES(t);
  field_type_TYPE_VECTOR_OPAQUE(t);
  field_type_TYPE_VFIELD(t);
  field_type_TYPE_VOLATILE(t);
  field_type_VL_EXP_OPERAND_LENGTH(t);
  field_type_VOID_TYPE_P(t);
  field_type_call_expr_nargs(t);

}
