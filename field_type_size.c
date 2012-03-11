#include <stdio.h>
//#include "gcc-plugin.h"
#include "gcc-plugin.h"
#include "tree.h"
#include "plugin-version.h"
#include "tm.h"
#include "cp/cp-tree.h"
#include "ggc.h"
extern _IO_FILE * code_outputfile;
//#define ENTER  fprintf( code_outputfile,"FieldTypeSize at %s:%d\n", __FILE__, __LINE__);
//#define ENTER  fprintf( code_outputfile,"FieldTypeSize at %s:%d\n", __FILE__, __LINE__);
#define ENTER
#define PREFIX "field_type_size"

void field_type_size_EXPR_P(tree t)
{
  ENTER; if (EXPR_P(t)) {
    fprintf( code_outputfile,PREFIX "EXPR_P\n");
    fprintf( code_outputfile,PREFIX "EXPR_P %d\n",EXPR_P(t));
  }
}
void field_type_size_TREE_CODE(tree t)
{
  ENTER; if (TREE_CODE(t)) {
    fprintf( code_outputfile,PREFIX "TREE_CODE\n");
    fprintf( code_outputfile,PREFIX "TREE_CODE %d\n",TREE_CODE(t));
  }
}

void field_type_size_TREE_CHAIN(tree t)
{
  fprintf( code_outputfile,PREFIX "checking TREE_CHAIN\n");
  if (TREE_CHAIN(t)) {
    fprintf( code_outputfile,PREFIX "TREE_CHAIN\n");
    //tree:fprintf( code_outputfile,PREFIX "TREE_CHAIN %d\n",TREE_CHAIN(t));
  }
}

void field_type_size_TREE_TYPE(tree t)
{
  fprintf( code_outputfile,PREFIX "checking TREE_TYPE\n");
  if (TREE_TYPE(t)) {
    fprintf( code_outputfile,PREFIX "TREE_TYPE\n");
    //tree:fprintf( code_outputfile,PREFIX "TREE_TYPE %d\n",TREE_TYPE(t));
  }
  fprintf( code_outputfile,PREFIX "after checking TREE_TYPE\n");
}

