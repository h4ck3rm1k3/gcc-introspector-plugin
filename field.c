#include <stdio.h>
//#include "gcc-plugin.h"
#include "gcc-plugin.h"
#include "tree.h"
#include "plugin-version.h"
#include "tm.h"
#include "cp/cp-tree.h"
#include "ggc.h"

extern _IO_FILE * code_outputfile;

void     field_DECL_MODE(tree t)
{
  if (DECL_MODE(t)) {
    fprintf( code_outputfile,"DECL_MODE(%d),\n",DECL_MODE(t));
  }
}

void    field_DECL_OFFSET_ALIGN(tree t)
{
  if (DECL_OFFSET_ALIGN(t)) {
    fprintf( code_outputfile,"DECL_OFFSET_ALIGN(%ld),\n",DECL_OFFSET_ALIGN(t));
  }
}

void    field_DECL_QUALIFIER(tree t)
{
  if (DECL_QUALIFIER(t)) {
    //TODO:fprintf( code_outputfile,"DECL_QUALIFIER\n");// tree
    //,DECL_QUALIFIER(t)
  }
}


void  field_TREE_ADDRESSABLE(tree t)
{
  if (TREE_ADDRESSABLE(t)) {
    fprintf( code_outputfile,"TREE_ADDRESSABLE %d\n",TREE_ADDRESSABLE(t));
  }
}

void field_CONSTRUCTOR_BITFIELD_P(tree t)
{
  if (CONSTRUCTOR_BITFIELD_P(t)) {
    fprintf( code_outputfile,"CONSTRUCTOR_BITFIELD_P(),\n");
  }
}

void    field_DECL_BIT_FIELD(tree t)
{
  if (DECL_BIT_FIELD(t)) {
    fprintf( code_outputfile,"BIT_FIELD(),\n");
  }
}

void field_DECL_BIT_FIELD_TYPE(tree t)
{
  if (DECL_BIT_FIELD_TYPE(t)) {
    fprintf( code_outputfile,"BIT_FIELD_TYPE\n");
  }
}

void field_DECL_FCONTEXT(tree t)
{
  // gets the parent
}

void field_DECL_VIRTUAL_P(tree t)
{
  if (DECL_VIRTUAL_P(t)) {
    fprintf( code_outputfile,"DECL_VIRTUAL_P(%d),\n",DECL_VIRTUAL_P(t));
  }
} // vtable

void    field_DECL_FIELD_BIT_OFFSET(tree t)
{
  if (DECL_FIELD_BIT_OFFSET(t)) {
    fprintf( code_outputfile,"DECL_BIT_FIELD_OFFSET\n");
    //DECL_FIELD_BIT_OFFSET(t) TREE
  }
}

void     field_DECL_FIELD_OFFSET(tree t)
{
  if (DECL_FIELD_OFFSET(t)) {
    //fprintf( code_outputfile,"DECL_BIT_FIELD %d\n",DECL_FIELD_OFFSET(t));
    fprintf( code_outputfile,"DECL_BIT_FIELD\n"); // tree
  }
}

void    field_DECL_INITIAL(tree t)
{
  if (DECL_INITIAL(t)) {
    fprintf( code_outputfile,"DECL_INITIAL\n");
    //DECL_INITIAL(t) TREE
  }
} // enum value


void    field_DECL_NONADDRESSABLE_P(tree t)
{
  if (DECL_NONADDRESSABLE_P(t)) {
    fprintf( code_outputfile,"DECL_NONADDRESSABLE_P %d\n",DECL_NONADDRESSABLE_P(t));
  }
}

void    field_DECL_PACKED(tree t)
{
  if (DECL_PACKED(t)) {
    fprintf( code_outputfile,"DECL_PACKED %d\n",DECL_PACKED(t));
  }
}

void    field_DECL_UNSIGNED(tree t)
{
  if (DECL_UNSIGNED(t)) {
    fprintf( code_outputfile,"DECL_UNSIGNED %d\n",DECL_UNSIGNED(t));
  }
}

void    field_TREE_READONLY(tree t)
{
  if (TREE_READONLY(t)) {
    fprintf( code_outputfile,"TREE_READONLY %d\n",TREE_READONLY(t));
  }
}

void fields (tree t)
{
  tree field;
  for (field = TYPE_FIELDS (t) ; field ; field = TREE_CHAIN (field)) {
    //    fprintf(stderr, "%s: member %s\n", "test1", tree_code_name[TREE_CODE(field)]);
    fprintf( code_outputfile,"\tfield(\n");
    name(field);
    tree type = TREE_TYPE (field);
    if (type) {
      field_type(type);
    }
      //DECL_FIELD_CONTEXT
    //   In a FIELD_DECL node, it means that the programmer is permitted to   construct the address of this field.  This is used for aliasing   purposes: see record_component_aliases.
    field_CONSTRUCTOR_BITFIELD_P(t);
    field_DECL_BIT_FIELD(t);
    field_DECL_BIT_FIELD_TYPE(t);
    field_DECL_FCONTEXT(t);
    field_DECL_FIELD_BIT_OFFSET(t);
    field_DECL_FIELD_OFFSET(t);
    field_DECL_INITIAL(t); // enum value
    field_DECL_MODE(t);
    field_DECL_NONADDRESSABLE_P(t);
    field_DECL_OFFSET_ALIGN(t);
    field_DECL_PACKED(t);
    field_DECL_QUALIFIER(t);
    field_DECL_UNSIGNED(t);
    field_DECL_VIRTUAL_P(t); // vtable
    field_TREE_ADDRESSABLE(t);
    field_TREE_READONLY(t);
    fprintf( code_outputfile,"\t0),/*field*/\n");
  }
}// fields
