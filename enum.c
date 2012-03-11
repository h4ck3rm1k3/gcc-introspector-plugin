#include <stdio.h>
//#include "gcc-plugin.h"
#include "gcc-plugin.h"
#include "tree.h"
#include "plugin-version.h"
#include "tm.h"
#include "cp/cp-tree.h"
#include "ggc.h"
//#define ENTER  fprintf( code_outputfile,"Enter at %s:%d\n", __FILE__, __LINE__);
#define ENTER
#define PREFIX "field type :"
extern _IO_FILE * code_outputfile;
void process_enum_name_value(const char * p, int val)
{
//IDENTIFIER_POINTER (TREE_PURPOSE (tv))),value);
  fprintf( code_outputfile,"ENUM : %s %d",p,val);
}

void process_enum ( tree enumeral_type) {
  fprintf( code_outputfile,"BEGIN ENUM\n");
  tree tv;
  /* Output the list of possible values for the enumeration type.  */
  for (tv = TYPE_VALUES (enumeral_type); tv ; tv = TREE_CHAIN (tv))
    {
      fprintf( code_outputfile,"ENUM VALUE\n");
      tree v = TREE_VALUE (tv);
      // GCC 4.4 switched to consts for enum values
      if (TREE_CODE (v) == CONST_DECL)
        v = DECL_INITIAL (v);
      int value = TREE_INT_CST_LOW (v);
      process_enum_name_value(IDENTIFIER_POINTER (TREE_PURPOSE (tv)),value);

    }
  fprintf( code_outputfile,"END ENUM\n");
  // if we want to generate code for the enum :
  //  process_enum_tree_code(enumeral_type);
}

void process_enum_tree_code_imp ( tree enumeral_type);

void process_enum_tree_code_generate_gcc ( tree enumeral_type) {
  process_enum_tree_code_imp(enumeral_type); // declare the callbacks first
  fprintf( code_outputfile,"process_enum_tree_code(tree t) { ");
  fprintf( code_outputfile,"\tswitch(TREE_CODE(t))\n{\n");
  tree tv;
  /* Output the list of possible values for the enumeration type.  */
  for (tv = TYPE_VALUES (enumeral_type); tv ; tv = TREE_CHAIN (tv))
    {
      //      fprintf( code_outputfile,"ENUM VALUE\n");
      tree v = TREE_VALUE (tv);
      // GCC 4.4 switched to consts for enum values
      if (TREE_CODE (v) == CONST_DECL)
        v = DECL_INITIAL (v);
      int value = TREE_INT_CST_LOW (v);
      const char * p = IDENTIFIER_POINTER (TREE_PURPOSE (tv));
      //process_enum_name_value(),value);
      fprintf( code_outputfile,"case %s:\n\tfield_type_%s(t);\n\tbreak;\n",p,p);

    }
  fprintf( code_outputfile,"\tdefault : ;\n");
  fprintf( code_outputfile,"};\n");
  fprintf( code_outputfile,"};\n");

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
      fprintf( code_outputfile,"void field_type_%s(tree t){emit_tree_code(\"%s\");\n};\n",p,p);

    }

}
