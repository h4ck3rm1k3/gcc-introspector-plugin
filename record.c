#include "gcc.h"

void id_field (tree d)
  {
    const char *name = IDENTIFIER_POINTER(d);
    int namel = IDENTIFIER_LENGTH(d);
    if (namel)
      {
	fprintf(code_outputfile, "fieldname(\"%s\"),\n",name);
#ifdef USE_GTK
	gtk_add_node(d,name);
#endif
	//	      TODO:gtk_add_node_field(d,tree_code_name[TREE_CODE(d)],name);
	//	      fprintf(stderr, "%s: member1 %s\n", name, );
      }
    else
      {
	fprintf( code_outputfile, "noname(),\n",namel);
      }
  }

void id (tree d)
{
  const char *name = IDENTIFIER_POINTER(d);
  int namel = IDENTIFIER_LENGTH(d);
  if (namel)
    {
      //      fprintf(stderr, "has name1 %d :%s\n",namel,name);
      fprintf( code_outputfile, "name(\"%s\"),\n",name);
      //      fprintf(stderr, "%s: member1 %s\n", name, tree_code_name[TREE_CODE(d)]);
    }
  else
    {
      fprintf( code_outputfile, "noname(),");
    }
}


void name(tree t)
{
  //  printf("get name\n");
  tree d =DECL_NAME(t);
  if (d)
    {
      //      printf("has decl\n");
      id(d);
    }
  else
    {
      //      printf("has no decl\n");
      id(t);
    }
}


void record(tree t)	
{
  //  printf ( "check:%d and record %d\n", TREE_CODE(t),RECORD_TYPE);

  switch (TREE_CODE(t)) {
  case RECORD_TYPE:
  case UNION_TYPE:
    name(t);
    fprintf( code_outputfile,"fields(\n");
    fields (t);
    fprintf( code_outputfile,"0),\n");
    break;
    
  default: 
  printf ( "unknown tcname:%s\n", tree_code_name[TREE_CODE(t)]);
    break;      
  }
}//

void record2(tree t)
{
  printf ("starting\n");
  name (t);
  //  generic_callback(t, "user_data");
  //tree type_decl = TYPE_NAME (t);
  
  tree field;
  for (field = TYPE_FIELDS (t) ; field ; field = TREE_CHAIN (field)) {
    //if (DECL_ARTIFICIAL(field) && !DECL_IMPLICIT_TYPEDEF_P(field)) continue;
    name (field);
    fprintf(stderr, "%s: member %s\n", "test2", tree_code_name[TREE_CODE(field)]);
    
  }
};