void field_type_size_TREE_BLOCK(tree t)
{
  ENTER;
  if (TREE_BLOCK(t)) {
    fprintf( code_outputfile,PREFIX "TREE_BLOCK\n");
    //tree :fprintf( code_outputfile,PREFIX "TREE_BLOCK %d\n",TREE_BLOCK(t));
  }
}
void field_type_size_TREE_HASH(tree t)
{
  ENTER; if (TREE_HASH(t)) {
    fprintf( code_outputfile,PREFIX "TREE_HASH\n");
    fprintf( code_outputfile,PREFIX "TREE_HASH %ld\n",TREE_HASH(t));
  }
}
void field_type_size_COMPLETE_TYPE_P(tree t)
{
  ENTER; if (COMPLETE_TYPE_P(t)) {
    fprintf( code_outputfile,PREFIX "COMPLETE_TYPE_P\n");
    fprintf( code_outputfile,PREFIX "COMPLETE_TYPE_P %d\n",COMPLETE_TYPE_P(t));
  }
}
void field_type_size_VOID_TYPE_P(tree t)
{
  ENTER; if (VOID_TYPE_P(t)) {
    fprintf( code_outputfile,PREFIX "VOID_TYPE_P\n");
    fprintf( code_outputfile,PREFIX "VOID_TYPE_P %d\n",VOID_TYPE_P(t));
  }
}
void field_type_size_COMPLETE_OR_VOID_TYPE_P(tree t)
{
  ENTER; if (COMPLETE_OR_VOID_TYPE_P(t)) {
    fprintf( code_outputfile,PREFIX "COMPLETE_OR_VOID_TYPE_P\n");
    fprintf( code_outputfile,PREFIX "COMPLETE_OR_VOID_TYPE_P %d\n",COMPLETE_OR_VOID_TYPE_P(t));
  }
}
void field_type_size_COMPLETE_OR_UNBOUND_ARRAY_TYPE_P(tree t)
{
  ENTER; if (COMPLETE_OR_UNBOUND_ARRAY_TYPE_P(t)) {
    fprintf( code_outputfile,PREFIX "COMPLETE_OR_UNBOUND_ARRAY_TYPE_P\n");
    fprintf( code_outputfile,PREFIX "COMPLETE_OR_UNBOUND_ARRAY_TYPE_P %d\n",COMPLETE_OR_UNBOUND_ARRAY_TYPE_P(t));
  }
}
void field_type_size_TREE_ADDRESSABLE(tree t)
{
  ENTER; 
  if (TREE_ADDRESSABLE(t)) {
    fprintf( code_outputfile,PREFIX "TREE_ADDRESSABLE\n");
    fprintf( code_outputfile,PREFIX "TREE_ADDRESSABLE %d\n",TREE_ADDRESSABLE(t));
  }
}
void field_type_size_CALL_EXPR_TAILCALL(tree t)
{
  ENTER; if (CALL_EXPR_TAILCALL(t)) {
    fprintf( code_outputfile,PREFIX "CALL_EXPR_TAILCALL\n");
    fprintf( code_outputfile,PREFIX "CALL_EXPR_TAILCALL %d\n",CALL_EXPR_TAILCALL(t));
  }
}
void field_type_size_CASE_LOW_SEEN(tree t)
{
  ENTER; if (CASE_LOW_SEEN(t)) {
    fprintf( code_outputfile,PREFIX "CASE_LOW_SEEN\n");
    fprintf( code_outputfile,PREFIX "CASE_LOW_SEEN %d\n",CASE_LOW_SEEN(t));
  }
}
void field_type_size_PREDICT_EXPR_OUTCOME(tree t)
{
  /*
    if (PREDICT_EXPR_OUTCOME(t)) {
    fprintf( code_outputfile,PREFIX "PREDICT_EXPR_OUTCOME\n");
    fprintf( code_outputfile,PREFIX "PREDICT_EXPR_OUTCOME %d\n",PREDICT_EXPR_OUTCOME(t));
    }
  */
}
void field_type_size_PREDICT_EXPR_PREDICTOR(tree t)
{
  /*       if (PREDICT_EXPR_PREDICTOR(t)) {
	   fprintf( code_outputfile,PREFIX "PREDICT_EXPR_PREDICTOR\n");
	   fprintf( code_outputfile,PREFIX "PREDICT_EXPR_PREDICTOR %d\n",PREDICT_EXPR_PREDICTOR(t));
	   }
  */
}
void field_type_size_TREE_STATIC(tree t)
{
  ENTER; if (TREE_STATIC(t)) {
    fprintf( code_outputfile,PREFIX "TREE_STATIC\n");
    fprintf( code_outputfile,PREFIX "TREE_STATIC %d\n",TREE_STATIC(t));
  }
}
void field_type_size_TREE_NO_TRAMPOLINE(tree t)
{
  ENTER; if (TREE_NO_TRAMPOLINE(t)) {
    fprintf( code_outputfile,PREFIX "TREE_NO_TRAMPOLINE\n");
    fprintf( code_outputfile,PREFIX "TREE_NO_TRAMPOLINE %d\n",TREE_NO_TRAMPOLINE(t));
  }
}
void field_type_size_CLEANUP_EH_ONLY(tree t)
{
  ENTER; if (CLEANUP_EH_ONLY(t)) {
    fprintf( code_outputfile,PREFIX "CLEANUP_EH_ONLY\n");
    fprintf( code_outputfile,PREFIX "CLEANUP_EH_ONLY %d\n",CLEANUP_EH_ONLY(t));
  }
}
void field_type_size_TRY_CATCH_IS_CLEANUP(tree t)
{
  ENTER; if (TRY_CATCH_IS_CLEANUP(t)) {
    fprintf( code_outputfile,PREFIX "TRY_CATCH_IS_CLEANUP\n");
    fprintf( code_outputfile,PREFIX "TRY_CATCH_IS_CLEANUP %d\n",TRY_CATCH_IS_CLEANUP(t));
  }
}
void field_type_size_CASE_HIGH_SEEN(tree t)
{
  ENTER; if (CASE_HIGH_SEEN(t)) {
    fprintf( code_outputfile,PREFIX "CASE_HIGH_SEEN\n");
    fprintf( code_outputfile,PREFIX "CASE_HIGH_SEEN %d\n",CASE_HIGH_SEEN(t));
  }
}
void field_type_size_CALL_CANNOT_INLINE_P(tree t)
{
  ENTER; if (CALL_CANNOT_INLINE_P(t)) {
    fprintf( code_outputfile,PREFIX "CALL_CANNOT_INLINE_P\n");
    fprintf( code_outputfile,PREFIX "CALL_CANNOT_INLINE_P %d\n",CALL_CANNOT_INLINE_P(t));
  }
}
void field_type_size_TREE_NO_WARNING(tree t)
{
  ENTER; if (TREE_NO_WARNING(t)) {
    fprintf( code_outputfile,PREFIX "TREE_NO_WARNING\n");
    fprintf( code_outputfile,PREFIX "TREE_NO_WARNING %d\n",TREE_NO_WARNING(t));
  }
}
void field_type_size_TREE_SYMBOL_REFERENCED(tree t)
{
  ENTER; if (TREE_SYMBOL_REFERENCED(t)) {
    fprintf( code_outputfile,PREFIX "TREE_SYMBOL_REFERENCED\n");
    fprintf( code_outputfile,PREFIX "TREE_SYMBOL_REFERENCED %d\n",TREE_SYMBOL_REFERENCED(t));
  }
}
void field_type_size_TYPE_REF_CAN_ALIAS_ALL(tree t)
{
  ENTER; if (TYPE_REF_CAN_ALIAS_ALL(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_REF_CAN_ALIAS_ALL\n");
    fprintf( code_outputfile,PREFIX "TYPE_REF_CAN_ALIAS_ALL %d\n",TYPE_REF_CAN_ALIAS_ALL(t));
  }
}
void field_type_size_MOVE_NONTEMPORAL(tree t)
{
  ENTER; if (MOVE_NONTEMPORAL(t)) {
    fprintf( code_outputfile,PREFIX "MOVE_NONTEMPORAL\n");
    fprintf( code_outputfile,PREFIX "MOVE_NONTEMPORAL %d\n",MOVE_NONTEMPORAL(t));
  }
}
void field_type_size_TREE_OVERFLOW(tree t)
{
  ENTER; if (TREE_OVERFLOW(t)) {
    fprintf( code_outputfile,PREFIX "TREE_OVERFLOW\n");
    fprintf( code_outputfile,PREFIX "TREE_OVERFLOW %d\n",TREE_OVERFLOW(t));
  }
}
void field_type_size_TREE_PUBLIC(tree t)
{
  ENTER; if (TREE_PUBLIC(t)) {
    fprintf( code_outputfile,PREFIX "TREE_PUBLIC\n");
    fprintf( code_outputfile,PREFIX "TREE_PUBLIC %d\n",TREE_PUBLIC(t));
  }
}
void field_type_size_TYPE_CACHED_VALUES_P(tree t)
{
  ENTER; if (TYPE_CACHED_VALUES_P(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_CACHED_VALUES_P\n");
    fprintf( code_outputfile,PREFIX "TYPE_CACHED_VALUES_P %d\n",TYPE_CACHED_VALUES_P(t));
  }
}
void field_type_size_SAVE_EXPR_RESOLVED_P(tree t)
{
  ENTER; if (SAVE_EXPR_RESOLVED_P(t)) {
    fprintf( code_outputfile,PREFIX "SAVE_EXPR_RESOLVED_P\n");
    fprintf( code_outputfile,PREFIX "SAVE_EXPR_RESOLVED_P %d\n",SAVE_EXPR_RESOLVED_P(t));
  }
}
void field_type_size_CALL_EXPR_VA_ARG_PACK(tree t)
{
  ENTER; if (CALL_EXPR_VA_ARG_PACK(t)) {
    fprintf( code_outputfile,PREFIX "CALL_EXPR_VA_ARG_PACK\n");
    fprintf( code_outputfile,PREFIX "CALL_EXPR_VA_ARG_PACK %d\n",CALL_EXPR_VA_ARG_PACK(t));
  }
}
void field_type_size_TREE_SIDE_EFFECTS(tree t)
{
  ENTER; if (TREE_SIDE_EFFECTS(t)) {
    fprintf( code_outputfile,PREFIX "TREE_SIDE_EFFECTS\n");
    fprintf( code_outputfile,PREFIX "TREE_SIDE_EFFECTS %d\n",TREE_SIDE_EFFECTS(t));
  }
}
void field_type_size_FORCED_LABEL(tree t)
{
  ENTER; if (FORCED_LABEL(t)) {
    fprintf( code_outputfile,PREFIX "FORCED_LABEL\n");
    fprintf( code_outputfile,PREFIX "FORCED_LABEL %d\n",FORCED_LABEL(t));
  }
}
void field_type_size_TREE_THIS_VOLATILE(tree t)
{
  ENTER; if (TREE_THIS_VOLATILE(t)) {
    fprintf( code_outputfile,PREFIX "TREE_THIS_VOLATILE\n");
    fprintf( code_outputfile,PREFIX "TREE_THIS_VOLATILE %d\n",TREE_THIS_VOLATILE(t));
  }
}
void field_type_size_TREE_THIS_NOTRAP(tree t)
{
  ENTER; if (TREE_THIS_NOTRAP(t)) {
    fprintf( code_outputfile,PREFIX "TREE_THIS_NOTRAP\n");
    fprintf( code_outputfile,PREFIX "TREE_THIS_NOTRAP %d\n",TREE_THIS_NOTRAP(t));
  }
}
void field_type_size_TREE_READONLY(tree t)
{
  ENTER; if (TREE_READONLY(t)) {
    fprintf( code_outputfile,PREFIX "TREE_READONLY\n");
    fprintf( code_outputfile,PREFIX "TREE_READONLY %d\n",TREE_READONLY(t));
  }
}
void field_type_size_TREE_CONSTANT(tree t)
{
  ENTER; if (TREE_CONSTANT(t)) {
    fprintf( code_outputfile,PREFIX "TREE_CONSTANT\n");
    fprintf( code_outputfile,PREFIX "TREE_CONSTANT %d\n",TREE_CONSTANT(t));
  }
}
void field_type_size_TYPE_SIZES_GIMPLIFIED(tree t)
{
  ENTER; if (TYPE_SIZES_GIMPLIFIED(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_SIZES_GIMPLIFIED\n");
    fprintf( code_outputfile,PREFIX "TYPE_SIZES_GIMPLIFIED %d\n",TYPE_SIZES_GIMPLIFIED(t));
  }
}
void field_type_size_DECL_UNSIGNED(tree t)
{
  ENTER; if (DECL_UNSIGNED(t)) {
    fprintf( code_outputfile,PREFIX "DECL_UNSIGNED\n");
    fprintf( code_outputfile,PREFIX "DECL_UNSIGNED %d\n",DECL_UNSIGNED(t));
  }
}
void field_type_size_TYPE_UNSIGNED(tree t)
{
  ENTER; if (TYPE_UNSIGNED(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_UNSIGNED\n");
    fprintf( code_outputfile,PREFIX "TYPE_UNSIGNED %d\n",TYPE_UNSIGNED(t));
  }
}
void field_type_size_TREE_ASM_WRITTEN(tree t)
{
  ENTER; if (TREE_ASM_WRITTEN(t)) {
    fprintf( code_outputfile,PREFIX "TREE_ASM_WRITTEN\n");
    fprintf( code_outputfile,PREFIX "TREE_ASM_WRITTEN %d\n",TREE_ASM_WRITTEN(t));
  }
}
void field_type_size_TREE_USED(tree t)
{
  ENTER; if (TREE_USED(t)) {
    fprintf( code_outputfile,PREFIX "TREE_USED\n");
    fprintf( code_outputfile,PREFIX "TREE_USED %d\n",TREE_USED(t));
  }
}
void field_type_size_TREE_NOTHROW(tree t)
{
  ENTER; if (TREE_NOTHROW(t)) {
    fprintf( code_outputfile,PREFIX "TREE_NOTHROW\n");
    fprintf( code_outputfile,PREFIX "TREE_NOTHROW %d\n",TREE_NOTHROW(t));
  }
}
void field_type_size_CALL_EXPR_RETURN_SLOT_OPT(tree t)
{
  ENTER; if (CALL_EXPR_RETURN_SLOT_OPT(t)) {
    fprintf( code_outputfile,PREFIX "CALL_EXPR_RETURN_SLOT_OPT\n");
    fprintf( code_outputfile,PREFIX "CALL_EXPR_RETURN_SLOT_OPT %d\n",CALL_EXPR_RETURN_SLOT_OPT(t));
  }
}
void field_type_size_DECL_BY_REFERENCE(tree t)
{
  ENTER; if (DECL_BY_REFERENCE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_BY_REFERENCE\n");
    fprintf( code_outputfile,PREFIX "DECL_BY_REFERENCE %d\n",DECL_BY_REFERENCE(t));
  }
}
void field_type_size_DECL_RESTRICTED_P(tree t)
{
  ENTER; if (DECL_RESTRICTED_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_RESTRICTED_P\n");
    fprintf( code_outputfile,PREFIX "DECL_RESTRICTED_P %d\n",DECL_RESTRICTED_P(t));
  }
}
void field_type_size_CALL_FROM_THUNK_P(tree t)
{
  ENTER; if (CALL_FROM_THUNK_P(t)) {
    fprintf( code_outputfile,PREFIX "CALL_FROM_THUNK_P\n");
    fprintf( code_outputfile,PREFIX "CALL_FROM_THUNK_P %d\n",CALL_FROM_THUNK_P(t));
  }
}
void field_type_size_TYPE_ALIGN_OK(tree t)
{
  ENTER; if (TYPE_ALIGN_OK(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_ALIGN_OK\n");
    fprintf( code_outputfile,PREFIX "TYPE_ALIGN_OK %d\n",TYPE_ALIGN_OK(t));
  }
}
void field_type_size_TREE_PRIVATE(tree t)
{
  ENTER; if (TREE_PRIVATE(t)) {
    fprintf( code_outputfile,PREFIX "TREE_PRIVATE\n");
    fprintf( code_outputfile,PREFIX "TREE_PRIVATE %d\n",TREE_PRIVATE(t));
  }
}
void field_type_size_TREE_PROTECTED(tree t)
{
  ENTER; if (TREE_PROTECTED(t)) {
    fprintf( code_outputfile,PREFIX "TREE_PROTECTED\n");
    fprintf( code_outputfile,PREFIX "TREE_PROTECTED %d\n",TREE_PROTECTED(t));
  }
}
void field_type_size_TREE_DEPRECATED(tree t)
{
  ENTER; if (TREE_DEPRECATED(t)) {
    fprintf( code_outputfile,PREFIX "TREE_DEPRECATED\n");
    fprintf( code_outputfile,PREFIX "TREE_DEPRECATED %d\n",TREE_DEPRECATED(t));
  }
}
void field_type_size_IDENTIFIER_TRANSPARENT_ALIAS(tree t)
{
  ENTER; if (IDENTIFIER_TRANSPARENT_ALIAS(t)) {
    fprintf( code_outputfile,PREFIX "IDENTIFIER_TRANSPARENT_ALIAS\n");
    fprintf( code_outputfile,PREFIX "IDENTIFIER_TRANSPARENT_ALIAS %d\n",IDENTIFIER_TRANSPARENT_ALIAS(t));
  }
}
void field_type_size_TYPE_SATURATING(tree t)
{
  ENTER; if (TYPE_SATURATING(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_SATURATING\n");
    fprintf( code_outputfile,PREFIX "TYPE_SATURATING %d\n",TYPE_SATURATING(t));
  }
}
void field_type_size_TREE_LANG_FLAG_0(tree t)
{
  ENTER; if (TREE_LANG_FLAG_0(t)) {
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_0\n");
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_0 %d\n",TREE_LANG_FLAG_0(t));
  }
}
void field_type_size_TREE_LANG_FLAG_1(tree t)
{
  ENTER; if (TREE_LANG_FLAG_1(t)) {
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_1\n");
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_1 %d\n",TREE_LANG_FLAG_1(t));
  }
}
void field_type_size_TREE_LANG_FLAG_2(tree t)
{
  ENTER; if (TREE_LANG_FLAG_2(t)) {
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_2\n");
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_2 %d\n",TREE_LANG_FLAG_2(t));
  }
}
void field_type_size_TREE_LANG_FLAG_3(tree t)
{
  ENTER; if (TREE_LANG_FLAG_3(t)) {
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_3\n");
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_3 %d\n",TREE_LANG_FLAG_3(t));
  }
}
void field_type_size_TREE_LANG_FLAG_4(tree t)
{
  ENTER; if (TREE_LANG_FLAG_4(t)) {
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_4\n");
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_4 %d\n",TREE_LANG_FLAG_4(t));
  }
}
void field_type_size_TREE_LANG_FLAG_5(tree t)
{
  ENTER; if (TREE_LANG_FLAG_5(t)) {
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_5\n");
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_5 %d\n",TREE_LANG_FLAG_5(t));
  }
}
void field_type_size_TREE_LANG_FLAG_6(tree t)
{
  ENTER; if (TREE_LANG_FLAG_6(t)) {
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_6\n");
    fprintf( code_outputfile,PREFIX "TREE_LANG_FLAG_6 %d\n",TREE_LANG_FLAG_6(t));
  }
}
void field_type_size_TREE_INT_CST(tree t)
{
  /*
    if (TREE_INT_CST(t)) {
    fprintf( code_outputfile,PREFIX "TREE_INT_CST\n");
    fprintf( code_outputfile,PREFIX "TREE_INT_CST %d\n",TREE_INT_CST(t));
    }
  */
}
void field_type_size_TREE_INT_CST_LOW(tree t)
{
  ENTER; if (TREE_INT_CST_LOW(t)) {
    fprintf( code_outputfile,PREFIX "TREE_INT_CST_LOW\n");
    fprintf( code_outputfile,PREFIX "TREE_INT_CST_LOW %ld\n",TREE_INT_CST_LOW(t));
  }
}
void field_type_size_TREE_INT_CST_HIGH(tree t)
{
  ENTER; if (TREE_INT_CST_HIGH(t)) {
    fprintf( code_outputfile,PREFIX "TREE_INT_CST_HIGH\n");
    fprintf( code_outputfile,PREFIX "TREE_INT_CST_HIGH %ld\n",TREE_INT_CST_HIGH(t));
  }
}
void field_type_size_TREE_REAL_CST_PTR(tree t)
{
  ENTER; if (TREE_REAL_CST_PTR(t)) {
    fprintf( code_outputfile,PREFIX "TREE_REAL_CST_PTR\n");
    fprintf( code_outputfile,PREFIX "TREE_REAL_CST_PTR %p\n",TREE_REAL_CST_PTR(t));
  }
}
void field_type_size_TREE_REAL_CST(tree t)
{
  /*if (TREE_REAL_CST(t)) {
    fprintf( code_outputfile,PREFIX "TREE_REAL_CST\n");
    fprintf( code_outputfile,PREFIX "TREE_REAL_CST %d\n",TREE_REAL_CST(t));
    }*/
}
void field_type_size_TREE_FIXED_CST_PTR(tree t)
{
  ENTER; if (TREE_FIXED_CST_PTR(t)) {
    fprintf( code_outputfile,PREFIX "TREE_FIXED_CST_PTR\n");
    fprintf( code_outputfile,PREFIX "TREE_FIXED_CST_PTR %p\n",TREE_FIXED_CST_PTR(t));
  }
}
void field_type_size_TREE_FIXED_CST(tree t)
{
  /*       if (TREE_FIXED_CST(t)) {
	   fprintf( code_outputfile,PREFIX "TREE_FIXED_CST\n");
	   fprintf( code_outputfile,PREFIX "TREE_FIXED_CST %d\n",TREE_FIXED_CST(t));
	   }*/
}
void field_type_size_TREE_STRING_LENGTH(tree t)
{
  ENTER; if (TREE_STRING_LENGTH(t)) {
    fprintf( code_outputfile,PREFIX "TREE_STRING_LENGTH\n");
    fprintf( code_outputfile,PREFIX "TREE_STRING_LENGTH %d\n",TREE_STRING_LENGTH(t));
  }
}
void field_type_size_TREE_STRING_POINTER(tree t)
{
  ENTER; if (TREE_STRING_POINTER(t)) {
    fprintf( code_outputfile,PREFIX "TREE_STRING_POINTER\n");
    fprintf( code_outputfile,PREFIX "TREE_STRING_POINTER %s\n",TREE_STRING_POINTER(t));
  }
}
void field_type_size_TREE_REALPART(tree t)
{
  ENTER; if (TREE_REALPART(t)) {
    fprintf( code_outputfile,PREFIX "TREE_REALPART\n");
    fprintf( code_outputfile,PREFIX "TREE_REALPART %p\n",TREE_REALPART(t));
  }
}
void field_type_size_TREE_IMAGPART(tree t)
{
  ENTER; if (TREE_IMAGPART(t)) {
    fprintf( code_outputfile,PREFIX "TREE_IMAGPART\n");
    fprintf( code_outputfile,PREFIX "TREE_IMAGPART %p\n",TREE_IMAGPART(t));
  }
}
void field_type_size_TREE_VECTOR_CST_ELTS(tree t)
{
  ENTER; if (TREE_VECTOR_CST_ELTS(t)) {
    fprintf( code_outputfile,PREFIX "TREE_VECTOR_CST_ELTS\n");
    fprintf( code_outputfile,PREFIX "TREE_VECTOR_CST_ELTS %p\n",TREE_VECTOR_CST_ELTS(t));
  }
}
void field_type_size_IDENTIFIER_LENGTH(tree t)
{
  ENTER; if (IDENTIFIER_LENGTH(t)) {
    fprintf( code_outputfile,PREFIX "IDENTIFIER_LENGTH\n");
    fprintf( code_outputfile,PREFIX "IDENTIFIER_LENGTH %d\n",IDENTIFIER_LENGTH(t));
  }
}
void field_type_size_IDENTIFIER_POINTER(tree t)
{
  ENTER; if (IDENTIFIER_POINTER(t)) {
    fprintf( code_outputfile,PREFIX "IDENTIFIER_POINTER\n");
    fprintf( code_outputfile,PREFIX "IDENTIFIER_POINTER %s\n",IDENTIFIER_POINTER(t));
  }
}
void field_type_size_IDENTIFIER_HASH_VALUE(tree t)
{
  ENTER; if (IDENTIFIER_HASH_VALUE(t)) {
    fprintf( code_outputfile,PREFIX "IDENTIFIER_HASH_VALUE\n");
    fprintf( code_outputfile,PREFIX "IDENTIFIER_HASH_VALUE %d\n",IDENTIFIER_HASH_VALUE(t));
  }
}
void field_type_size_HT_IDENT_TO_GCC_IDENT(tree t)
{
  ENTER; if (HT_IDENT_TO_GCC_IDENT(t)) {
    fprintf( code_outputfile,PREFIX "HT_IDENT_TO_GCC_IDENT\n");
    fprintf( code_outputfile,PREFIX "HT_IDENT_TO_GCC_IDENT %p\n",HT_IDENT_TO_GCC_IDENT(t));
  }
}
void field_type_size_GCC_IDENT_TO_HT_IDENT(tree t)
{
  ENTER; if (GCC_IDENT_TO_HT_IDENT(t)) {
    fprintf( code_outputfile,PREFIX "GCC_IDENT_TO_HT_IDENT\n");
    fprintf( code_outputfile,PREFIX "GCC_IDENT_TO_HT_IDENT %p\n",GCC_IDENT_TO_HT_IDENT(t));
  }
}
void field_type_size_TREE_PURPOSE(tree t)
{
  ENTER; if (TREE_PURPOSE(t)) {
    fprintf( code_outputfile,PREFIX "TREE_PURPOSE\n");
    fprintf( code_outputfile,PREFIX "TREE_PURPOSE %p\n",TREE_PURPOSE(t));
  }
}
void field_type_size_TREE_VALUE(tree t)
{
  ENTER; if (TREE_VALUE(t)) {
    fprintf( code_outputfile,PREFIX "TREE_VALUE\n");
    fprintf( code_outputfile,PREFIX "TREE_VALUE %p\n",TREE_VALUE(t));
  }
}
void field_type_size_TREE_VEC_LENGTH(tree t)
{
  ENTER; if (TREE_VEC_LENGTH(t)) {
    fprintf( code_outputfile,PREFIX "TREE_VEC_LENGTH\n");
    fprintf( code_outputfile,PREFIX "TREE_VEC_LENGTH %d\n",TREE_VEC_LENGTH(t));
  }
}
void field_type_size_TREE_VEC_END(tree t)
{
  ENTER; if (TREE_VEC_END(t)) {
    fprintf( code_outputfile,PREFIX "TREE_VEC_END\n");
    fprintf( code_outputfile,PREFIX "TREE_VEC_END %p\n",TREE_VEC_END(t)); //union tree_node **
  }
}
void field_type_size_CONSTRUCTOR_ELTS(tree t)
{
  ENTER; if (CONSTRUCTOR_ELTS(t)) {
    fprintf( code_outputfile,PREFIX "CONSTRUCTOR_ELTS\n");
    fprintf( code_outputfile,PREFIX "CONSTRUCTOR_ELTS %p\n",CONSTRUCTOR_ELTS(t)); //struct VEC_constructor_elt_gc *
  }
}
void field_type_size_CONSTRUCTOR_NELTS(tree t)
{
  ENTER; if (CONSTRUCTOR_NELTS(t)) {
    fprintf( code_outputfile,PREFIX "CONSTRUCTOR_NELTS\n");
    fprintf( code_outputfile,PREFIX "CONSTRUCTOR_NELTS %d\n",CONSTRUCTOR_NELTS(t));
  }
}
void field_type_size_CONSTRUCTOR_BITFIELD_P(tree t)
{
  ENTER; if (CONSTRUCTOR_BITFIELD_P(t)) {
    fprintf( code_outputfile,PREFIX "CONSTRUCTOR_BITFIELD_P\n");
    fprintf( code_outputfile,PREFIX "CONSTRUCTOR_BITFIELD_P %d\n",CONSTRUCTOR_BITFIELD_P(t));
  }
}
void field_type_size_IS_EMPTY_STMT(tree t)
{
  ENTER; if (IS_EMPTY_STMT(t)) {
    fprintf( code_outputfile,PREFIX "IS_EMPTY_STMT\n");
    fprintf( code_outputfile,PREFIX "IS_EMPTY_STMT %d\n",IS_EMPTY_STMT(t));
  }
}
void field_type_size_TREE_OPERAND_LENGTH(tree t)
{
  ENTER; if (TREE_OPERAND_LENGTH(t)) {
    fprintf( code_outputfile,PREFIX "TREE_OPERAND_LENGTH\n");
    fprintf( code_outputfile,PREFIX "TREE_OPERAND_LENGTH %d\n",TREE_OPERAND_LENGTH(t));
  }
}
void field_type_size_VL_EXP_OPERAND_LENGTH(tree t)
{
  ENTER; if (VL_EXP_OPERAND_LENGTH(t)) {
    fprintf( code_outputfile,PREFIX "VL_EXP_OPERAND_LENGTH\n");
    fprintf( code_outputfile,PREFIX "VL_EXP_OPERAND_LENGTH %d\n",VL_EXP_OPERAND_LENGTH(t));
  }
}
void field_type_size_LOOP_EXPR_BODY(tree t)
{
  ENTER; if (LOOP_EXPR_BODY(t)) {
    fprintf( code_outputfile,PREFIX "LOOP_EXPR_BODY\n");
    fprintf( code_outputfile,PREFIX "LOOP_EXPR_BODY %p\n",LOOP_EXPR_BODY(t));//tree
  }
}
void field_type_size_EXPR_LOCATION(tree t)
{
  ENTER; if (EXPR_LOCATION(t)) {
    fprintf( code_outputfile,PREFIX "EXPR_LOCATION\n");
    fprintf( code_outputfile,PREFIX "EXPR_LOCATION %d\n",EXPR_LOCATION(t));
  }
}
void field_type_size_EXPR_HAS_LOCATION(tree t)
{
  ENTER; if (EXPR_HAS_LOCATION(t)) {
    fprintf( code_outputfile,PREFIX "EXPR_HAS_LOCATION\n");
    fprintf( code_outputfile,PREFIX "EXPR_HAS_LOCATION %d\n",EXPR_HAS_LOCATION(t));
  }
}
void field_type_size_EXPR_FILENAME(tree t)
{
  ENTER; if (EXPR_FILENAME(t)) {
    fprintf( code_outputfile,PREFIX "EXPR_FILENAME\n");
    fprintf( code_outputfile,PREFIX "EXPR_FILENAME %s\n",EXPR_FILENAME(t));
  }
}
void field_type_size_EXPR_LINENO(tree t)
{
  ENTER; if (EXPR_LINENO(t)) {
    fprintf( code_outputfile,PREFIX "EXPR_LINENO\n");
    fprintf( code_outputfile,PREFIX "EXPR_LINENO %d\n",EXPR_LINENO(t));
  }
}
void field_type_size_CAN_HAVE_LOCATION_P(tree t)
{
  ENTER; if (CAN_HAVE_LOCATION_P(t)) {
    fprintf( code_outputfile,PREFIX "CAN_HAVE_LOCATION_P\n");
    fprintf( code_outputfile,PREFIX "CAN_HAVE_LOCATION_P %d\n",CAN_HAVE_LOCATION_P(t));
  }
}
void field_type_size_TARGET_EXPR_SLOT(tree t)
{
  ENTER; 
  if (TARGET_EXPR_SLOT(t)) {
    fprintf( code_outputfile,PREFIX "TARGET_EXPR_SLOT\n");
    //crash fprintf( code_outputfile,PREFIX "TARGET_EXPR_SLOT %p\n",TARGET_EXPR_SLOT(t)); //tree
  }
}
void field_type_size_TARGET_EXPR_INITIAL(tree t)
{
  ENTER; if (TARGET_EXPR_INITIAL(t)) {
    fprintf( code_outputfile,PREFIX "TARGET_EXPR_INITIAL\n");
    fprintf( code_outputfile,PREFIX "TARGET_EXPR_INITIAL %p\n",TARGET_EXPR_INITIAL(t));//tree
  }
}
void field_type_size_TARGET_EXPR_CLEANUP(tree t)
{
  ENTER; if (TARGET_EXPR_CLEANUP(t)) {
    fprintf( code_outputfile,PREFIX "TARGET_EXPR_CLEANUP\n");
    fprintf( code_outputfile,PREFIX "TARGET_EXPR_CLEANUP %p\n",TARGET_EXPR_CLEANUP(t));//tree
  }
}
void field_type_size_DECL_EXPR_DECL(tree t)
{
  ENTER; if (DECL_EXPR_DECL(t)) {
    fprintf( code_outputfile,PREFIX "DECL_EXPR_DECL\n");
    fprintf( code_outputfile,PREFIX "DECL_EXPR_DECL %p\n",DECL_EXPR_DECL(t));//tree
  }
}

void field_type_size_EXIT_EXPR_COND(tree t)
{
  ENTER; if (EXIT_EXPR_COND(t)) {
    fprintf( code_outputfile,PREFIX "EXIT_EXPR_COND\n");
    fprintf( code_outputfile,PREFIX "EXIT_EXPR_COND %p\n",EXIT_EXPR_COND(t));//tree
  }
}
void field_type_size_COMPOUND_LITERAL_EXPR_DECL_EXPR(tree t)
{
  ENTER; if (COMPOUND_LITERAL_EXPR_DECL_EXPR(t)) {
    fprintf( code_outputfile,PREFIX "COMPOUND_LITERAL_EXPR_DECL_EXPR\n");
    fprintf( code_outputfile,PREFIX "COMPOUND_LITERAL_EXPR_DECL_EXPR %p\n",COMPOUND_LITERAL_EXPR_DECL_EXPR(t));//tree
  }
}
void field_type_size_COMPOUND_LITERAL_EXPR_DECL(tree t)
{
  ENTER; if (COMPOUND_LITERAL_EXPR_DECL(t)) {
    fprintf( code_outputfile,PREFIX "COMPOUND_LITERAL_EXPR_DECL\n");
    fprintf( code_outputfile,PREFIX "COMPOUND_LITERAL_EXPR_DECL %p\n",COMPOUND_LITERAL_EXPR_DECL(t));//tree
  }
}
void field_type_size_SWITCH_COND(tree t)
{
  ENTER; if (SWITCH_COND(t)) {
    fprintf( code_outputfile,PREFIX "SWITCH_COND\n");
    fprintf( code_outputfile,PREFIX "SWITCH_COND %p\n",SWITCH_COND(t));// tree
  }
}
void field_type_size_SWITCH_BODY(tree t)
{
  ENTER; if (SWITCH_BODY(t)) {
    fprintf( code_outputfile,PREFIX "SWITCH_BODY\n");
    fprintf( code_outputfile,PREFIX "SWITCH_BODY %p\n",SWITCH_BODY(t));// tree
  }
}

void field_type_size_SWITCH_LABELS(tree t)
{
  ENTER; if (SWITCH_LABELS(t)) {
    fprintf( code_outputfile,PREFIX "SWITCH_LABELS\n");
    fprintf( code_outputfile,PREFIX "SWITCH_LABELS %p\n",SWITCH_LABELS(t));
  }
}

void field_type_size_CASE_LOW(tree t)
{
  ENTER; if (CASE_LOW(t)) {
    fprintf( code_outputfile,PREFIX "CASE_LOW\n");
    fprintf( code_outputfile,PREFIX "CASE_LOW %p\n",CASE_LOW(t));//tree
  }
}
void field_type_size_CASE_HIGH(tree t)
{
  ENTER; if (CASE_HIGH(t)) {
    fprintf( code_outputfile,PREFIX "CASE_HIGH\n");
    fprintf( code_outputfile,PREFIX "CASE_HIGH %p\n",CASE_HIGH(t));//tree
  }
}

void field_type_size_CASE_LABEL(tree t)
{
  ENTER; if (CASE_LABEL(t)) {
    fprintf( code_outputfile,PREFIX "CASE_LABEL\n");
    fprintf( code_outputfile,PREFIX "CASE_LABEL %p\n",CASE_LABEL(t));//tree
  }
}

void field_type_size_TMR_SYMBOL(tree t)
{
  ENTER; //if (TMR_SYMBOL(t)) {
  //    fprintf( code_outputfile,PREFIX "TMR_SYMBOL CRASHES\n");
    //CRASH fprintf( code_outputfile,PREFIX "TMR_SYMBOL %p\n",TMR_SYMBOL(t));//tree
    //  }
}
void field_type_size_TMR_BASE(tree t)
{
  ENTER; if (TMR_BASE(t)) {
    fprintf( code_outputfile,PREFIX "TMR_BASE\n");
    fprintf( code_outputfile,PREFIX "TMR_BASE %p\n",TMR_BASE(t));//tree
  }
}
void field_type_size_TMR_INDEX(tree t)
{
  ENTER; if (TMR_INDEX(t)) {
    fprintf( code_outputfile,PREFIX "TMR_INDEX\n");
    fprintf( code_outputfile,PREFIX "TMR_INDEX %p\n",TMR_INDEX(t));//tree
  }
}
void field_type_size_TMR_STEP(tree t)
{
  ENTER; if (TMR_STEP(t)) {
    fprintf( code_outputfile,PREFIX "TMR_STEP\n");
    fprintf( code_outputfile,PREFIX "TMR_STEP %p\n",TMR_STEP(t));//tree
  }
}
void field_type_size_TMR_OFFSET(tree t)
{
  ENTER; if (TMR_OFFSET(t)) {
    fprintf( code_outputfile,PREFIX "TMR_OFFSET\n");
    fprintf( code_outputfile,PREFIX "TMR_OFFSET %p\n",TMR_OFFSET(t));//tree
  }
}
void field_type_size_TMR_ORIGINAL(tree t)
{
  ENTER; if (TMR_ORIGINAL(t)) {
    fprintf( code_outputfile,PREFIX "TMR_ORIGINAL\n");
    fprintf( code_outputfile,PREFIX "TMR_ORIGINAL %p\n",TMR_ORIGINAL(t));//tree
  }
}
void field_type_size_BIND_EXPR_VARS(tree t)
{
  ENTER; if (BIND_EXPR_VARS(t)) {
    fprintf( code_outputfile,PREFIX "BIND_EXPR_VARS\n");
    fprintf( code_outputfile,PREFIX "BIND_EXPR_VARS %p\n",BIND_EXPR_VARS(t));//tree
  }
}
void field_type_size_BIND_EXPR_BODY(tree t)
{
  ENTER; if (BIND_EXPR_BODY(t)) {
    fprintf( code_outputfile,PREFIX "BIND_EXPR_BODY\n");
    fprintf( code_outputfile,PREFIX "BIND_EXPR_BODY %p\n",BIND_EXPR_BODY(t));//tree
  }
}
void field_type_size_BIND_EXPR_BLOCK(tree t)
{
  ENTER; if (BIND_EXPR_BLOCK(t)) {
    fprintf( code_outputfile,PREFIX "BIND_EXPR_BLOCK\n");
    fprintf( code_outputfile,PREFIX "BIND_EXPR_BLOCK %p\n",BIND_EXPR_BLOCK(t));//tree
  }
}
void field_type_size_GOTO_DESTINATION(tree t)
{
  ENTER; if (GOTO_DESTINATION(t)) {
    fprintf( code_outputfile,PREFIX "GOTO_DESTINATION\n");
    fprintf( code_outputfile,PREFIX "GOTO_DESTINATION %p\n",GOTO_DESTINATION(t));//tree
  }
}
void field_type_size_ASM_STRING(tree t)
{
  ENTER; if (ASM_STRING(t)) {
    fprintf( code_outputfile,PREFIX "ASM_STRING\n");
    fprintf( code_outputfile,PREFIX "ASM_STRING %p\n",ASM_STRING(t));//tree
  }
}
void field_type_size_ASM_OUTPUTS(tree t)
{
  ENTER; if (ASM_OUTPUTS(t)) {
    fprintf( code_outputfile,PREFIX "ASM_OUTPUTS\n");
    fprintf( code_outputfile,PREFIX "ASM_OUTPUTS %p\n",ASM_OUTPUTS(t));//tree
  }
}
void field_type_size_ASM_INPUTS(tree t)
{
  ENTER; if (ASM_INPUTS(t)) {
    fprintf( code_outputfile,PREFIX "ASM_INPUTS\n");
    fprintf( code_outputfile,PREFIX "ASM_INPUTS %p\n",ASM_INPUTS(t));//tree
  }
}
void field_type_size_ASM_CLOBBERS(tree t)
{
  ENTER; if (ASM_CLOBBERS(t)) {
    fprintf( code_outputfile,PREFIX "ASM_CLOBBERS\n");
    fprintf( code_outputfile,PREFIX "ASM_CLOBBERS %p\n",ASM_CLOBBERS(t));//tree
  }
}
void field_type_size_ASM_LABELS(tree t)
{
  ENTER; if (ASM_LABELS(t)) {
    fprintf( code_outputfile,PREFIX "ASM_LABELS\n");
    fprintf( code_outputfile,PREFIX "ASM_LABELS %p\n",ASM_LABELS(t));//tree
  }
}
void field_type_size_ASM_INPUT_P(tree t)
{
  ENTER; if (ASM_INPUT_P(t)) {
    fprintf( code_outputfile,PREFIX "ASM_INPUT_P\n");
    fprintf( code_outputfile,PREFIX "ASM_INPUT_P %d\n",ASM_INPUT_P(t));
  }
}
void field_type_size_ASM_VOLATILE_P(tree t)
{
  ENTER; if (ASM_VOLATILE_P(t)) {
    fprintf( code_outputfile,PREFIX "ASM_VOLATILE_P\n");
    fprintf( code_outputfile,PREFIX "ASM_VOLATILE_P %d\n",ASM_VOLATILE_P(t));
  }
}
void field_type_size_COND_EXPR_COND(tree t)
{
  ENTER; if (COND_EXPR_COND(t)) {
    fprintf( code_outputfile,PREFIX "COND_EXPR_COND\n");
    fprintf( code_outputfile,PREFIX "COND_EXPR_COND %p\n",COND_EXPR_COND(t));//tree
  }
}
void field_type_size_COND_EXPR_THEN(tree t)
{
  ENTER; if (COND_EXPR_THEN(t)) {
    fprintf( code_outputfile,PREFIX "COND_EXPR_THEN\n");
    fprintf( code_outputfile,PREFIX "COND_EXPR_THEN %p\n",COND_EXPR_THEN(t));//tree
  }
}
void field_type_size_COND_EXPR_ELSE(tree t)
{
  ENTER; if (COND_EXPR_ELSE(t)) {
    fprintf( code_outputfile,PREFIX "COND_EXPR_ELSE\n");
    fprintf( code_outputfile,PREFIX "COND_EXPR_ELSE %p\n",COND_EXPR_ELSE(t));//tree
  }
}
void field_type_size_CHREC_VAR(tree t)
{
  ENTER; if (CHREC_VAR(t)) {
    fprintf( code_outputfile,PREFIX "CHREC_VAR\n");
    fprintf( code_outputfile,PREFIX "CHREC_VAR %p\n",CHREC_VAR(t));//tree
  }
}
void field_type_size_CHREC_LEFT(tree t)
{
  ENTER; if (CHREC_LEFT(t)) {
    fprintf( code_outputfile,PREFIX "CHREC_LEFT\n");
    fprintf( code_outputfile,PREFIX "CHREC_LEFT %p\n",CHREC_LEFT(t));//tree
  }
}
void field_type_size_CHREC_RIGHT(tree t)
{
  ENTER; if (CHREC_RIGHT(t)) {
    fprintf( code_outputfile,PREFIX "CHREC_RIGHT\n");
    fprintf( code_outputfile,PREFIX "CHREC_RIGHT %p\n",CHREC_RIGHT(t));//tree
  }
}
void field_type_size_CHREC_VARIABLE(tree t)
{
  ENTER; if (CHREC_VARIABLE(t)) {
    fprintf( code_outputfile,PREFIX "CHREC_VARIABLE\n");
    fprintf( code_outputfile,PREFIX "CHREC_VARIABLE %lu\n",CHREC_VARIABLE(t));
  }
}
void field_type_size_LABEL_EXPR_LABEL(tree t)
{
  ENTER; if (LABEL_EXPR_LABEL(t)) {
    fprintf( code_outputfile,PREFIX "LABEL_EXPR_LABEL\n");
    fprintf( code_outputfile,PREFIX "LABEL_EXPR_LABEL %p\n",LABEL_EXPR_LABEL(t));//tree
  }
}
void field_type_size_CATCH_TYPES(tree t)
{
  ENTER; if (CATCH_TYPES(t)) {
    fprintf( code_outputfile,PREFIX "CATCH_TYPES\n");
    fprintf( code_outputfile,PREFIX "CATCH_TYPES %p\n",CATCH_TYPES(t));//tree
  }
}
void field_type_size_CATCH_BODY(tree t)
{
  ENTER; if (CATCH_BODY(t)) {
    fprintf( code_outputfile,PREFIX "CATCH_BODY\n");
    fprintf( code_outputfile,PREFIX "CATCH_BODY %p\n",CATCH_BODY(t));//tree
  }
}
void field_type_size_EH_FILTER_TYPES(tree t)
{
  ENTER; if (EH_FILTER_TYPES(t)) {
    fprintf( code_outputfile,PREFIX "EH_FILTER_TYPES\n");
    fprintf( code_outputfile,PREFIX "EH_FILTER_TYPES %p\n",EH_FILTER_TYPES(t));//tree
  }
}
void field_type_size_EH_FILTER_FAILURE(tree t)
{
  ENTER; if (EH_FILTER_FAILURE(t)) {
    fprintf( code_outputfile,PREFIX "EH_FILTER_FAILURE\n");
    fprintf( code_outputfile,PREFIX "EH_FILTER_FAILURE %p\n",EH_FILTER_FAILURE(t));//tree
  }
}
void field_type_size_OBJ_TYPE_REF_EXPR(tree t)
{
  ENTER; if (OBJ_TYPE_REF_EXPR(t)) {
    fprintf( code_outputfile,PREFIX "OBJ_TYPE_REF_EXPR\n");
    fprintf( code_outputfile,PREFIX "OBJ_TYPE_REF_EXPR %p\n",OBJ_TYPE_REF_EXPR(t));//tree
  }
}
void field_type_size_OBJ_TYPE_REF_OBJECT(tree t)
{
  ENTER; if (OBJ_TYPE_REF_OBJECT(t)) {
    fprintf( code_outputfile,PREFIX "OBJ_TYPE_REF_OBJECT\n");
    fprintf( code_outputfile,PREFIX "OBJ_TYPE_REF_OBJECT %p\n",OBJ_TYPE_REF_OBJECT(t));//tree
  }
}
void field_type_size_OBJ_TYPE_REF_TOKEN(tree t)
{
  ENTER; if (OBJ_TYPE_REF_TOKEN(t)) {
    fprintf( code_outputfile,PREFIX "OBJ_TYPE_REF_TOKEN\n");
    fprintf( code_outputfile,PREFIX "OBJ_TYPE_REF_TOKEN %p\n",OBJ_TYPE_REF_TOKEN(t));//tree
  }
}
void field_type_size_ASSERT_EXPR_VAR(tree t)
{
  ENTER; if (ASSERT_EXPR_VAR(t)) {
    fprintf( code_outputfile,PREFIX "ASSERT_EXPR_VAR\n");
    fprintf( code_outputfile,PREFIX "ASSERT_EXPR_VAR %p\n",ASSERT_EXPR_VAR(t));//tree
  }
}
void field_type_size_ASSERT_EXPR_COND(tree t)
{
  ENTER; if (ASSERT_EXPR_COND(t)) {
    fprintf( code_outputfile,PREFIX "ASSERT_EXPR_COND\n");
    fprintf( code_outputfile,PREFIX "ASSERT_EXPR_COND %p\n",ASSERT_EXPR_COND(t));
  }
}
void field_type_size_CALL_EXPR_FN(tree t)
{
  ENTER; if (CALL_EXPR_FN(t)) {
    fprintf( code_outputfile,PREFIX "CALL_EXPR_FN\n");
    fprintf( code_outputfile,PREFIX "CALL_EXPR_FN %p\n",CALL_EXPR_FN(t));//tree
  }
}
void field_type_size_CALL_EXPR_STATIC_CHAIN(tree t)
{
  ENTER; if (CALL_EXPR_STATIC_CHAIN(t)) {
    fprintf( code_outputfile,PREFIX "CALL_EXPR_STATIC_CHAIN\n");
    fprintf( code_outputfile,PREFIX "CALL_EXPR_STATIC_CHAIN %p\n",CALL_EXPR_STATIC_CHAIN(t));
  }
}
void field_type_size_CALL_EXPR_ARGS(tree t)
{
  ENTER; if (CALL_EXPR_ARGS(t)) {
    fprintf( code_outputfile,PREFIX "CALL_EXPR_ARGS\n");
    fprintf( code_outputfile,PREFIX "CALL_EXPR_ARGS %p\n",CALL_EXPR_ARGS(t));
  }
}
void field_type_size_call_expr_nargs(tree t)
{
  ENTER; if (call_expr_nargs(t)) {
    fprintf( code_outputfile,PREFIX "call_expr_nargs\n");
    fprintf( code_outputfile,PREFIX "call_expr_nargs %d\n",call_expr_nargs(t));
  }
}
void field_type_size_CALL_EXPR_ARGP(tree t)
{
  ENTER; if (CALL_EXPR_ARGP(t)) {
    fprintf( code_outputfile,PREFIX "CALL_EXPR_ARGP\n");
    fprintf( code_outputfile,PREFIX "CALL_EXPR_ARGP %p\n",CALL_EXPR_ARGP(t));//union tree_node **
  }
}
void field_type_size_OMP_BODY(tree t)
{
  ENTER; if (OMP_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_BODY %p\n",OMP_BODY(t));
  }
}
void field_type_size_OMP_CLAUSES(tree t)
{
  ENTER; if (OMP_CLAUSES(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSES\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSES %p\n",OMP_CLAUSES(t));
  }
}
void field_type_size_OMP_PARALLEL_BODY(tree t)
{
  ENTER; if (OMP_PARALLEL_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_PARALLEL_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_PARALLEL_BODY %p\n",OMP_PARALLEL_BODY(t));
  }
}
void field_type_size_OMP_PARALLEL_CLAUSES(tree t)
{
  ENTER; if (OMP_PARALLEL_CLAUSES(t)) {
    fprintf( code_outputfile,PREFIX "OMP_PARALLEL_CLAUSES\n");
    fprintf( code_outputfile,PREFIX "OMP_PARALLEL_CLAUSES %p\n",OMP_PARALLEL_CLAUSES(t));
  }
}
void field_type_size_OMP_TASK_BODY(tree t)
{
  ENTER; if (OMP_TASK_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_TASK_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_TASK_BODY %p\n",OMP_TASK_BODY(t));
  }
}
void field_type_size_OMP_TASK_CLAUSES(tree t)
{
  ENTER; if (OMP_TASK_CLAUSES(t)) {
    fprintf( code_outputfile,PREFIX "OMP_TASK_CLAUSES\n");
    fprintf( code_outputfile,PREFIX "OMP_TASK_CLAUSES %p\n",OMP_TASK_CLAUSES(t));
  }
}
void field_type_size_OMP_TASKREG_CHECK(tree t)
{
  ENTER; if (OMP_TASKREG_CHECK(t)) {
    fprintf( code_outputfile,PREFIX "OMP_TASKREG_CHECK\n");
    fprintf( code_outputfile,PREFIX "OMP_TASKREG_CHECK %p\n",OMP_TASKREG_CHECK(t));
  }
}
void field_type_size_OMP_TASKREG_BODY(tree t)
{
  ENTER; if (OMP_TASKREG_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_TASKREG_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_TASKREG_BODY %p\n",OMP_TASKREG_BODY(t));
  }
}
void field_type_size_OMP_TASKREG_CLAUSES(tree t)
{
  ENTER; if (OMP_TASKREG_CLAUSES(t)) {
    fprintf( code_outputfile,PREFIX "OMP_TASKREG_CLAUSES\n");
    fprintf( code_outputfile,PREFIX "OMP_TASKREG_CLAUSES %p\n",OMP_TASKREG_CLAUSES(t));
  }
}
void field_type_size_OMP_FOR_BODY(tree t)
{
  ENTER; if (OMP_FOR_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_FOR_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_FOR_BODY %p\n",OMP_FOR_BODY(t));
  }
}
void field_type_size_OMP_FOR_CLAUSES(tree t)
{
  ENTER; if (OMP_FOR_CLAUSES(t)) {
    fprintf( code_outputfile,PREFIX "OMP_FOR_CLAUSES\n");
    fprintf( code_outputfile,PREFIX "OMP_FOR_CLAUSES %p\n",OMP_FOR_CLAUSES(t));
  }
}
void field_type_size_OMP_FOR_INIT(tree t)
{
  ENTER; if (OMP_FOR_INIT(t)) {
    fprintf( code_outputfile,PREFIX "OMP_FOR_INIT\n");
    fprintf( code_outputfile,PREFIX "OMP_FOR_INIT %p\n",OMP_FOR_INIT(t));
  }
}
void field_type_size_OMP_FOR_COND(tree t)
{
  ENTER; if (OMP_FOR_COND(t)) {
    fprintf( code_outputfile,PREFIX "OMP_FOR_COND\n");
    fprintf( code_outputfile,PREFIX "OMP_FOR_COND %p\n",OMP_FOR_COND(t));
  }
}
void field_type_size_OMP_FOR_INCR(tree t)
{
  ENTER; if (OMP_FOR_INCR(t)) {
    fprintf( code_outputfile,PREFIX "OMP_FOR_INCR\n");
    fprintf( code_outputfile,PREFIX "OMP_FOR_INCR %p\n",OMP_FOR_INCR(t));
  }
}
void field_type_size_OMP_FOR_PRE_BODY(tree t)
{
  ENTER; if (OMP_FOR_PRE_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_FOR_PRE_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_FOR_PRE_BODY %p\n",OMP_FOR_PRE_BODY(t));
  }
}
void field_type_size_OMP_SECTIONS_BODY(tree t)
{
  ENTER; if (OMP_SECTIONS_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_SECTIONS_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_SECTIONS_BODY %p\n",OMP_SECTIONS_BODY(t));
  }
}
void field_type_size_OMP_SECTIONS_CLAUSES(tree t)
{
  ENTER; if (OMP_SECTIONS_CLAUSES(t)) {
    fprintf( code_outputfile,PREFIX "OMP_SECTIONS_CLAUSES\n");
    fprintf( code_outputfile,PREFIX "OMP_SECTIONS_CLAUSES %p\n",OMP_SECTIONS_CLAUSES(t));
  }
}
void field_type_size_OMP_SECTION_BODY(tree t)
{
  ENTER; if (OMP_SECTION_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_SECTION_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_SECTION_BODY %p\n",OMP_SECTION_BODY(t));
  }
}
void field_type_size_OMP_SINGLE_BODY(tree t)
{
  ENTER; if (OMP_SINGLE_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_SINGLE_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_SINGLE_BODY %p\n",OMP_SINGLE_BODY(t));
  }
}
void field_type_size_OMP_SINGLE_CLAUSES(tree t)
{
  ENTER; if (OMP_SINGLE_CLAUSES(t)) {
    fprintf( code_outputfile,PREFIX "OMP_SINGLE_CLAUSES\n");
    fprintf( code_outputfile,PREFIX "OMP_SINGLE_CLAUSES %p\n",OMP_SINGLE_CLAUSES(t));
  }
}
void field_type_size_OMP_MASTER_BODY(tree t)
{
  ENTER; if (OMP_MASTER_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_MASTER_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_MASTER_BODY %p\n",OMP_MASTER_BODY(t));
  }
}
void field_type_size_OMP_ORDERED_BODY(tree t)
{
  ENTER; if (OMP_ORDERED_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_ORDERED_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_ORDERED_BODY %p\n",OMP_ORDERED_BODY(t));
  }
}
void field_type_size_OMP_CRITICAL_BODY(tree t)
{
  ENTER; if (OMP_CRITICAL_BODY(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CRITICAL_BODY\n");
    fprintf( code_outputfile,PREFIX "OMP_CRITICAL_BODY %p\n",OMP_CRITICAL_BODY(t));
  }
}
void field_type_size_OMP_CRITICAL_NAME(tree t)
{
  ENTER; if (OMP_CRITICAL_NAME(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CRITICAL_NAME\n");
    fprintf( code_outputfile,PREFIX "OMP_CRITICAL_NAME %p\n",OMP_CRITICAL_NAME(t));
  }
}
void field_type_size_OMP_CLAUSE_CHAIN(tree t)
{
  ENTER; if (OMP_CLAUSE_CHAIN(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_CHAIN\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_CHAIN %p\n",OMP_CLAUSE_CHAIN(t));
  }
}
void field_type_size_OMP_CLAUSE_DECL(tree t)
{
  ENTER; if (OMP_CLAUSE_DECL(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_DECL\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_DECL %p\n",OMP_CLAUSE_DECL(t));
  }
}
void field_type_size_OMP_CLAUSE_HAS_LOCATION(tree t)
{
  ENTER; if (OMP_CLAUSE_HAS_LOCATION(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_HAS_LOCATION\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_HAS_LOCATION %d\n",OMP_CLAUSE_HAS_LOCATION(t));
  }
}
void field_type_size_OMP_CLAUSE_LOCATION(tree t)
{
  ENTER; if (OMP_CLAUSE_LOCATION(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_LOCATION\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_LOCATION %d\n",OMP_CLAUSE_LOCATION(t));
  }
}
void field_type_size_OMP_SECTION_LAST(tree t)
{
  ENTER; if (OMP_SECTION_LAST(t)) {
    fprintf( code_outputfile,PREFIX "OMP_SECTION_LAST\n");
    fprintf( code_outputfile,PREFIX "OMP_SECTION_LAST %d\n",OMP_SECTION_LAST(t));
  }
}
void field_type_size_OMP_PARALLEL_COMBINED(tree t)
{
  ENTER; if (OMP_PARALLEL_COMBINED(t)) {
    fprintf( code_outputfile,PREFIX "OMP_PARALLEL_COMBINED\n");
    fprintf( code_outputfile,PREFIX "OMP_PARALLEL_COMBINED %d\n",OMP_PARALLEL_COMBINED(t));
  }
}
void field_type_size_OMP_CLAUSE_PRIVATE_DEBUG(tree t)
{
  ENTER; if (OMP_CLAUSE_PRIVATE_DEBUG(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_PRIVATE_DEBUG\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_PRIVATE_DEBUG %d\n",OMP_CLAUSE_PRIVATE_DEBUG(t));
  }
}
void field_type_size_OMP_CLAUSE_PRIVATE_OUTER_REF(tree t)
{
  ENTER; if (OMP_CLAUSE_PRIVATE_OUTER_REF(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_PRIVATE_OUTER_REF\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_PRIVATE_OUTER_REF %d\n",OMP_CLAUSE_PRIVATE_OUTER_REF(t));
  }
}
void field_type_size_OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE(tree t)
{
  ENTER; if (OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE %d\n",OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE(t));
  }
}
void field_type_size_OMP_CLAUSE_LASTPRIVATE_STMT(tree t)
{
  ENTER; if (OMP_CLAUSE_LASTPRIVATE_STMT(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_LASTPRIVATE_STMT\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_LASTPRIVATE_STMT %p\n",OMP_CLAUSE_LASTPRIVATE_STMT(t));
  }
}
void field_type_size_OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ(tree t)
{
  ENTER; if (OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ\n");
    //fprintf( code_outputfile,PREFIX "OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ %d\n",OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ(t));
  }//gimple_seq
}
void field_type_size_OMP_CLAUSE_IF_EXPR(tree t)
{
  ENTER; if (OMP_CLAUSE_IF_EXPR(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_IF_EXPR\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_IF_EXPR %p\n",OMP_CLAUSE_IF_EXPR(t));
  }
}
void field_type_size_OMP_CLAUSE_NUM_THREADS_EXPR(tree t)
{
  ENTER; if (OMP_CLAUSE_NUM_THREADS_EXPR(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_NUM_THREADS_EXPR\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_NUM_THREADS_EXPR %p\n",OMP_CLAUSE_NUM_THREADS_EXPR(t));
  }
}
void field_type_size_OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(tree t)
{
  ENTER; if (OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_SCHEDULE_CHUNK_EXPR\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_SCHEDULE_CHUNK_EXPR %p\n",OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(t));
  }
}
void field_type_size_OMP_CLAUSE_COLLAPSE_EXPR(tree t)
{
  ENTER; if (OMP_CLAUSE_COLLAPSE_EXPR(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_COLLAPSE_EXPR\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_COLLAPSE_EXPR %p\n",OMP_CLAUSE_COLLAPSE_EXPR(t));
  }
}
void field_type_size_OMP_CLAUSE_COLLAPSE_ITERVAR(tree t)
{
  ENTER; if (OMP_CLAUSE_COLLAPSE_ITERVAR(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_COLLAPSE_ITERVAR\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_COLLAPSE_ITERVAR %p\n",OMP_CLAUSE_COLLAPSE_ITERVAR(t));
  }
}
void field_type_size_OMP_CLAUSE_COLLAPSE_COUNT(tree t)
{
  ENTER; if (OMP_CLAUSE_COLLAPSE_COUNT(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_COLLAPSE_COUNT\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_COLLAPSE_COUNT %p\n",OMP_CLAUSE_COLLAPSE_COUNT(t));
  }
}
void field_type_size_OMP_CLAUSE_REDUCTION_CODE(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_CODE(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_CODE\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_CODE %d\n",OMP_CLAUSE_REDUCTION_CODE(t));
  }
}
void field_type_size_OMP_CLAUSE_REDUCTION_INIT(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_INIT(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_INIT\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_INIT %p\n",OMP_CLAUSE_REDUCTION_INIT(t));
  }
}
void field_type_size_OMP_CLAUSE_REDUCTION_MERGE(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_MERGE(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_MERGE\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_MERGE %p\n",OMP_CLAUSE_REDUCTION_MERGE(t));
  }
}
void field_type_size_OMP_CLAUSE_REDUCTION_GIMPLE_INIT(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_GIMPLE_INIT(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_GIMPLE_INIT\n");
    //gimple_seq fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_GIMPLE_INIT %d\n",OMP_CLAUSE_REDUCTION_GIMPLE_INIT(t));
  }
}
void field_type_size_OMP_CLAUSE_REDUCTION_GIMPLE_MERGE(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_GIMPLE_MERGE(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_GIMPLE_MERGE\n");
    //gimple_seq         fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_GIMPLE_MERGE %d\n",OMP_CLAUSE_REDUCTION_GIMPLE_MERGE(t));
  }
}
void field_type_size_OMP_CLAUSE_REDUCTION_PLACEHOLDER(tree t)
{
  ENTER; if (OMP_CLAUSE_REDUCTION_PLACEHOLDER(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_PLACEHOLDER\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_REDUCTION_PLACEHOLDER %p\n",OMP_CLAUSE_REDUCTION_PLACEHOLDER(t));
  }
}
void field_type_size_OMP_CLAUSE_SCHEDULE_KIND(tree t)
{
  ENTER; if (OMP_CLAUSE_SCHEDULE_KIND(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_SCHEDULE_KIND\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_SCHEDULE_KIND %d\n",OMP_CLAUSE_SCHEDULE_KIND(t));
  }
}
void field_type_size_OMP_CLAUSE_DEFAULT_KIND(tree t)
{
  ENTER; if (OMP_CLAUSE_DEFAULT_KIND(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_DEFAULT_KIND\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_DEFAULT_KIND %d\n",OMP_CLAUSE_DEFAULT_KIND(t));
  }
}
void field_type_size_SSA_NAME_VAR(tree t)
{
  ENTER; if (SSA_NAME_VAR(t)) {
    fprintf( code_outputfile,PREFIX "SSA_NAME_VAR\n");
    fprintf( code_outputfile,PREFIX "SSA_NAME_VAR %p\n",SSA_NAME_VAR(t));
  }
}
void field_type_size_SSA_NAME_DEF_STMT(tree t)
{
  ENTER; if (SSA_NAME_DEF_STMT(t)) {
    fprintf( code_outputfile,PREFIX "SSA_NAME_DEF_STMT\n");
    //gimple        fprintf( code_outputfile,PREFIX "SSA_NAME_DEF_STMT %d\n",SSA_NAME_DEF_STMT(t));
  }
}
void field_type_size_SSA_NAME_VERSION(tree t)
{
  ENTER; if (SSA_NAME_VERSION(t)) {
    fprintf( code_outputfile,PREFIX "SSA_NAME_VERSION\n");
    fprintf( code_outputfile,PREFIX "SSA_NAME_VERSION %d\n",SSA_NAME_VERSION(t));
  }
}
void field_type_size_SSA_NAME_OCCURS_IN_ABNORMAL_PHI(tree t)
{
  ENTER; if (SSA_NAME_OCCURS_IN_ABNORMAL_PHI(t)) {
    fprintf( code_outputfile,PREFIX "SSA_NAME_OCCURS_IN_ABNORMAL_PHI\n");
    fprintf( code_outputfile,PREFIX "SSA_NAME_OCCURS_IN_ABNORMAL_PHI %d\n",SSA_NAME_OCCURS_IN_ABNORMAL_PHI(t));
  }
}
void field_type_size_SSA_NAME_IN_FREE_LIST(tree t)
{
  ENTER; if (SSA_NAME_IN_FREE_LIST(t)) {
    fprintf( code_outputfile,PREFIX "SSA_NAME_IN_FREE_LIST\n");
    fprintf( code_outputfile,PREFIX "SSA_NAME_IN_FREE_LIST %d\n",SSA_NAME_IN_FREE_LIST(t));
  }
}
void field_type_size_SSA_NAME_IS_DEFAULT_DEF(tree t)
{
  ENTER; if (SSA_NAME_IS_DEFAULT_DEF(t)) {
    fprintf( code_outputfile,PREFIX "SSA_NAME_IS_DEFAULT_DEF\n");
    fprintf( code_outputfile,PREFIX "SSA_NAME_IS_DEFAULT_DEF %d\n",SSA_NAME_IS_DEFAULT_DEF(t));
  }
}
void field_type_size_SSA_NAME_IMM_USE_NODE(tree t)
{
  /*       if (SSA_NAME_IMM_USE_NODE(t)) {
	   fprintf( code_outputfile,PREFIX "SSA_NAME_IMM_USE_NODE\n");
	   fprintf( code_outputfile,PREFIX "SSA_NAME_IMM_USE_NODE %d\n",SSA_NAME_IMM_USE_NODE(t));
	   }
  */
}
void field_type_size_OMP_CLAUSE_CODE(tree t)
{
  ENTER; if (OMP_CLAUSE_CODE(t)) {
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_CODE\n");
    fprintf( code_outputfile,PREFIX "OMP_CLAUSE_CODE %d\n",OMP_CLAUSE_CODE(t));
  }
}

void field_type_size_BLOCK_VARS(tree t)
{
  ENTER; if (BLOCK_VARS(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_VARS\n");
    fprintf( code_outputfile,PREFIX "BLOCK_VARS %p\n",BLOCK_VARS(t));
  }
}
void field_type_size_BLOCK_NONLOCALIZED_VARS(tree t)
{
  ENTER; if (BLOCK_NONLOCALIZED_VARS(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_NONLOCALIZED_VARS\n");
    //fprintf( code_outputfile,PREFIX "BLOCK_NONLOCALIZED_VARS %d\n",BLOCK_NONLOCALIZED_VARS(t));
    //struct VEC_tree_gc *
  }
}
void field_type_size_BLOCK_NUM_NONLOCALIZED_VARS(tree t)
{
  
  ENTER; if (BLOCK_NUM_NONLOCALIZED_VARS(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_NUM_NONLOCALIZED_VARS\n");
    fprintf( code_outputfile,PREFIX "BLOCK_NUM_NONLOCALIZED_VARS %d\n",BLOCK_NUM_NONLOCALIZED_VARS(t));
  }
}
void field_type_size_BLOCK_SUBBLOCKS(tree t)
{
  ENTER; if (BLOCK_SUBBLOCKS(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_SUBBLOCKS\n");
    fprintf( code_outputfile,PREFIX "BLOCK_SUBBLOCKS %p\n",BLOCK_SUBBLOCKS(t));
  }
}
void field_type_size_BLOCK_SUPERCONTEXT(tree t)
{
  ENTER; if (BLOCK_SUPERCONTEXT(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_SUPERCONTEXT\n");
    fprintf( code_outputfile,PREFIX "BLOCK_SUPERCONTEXT %p\n",BLOCK_SUPERCONTEXT(t));
  }
}
void field_type_size_BLOCK_CHAIN(tree t)
{
  ENTER; if (BLOCK_CHAIN(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_CHAIN\n");
    fprintf( code_outputfile,PREFIX "BLOCK_CHAIN %p\n",BLOCK_CHAIN(t));
  }
}
void field_type_size_BLOCK_ABSTRACT_ORIGIN(tree t)
{
  ENTER; if (BLOCK_ABSTRACT_ORIGIN(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_ABSTRACT_ORIGIN\n");
    fprintf( code_outputfile,PREFIX "BLOCK_ABSTRACT_ORIGIN %p\n",BLOCK_ABSTRACT_ORIGIN(t));
  }
}
void field_type_size_BLOCK_ABSTRACT(tree t)
{
  ENTER; if (BLOCK_ABSTRACT(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_ABSTRACT\n");
    fprintf( code_outputfile,PREFIX "BLOCK_ABSTRACT %d\n",BLOCK_ABSTRACT(t));
  }
}
void field_type_size_BLOCK_NUMBER(tree t)
{
  ENTER; if (BLOCK_NUMBER(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_NUMBER\n");
    fprintf( code_outputfile,PREFIX "BLOCK_NUMBER %d\n",BLOCK_NUMBER(t));
  }
}
void field_type_size_BLOCK_FRAGMENT_ORIGIN(tree t)
{
  ENTER; if (BLOCK_FRAGMENT_ORIGIN(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_FRAGMENT_ORIGIN\n");
    fprintf( code_outputfile,PREFIX "BLOCK_FRAGMENT_ORIGIN %p\n",BLOCK_FRAGMENT_ORIGIN(t));
  }
}
void field_type_size_BLOCK_FRAGMENT_CHAIN(tree t)
{
  ENTER; if (BLOCK_FRAGMENT_CHAIN(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_FRAGMENT_CHAIN\n");
    fprintf( code_outputfile,PREFIX "BLOCK_FRAGMENT_CHAIN %p\n",BLOCK_FRAGMENT_CHAIN(t));
  }
}
void field_type_size_BLOCK_SOURCE_LOCATION(tree t)
{
  ENTER; if (BLOCK_SOURCE_LOCATION(t)) {
    fprintf( code_outputfile,PREFIX "BLOCK_SOURCE_LOCATION\n");
    fprintf( code_outputfile,PREFIX "BLOCK_SOURCE_LOCATION %d\n",BLOCK_SOURCE_LOCATION(t));
  }
}
void field_type_size_TYPE_UID(tree t)
{
  ENTER; if (TYPE_UID(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_UID\n");
    fprintf( code_outputfile,PREFIX "TYPE_UID %d\n",TYPE_UID(t));
  }
}
void field_type_size_TYPE_SIZE(tree t)
{
  ENTER; if (TYPE_SIZE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_SIZE\n");
    fprintf( code_outputfile,PREFIX "TYPE_SIZE %p\n",TYPE_SIZE(t));
  }
}
void field_type_size_TYPE_SIZE_UNIT(tree t)
{
  ENTER; if (TYPE_SIZE_UNIT(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_SIZE_UNIT\n");
    fprintf( code_outputfile,PREFIX "TYPE_SIZE_UNIT %p\n",TYPE_SIZE_UNIT(t));
  }
}
void field_type_size_TYPE_VALUES(tree t)
{
  ENTER; if (TYPE_VALUES(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_VALUES\n");
    fprintf( code_outputfile,PREFIX "TYPE_VALUES %p\n",TYPE_VALUES(t));
  }
}
void field_type_size_TYPE_DOMAIN(tree t)
{
  ENTER; if (TYPE_DOMAIN(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_DOMAIN\n");
    fprintf( code_outputfile,PREFIX "TYPE_DOMAIN %p\n",TYPE_DOMAIN(t));
  }
}
void field_type_size_TYPE_FIELDS(tree t)
{
  ENTER; if (TYPE_FIELDS(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_FIELDS\n");
    fprintf( code_outputfile,PREFIX "TYPE_FIELDS %p\n",TYPE_FIELDS(t));
  }
}
void field_type_size_TYPE_CACHED_VALUES(tree t)
{
  ENTER; if (TYPE_CACHED_VALUES(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_CACHED_VALUES\n");
    fprintf( code_outputfile,PREFIX "TYPE_CACHED_VALUES %p\n",TYPE_CACHED_VALUES(t));
  }
}
void field_type_size_TYPE_ORIG_SIZE_TYPE(tree t)
{
  ENTER; if (TYPE_ORIG_SIZE_TYPE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_ORIG_SIZE_TYPE\n");
    //fprintf( code_outputfile,PREFIX "TYPE_ORIG_SIZE_TYPE %d\n",TYPE_ORIG_SIZE_TYPE(t));
    //union tree_node *
  }
}
void field_type_size_TYPE_METHODS(tree t)
{
  ENTER; if (TYPE_METHODS(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_METHODS\n");
    fprintf( code_outputfile,PREFIX "TYPE_METHODS %p\n",TYPE_METHODS(t));
  }
}
void field_type_size_TYPE_VFIELD(tree t)
{
  ENTER; if (TYPE_VFIELD(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_VFIELD\n");
    fprintf( code_outputfile,PREFIX "TYPE_VFIELD %p\n",TYPE_VFIELD(t));
  }
}
void field_type_size_TYPE_ARG_TYPES(tree t)
{
  ENTER; if (TYPE_ARG_TYPES(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_ARG_TYPES\n");
    fprintf( code_outputfile,PREFIX "TYPE_ARG_TYPES %p\n",TYPE_ARG_TYPES(t));
  }
}
void field_type_size_TYPE_METHOD_BASETYPE(tree t)
{
  ENTER; if (TYPE_METHOD_BASETYPE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_METHOD_BASETYPE\n");
    fprintf( code_outputfile,PREFIX "TYPE_METHOD_BASETYPE %p\n",TYPE_METHOD_BASETYPE(t));
  }
}
void field_type_size_TYPE_OFFSET_BASETYPE(tree t)
{
  ENTER; if (TYPE_OFFSET_BASETYPE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_OFFSET_BASETYPE\n");
    fprintf( code_outputfile,PREFIX "TYPE_OFFSET_BASETYPE %p\n",TYPE_OFFSET_BASETYPE(t));
  }
}
void field_type_size_TYPE_POINTER_TO(tree t)
{
  ENTER; if (TYPE_POINTER_TO(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_POINTER_TO\n");
    fprintf( code_outputfile,PREFIX "TYPE_POINTER_TO %p\n",TYPE_POINTER_TO(t));
  }
}
void field_type_size_TYPE_REFERENCE_TO(tree t)
{
  ENTER; if (TYPE_REFERENCE_TO(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_REFERENCE_TO\n");
    fprintf( code_outputfile,PREFIX "TYPE_REFERENCE_TO %p\n",TYPE_REFERENCE_TO(t));
  }
}
void field_type_size_TYPE_NEXT_PTR_TO(tree t)
{
  ENTER; if (TYPE_NEXT_PTR_TO(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_NEXT_PTR_TO\n");
    fprintf( code_outputfile,PREFIX "TYPE_NEXT_PTR_TO %p\n",TYPE_NEXT_PTR_TO(t));
  }
}
void field_type_size_TYPE_NEXT_REF_TO(tree t)
{
  ENTER; if (TYPE_NEXT_REF_TO(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_NEXT_REF_TO\n");
    fprintf( code_outputfile,PREFIX "TYPE_NEXT_REF_TO %p\n",TYPE_NEXT_REF_TO(t));
  }
}
void field_type_size_TYPE_MIN_VALUE(tree t)
{
  ENTER; if (TYPE_MIN_VALUE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_MIN_VALUE\n");
    fprintf( code_outputfile,PREFIX "TYPE_MIN_VALUE %p\n",TYPE_MIN_VALUE(t));
  }
}
void field_type_size_TYPE_MAX_VALUE(tree t)
{
  ENTER; if (TYPE_MAX_VALUE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_MAX_VALUE\n");
    fprintf( code_outputfile,PREFIX "TYPE_MAX_VALUE %p\n",TYPE_MAX_VALUE(t));
  }
}
void field_type_size_TYPE_PRECISION(tree t)
{
  ENTER; if (TYPE_PRECISION(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_PRECISION\n");
    fprintf( code_outputfile,PREFIX "TYPE_PRECISION %d\n",TYPE_PRECISION(t));
  }
}
void field_type_size_TYPE_SYMTAB_ADDRESS(tree t)
{
  ENTER; if (TYPE_SYMTAB_ADDRESS(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_SYMTAB_ADDRESS\n");
    fprintf( code_outputfile,PREFIX "TYPE_SYMTAB_ADDRESS %d\n",TYPE_SYMTAB_ADDRESS(t));
  }
}
void field_type_size_TYPE_SYMTAB_POINTER(tree t)
{
  ENTER; if (TYPE_SYMTAB_POINTER(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_SYMTAB_POINTER\n");
    fprintf( code_outputfile,PREFIX "TYPE_SYMTAB_POINTER %s\n",TYPE_SYMTAB_POINTER(t));
  }
}
void field_type_size_TYPE_SYMTAB_DIE(tree t)
{
  ENTER; if (TYPE_SYMTAB_DIE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_SYMTAB_DIE\n");
    //fprintf( code_outputfile,PREFIX "TYPE_SYMTAB_DIE %d\n",TYPE_SYMTAB_DIE(t));
    //struct die_struct *
  }
}
void field_type_size_TYPE_NAME(tree t)
{
  ENTER; if (TYPE_NAME(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_NAME\n");
    fprintf( code_outputfile,PREFIX "TYPE_NAME %p\n",TYPE_NAME(t));
  }
}
void field_type_size_TYPE_NEXT_VARIANT(tree t)
{
  ENTER; if (TYPE_NEXT_VARIANT(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_NEXT_VARIANT\n");
    fprintf( code_outputfile,PREFIX "TYPE_NEXT_VARIANT %p\n",TYPE_NEXT_VARIANT(t));
  }
}
void field_type_size_TYPE_MAIN_VARIANT(tree t)
{
  ENTER; if (TYPE_MAIN_VARIANT(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_MAIN_VARIANT\n");
    fprintf( code_outputfile,PREFIX "TYPE_MAIN_VARIANT %p\n",TYPE_MAIN_VARIANT(t));
  }
}
void field_type_size_TYPE_CONTEXT(tree t)
{
  ENTER; if (TYPE_CONTEXT(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_CONTEXT\n");
    fprintf( code_outputfile,PREFIX "TYPE_CONTEXT %p\n",TYPE_CONTEXT(t));
  }
}
void field_type_size_TYPE_MAXVAL(tree t)
{
  ENTER; if (TYPE_MAXVAL(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_MAXVAL\n");
    fprintf( code_outputfile,PREFIX "TYPE_MAXVAL %p\n",TYPE_MAXVAL(t));
  }
}
void field_type_size_TYPE_MINVAL(tree t)
{
  ENTER; if (TYPE_MINVAL(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_MINVAL\n");
    fprintf( code_outputfile,PREFIX "TYPE_MINVAL %p\n",TYPE_MINVAL(t));
  }
}
void field_type_size_TYPE_MODE(tree t)
{
  ENTER; if (TYPE_MODE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_MODE\n");
    fprintf( code_outputfile,PREFIX "TYPE_MODE %d\n",TYPE_MODE(t));
  }
}
void field_type_size_TYPE_CANONICAL(tree t)
{
  ENTER; if (TYPE_CANONICAL(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_CANONICAL\n");
    fprintf( code_outputfile,PREFIX "TYPE_CANONICAL %p\n",TYPE_CANONICAL(t));
  }
}
void field_type_size_TYPE_STRUCTURAL_EQUALITY_P(tree t)
{
  ENTER; if (TYPE_STRUCTURAL_EQUALITY_P(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_STRUCTURAL_EQUALITY_P\n");
    fprintf( code_outputfile,PREFIX "TYPE_STRUCTURAL_EQUALITY_P %d\n",TYPE_STRUCTURAL_EQUALITY_P(t));
  }
}
void field_type_size_SET_TYPE_STRUCTURAL_EQUALITY(tree t)
{
  ENTER; if (SET_TYPE_STRUCTURAL_EQUALITY(t)) {
    fprintf( code_outputfile,PREFIX "SET_TYPE_STRUCTURAL_EQUALITY\n");
    fprintf( code_outputfile,PREFIX "SET_TYPE_STRUCTURAL_EQUALITY %p\n",SET_TYPE_STRUCTURAL_EQUALITY(t));
  }
}
void field_type_size_TYPE_LANG_SPECIFIC(tree t)
{
  ENTER; if (TYPE_LANG_SPECIFIC(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_LANG_SPECIFIC\n");
    //fprintf( code_outputfile,PREFIX "TYPE_LANG_SPECIFIC %d\n",TYPE_LANG_SPECIFIC(t));
    //struct lang_type *
  }
}
void field_type_size_TYPE_IBIT(tree t)
{
  ENTER; if (TYPE_IBIT(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_IBIT\n");
    fprintf( code_outputfile,PREFIX "TYPE_IBIT %d\n",TYPE_IBIT(t));
  }
}
void field_type_size_TYPE_FBIT(tree t)
{
  ENTER; if (TYPE_FBIT(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_FBIT\n");
    fprintf( code_outputfile,PREFIX "TYPE_FBIT %d\n",TYPE_FBIT(t));
  }
}
void field_type_size_TYPE_DEBUG_REPRESENTATION_TYPE(tree t)
{
  ENTER; if (TYPE_DEBUG_REPRESENTATION_TYPE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_DEBUG_REPRESENTATION_TYPE\n");
    fprintf( code_outputfile,PREFIX "TYPE_DEBUG_REPRESENTATION_TYPE %p\n",TYPE_DEBUG_REPRESENTATION_TYPE(t));
  }
}
void field_type_size_TYPE_BINFO(tree t)
{
  ENTER; if (TYPE_BINFO(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_BINFO\n");
    fprintf( code_outputfile,PREFIX "TYPE_BINFO %p\n",TYPE_BINFO(t));
  }
}
void field_type_size_TYPE_LANG_SLOT_1(tree t)
{
  ENTER; if (TYPE_LANG_SLOT_1(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_LANG_SLOT_1\n");
    fprintf( code_outputfile,PREFIX "TYPE_LANG_SLOT_1 %p\n",TYPE_LANG_SLOT_1(t));
  }
}
void field_type_size_TYPE_ALIAS_SET(tree t)
{
  ENTER; if (TYPE_ALIAS_SET(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_ALIAS_SET\n");
    fprintf( code_outputfile,PREFIX "TYPE_ALIAS_SET %d\n",TYPE_ALIAS_SET(t));
  }
}
void field_type_size_TYPE_ALIAS_SET_KNOWN_P(tree t)
{
  ENTER; if (TYPE_ALIAS_SET_KNOWN_P(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_ALIAS_SET_KNOWN_P\n");
    fprintf( code_outputfile,PREFIX "TYPE_ALIAS_SET_KNOWN_P %d\n",TYPE_ALIAS_SET_KNOWN_P(t));
  }
}
void field_type_size_TYPE_ATTRIBUTES(tree t)
{
  ENTER; if (TYPE_ATTRIBUTES(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_ATTRIBUTES\n");
    fprintf( code_outputfile,PREFIX "TYPE_ATTRIBUTES %p\n",TYPE_ATTRIBUTES(t));
  }
}
void field_type_size_TYPE_ALIGN(tree t)
{
  ENTER; if (TYPE_ALIGN(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_ALIGN\n");
    fprintf( code_outputfile,PREFIX "TYPE_ALIGN %d\n",TYPE_ALIGN(t));
  }
}
void field_type_size_TYPE_USER_ALIGN(tree t)
{
  ENTER; if (TYPE_USER_ALIGN(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_USER_ALIGN\n");
    fprintf( code_outputfile,PREFIX "TYPE_USER_ALIGN %d\n",TYPE_USER_ALIGN(t));
  }
}
void field_type_size_TYPE_ALIGN_UNIT(tree t)
{
  ENTER; if (TYPE_ALIGN_UNIT(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_ALIGN_UNIT\n");
    fprintf( code_outputfile,PREFIX "TYPE_ALIGN_UNIT %d\n",TYPE_ALIGN_UNIT(t));
  }
}
void field_type_size_TYPE_STUB_DECL(tree t)
{
  ENTER; if (TYPE_STUB_DECL(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_STUB_DECL\n");
    fprintf( code_outputfile,PREFIX "TYPE_STUB_DECL %p\n",TYPE_STUB_DECL(t));
  }
}
void field_type_size_TYPE_NO_FORCE_BLK(tree t)
{
  ENTER; if (TYPE_NO_FORCE_BLK(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_NO_FORCE_BLK\n");
    fprintf( code_outputfile,PREFIX "TYPE_NO_FORCE_BLK %d\n",TYPE_NO_FORCE_BLK(t));
  }
}
void field_type_size_TYPE_IS_SIZETYPE(tree t)
{
  ENTER; if (TYPE_IS_SIZETYPE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_IS_SIZETYPE\n");
    fprintf( code_outputfile,PREFIX "TYPE_IS_SIZETYPE %d\n",TYPE_IS_SIZETYPE(t));
  }
}
void field_type_size_TYPE_VOLATILE(tree t)
{
  ENTER; if (TYPE_VOLATILE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_VOLATILE\n");
    fprintf( code_outputfile,PREFIX "TYPE_VOLATILE %d\n",TYPE_VOLATILE(t));
  }
}
void field_type_size_TYPE_READONLY(tree t)
{
  ENTER; if (TYPE_READONLY(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_READONLY\n");
    fprintf( code_outputfile,PREFIX "TYPE_READONLY %d\n",TYPE_READONLY(t));
  }
}
void field_type_size_TYPE_RESTRICT(tree t)
{
  ENTER; if (TYPE_RESTRICT(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_RESTRICT\n");
    fprintf( code_outputfile,PREFIX "TYPE_RESTRICT %d\n",TYPE_RESTRICT(t));
  }
}
void field_type_size_TYPE_ADDR_SPACE(tree t)
{
  ENTER; if (TYPE_ADDR_SPACE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_ADDR_SPACE\n");
    fprintf( code_outputfile,PREFIX "TYPE_ADDR_SPACE %d\n",TYPE_ADDR_SPACE(t));
  }
}
void field_type_size_TYPE_QUALS(tree t)
{
  ENTER; if (TYPE_QUALS(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_QUALS\n");
    fprintf( code_outputfile,PREFIX "TYPE_QUALS %d\n",TYPE_QUALS(t));
  }
}
void field_type_size_TYPE_QUALS_NO_ADDR_SPACE(tree t)
{
  ENTER; if (TYPE_QUALS_NO_ADDR_SPACE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_QUALS_NO_ADDR_SPACE\n");
    fprintf( code_outputfile,PREFIX "TYPE_QUALS_NO_ADDR_SPACE %d\n",TYPE_QUALS_NO_ADDR_SPACE(t));
  }
}
void field_type_size_TYPE_LANG_FLAG_0(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_0(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_0\n");
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_0 %d\n",TYPE_LANG_FLAG_0(t));
  }
}
void field_type_size_TYPE_LANG_FLAG_1(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_1(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_1\n");
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_1 %d\n",TYPE_LANG_FLAG_1(t));
  }
}
void field_type_size_TYPE_LANG_FLAG_2(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_2(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_2\n");
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_2 %d\n",TYPE_LANG_FLAG_2(t));
  }
}
void field_type_size_TYPE_LANG_FLAG_3(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_3(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_3\n");
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_3 %d\n",TYPE_LANG_FLAG_3(t));
  }
}
void field_type_size_TYPE_LANG_FLAG_4(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_4(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_4\n");
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_4 %d\n",TYPE_LANG_FLAG_4(t));
  }
}
void field_type_size_TYPE_LANG_FLAG_5(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_5(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_5\n");
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_5 %d\n",TYPE_LANG_FLAG_5(t));
  }
}
void field_type_size_TYPE_LANG_FLAG_6(tree t)
{
  ENTER; if (TYPE_LANG_FLAG_6(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_6\n");
    fprintf( code_outputfile,PREFIX "TYPE_LANG_FLAG_6 %d\n",TYPE_LANG_FLAG_6(t));
  }
}
void field_type_size_TREE_VISITED(tree t)
{
  ENTER; if (TREE_VISITED(t)) {
    fprintf( code_outputfile,PREFIX "TREE_VISITED\n");
    fprintf( code_outputfile,PREFIX "TREE_VISITED %d\n",TREE_VISITED(t));
  }
}
void field_type_size_TYPE_STRING_FLAG(tree t)
{
  ENTER; if (TYPE_STRING_FLAG(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_STRING_FLAG\n");
    fprintf( code_outputfile,PREFIX "TYPE_STRING_FLAG %d\n",TYPE_STRING_FLAG(t));
  }
}
void field_type_size_TYPE_VECTOR_OPAQUE(tree t)
{
  ENTER; if (TYPE_VECTOR_OPAQUE(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_VECTOR_OPAQUE\n");
    fprintf( code_outputfile,PREFIX "TYPE_VECTOR_OPAQUE %d\n",TYPE_VECTOR_OPAQUE(t));
  }
}
void field_type_size_TYPE_NEEDS_CONSTRUCTING(tree t)
{
  ENTER; if (TYPE_NEEDS_CONSTRUCTING(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_NEEDS_CONSTRUCTING\n");
    fprintf( code_outputfile,PREFIX "TYPE_NEEDS_CONSTRUCTING %d\n",TYPE_NEEDS_CONSTRUCTING(t));
  }
}
void field_type_size_TYPE_TRANSPARENT_AGGR(tree t)
{
  ENTER; if (TYPE_TRANSPARENT_AGGR(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_TRANSPARENT_AGGR\n");
    fprintf( code_outputfile,PREFIX "TYPE_TRANSPARENT_AGGR %d\n",TYPE_TRANSPARENT_AGGR(t));
  }
}
void field_type_size_TYPE_NONALIASED_COMPONENT(tree t)
{
  ENTER; if (TYPE_NONALIASED_COMPONENT(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_NONALIASED_COMPONENT\n");
    fprintf( code_outputfile,PREFIX "TYPE_NONALIASED_COMPONENT %d\n",TYPE_NONALIASED_COMPONENT(t));
  }
}
void field_type_size_TYPE_PACKED(tree t)
{
  ENTER; if (TYPE_PACKED(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_PACKED\n");
    fprintf( code_outputfile,PREFIX "TYPE_PACKED %d\n",TYPE_PACKED(t));
  }
}
void field_type_size_TYPE_CONTAINS_PLACEHOLDER_INTERNAL(tree t)
{
  ENTER; if (TYPE_CONTAINS_PLACEHOLDER_INTERNAL(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_CONTAINS_PLACEHOLDER_INTERNAL\n");
    fprintf( code_outputfile,PREFIX "TYPE_CONTAINS_PLACEHOLDER_INTERNAL %d\n",TYPE_CONTAINS_PLACEHOLDER_INTERNAL(t));
  }
}
void field_type_size_BINFO_VIRTUAL_P(tree t)
{
  ENTER; if (BINFO_VIRTUAL_P(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_VIRTUAL_P\n");
    fprintf( code_outputfile,PREFIX "BINFO_VIRTUAL_P %d\n",BINFO_VIRTUAL_P(t));
  }
}
void field_type_size_BINFO_MARKED(tree t)
{
  ENTER; if (BINFO_MARKED(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_MARKED\n");
    fprintf( code_outputfile,PREFIX "BINFO_MARKED %d\n",BINFO_MARKED(t));
  }
}
void field_type_size_BINFO_FLAG_1(tree t)
{
  ENTER; if (BINFO_FLAG_1(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_1\n");
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_1 %d\n",BINFO_FLAG_1(t));
  }
}
void field_type_size_BINFO_FLAG_2(tree t)
{
  ENTER; if (BINFO_FLAG_2(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_2\n");
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_2 %d\n",BINFO_FLAG_2(t));
  }
}
void field_type_size_BINFO_FLAG_3(tree t)
{
  ENTER; if (BINFO_FLAG_3(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_3\n");
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_3 %d\n",BINFO_FLAG_3(t));
  }
}
void field_type_size_BINFO_FLAG_4(tree t)
{
  ENTER; if (BINFO_FLAG_4(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_4\n");
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_4 %d\n",BINFO_FLAG_4(t));
  }
}
void field_type_size_BINFO_FLAG_5(tree t)
{
  ENTER; if (BINFO_FLAG_5(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_5\n");
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_5 %d\n",BINFO_FLAG_5(t));
  }
}
void field_type_size_BINFO_FLAG_6(tree t)
{
  ENTER; if (BINFO_FLAG_6(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_6\n");
    fprintf( code_outputfile,PREFIX "BINFO_FLAG_6 %d\n",BINFO_FLAG_6(t));
  }
}
void field_type_size_BINFO_TYPE(tree t)
{
  ENTER; if (BINFO_TYPE(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_TYPE\n");
    fprintf( code_outputfile,PREFIX "BINFO_TYPE %p\n",BINFO_TYPE(t));
  }
}
void field_type_size_BINFO_OFFSET(tree t)
{
  ENTER; if (BINFO_OFFSET(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_OFFSET\n");
    fprintf( code_outputfile,PREFIX "BINFO_OFFSET %p\n",BINFO_OFFSET(t));
  }
}
void field_type_size_BINFO_OFFSET_ZEROP(tree t)
{

    fprintf( code_outputfile,PREFIX "SKIP BINFO_OFFSET_ZEROP\n");
    return;
  ENTER; if (BINFO_OFFSET_ZEROP(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_OFFSET_ZEROP\n");
    fprintf( code_outputfile,PREFIX "BINFO_OFFSET_ZEROP %d\n",BINFO_OFFSET_ZEROP(t));
  }
}
void field_type_size_BINFO_VTABLE(tree t)
{
  ENTER; if (BINFO_VTABLE(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_VTABLE\n");
    fprintf( code_outputfile,PREFIX "BINFO_VTABLE %p\n",BINFO_VTABLE(t));
  }
}
void field_type_size_BINFO_VIRTUALS(tree t)
{
  ENTER; if (BINFO_VIRTUALS(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_VIRTUALS\n");
    fprintf( code_outputfile,PREFIX "BINFO_VIRTUALS %p\n",BINFO_VIRTUALS(t));
  }
}
void field_type_size_BINFO_BASE_BINFOS(tree t)
{
  ENTER; if (BINFO_BASE_BINFOS(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_BASE_BINFOS\n");
    //fprintf( code_outputfile,PREFIX "BINFO_BASE_BINFOS %d\n",BINFO_BASE_BINFOS(t));
    //struct VEC_tree_none *
  }
}
void field_type_size_BINFO_N_BASE_BINFOS(tree t)
{
  ENTER; if (BINFO_N_BASE_BINFOS(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_N_BASE_BINFOS\n");
    fprintf( code_outputfile,PREFIX "BINFO_N_BASE_BINFOS %d\n",BINFO_N_BASE_BINFOS(t));
  }
}
void field_type_size_BINFO_VPTR_FIELD(tree t)
{
  ENTER; if (BINFO_VPTR_FIELD(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_VPTR_FIELD\n");
    fprintf( code_outputfile,PREFIX "BINFO_VPTR_FIELD %p\n",BINFO_VPTR_FIELD(t));
  }
}
void field_type_size_BINFO_BASE_ACCESSES(tree t)
{
  ENTER; if (BINFO_BASE_ACCESSES(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_BASE_ACCESSES\n");
    //fprintf( code_outputfile,PREFIX "BINFO_BASE_ACCESSES %d\n",BINFO_BASE_ACCESSES(t));
    //struct VEC_tree_gc *
  }
}
void field_type_size_BINFO_SUBVTT_INDEX(tree t)
{
  ENTER; if (BINFO_SUBVTT_INDEX(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_SUBVTT_INDEX\n");
    fprintf( code_outputfile,PREFIX "BINFO_SUBVTT_INDEX %p\n",BINFO_SUBVTT_INDEX(t));
  }
}
void field_type_size_BINFO_VPTR_INDEX(tree t)
{
  ENTER; if (BINFO_VPTR_INDEX(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_VPTR_INDEX\n");
    fprintf( code_outputfile,PREFIX "BINFO_VPTR_INDEX %p\n",BINFO_VPTR_INDEX(t));
  }
}
void field_type_size_BINFO_INHERITANCE_CHAIN(tree t)
{
  ENTER; if (BINFO_INHERITANCE_CHAIN(t)) {
    fprintf( code_outputfile,PREFIX "BINFO_INHERITANCE_CHAIN\n");
    fprintf( code_outputfile,PREFIX "BINFO_INHERITANCE_CHAIN %p\n",BINFO_INHERITANCE_CHAIN(t));
  }
}
void field_type_size_DECL_NAME(tree t)
{
  ENTER; if (DECL_NAME(t)) {
    fprintf( code_outputfile,PREFIX "DECL_NAME\n");
    fprintf( code_outputfile,PREFIX "DECL_NAME %p\n",DECL_NAME(t));
  }
}
void field_type_size_DECL_UID(tree t)
{
  ENTER; if (DECL_UID(t)) {
    fprintf( code_outputfile,PREFIX "DECL_UID\n");
    fprintf( code_outputfile,PREFIX "DECL_UID %d\n",DECL_UID(t));
  }
}
void field_type_size_DEBUG_TEMP_UID(tree t)
{
  ENTER; if (DEBUG_TEMP_UID(t)) {
    fprintf( code_outputfile,PREFIX "DEBUG_TEMP_UID\n");
    fprintf( code_outputfile,PREFIX "DEBUG_TEMP_UID %d\n",DEBUG_TEMP_UID(t));
  }
}
void field_type_size_DECL_SOURCE_LOCATION(tree t)
{
  ENTER; if (DECL_SOURCE_LOCATION(t)) {
    fprintf( code_outputfile,PREFIX "DECL_SOURCE_LOCATION\n");
    fprintf( code_outputfile,PREFIX "DECL_SOURCE_LOCATION %d\n",DECL_SOURCE_LOCATION(t));
  }
}
void field_type_size_DECL_SOURCE_FILE(tree t)
{
  ENTER; if (DECL_SOURCE_FILE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_SOURCE_FILE\n");
    fprintf( code_outputfile,PREFIX "DECL_SOURCE_FILE %s\n",DECL_SOURCE_FILE(t));
  }
}
void field_type_size_DECL_SOURCE_LINE(tree t)
{
  ENTER; if (DECL_SOURCE_LINE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_SOURCE_LINE\n");
    fprintf( code_outputfile,PREFIX "DECL_SOURCE_LINE %d\n",DECL_SOURCE_LINE(t));
  }
}
void field_type_size_DECL_CONTEXT(tree t)
{
  ENTER; if (DECL_CONTEXT(t)) {
    fprintf( code_outputfile,PREFIX "DECL_CONTEXT\n");
    fprintf( code_outputfile,PREFIX "DECL_CONTEXT %p\n",DECL_CONTEXT(t));
  }
}
void field_type_size_DECL_FIELD_CONTEXT(tree t)
{
  ENTER; if (DECL_FIELD_CONTEXT(t)) {
    fprintf( code_outputfile,PREFIX "DECL_FIELD_CONTEXT\n");
    fprintf( code_outputfile,PREFIX "DECL_FIELD_CONTEXT %p\n",DECL_FIELD_CONTEXT(t));
  }
}
void field_type_size_DECL_ABSTRACT_ORIGIN(tree t)
{
  ENTER; if (DECL_ABSTRACT_ORIGIN(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ABSTRACT_ORIGIN\n");
    fprintf( code_outputfile,PREFIX "DECL_ABSTRACT_ORIGIN %p\n",DECL_ABSTRACT_ORIGIN(t));
  }
}
void field_type_size_DECL_ORIGIN(tree t)
{
  ENTER; if (DECL_ORIGIN(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ORIGIN\n");
    fprintf( code_outputfile,PREFIX "DECL_ORIGIN %p\n",DECL_ORIGIN(t));
  }
}
void field_type_size_DECL_FROM_INLINE(tree t)
{
  ENTER; if (DECL_FROM_INLINE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_FROM_INLINE\n");
    fprintf( code_outputfile,PREFIX "DECL_FROM_INLINE %d\n",DECL_FROM_INLINE(t));
  }
}
void field_type_size_DECL_ATTRIBUTES(tree t)
{
  ENTER; if (DECL_ATTRIBUTES(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ATTRIBUTES\n");
    fprintf( code_outputfile,PREFIX "DECL_ATTRIBUTES %p\n",DECL_ATTRIBUTES(t));
  }
}
void field_type_size_DECL_INITIAL(tree t)
{
  ENTER; if (DECL_INITIAL(t)) {
    fprintf( code_outputfile,PREFIX "DECL_INITIAL\n");
    fprintf( code_outputfile,PREFIX "DECL_INITIAL %p\n",DECL_INITIAL(t));
  }
}
void field_type_size_DECL_SIZE(tree t)
{
  ENTER; if (DECL_SIZE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_SIZE\n");
    fprintf( code_outputfile,PREFIX "DECL_SIZE %p\n",DECL_SIZE(t));
  }
}
void field_type_size_DECL_SIZE_UNIT(tree t)
{
  ENTER; if (DECL_SIZE_UNIT(t)) {
    fprintf( code_outputfile,PREFIX "DECL_SIZE_UNIT\n");
    fprintf( code_outputfile,PREFIX "DECL_SIZE_UNIT %p\n",DECL_SIZE_UNIT(t));
  }
}
void field_type_size_DECL_ALIGN(tree t)
{
  ENTER; 

  //if (DECL_ALIGN(t)) 
  //{
    fprintf( code_outputfile,PREFIX "DECL_ALIGN does not work...\n");
    //    fprintf( code_outputfile,PREFIX "DECL_ALIGN %d\n",DECL_ALIGN(t));
    //  }
}
void field_type_size_DECL_ALIGN_UNIT(tree t)
{
  ENTER; 
  //  if (DECL_ALIGN_UNIT(t)) {
  //    fprintf( code_outputfile,PREFIX "DECL_ALIGN_UNIT\n");
    //  fprintf( code_outputfile,PREFIX "DECL_ALIGN_UNIT %d\n",DECL_ALIGN_UNIT(t));// CRASH todo
    //hello.c:336:1: internal compiler error: in lhd_set_decl_assembler_name, at langhooks.c:164
    //  }
}
void field_type_size_DECL_USER_ALIGN(tree t)
{
  ENTER; if (DECL_USER_ALIGN(t)) {
    fprintf( code_outputfile,PREFIX "DECL_USER_ALIGN\n");
    fprintf( code_outputfile,PREFIX "DECL_USER_ALIGN %d\n",DECL_USER_ALIGN(t));
  }
}
void field_type_size_DECL_MODE(tree t)
{
  ENTER; if (DECL_MODE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_MODE\n");
    fprintf( code_outputfile,PREFIX "DECL_MODE %d\n",DECL_MODE(t));
  }
}
void field_type_size_DECL_FUNCTION_CODE(tree t)
{
  ENTER; if (DECL_FUNCTION_CODE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_FUNCTION_CODE\n");
    fprintf( code_outputfile,PREFIX "DECL_FUNCTION_CODE %d\n",DECL_FUNCTION_CODE(t));
  }
}
void field_type_size_DECL_DEBUG_EXPR_IS_FROM(tree t)
{
  ENTER; if (DECL_DEBUG_EXPR_IS_FROM(t)) {
    fprintf( code_outputfile,PREFIX "DECL_DEBUG_EXPR_IS_FROM\n");
    fprintf( code_outputfile,PREFIX "DECL_DEBUG_EXPR_IS_FROM %d\n",DECL_DEBUG_EXPR_IS_FROM(t));
  }
}
void field_type_size_DECL_FUNCTION_PERSONALITY(tree t)
{
  ENTER; if (DECL_FUNCTION_PERSONALITY(t)) {
    fprintf( code_outputfile,PREFIX "DECL_FUNCTION_PERSONALITY\n");
    fprintf( code_outputfile,PREFIX "DECL_FUNCTION_PERSONALITY %p\n",DECL_FUNCTION_PERSONALITY(t));
  }
}
void field_type_size_DECL_IGNORED_P(tree t)
{
  ENTER; if (DECL_IGNORED_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_IGNORED_P\n");
    fprintf( code_outputfile,PREFIX "DECL_IGNORED_P %d\n",DECL_IGNORED_P(t));
  }
}
void field_type_size_DECL_ABSTRACT(tree t)
{
  ENTER; if (DECL_ABSTRACT(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ABSTRACT\n");
    fprintf( code_outputfile,PREFIX "DECL_ABSTRACT %d\n",DECL_ABSTRACT(t));
  }
}
void field_type_size_DECL_LANG_SPECIFIC(tree t)
{
  ENTER; if (DECL_LANG_SPECIFIC(t)) {
    fprintf( code_outputfile,PREFIX "DECL_LANG_SPECIFIC\n");
    //fprintf( code_outputfile,PREFIX "DECL_LANG_SPECIFIC %d\n",DECL_LANG_SPECIFIC(t));
    // struct lang_decl *
  }
}
void field_type_size_DECL_EXTERNAL(tree t)
{
  ENTER; if (DECL_EXTERNAL(t)) {
    fprintf( code_outputfile,PREFIX "DECL_EXTERNAL\n");
    fprintf( code_outputfile,PREFIX "DECL_EXTERNAL %d\n",DECL_EXTERNAL(t));
  }
}
void field_type_size_DECL_NONLOCAL(tree t)
{
  ENTER; if (DECL_NONLOCAL(t)) {
    fprintf( code_outputfile,PREFIX "DECL_NONLOCAL\n");
    fprintf( code_outputfile,PREFIX "DECL_NONLOCAL %d\n",DECL_NONLOCAL(t));
  }
}
void field_type_size_DECL_VIRTUAL_P(tree t)
{
  ENTER; if (DECL_VIRTUAL_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_VIRTUAL_P\n");
    fprintf( code_outputfile,PREFIX "DECL_VIRTUAL_P %d\n",DECL_VIRTUAL_P(t));
  }
}
void field_type_size_DECL_ARTIFICIAL(tree t)
{
  ENTER; if (DECL_ARTIFICIAL(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ARTIFICIAL\n");
    fprintf( code_outputfile,PREFIX "DECL_ARTIFICIAL %d\n",DECL_ARTIFICIAL(t));
  }
}
void field_type_size_DECL_LANG_FLAG_0(tree t)
{
  ENTER; if (DECL_LANG_FLAG_0(t)) {
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_0\n");
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_0 %d\n",DECL_LANG_FLAG_0(t));
  }
}
void field_type_size_DECL_LANG_FLAG_1(tree t)
{
  ENTER; if (DECL_LANG_FLAG_1(t)) {
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_1\n");
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_1 %d\n",DECL_LANG_FLAG_1(t));
  }
}
void field_type_size_DECL_LANG_FLAG_2(tree t)
{
  ENTER; if (DECL_LANG_FLAG_2(t)) {
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_2\n");
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_2 %d\n",DECL_LANG_FLAG_2(t));
  }
}
void field_type_size_DECL_LANG_FLAG_3(tree t)
{
  ENTER; if (DECL_LANG_FLAG_3(t)) {
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_3\n");
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_3 %d\n",DECL_LANG_FLAG_3(t));
  }
}
void field_type_size_DECL_LANG_FLAG_4(tree t)
{
  ENTER; if (DECL_LANG_FLAG_4(t)) {
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_4\n");
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_4 %d\n",DECL_LANG_FLAG_4(t));
  }
}
void field_type_size_DECL_LANG_FLAG_5(tree t)
{
  ENTER; if (DECL_LANG_FLAG_5(t)) {
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_5\n");
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_5 %d\n",DECL_LANG_FLAG_5(t));
  }
}
void field_type_size_DECL_LANG_FLAG_6(tree t)
{
  ENTER; if (DECL_LANG_FLAG_6(t)) {
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_6\n");
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_6 %d\n",DECL_LANG_FLAG_6(t));
  }
}
void field_type_size_DECL_LANG_FLAG_7(tree t)
{
  ENTER; if (DECL_LANG_FLAG_7(t)) {
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_7\n");
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_7 %d\n",DECL_LANG_FLAG_7(t));
  }
}
void field_type_size_DECL_LANG_FLAG_8(tree t)
{
  ENTER; if (DECL_LANG_FLAG_8(t)) {
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_8\n");
    fprintf( code_outputfile,PREFIX "DECL_LANG_FLAG_8 %d\n",DECL_LANG_FLAG_8(t));
  }
}
void field_type_size_DECL_HAS_VALUE_EXPR_P(tree t)
{
  ENTER; if (DECL_HAS_VALUE_EXPR_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_HAS_VALUE_EXPR_P\n");
    fprintf( code_outputfile,PREFIX "DECL_HAS_VALUE_EXPR_P %d\n",DECL_HAS_VALUE_EXPR_P(t));
  }
}
void field_type_size_DECL_VALUE_EXPR(tree t)
{
  ENTER; if (DECL_VALUE_EXPR(t)) {
    fprintf( code_outputfile,PREFIX "DECL_VALUE_EXPR\n");
    fprintf( code_outputfile,PREFIX "DECL_VALUE_EXPR %p\n",DECL_VALUE_EXPR(t));
  }
}
void field_type_size_DECL_RTL(tree t)
{
  ENTER; if (DECL_RTL(t)) {
    fprintf( code_outputfile,PREFIX "DECL_RTL\n");
    //        fprintf( code_outputfile,PREFIX "DECL_RTL %d\n",DECL_RTL(t));
    // rtx
  }
}
void field_type_size_HAS_RTL_P(tree t)
{
  ENTER; if (HAS_RTL_P(t)) {
    fprintf( code_outputfile,PREFIX "HAS_RTL_P\n");
    fprintf( code_outputfile,PREFIX "HAS_RTL_P %d\n",HAS_RTL_P(t));
  }
}
void field_type_size_DECL_RTL_SET_P(tree t)
{
  ENTER; if (DECL_RTL_SET_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_RTL_SET_P\n");
    fprintf( code_outputfile,PREFIX "DECL_RTL_SET_P %d\n",DECL_RTL_SET_P(t));
  }
}
void field_type_size_DECL_RTL_IF_SET(tree t)
{
  ENTER; if (DECL_RTL_IF_SET(t)) {
    fprintf( code_outputfile,PREFIX "DECL_RTL_IF_SET\n");
    //        fprintf( code_outputfile,PREFIX "DECL_RTL_IF_SET %d\n",DECL_RTL_IF_SET(t));
    // rtx
  }
}
void field_type_size_DECL_REGISTER(tree t)
{
  ENTER; if (DECL_REGISTER(t)) {
    fprintf( code_outputfile,PREFIX "DECL_REGISTER\n");
    fprintf( code_outputfile,PREFIX "DECL_REGISTER %d\n",DECL_REGISTER(t));
  }
}
void field_type_size_DECL_FIELD_OFFSET(tree t)
{
  ENTER; if (DECL_FIELD_OFFSET(t)) {
    fprintf( code_outputfile,PREFIX "DECL_FIELD_OFFSET\n");
    fprintf( code_outputfile,PREFIX "DECL_FIELD_OFFSET %p\n",DECL_FIELD_OFFSET(t));
  }
}
void field_type_size_DECL_FIELD_BIT_OFFSET(tree t)
{
  ENTER; if (DECL_FIELD_BIT_OFFSET(t)) {
    fprintf( code_outputfile,PREFIX "DECL_FIELD_BIT_OFFSET\n");
    fprintf( code_outputfile,PREFIX "DECL_FIELD_BIT_OFFSET %p\n",DECL_FIELD_BIT_OFFSET(t));//tree
  }
}
void field_type_size_DECL_BIT_FIELD_TYPE(tree t)
{
  ENTER; if (DECL_BIT_FIELD_TYPE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_BIT_FIELD_TYPE\n");
    fprintf( code_outputfile,PREFIX "DECL_BIT_FIELD_TYPE %p\n",DECL_BIT_FIELD_TYPE(t));//tree
  }
}
void field_type_size_DECL_QUALIFIER(tree t)
{
  ENTER; if (DECL_QUALIFIER(t)) {
    fprintf( code_outputfile,PREFIX "DECL_QUALIFIER\n");
    fprintf( code_outputfile,PREFIX "DECL_QUALIFIER %p\n",DECL_QUALIFIER(t));//tree
  }
}
void field_type_size_DECL_OFFSET_ALIGN(tree t)
{
  ENTER; if (DECL_OFFSET_ALIGN(t)) {
    fprintf( code_outputfile,PREFIX "DECL_OFFSET_ALIGN\n");
    fprintf( code_outputfile,PREFIX "DECL_OFFSET_ALIGN %lu\n",DECL_OFFSET_ALIGN(t));
  }
}
void field_type_size_DECL_FCONTEXT(tree t)
{
  ENTER; if (DECL_FCONTEXT(t)) {
    fprintf( code_outputfile,PREFIX "DECL_FCONTEXT\n");
    fprintf( code_outputfile,PREFIX "DECL_FCONTEXT %p\n",DECL_FCONTEXT(t));//tree
  }
}
void field_type_size_DECL_PACKED(tree t)
{
  ENTER; if (DECL_PACKED(t)) {
    fprintf( code_outputfile,PREFIX "DECL_PACKED\n");
    fprintf( code_outputfile,PREFIX "DECL_PACKED %d\n",DECL_PACKED(t));
  }
}
void field_type_size_DECL_BIT_FIELD(tree t)
{
  ENTER; if (DECL_BIT_FIELD(t)) {
    fprintf( code_outputfile,PREFIX "DECL_BIT_FIELD\n");
    fprintf( code_outputfile,PREFIX "DECL_BIT_FIELD %d\n",DECL_BIT_FIELD(t));
  }
}
void field_type_size_DECL_NONADDRESSABLE_P(tree t)
{
  ENTER; if (DECL_NONADDRESSABLE_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_NONADDRESSABLE_P\n");
    fprintf( code_outputfile,PREFIX "DECL_NONADDRESSABLE_P %d\n",DECL_NONADDRESSABLE_P(t));
  }
}
void field_type_size_LABEL_DECL_UID(tree t)
{
  ENTER; if (LABEL_DECL_UID(t)) {
    fprintf( code_outputfile,PREFIX "LABEL_DECL_UID\n");
    fprintf( code_outputfile,PREFIX "LABEL_DECL_UID %d\n",LABEL_DECL_UID(t));
  }
}
void field_type_size_EH_LANDING_PAD_NR(tree t)
{
  ENTER; if (EH_LANDING_PAD_NR(t)) {
    fprintf( code_outputfile,PREFIX "EH_LANDING_PAD_NR\n");
    fprintf( code_outputfile,PREFIX "EH_LANDING_PAD_NR %d\n",EH_LANDING_PAD_NR(t));
  }
}
void field_type_size_DECL_ERROR_ISSUED(tree t)
{
  ENTER; if (DECL_ERROR_ISSUED(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ERROR_ISSUED\n");
    fprintf( code_outputfile,PREFIX "DECL_ERROR_ISSUED %d\n",DECL_ERROR_ISSUED(t));
  }
}
void field_type_size_DECL_ARG_TYPE(tree t)
{
  ENTER; if (DECL_ARG_TYPE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ARG_TYPE\n");
    fprintf( code_outputfile,PREFIX "DECL_ARG_TYPE %p\n",DECL_ARG_TYPE(t));//tree
  }
}
void field_type_size_DECL_INCOMING_RTL(tree t)
{
  ENTER; if (DECL_INCOMING_RTL(t)) {
    fprintf( code_outputfile,PREFIX "DECL_INCOMING_RTL\n");
    //rtx        fprintf( code_outputfile,PREFIX "DECL_INCOMING_RTL %d\n",DECL_INCOMING_RTL(t));
  }
}
void field_type_size_DECL_SEEN_IN_BIND_EXPR_P(tree t)
{
  ENTER; if (DECL_SEEN_IN_BIND_EXPR_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_SEEN_IN_BIND_EXPR_P\n");
    fprintf( code_outputfile,PREFIX "DECL_SEEN_IN_BIND_EXPR_P %d\n",DECL_SEEN_IN_BIND_EXPR_P(t));
  }
}
void field_type_size_DECL_DEFER_OUTPUT(tree t)
{
  ENTER; if (DECL_DEFER_OUTPUT(t)) {
    fprintf( code_outputfile,PREFIX "DECL_DEFER_OUTPUT\n");
    fprintf( code_outputfile,PREFIX "DECL_DEFER_OUTPUT %d\n",DECL_DEFER_OUTPUT(t));
  }
}
void field_type_size_DECL_IN_SYSTEM_HEADER(tree t)
{
  ENTER; if (DECL_IN_SYSTEM_HEADER(t)) {
    fprintf( code_outputfile,PREFIX "DECL_IN_SYSTEM_HEADER\n");
    fprintf( code_outputfile,PREFIX "DECL_IN_SYSTEM_HEADER %d\n",DECL_IN_SYSTEM_HEADER(t));
  }
}
void field_type_size_DECL_WEAK(tree t)
{
  ENTER; if (DECL_WEAK(t)) {
    fprintf( code_outputfile,PREFIX "DECL_WEAK\n");
    fprintf( code_outputfile,PREFIX "DECL_WEAK %d\n",DECL_WEAK(t));
  }
}
void field_type_size_DECL_DLLIMPORT_P(tree t)
{
  ENTER; if (DECL_DLLIMPORT_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_DLLIMPORT_P\n");
    fprintf( code_outputfile,PREFIX "DECL_DLLIMPORT_P %d\n",DECL_DLLIMPORT_P(t));
  }
}
void field_type_size_DECL_COMDAT(tree t)
{
  ENTER; if (DECL_COMDAT(t)) {
    fprintf( code_outputfile,PREFIX "DECL_COMDAT\n");
    fprintf( code_outputfile,PREFIX "DECL_COMDAT %d\n",DECL_COMDAT(t));
  }
}
void field_type_size_DECL_COMDAT_GROUP(tree t)
{
  ENTER; if (DECL_COMDAT_GROUP(t)) {
    fprintf( code_outputfile,PREFIX "DECL_COMDAT_GROUP\n");
    fprintf( code_outputfile,PREFIX "DECL_COMDAT_GROUP %p\n",DECL_COMDAT_GROUP(t));//tree
  }
}
void field_type_size_DECL_REPLACEABLE_P(tree t)
{
  /*
    field_type.c:2600: error: 'targetm' undeclared (first use in this function)
    if (DECL_REPLACEABLE_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_REPLACEABLE_P\n");
    fprintf( code_outputfile,PREFIX "DECL_REPLACEABLE_P %d\n",DECL_REPLACEABLE_P(t));
    }
  */
}
void field_type_size_DECL_ASSEMBLER_NAME(tree t)
{
  ENTER; if (DECL_ASSEMBLER_NAME(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ASSEMBLER_NAME\n");
    fprintf( code_outputfile,PREFIX "DECL_ASSEMBLER_NAME %p\n",DECL_ASSEMBLER_NAME(t));//tree
  }
}
void field_type_size_HAS_DECL_ASSEMBLER_NAME_P(tree t)
{
  ENTER; if (HAS_DECL_ASSEMBLER_NAME_P(t)) {
    fprintf( code_outputfile,PREFIX "HAS_DECL_ASSEMBLER_NAME_P\n");
    fprintf( code_outputfile,PREFIX "HAS_DECL_ASSEMBLER_NAME_P %d\n",HAS_DECL_ASSEMBLER_NAME_P(t));
  }
}
void field_type_size_DECL_ASSEMBLER_NAME_SET_P(tree t)
{
  ENTER; if (DECL_ASSEMBLER_NAME_SET_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ASSEMBLER_NAME_SET_P\n");
    fprintf( code_outputfile,PREFIX "DECL_ASSEMBLER_NAME_SET_P %d\n",DECL_ASSEMBLER_NAME_SET_P(t));
  }
}
void field_type_size_DECL_SECTION_NAME(tree t)
{
  ENTER; if (DECL_SECTION_NAME(t)) {
    fprintf( code_outputfile,PREFIX "DECL_SECTION_NAME\n");
    fprintf( code_outputfile,PREFIX "DECL_SECTION_NAME %p\n",DECL_SECTION_NAME(t));//tree
  }
}
void field_type_size_DECL_VISIBILITY(tree t)
{
  ENTER; if (DECL_VISIBILITY(t)) {
    fprintf( code_outputfile,PREFIX "DECL_VISIBILITY\n");
    fprintf( code_outputfile,PREFIX "DECL_VISIBILITY %d\n",DECL_VISIBILITY(t));
  }
}
void field_type_size_DECL_VISIBILITY_SPECIFIED(tree t)
{
  ENTER; if (DECL_VISIBILITY_SPECIFIED(t)) {
    fprintf( code_outputfile,PREFIX "DECL_VISIBILITY_SPECIFIED\n");
    fprintf( code_outputfile,PREFIX "DECL_VISIBILITY_SPECIFIED %d\n",DECL_VISIBILITY_SPECIFIED(t));
  }
}
void field_type_size_DECL_ONE_ONLY(tree t)
{
  ENTER; if (DECL_ONE_ONLY(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ONE_ONLY\n");
    fprintf( code_outputfile,PREFIX "DECL_ONE_ONLY %d\n",DECL_ONE_ONLY(t));
  }
}
void field_type_size_DECL_IN_TEXT_SECTION(tree t)
{
  ENTER; if (DECL_IN_TEXT_SECTION(t)) {
    fprintf( code_outputfile,PREFIX "DECL_IN_TEXT_SECTION\n");
    fprintf( code_outputfile,PREFIX "DECL_IN_TEXT_SECTION %d\n",DECL_IN_TEXT_SECTION(t));
  }
}
void field_type_size_DECL_COMMON(tree t)
{
  ENTER; if (DECL_COMMON(t)) {
    fprintf( code_outputfile,PREFIX "DECL_COMMON\n");
    fprintf( code_outputfile,PREFIX "DECL_COMMON %d\n",DECL_COMMON(t));
  }
}
void field_type_size_DECL_HARD_REGISTER(tree t)
{
  ENTER; if (DECL_HARD_REGISTER(t)) {
    fprintf( code_outputfile,PREFIX "DECL_HARD_REGISTER\n");
    fprintf( code_outputfile,PREFIX "DECL_HARD_REGISTER %d\n",DECL_HARD_REGISTER(t));
  }
}
void field_type_size_DECL_DEBUG_EXPR(tree t)
{
  ENTER; if (DECL_DEBUG_EXPR(t)) {
    fprintf( code_outputfile,PREFIX "DECL_DEBUG_EXPR\n");
    fprintf( code_outputfile,PREFIX "DECL_DEBUG_EXPR %p\n",DECL_DEBUG_EXPR(t));//tree
  }
}
void field_type_size_DECL_HAS_INIT_PRIORITY_P(tree t)
{
  ENTER; if (DECL_HAS_INIT_PRIORITY_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_HAS_INIT_PRIORITY_P\n");
    fprintf( code_outputfile,PREFIX "DECL_HAS_INIT_PRIORITY_P %d\n",DECL_HAS_INIT_PRIORITY_P(t));
  }
}
void field_type_size_DECL_INIT_PRIORITY(tree t)
{
  ENTER; if (DECL_INIT_PRIORITY(t)) {
    fprintf( code_outputfile,PREFIX "DECL_INIT_PRIORITY\n");
    fprintf( code_outputfile,PREFIX "DECL_INIT_PRIORITY %d\n",DECL_INIT_PRIORITY(t));
  }
}
void field_type_size_DECL_FINI_PRIORITY(tree t)
{
  ENTER; if (DECL_FINI_PRIORITY(t)) {
    fprintf( code_outputfile,PREFIX "DECL_FINI_PRIORITY\n");
    fprintf( code_outputfile,PREFIX "DECL_FINI_PRIORITY %d\n",DECL_FINI_PRIORITY(t));
  }
}
void field_type_size_DECL_TLS_MODEL(tree t)
{
  ENTER; if (DECL_TLS_MODEL(t)) {
    fprintf( code_outputfile,PREFIX "DECL_TLS_MODEL\n");
    fprintf( code_outputfile,PREFIX "DECL_TLS_MODEL %d\n",DECL_TLS_MODEL(t));
  }
}
void field_type_size_DECL_THREAD_LOCAL_P(tree t)
{
  ENTER; if (DECL_THREAD_LOCAL_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_THREAD_LOCAL_P\n");
    fprintf( code_outputfile,PREFIX "DECL_THREAD_LOCAL_P %d\n",DECL_THREAD_LOCAL_P(t));
  }
}
void field_type_size_DECL_VAR_ANN_PTR(tree t)
{
  ENTER; if (DECL_VAR_ANN_PTR(t)) {
    fprintf( code_outputfile,PREFIX "DECL_VAR_ANN_PTR\n");
    //fprintf( code_outputfile,PREFIX "DECL_VAR_ANN_PTR %d\n",DECL_VAR_ANN_PTR(t));
    //struct var_ann_d **
  }
}
void field_type_size_DECL_RESULT_FLD(tree t)
{
  ENTER; if (DECL_RESULT_FLD(t)) {
    fprintf( code_outputfile,PREFIX "DECL_RESULT_FLD\n");
    fprintf( code_outputfile,PREFIX "DECL_RESULT_FLD %p\n",DECL_RESULT_FLD(t));//tree
  }
}
void field_type_size_DECL_VINDEX(tree t)
{
  ENTER; if (DECL_VINDEX(t)) {
    fprintf( code_outputfile,PREFIX "DECL_VINDEX\n");
    fprintf( code_outputfile,PREFIX "DECL_VINDEX %p\n",DECL_VINDEX(t));//tree
  }
}
void field_type_size_DECL_RESULT(tree t)
{
  ENTER; if (DECL_RESULT(t)) {
    fprintf( code_outputfile,PREFIX "DECL_RESULT\n");
    fprintf( code_outputfile,PREFIX "DECL_RESULT %p\n",DECL_RESULT(t));//tree
  }
}
void field_type_size_DECL_UNINLINABLE(tree t)
{
  ENTER; if (DECL_UNINLINABLE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_UNINLINABLE\n");
    fprintf( code_outputfile,PREFIX "DECL_UNINLINABLE %d\n",DECL_UNINLINABLE(t));
  }
}
void field_type_size_DECL_SAVED_TREE(tree t)
{
  ENTER; if (DECL_SAVED_TREE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_SAVED_TREE\n");
    fprintf( code_outputfile,PREFIX "DECL_SAVED_TREE %p\n",DECL_SAVED_TREE(t));//tree
  }
}
void field_type_size_DECL_IS_MALLOC(tree t)
{
  ENTER; if (DECL_IS_MALLOC(t)) {
    fprintf( code_outputfile,PREFIX "DECL_IS_MALLOC\n");
    fprintf( code_outputfile,PREFIX "DECL_IS_MALLOC %d\n",DECL_IS_MALLOC(t));
  }
}
void field_type_size_DECL_IS_OPERATOR_NEW(tree t)
{
  ENTER; if (DECL_IS_OPERATOR_NEW(t)) {
    fprintf( code_outputfile,PREFIX "DECL_IS_OPERATOR_NEW\n");
    fprintf( code_outputfile,PREFIX "DECL_IS_OPERATOR_NEW %d\n",DECL_IS_OPERATOR_NEW(t));
  }
}
void field_type_size_DECL_IS_RETURNS_TWICE(tree t)
{
  ENTER; if (DECL_IS_RETURNS_TWICE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_IS_RETURNS_TWICE\n");
    fprintf( code_outputfile,PREFIX "DECL_IS_RETURNS_TWICE %d\n",DECL_IS_RETURNS_TWICE(t));
  }
}
void field_type_size_DECL_PURE_P(tree t)
{
  ENTER; if (DECL_PURE_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_PURE_P\n");
    fprintf( code_outputfile,PREFIX "DECL_PURE_P %d\n",DECL_PURE_P(t));
  }
}
void field_type_size_DECL_LOOPING_CONST_OR_PURE_P(tree t)
{
  ENTER; if (DECL_LOOPING_CONST_OR_PURE_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_LOOPING_CONST_OR_PURE_P\n");
    fprintf( code_outputfile,PREFIX "DECL_LOOPING_CONST_OR_PURE_P %d\n",DECL_LOOPING_CONST_OR_PURE_P(t));
  }
}
void field_type_size_DECL_IS_NOVOPS(tree t)
{
  ENTER; if (DECL_IS_NOVOPS(t)) {
    fprintf( code_outputfile,PREFIX "DECL_IS_NOVOPS\n");
    fprintf( code_outputfile,PREFIX "DECL_IS_NOVOPS %d\n",DECL_IS_NOVOPS(t));
  }
}
void field_type_size_DECL_STATIC_CONSTRUCTOR(tree t)
{
  ENTER; if (DECL_STATIC_CONSTRUCTOR(t)) {
    fprintf( code_outputfile,PREFIX "DECL_STATIC_CONSTRUCTOR\n");
    fprintf( code_outputfile,PREFIX "DECL_STATIC_CONSTRUCTOR %d\n",DECL_STATIC_CONSTRUCTOR(t));
  }
}
void field_type_size_DECL_STATIC_DESTRUCTOR(tree t)
{
  ENTER; if (DECL_STATIC_DESTRUCTOR(t)) {
    fprintf( code_outputfile,PREFIX "DECL_STATIC_DESTRUCTOR\n");
    fprintf( code_outputfile,PREFIX "DECL_STATIC_DESTRUCTOR %d\n",DECL_STATIC_DESTRUCTOR(t));
  }
}
void field_type_size_DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT(tree t)
{
  ENTER; if (DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT(t)) {
    fprintf( code_outputfile,PREFIX "DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT\n");
    fprintf( code_outputfile,PREFIX "DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT %d\n",DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT(t));
  }
}
void field_type_size_DECL_NO_LIMIT_STACK(tree t)
{
  ENTER; if (DECL_NO_LIMIT_STACK(t)) {
    fprintf( code_outputfile,PREFIX "DECL_NO_LIMIT_STACK\n");
    fprintf( code_outputfile,PREFIX "DECL_NO_LIMIT_STACK %d\n",DECL_NO_LIMIT_STACK(t));
  }
}
void field_type_size_DECL_STATIC_CHAIN(tree t)
{
  ENTER; if (DECL_STATIC_CHAIN(t)) {
    fprintf( code_outputfile,PREFIX "DECL_STATIC_CHAIN\n");
    fprintf( code_outputfile,PREFIX "DECL_STATIC_CHAIN %d\n",DECL_STATIC_CHAIN(t));
  }
}
void field_type_size_DECL_DECLARED_INLINE_P(tree t)
{
  ENTER; if (DECL_DECLARED_INLINE_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_DECLARED_INLINE_P\n");
    fprintf( code_outputfile,PREFIX "DECL_DECLARED_INLINE_P %d\n",DECL_DECLARED_INLINE_P(t));
  }
}
void field_type_size_DECL_NO_INLINE_WARNING_P(tree t)
{
  ENTER; if (DECL_NO_INLINE_WARNING_P(t)) {
    fprintf( code_outputfile,PREFIX "DECL_NO_INLINE_WARNING_P\n");
    fprintf( code_outputfile,PREFIX "DECL_NO_INLINE_WARNING_P %d\n",DECL_NO_INLINE_WARNING_P(t));
  }
}
void field_type_size_DECL_DISREGARD_INLINE_LIMITS(tree t)
{
  ENTER; if (DECL_DISREGARD_INLINE_LIMITS(t)) {
    fprintf( code_outputfile,PREFIX "DECL_DISREGARD_INLINE_LIMITS\n");
    fprintf( code_outputfile,PREFIX "DECL_DISREGARD_INLINE_LIMITS %d\n",DECL_DISREGARD_INLINE_LIMITS(t));
  }
}
void field_type_size_DECL_STRUCT_FUNCTION(tree t)
{
  ENTER; if (DECL_STRUCT_FUNCTION(t)) {
    fprintf( code_outputfile,PREFIX "DECL_STRUCT_FUNCTION\n");
    //fprintf( code_outputfile,PREFIX "DECL_STRUCT_FUNCTION %d\n",DECL_STRUCT_FUNCTION(t));
    ///struct function *
  }
}
void field_type_size_DECL_BUILT_IN(tree t)
{
  ENTER; if (DECL_BUILT_IN(t)) {
    fprintf( code_outputfile,PREFIX "DECL_BUILT_IN\n");
    fprintf( code_outputfile,PREFIX "DECL_BUILT_IN %d\n",DECL_BUILT_IN(t));
  }
}
void field_type_size_DECL_BUILT_IN_CLASS(tree t)
{
  ENTER; if (DECL_BUILT_IN_CLASS(t)) {
    fprintf( code_outputfile,PREFIX "DECL_BUILT_IN_CLASS\n");
    fprintf( code_outputfile,PREFIX "DECL_BUILT_IN_CLASS %d\n",DECL_BUILT_IN_CLASS(t));
  }
}
void field_type_size_DECL_ARGUMENTS(tree t)
{
  ENTER; if (DECL_ARGUMENTS(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ARGUMENTS\n");
    //    fprintf( code_outputfile,PREFIX "DECL_ARGUMENTS %d\n",DECL_ARGUMENTS(t));
  }
}
void field_type_size_DECL_ARGUMENT_FLD(tree t)
{
  ENTER; if (DECL_ARGUMENT_FLD(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ARGUMENT_FLD\n");
    fprintf( code_outputfile,PREFIX "DECL_ARGUMENT_FLD %p\n",DECL_ARGUMENT_FLD(t));//tree
  }
}
void field_type_size_DECL_FUNCTION_SPECIFIC_TARGET(tree t)
{
  ENTER; if (DECL_FUNCTION_SPECIFIC_TARGET(t)) {
    fprintf( code_outputfile,PREFIX "DECL_FUNCTION_SPECIFIC_TARGET\n");
    fprintf( code_outputfile,PREFIX "DECL_FUNCTION_SPECIFIC_TARGET %p\n",DECL_FUNCTION_SPECIFIC_TARGET(t));//tree
  }
}
void field_type_size_DECL_FUNCTION_SPECIFIC_OPTIMIZATION(tree t)
{
  ENTER; if (DECL_FUNCTION_SPECIFIC_OPTIMIZATION(t)) {
    fprintf( code_outputfile,PREFIX "DECL_FUNCTION_SPECIFIC_OPTIMIZATION\n");
    fprintf( code_outputfile,PREFIX "DECL_FUNCTION_SPECIFIC_OPTIMIZATION %p\n",DECL_FUNCTION_SPECIFIC_OPTIMIZATION(t));//tree
  }
}
void field_type_size_DECL_ORIGINAL_TYPE(tree t)
{
  ENTER; if (DECL_ORIGINAL_TYPE(t)) {
    fprintf( code_outputfile,PREFIX "DECL_ORIGINAL_TYPE\n");
    fprintf( code_outputfile,PREFIX "DECL_ORIGINAL_TYPE %p\n",DECL_ORIGINAL_TYPE(t));// treeo
  }
}
void field_type_size_TYPE_DECL_SUPPRESS_DEBUG(tree t)
{
  ENTER; if (TYPE_DECL_SUPPRESS_DEBUG(t)) {
    fprintf( code_outputfile,PREFIX "TYPE_DECL_SUPPRESS_DEBUG\n");
    fprintf( code_outputfile,PREFIX "TYPE_DECL_SUPPRESS_DEBUG %d\n",TYPE_DECL_SUPPRESS_DEBUG(t));
  }
}
void field_type_size_IMPORTED_DECL_ASSOCIATED_DECL(tree t)
{
  ENTER; if (IMPORTED_DECL_ASSOCIATED_DECL(t)) {
    fprintf( code_outputfile,PREFIX "IMPORTED_DECL_ASSOCIATED_DECL\n");
    fprintf( code_outputfile,PREFIX "IMPORTED_DECL_ASSOCIATED_DECL %p\n",IMPORTED_DECL_ASSOCIATED_DECL(t));//tree
  }
}
void field_type_size_STATEMENT_LIST_HEAD(tree t)
{
  ENTER; if (STATEMENT_LIST_HEAD(t)) {
    fprintf( code_outputfile,PREFIX "STATEMENT_LIST_HEAD\n");
    //        fprintf( code_outputfile,PREFIX "STATEMENT_LIST_HEAD %d\n",STATEMENT_LIST_HEAD(t));
    //struct tree_statement_list_node *
  }
}
void field_type_size_STATEMENT_LIST_TAIL(tree t)
{
  ENTER; if (STATEMENT_LIST_TAIL(t)) {
    fprintf( code_outputfile,PREFIX "STATEMENT_LIST_TAIL\n");
    //fprintf( code_outputfile,PREFIX "STATEMENT_LIST_TAIL %d\n",STATEMENT_LIST_TAIL(t));
    //struct tree_statement_list_node *
  }
}
void field_type_size_TREE_OPTIMIZATION(tree t)
{
  ENTER; if (TREE_OPTIMIZATION(t)) {
    fprintf( code_outputfile,PREFIX "TREE_OPTIMIZATION\n");
    //        fprintf( code_outputfile,PREFIX "TREE_OPTIMIZATION %d\n",TREE_OPTIMIZATION(t));
    //struct cl_optimization *
  }
}
void field_type_size_TREE_TARGET_OPTION(tree t)
{
  ENTER; if (TREE_TARGET_OPTION(t)) {
    fprintf( code_outputfile,PREFIX "TREE_TARGET_OPTION\n");
    //        fprintf( code_outputfile,PREFIX "TREE_TARGET_OPTION %d\n",TREE_TARGET_OPTION(t));
    //struct cl_target_option *
  }
}
void field_type_size_MAIN_NAME_P(tree t)
{
  ENTER; if (MAIN_NAME_P(t)) {
    fprintf( code_outputfile,PREFIX "MAIN_NAME_P\n");
    fprintf( code_outputfile,PREFIX "MAIN_NAME_P %d\n",MAIN_NAME_P(t));
  }
}

void field_type_size(tree t)
{
  fprintf( code_outputfile, "field type size tree_code:%d and name %s\n", TREE_CODE(t),tree_code_name[TREE_CODE(t)]);
  field_type_size_TREE_CODE(t);
  field_type_size_TREE_CONSTANT(t);

  field_type_size_TREE_FIXED_CST(t);
  field_type_size_TREE_FIXED_CST_PTR(t);
  field_type_size_TREE_INT_CST(t);
  field_type_size_TREE_INT_CST_HIGH(t);
  field_type_size_TREE_INT_CST_LOW(t);
  /*
  field_type_size_TREE_REAL_CST(t);
  field_type_size_TREE_REAL_CST_PTR(t);
  field_type_size_TREE_VECTOR_CST_ELTS(t);

  field_type_size_ASM_CLOBBERS(t);
  field_type_size_ASM_INPUTS(t);
  field_type_size_ASM_INPUT_P(t);
  field_type_size_ASM_LABELS(t);
  field_type_size_ASM_OUTPUTS(t);
  field_type_size_ASM_STRING(t);
  field_type_size_ASM_VOLATILE_P(t);
  field_type_size_ASSERT_EXPR_COND(t);
  field_type_size_ASSERT_EXPR_VAR(t);
  field_type_size_BIND_EXPR_BLOCK(t);
  field_type_size_BIND_EXPR_BODY(t);
  field_type_size_BIND_EXPR_VARS(t);
  field_type_size_BINFO_BASE_ACCESSES(t);
  field_type_size_BINFO_BASE_BINFOS(t);
  field_type_size_BINFO_FLAG_1(t);
  field_type_size_BINFO_FLAG_2(t);
  field_type_size_BINFO_FLAG_3(t);
  field_type_size_BINFO_FLAG_4(t);
  field_type_size_BINFO_FLAG_5(t);
  field_type_size_BINFO_FLAG_6(t);
  field_type_size_BINFO_INHERITANCE_CHAIN(t);
  field_type_size_BINFO_MARKED(t);
  field_type_size_BINFO_N_BASE_BINFOS(t);
  field_type_size_BINFO_OFFSET(t);
  field_type_size_BINFO_OFFSET_ZEROP(t);
  field_type_size_BINFO_SUBVTT_INDEX(t);
  field_type_size_BINFO_TYPE(t);
  field_type_size_BINFO_VIRTUALS(t);
  field_type_size_BINFO_VIRTUAL_P(t);
  field_type_size_BINFO_VPTR_FIELD(t);
  field_type_size_BINFO_VPTR_INDEX(t);
  field_type_size_BINFO_VTABLE(t);
  */
  /*
  field_type_size_BLOCK_ABSTRACT(t);
  field_type_size_BLOCK_ABSTRACT_ORIGIN(t);
  field_type_size_BLOCK_CHAIN(t);
  field_type_size_BLOCK_FRAGMENT_CHAIN(t);
  field_type_size_BLOCK_FRAGMENT_ORIGIN(t);
  field_type_size_BLOCK_NONLOCALIZED_VARS(t);
  field_type_size_BLOCK_NUMBER(t);
  field_type_size_BLOCK_NUM_NONLOCALIZED_VARS(t);
  field_type_size_BLOCK_SOURCE_LOCATION(t);
  field_type_size_BLOCK_SUBBLOCKS(t);
  field_type_size_BLOCK_SUPERCONTEXT(t);
  field_type_size_BLOCK_VARS(t);

  field_type_size_CALL_CANNOT_INLINE_P(t);
  field_type_size_CALL_EXPR_ARGP(t);
  field_type_size_CALL_EXPR_ARGS(t);
  field_type_size_CALL_EXPR_FN(t);
  field_type_size_CALL_EXPR_RETURN_SLOT_OPT(t);
  field_type_size_CALL_EXPR_STATIC_CHAIN(t);
  field_type_size_CALL_EXPR_TAILCALL(t);
  field_type_size_CALL_EXPR_VA_ARG_PACK(t);
  field_type_size_CALL_FROM_THUNK_P(t);
  field_type_size_CAN_HAVE_LOCATION_P(t);
  field_type_size_CASE_HIGH(t);
  field_type_size_CASE_HIGH_SEEN(t);
  field_type_size_CASE_LABEL(t);
  field_type_size_CASE_LOW(t);
  field_type_size_CASE_LOW_SEEN(t);
  field_type_size_CATCH_BODY(t);
  field_type_size_CATCH_TYPES(t);
  field_type_size_CHREC_LEFT(t);
  field_type_size_CHREC_RIGHT(t);
  field_type_size_CHREC_VAR(t);
  field_type_size_CHREC_VARIABLE(t);
  field_type_size_CLEANUP_EH_ONLY(t);
  field_type_size_COMPLETE_OR_UNBOUND_ARRAY_TYPE_P(t);
  field_type_size_COMPLETE_OR_VOID_TYPE_P(t);
  field_type_size_COMPLETE_TYPE_P(t);
  field_type_size_COMPOUND_LITERAL_EXPR_DECL(t);
  field_type_size_COMPOUND_LITERAL_EXPR_DECL_EXPR(t);
  field_type_size_COND_EXPR_COND(t);
  field_type_size_COND_EXPR_ELSE(t);
  field_type_size_COND_EXPR_THEN(t);
  field_type_size_CONSTRUCTOR_BITFIELD_P(t);
  field_type_size_CONSTRUCTOR_ELTS(t);
  field_type_size_CONSTRUCTOR_NELTS(t);
  */
  /*  field_type_size_DEBUG_TEMP_UID(t);
  field_type_size_DECL_ABSTRACT(t);
  field_type_size_DECL_ABSTRACT_ORIGIN(t);
  */
  //  field_type_size_DECL_ALIGN(t);
  //  field_type_size_DECL_ALIGN_UNIT(t);
  /*  field_type_size_DECL_ARGUMENTS(t);
  field_type_size_DECL_ARGUMENT_FLD(t);
  field_type_size_DECL_ARG_TYPE(t);
  field_type_size_DECL_ARTIFICIAL(t);
  field_type_size_DECL_ASSEMBLER_NAME(t);
  field_type_size_DECL_ASSEMBLER_NAME_SET_P(t);
  field_type_size_DECL_ATTRIBUTES(t);
  field_type_size_DECL_BIT_FIELD(t);
  field_type_size_DECL_BIT_FIELD_TYPE(t);
  field_type_size_DECL_BUILT_IN(t);
  field_type_size_DECL_BUILT_IN_CLASS(t);
  field_type_size_DECL_BY_REFERENCE(t);
  field_type_size_DECL_COMDAT(t);
  field_type_size_DECL_COMDAT_GROUP(t);
  field_type_size_DECL_COMMON(t);
  field_type_size_DECL_CONTEXT(t);
  field_type_size_DECL_DEBUG_EXPR(t);
  field_type_size_DECL_DEBUG_EXPR_IS_FROM(t);
  field_type_size_DECL_DECLARED_INLINE_P(t);
  field_type_size_DECL_DEFER_OUTPUT(t);
  field_type_size_DECL_DISREGARD_INLINE_LIMITS(t);
  field_type_size_DECL_DLLIMPORT_P(t);
  field_type_size_DECL_ERROR_ISSUED(t);
  field_type_size_DECL_EXPR_DECL(t);
  field_type_size_DECL_EXTERNAL(t);
  field_type_size_DECL_FCONTEXT(t);
  field_type_size_DECL_FIELD_BIT_OFFSET(t);
  field_type_size_DECL_FIELD_CONTEXT(t);
  field_type_size_DECL_FIELD_OFFSET(t);
  field_type_size_DECL_FINI_PRIORITY(t);
  field_type_size_DECL_FROM_INLINE(t);
  field_type_size_DECL_FUNCTION_CODE(t);
  field_type_size_DECL_FUNCTION_PERSONALITY(t);
  field_type_size_DECL_FUNCTION_SPECIFIC_OPTIMIZATION(t);
  field_type_size_DECL_FUNCTION_SPECIFIC_TARGET(t);
  field_type_size_DECL_HARD_REGISTER(t);
  field_type_size_DECL_HAS_INIT_PRIORITY_P(t);
  field_type_size_DECL_HAS_VALUE_EXPR_P(t);
  field_type_size_DECL_IGNORED_P(t);
  field_type_size_DECL_INCOMING_RTL(t);
  field_type_size_DECL_INITIAL(t);
  field_type_size_DECL_INIT_PRIORITY(t);
  field_type_size_DECL_IN_SYSTEM_HEADER(t);
  field_type_size_DECL_IN_TEXT_SECTION(t);
  field_type_size_DECL_IS_MALLOC(t);
  field_type_size_DECL_IS_NOVOPS(t);
  field_type_size_DECL_IS_OPERATOR_NEW(t);
  field_type_size_DECL_IS_RETURNS_TWICE(t);
  field_type_size_DECL_LANG_FLAG_0(t);
  field_type_size_DECL_LANG_FLAG_1(t);
  field_type_size_DECL_LANG_FLAG_2(t);
  field_type_size_DECL_LANG_FLAG_3(t);
  field_type_size_DECL_LANG_FLAG_4(t);
  field_type_size_DECL_LANG_FLAG_5(t);
  field_type_size_DECL_LANG_FLAG_6(t);
  field_type_size_DECL_LANG_FLAG_7(t);
  field_type_size_DECL_LANG_FLAG_8(t);
  field_type_size_DECL_LANG_SPECIFIC(t);
  field_type_size_DECL_LOOPING_CONST_OR_PURE_P(t);
  field_type_size_DECL_MODE(t);
  field_type_size_DECL_NAME(t);
  field_type_size_DECL_NONADDRESSABLE_P(t);
  field_type_size_DECL_NONLOCAL(t);
  field_type_size_DECL_NO_INLINE_WARNING_P(t);
  field_type_size_DECL_NO_INSTRUMENT_FUNCTION_ENTRY_EXIT(t);
  field_type_size_DECL_NO_LIMIT_STACK(t);
  field_type_size_DECL_OFFSET_ALIGN(t);
  field_type_size_DECL_ONE_ONLY(t);
  field_type_size_DECL_ORIGIN(t);
  field_type_size_DECL_ORIGINAL_TYPE(t);
  field_type_size_DECL_PACKED(t);
  field_type_size_DECL_PURE_P(t);
  field_type_size_DECL_QUALIFIER(t);
  field_type_size_DECL_REGISTER(t);
  field_type_size_DECL_REPLACEABLE_P(t);
  field_type_size_DECL_RESTRICTED_P(t);
  field_type_size_DECL_RESULT(t);
  field_type_size_DECL_RESULT_FLD(t);
  field_type_size_DECL_RTL(t);
  field_type_size_DECL_RTL_IF_SET(t);
  field_type_size_DECL_RTL_SET_P(t);
  field_type_size_DECL_SAVED_TREE(t);
  field_type_size_DECL_SECTION_NAME(t);
  field_type_size_DECL_SEEN_IN_BIND_EXPR_P(t);
  field_type_size_DECL_SIZE(t);
  field_type_size_DECL_SIZE_UNIT(t);
  field_type_size_DECL_SOURCE_FILE(t);
  field_type_size_DECL_SOURCE_LINE(t);
  field_type_size_DECL_SOURCE_LOCATION(t);
  field_type_size_DECL_STATIC_CHAIN(t);
  field_type_size_DECL_STATIC_CONSTRUCTOR(t);
  field_type_size_DECL_STATIC_DESTRUCTOR(t);
  field_type_size_DECL_STRUCT_FUNCTION(t);
  field_type_size_DECL_THREAD_LOCAL_P(t);
  field_type_size_DECL_TLS_MODEL(t);
  field_type_size_DECL_UID(t);
  field_type_size_DECL_UNINLINABLE(t);
  field_type_size_DECL_UNSIGNED(t);
  field_type_size_DECL_USER_ALIGN(t);
  field_type_size_DECL_VALUE_EXPR(t);
  field_type_size_DECL_VAR_ANN_PTR(t);
  field_type_size_DECL_VINDEX(t);
  field_type_size_DECL_VIRTUAL_P(t);
  field_type_size_DECL_VISIBILITY(t);
  field_type_size_DECL_VISIBILITY_SPECIFIED(t);
  field_type_size_DECL_WEAK(t);
  */
  /*
  field_type_size_EH_FILTER_FAILURE(t);
  field_type_size_EH_FILTER_TYPES(t);
  field_type_size_EH_LANDING_PAD_NR(t);
  field_type_size_EXIT_EXPR_COND(t);
  field_type_size_EXPR_FILENAME(t);
  field_type_size_EXPR_HAS_LOCATION(t);
  field_type_size_EXPR_LINENO(t);
  field_type_size_EXPR_LOCATION(t);
  field_type_size_EXPR_P(t);
  field_type_size_FORCED_LABEL(t);
  field_type_size_GCC_IDENT_TO_HT_IDENT(t);
  field_type_size_GOTO_DESTINATION(t);
  field_type_size_HAS_DECL_ASSEMBLER_NAME_P(t);
  field_type_size_HAS_RTL_P(t);
  field_type_size_HT_IDENT_TO_GCC_IDENT(t);
  field_type_size_IDENTIFIER_HASH_VALUE(t);
  field_type_size_IDENTIFIER_LENGTH(t);
  //  field_type_size_IDENTIFIER_POINTER(t);
  field_type_size_IDENTIFIER_TRANSPARENT_ALIAS(t);
  field_type_size_IMPORTED_DECL_ASSOCIATED_DECL(t);
  field_type_size_IS_EMPTY_STMT(t);
  field_type_size_LABEL_DECL_UID(t);
  field_type_size_LABEL_EXPR_LABEL(t);
  field_type_size_LOOP_EXPR_BODY(t);
  field_type_size_MAIN_NAME_P(t);
  field_type_size_MOVE_NONTEMPORAL(t);
  field_type_size_OBJ_TYPE_REF_EXPR(t);
  field_type_size_OBJ_TYPE_REF_OBJECT(t);
  field_type_size_OBJ_TYPE_REF_TOKEN(t);
  field_type_size_OMP_BODY(t);
  field_type_size_OMP_CLAUSES(t);
  field_type_size_OMP_CLAUSE_CHAIN(t);
  field_type_size_OMP_CLAUSE_CODE(t);
  field_type_size_OMP_CLAUSE_CODE(t);
  field_type_size_OMP_CLAUSE_COLLAPSE_COUNT(t);
  field_type_size_OMP_CLAUSE_COLLAPSE_EXPR(t);
  field_type_size_OMP_CLAUSE_COLLAPSE_ITERVAR(t);
  field_type_size_OMP_CLAUSE_DECL(t);
  field_type_size_OMP_CLAUSE_DEFAULT_KIND(t);
  field_type_size_OMP_CLAUSE_HAS_LOCATION(t);
  field_type_size_OMP_CLAUSE_IF_EXPR(t);
  field_type_size_OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE(t);
  field_type_size_OMP_CLAUSE_LASTPRIVATE_GIMPLE_SEQ(t);
  field_type_size_OMP_CLAUSE_LASTPRIVATE_STMT(t);
  field_type_size_OMP_CLAUSE_LOCATION(t);
  field_type_size_OMP_CLAUSE_NUM_THREADS_EXPR(t);
  field_type_size_OMP_CLAUSE_PRIVATE_DEBUG(t);
  field_type_size_OMP_CLAUSE_PRIVATE_OUTER_REF(t);
  field_type_size_OMP_CLAUSE_REDUCTION_CODE(t);
  field_type_size_OMP_CLAUSE_REDUCTION_GIMPLE_INIT(t);
  field_type_size_OMP_CLAUSE_REDUCTION_GIMPLE_MERGE(t);
  field_type_size_OMP_CLAUSE_REDUCTION_INIT(t);
  field_type_size_OMP_CLAUSE_REDUCTION_MERGE(t);
  field_type_size_OMP_CLAUSE_REDUCTION_PLACEHOLDER(t);
  field_type_size_OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(t);
  field_type_size_OMP_CLAUSE_SCHEDULE_KIND(t);
  field_type_size_OMP_CRITICAL_BODY(t);
  field_type_size_OMP_CRITICAL_NAME(t);
  field_type_size_OMP_FOR_BODY(t);
  field_type_size_OMP_FOR_CLAUSES(t);
  field_type_size_OMP_FOR_COND(t);
  field_type_size_OMP_FOR_INCR(t);
  field_type_size_OMP_FOR_INIT(t);
  field_type_size_OMP_FOR_PRE_BODY(t);
  field_type_size_OMP_MASTER_BODY(t);
  field_type_size_OMP_ORDERED_BODY(t);
  field_type_size_OMP_PARALLEL_BODY(t);
  field_type_size_OMP_PARALLEL_CLAUSES(t);
  field_type_size_OMP_PARALLEL_COMBINED(t);
  field_type_size_OMP_SECTIONS_BODY(t);
  field_type_size_OMP_SECTIONS_CLAUSES(t);
  field_type_size_OMP_SECTION_BODY(t);
  field_type_size_OMP_SECTION_LAST(t);
  field_type_size_OMP_SINGLE_BODY(t);
  field_type_size_OMP_SINGLE_CLAUSES(t);
  field_type_size_OMP_TASKREG_BODY(t);
  field_type_size_OMP_TASKREG_CHECK(t);
  field_type_size_OMP_TASKREG_CLAUSES(t);
  field_type_size_OMP_TASK_BODY(t);
  field_type_size_OMP_TASK_CLAUSES(t);
  field_type_size_PREDICT_EXPR_OUTCOME(t);
  field_type_size_PREDICT_EXPR_PREDICTOR(t);
  field_type_size_SAVE_EXPR_RESOLVED_P(t);
  field_type_size_SET_TYPE_STRUCTURAL_EQUALITY(t);
  field_type_size_SSA_NAME_DEF_STMT(t);
  field_type_size_SSA_NAME_IMM_USE_NODE(t);
  field_type_size_SSA_NAME_IN_FREE_LIST(t);
  field_type_size_SSA_NAME_IS_DEFAULT_DEF(t);
  field_type_size_SSA_NAME_OCCURS_IN_ABNORMAL_PHI(t);
  field_type_size_SSA_NAME_VAR(t);
  field_type_size_SSA_NAME_VERSION(t);
  field_type_size_STATEMENT_LIST_HEAD(t);
  field_type_size_STATEMENT_LIST_TAIL(t);
*/
  //  field_type_size_SWITCH_BODY(t);
  //  field_type_size_SWITCH_COND(t);
  //  field_type_size_SWITCH_LABELS(t);
  //  field_type_size_TARGET_EXPR_CLEANUP(t);
  //  field_type_size_TARGET_EXPR_INITIAL(t);
  //  field_type_size_TARGET_EXPR_SLOT(t);
  //  field_type_size_TMR_BASE(t);
  //field_type_size_TMR_INDEX(t);
  //  field_type_size_TMR_OFFSET(t);
  //  field_type_size_TMR_ORIGINAL(t);
  //  field_type_size_TMR_STEP(t);
  //  field_type_size_TMR_SYMBOL(t);
  //  field_type_size_TREE_ADDRESSABLE(t);
  field_type_size_TREE_ASM_WRITTEN(t);
  //  field_type_size_TREE_BLOCK(t);
  //  field_type_size_TREE_CHAIN(t);
  //  field_type_size_TREE_DEPRECATED(t);
//  field_type_size_TREE_HASH(t);
//  field_type_size_TREE_IMAGPART(t);
/*  field_type_size_TREE_LANG_FLAG_0(t);
  field_type_size_TREE_LANG_FLAG_1(t);
  field_type_size_TREE_LANG_FLAG_2(t);
  field_type_size_TREE_LANG_FLAG_3(t);
  field_type_size_TREE_LANG_FLAG_4(t);
  field_type_size_TREE_LANG_FLAG_5(t);
  field_type_size_TREE_LANG_FLAG_6(t);
  field_type_size_TREE_NOTHROW(t);
  field_type_size_TREE_NO_TRAMPOLINE(t);
  field_type_size_TREE_NO_WARNING(t);
  field_type_size_TREE_OPERAND_LENGTH(t);
  field_type_size_TREE_OPTIMIZATION(t);
  field_type_size_TREE_OVERFLOW(t);
  
  field_type_size_TREE_PRIVATE(t);
  field_type_size_TREE_PROTECTED(t);
  field_type_size_TREE_PUBLIC(t);
  field_type_size_TREE_PURPOSE(t);
  field_type_size_TREE_READONLY(t);
  field_type_size_TREE_REALPART(t);
  field_type_size_TREE_SIDE_EFFECTS(t);
  field_type_size_TREE_STATIC(t);
  field_type_size_TREE_STRING_LENGTH(t);
  field_type_size_TREE_STRING_POINTER(t);
  field_type_size_TREE_SYMBOL_REFERENCED(t);
  field_type_size_TREE_TARGET_OPTION(t);
  field_type_size_TREE_THIS_NOTRAP(t);
  field_type_size_TREE_THIS_VOLATILE(t);
*/
//  field_type_size_TREE_TYPE(t);
  field_type_size_TREE_USED(t);
  //  field_type_size_TREE_VALUE(t);

  /* field_type_size_TREE_VEC_END(t); */
  /* field_type_size_TREE_VEC_LENGTH(t); */
  /* field_type_size_TREE_VISITED(t); */
  /* field_type_size_TRY_CATCH_IS_CLEANUP(t); */
  /*
  field_type_size_TYPE_ADDR_SPACE(t);
  field_type_size_TYPE_ALIAS_SET(t);
  field_type_size_TYPE_ALIAS_SET_KNOWN_P(t);
  field_type_size_TYPE_ALIGN(t);
  field_type_size_TYPE_ALIGN_OK(t);
  field_type_size_TYPE_ALIGN_UNIT(t);
  field_type_size_TYPE_ARG_TYPES(t);
  field_type_size_TYPE_ATTRIBUTES(t);
  field_type_size_TYPE_BINFO(t);
  field_type_size_TYPE_CACHED_VALUES(t);
  field_type_size_TYPE_CACHED_VALUES_P(t);
  field_type_size_TYPE_CANONICAL(t);
  field_type_size_TYPE_CONTAINS_PLACEHOLDER_INTERNAL(t);
  field_type_size_TYPE_CONTEXT(t);
  field_type_size_TYPE_DEBUG_REPRESENTATION_TYPE(t);
  field_type_size_TYPE_DECL_SUPPRESS_DEBUG(t);
  field_type_size_TYPE_DOMAIN(t);
  field_type_size_TYPE_FBIT(t);
  field_type_size_TYPE_FIELDS(t);
  field_type_size_TYPE_IBIT(t);
  field_type_size_TYPE_IS_SIZETYPE(t);
  field_type_size_TYPE_LANG_FLAG_0(t);
  field_type_size_TYPE_LANG_FLAG_1(t);
  field_type_size_TYPE_LANG_FLAG_2(t);
  field_type_size_TYPE_LANG_FLAG_3(t);
  field_type_size_TYPE_LANG_FLAG_4(t);
  field_type_size_TYPE_LANG_FLAG_5(t);
  field_type_size_TYPE_LANG_FLAG_6(t);
  field_type_size_TYPE_LANG_SLOT_1(t);
  field_type_size_TYPE_LANG_SPECIFIC(t);
  field_type_size_TYPE_MAIN_VARIANT(t);
  field_type_size_TYPE_MAXVAL(t);
  field_type_size_TYPE_MAX_VALUE(t);
  field_type_size_TYPE_METHODS(t);
  field_type_size_TYPE_METHOD_BASETYPE(t);
  field_type_size_TYPE_MINVAL(t);
  field_type_size_TYPE_MIN_VALUE(t);
  field_type_size_TYPE_MODE(t);
  field_type_size_TYPE_NAME(t);
  field_type_size_TYPE_NEEDS_CONSTRUCTING(t);
  field_type_size_TYPE_NEXT_PTR_TO(t);
  field_type_size_TYPE_NEXT_REF_TO(t);
  field_type_size_TYPE_NEXT_VARIANT(t);
  field_type_size_TYPE_NONALIASED_COMPONENT(t);
  field_type_size_TYPE_NO_FORCE_BLK(t);
  field_type_size_TYPE_OFFSET_BASETYPE(t);
  field_type_size_TYPE_ORIG_SIZE_TYPE(t);
  field_type_size_TYPE_PACKED(t);
  field_type_size_TYPE_POINTER_TO(t);
  field_type_size_TYPE_PRECISION(t);
  field_type_size_TYPE_QUALS(t);
  field_type_size_TYPE_QUALS_NO_ADDR_SPACE(t);
  field_type_size_TYPE_READONLY(t);
  field_type_size_TYPE_REFERENCE_TO(t);
  field_type_size_TYPE_REF_CAN_ALIAS_ALL(t);
  field_type_size_TYPE_RESTRICT(t);
  field_type_size_TYPE_SATURATING(t);
  field_type_size_TYPE_SIZE(t);
  field_type_size_TYPE_SIZES_GIMPLIFIED(t);
  field_type_size_TYPE_SIZE_UNIT(t);
  field_type_size_TYPE_STRING_FLAG(t);
  field_type_size_TYPE_STRUCTURAL_EQUALITY_P(t);
  field_type_size_TYPE_STUB_DECL(t);
  field_type_size_TYPE_SYMTAB_ADDRESS(t);
  field_type_size_TYPE_SYMTAB_DIE(t);
  field_type_size_TYPE_SYMTAB_POINTER(t);
  field_type_size_TYPE_TRANSPARENT_AGGR(t);
  field_type_size_TYPE_UID(t);
  field_type_size_TYPE_UNSIGNED(t);
  field_type_size_TYPE_USER_ALIGN(t);
  field_type_size_TYPE_VALUES(t);
  field_type_size_TYPE_VECTOR_OPAQUE(t);
  field_type_size_TYPE_VFIELD(t);
  field_type_size_TYPE_VOLATILE(t);
*/
  //  field_type_size_VL_EXP_OPERAND_LENGTH(t);
  //  field_type_size_VOID_TYPE_P(t);
  //  field_type_size_call_expr_nargs(t);

}
