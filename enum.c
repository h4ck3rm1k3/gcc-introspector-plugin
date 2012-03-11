#include <stdio.h>
//#include "gcc-plugin.h"
#include "gcc-plugin.h"
#include "tree.h"
#include "plugin-version.h"
#include "tm.h"
#include "cp/cp-tree.h"
#include "ggc.h"
//#define ENTER  printf ("Enter at %s:%d\n", __FILE__, __LINE__);
#define ENTER
#define PREFIX "field type :"

void process_enum_name_value(const char * p, int val)
{
//IDENTIFIER_POINTER (TREE_PURPOSE (tv))),value);
  printf("ENUM : %s %d",p,val);
}

void process_enum ( tree enumeral_type) {
  printf("BEGIN ENUM\n");
  tree tv;
  /* Output the list of possible values for the enumeration type.  */
  for (tv = TYPE_VALUES (enumeral_type); tv ; tv = TREE_CHAIN (tv))
    {
      printf("ENUM VALUE\n");
      tree v = TREE_VALUE (tv);
      // GCC 4.4 switched to consts for enum values
      if (TREE_CODE (v) == CONST_DECL)
        v = DECL_INITIAL (v);
      int value = TREE_INT_CST_LOW (v);
      process_enum_name_value(IDENTIFIER_POINTER (TREE_PURPOSE (tv)),value);

    }
  printf("END ENUM\n");
  // if we want to generate code for the enum :
  //  process_enum_tree_code(enumeral_type);
}

void process_enum_tree_code_imp ( tree enumeral_type);

void process_enum_tree_code_generate_gcc ( tree enumeral_type) {
  process_enum_tree_code_imp(enumeral_type); // declare the callbacks first
  printf("process_enum_tree_code(tree t) { ");
  printf("\tswitch(TREE_CODE(t))\n{\n");
  tree tv;
  /* Output the list of possible values for the enumeration type.  */
  for (tv = TYPE_VALUES (enumeral_type); tv ; tv = TREE_CHAIN (tv))
    {
      //      printf("ENUM VALUE\n");
      tree v = TREE_VALUE (tv);
      // GCC 4.4 switched to consts for enum values
      if (TREE_CODE (v) == CONST_DECL)
        v = DECL_INITIAL (v);
      int value = TREE_INT_CST_LOW (v);
      const char * p = IDENTIFIER_POINTER (TREE_PURPOSE (tv));
      //process_enum_name_value(),value);
      printf("case %s:\n\tfield_type_%s(t);\n\tbreak;\n",p,p);

    }
  printf("\tdefault : ;\n");
  printf("};\n");
  printf("};\n");

}

void process_enum_tree_code_imp ( tree enumeral_type) {

  tree tv;
  /* Output the list of possible values for the enumeration type.  */
  for (tv = TYPE_VALUES (enumeral_type); tv ; tv = TREE_CHAIN (tv))
    {
      tree v = TREE_VALUE (tv);
      // GCC 4.4 switched to consts for enum values
      if (TREE_CODE (v) == CONST_DECL)
        v = DECL_INITIAL (v);
      int value = TREE_INT_CST_LOW (v);
      const char * p = IDENTIFIER_POINTER (TREE_PURPOSE (tv));
      //process_enum_name_value(),value);
      printf("void field_type_%s(tree t){emit_tree_code(\"%s\");\n};\n",p,p);

    }

}
