#include "gcc.h"
_IO_FILE * code_outputfile;

void plugin_finish_type (tree t, void *_)
{
  fprintf(code_outputfile, "finish_type(\"%s\",\n", tree_code_name[TREE_CODE(t)]);
  //  printf("check1 pointer %p\n",t);
  //  printf("check2 as long %ul\n",t);
#ifdef USE_GTK
  gtk_add_node(t,tree_code_name[TREE_CODE(t)]);
#endif
  //  printf ( "after tcname:%s\n", tree_code_name[TREE_CODE(t)]);
  //  generic_callback(t, "user_data");   
  if (t)
    {
      record(t);      
    }
  else
    {
      printf ( "no record\n");
    }
  fprintf(code_outputfile,"0),//finish_type\n");
  //gcc_report_tree_visit(t);
}

void plugin_open_files()
{
  // open the output file
  code_outputfile=fopen ("example_output.c","w+");
  fprintf(code_outputfile, "#include \"gccinterface.h\"\n");
  fprintf(code_outputfile, "void main() {\n");
  fprintf(code_outputfile, "start_plugin(\n");
  if (code_outputfile == NULL) perror ("Error opening file");
}

void plugin_close_files()
{
  // close the output file
  fprintf(code_outputfile, "0);");
  fprintf(code_outputfile, "}");
  fclose(code_outputfile);
}
