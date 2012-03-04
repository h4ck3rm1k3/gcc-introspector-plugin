#include <stdio.h>
//#include "gcc-plugin.h"
#include "gcc-plugin.h"
#include "tree.h"
#include "plugin-version.h"
#include "cp/cp-tree.h"
#include "ggc.h"

#define DEFTREECODE(SYM, NAME, TYPE, LENGTH) TYPE,
#define END_OF_BASE_TREE_CODES

const enum tree_code_class tree_code_type[] = {
#include "all-tree.def"
};


#include <config.h>
#include <system.h>
#include <coretypes.h>
#include <tm.h>
#include <tree.h>
#include <basic-block.h>
#include <tree-flow.h>
#include "gtkinterface.h"
void process (tree t); // forward
void process_type(tree t);
//#include "gtype-desc.h"

// based on this doc http://gcc.gnu.org/onlinedocs/gccint/Plugins.html


//void xassert (int );
#ifndef XASSERT_H
#define XASSERT_H
void crashhandler()
{}
#define xassert(cond)                                                   \
  if (!(cond)) {                                                        \
    fprintf(stderr, "%s:%d: Assertion failed:" #cond                    \
            ". \nIf the file compiles correctly without invoking "      \
            "introspector please file a bug, include a testcase or .ii file" \
            " produced with -save-temps\n",                             \
            __FILE__, __LINE__);                                        \
    crashhandler();                                                     \
  }

#endif

static void generic_callbackPLUGIN_FINISH_TYPE (tree t, void *_)
{
  //  void process_type(tree t); // foward
  //f(t);
  //    gtk_add_node("blah","Blah");

  char address[255];
  sprintf(address,"%p",t);
  printf ( "tcname:%s %s\n", tree_code_name[TREE_CODE(t)],address);
  gtk_add_node(address,tree_code_name[TREE_CODE(t)]);
  printf ( "after tcname:%s %s\n", tree_code_name[TREE_CODE(t)],address);

}

static void generic_callback(void *gcc_data, void *user_data)
{
  const char *c_gcc_data  = (const char *)gcc_data;
  const char *c_user_data = (const char *)user_data;
  printf("GenericCallback %p %s\n", c_gcc_data, c_user_data);  
  if (gcc_data)    {  
    void print_data()
    {
      int x;
      for (x=0;x<1023;x++)
	{
	  //	printf("%d %c %x\t", x, c_gcc_data[x], c_gcc_data[x]);  
	  printf("%x:", c_gcc_data[x]);  
	}
    }
  }
  printf("finish generic callback\n");  
  //  printf("GenericCallback %p %x\n", data[0], data[0]);  
  //char block[1024];
  //  memcopy(block,user_data,sizeof(block));
  //display(user_data,24,0);
  //  printf ("%H", (char * )user_data[0]);
  //  printf ("%H", (char * )user_data[1]);
}

static void generic_callbackPLUGIN_FINISH (tree t, void *_)
{
  gtk_shutdown();
}

static void generic_callbackPLUGIN_GGC_START ()
{
  //  gtk_startup();
}

static void generic_callbackPLUGIN_ATTRIBUTES ()
{
    gtk_startup();
}

static void generic_callbackPLUGIN_GGC_END ()
{

}

/*
  register a simple handler for all plugins,
  the commented out ones just crash
*/
#define DEFEVENTSPECIAL(X)   register_callback (plugin_info->base_name,  X,  (plugin_callback_func)&generic_callback ##X, #X );
  //#define DEFEVENT(X)   

//void (*)(union tree_node *, void *)

void register_special_plugins  (struct plugin_name_args *plugin_info){
  DEFEVENTSPECIAL (PLUGIN_FINISH_TYPE);
  
  /* Called before GCC exits.  */
  DEFEVENTSPECIAL (PLUGIN_FINISH);
  DEFEVENTSPECIAL (PLUGIN_ATTRIBUTES);

  /* Called at start of GCC Garbage Collection. */
  DEFEVENTSPECIAL (PLUGIN_GGC_START);
  DEFEVENTSPECIAL (PLUGIN_GGC_END);

}


void register_all_plugins  (struct plugin_name_args *plugin_info)
{
#define DEFEVENT(X)   register_callback (plugin_info->base_name,  X,  &generic_callback, #X );

  /* To hook into pass manager.  


   */
  //DEFEVENT (PLUGIN_PASS_MANAGER_SETUP)

  /* After finishing parsing a type.  */
  DEFEVENT (PLUGIN_FINISH_TYPE)

    /* Useful for summary processing.  */
    DEFEVENT (PLUGIN_FINISH_UNIT)

    /* Allows to see low level AST in C and C++ frontends. */
    DEFEVENT (PLUGIN_PRE_GENERICIZE)

    /* Called before GCC exits.  */
    DEFEVENT (PLUGIN_FINISH)

    /* Information about the plugin. */
    //DEFEVENT (PLUGIN_INFO)

    /* Called at start of GCC Garbage Collection. */
    DEFEVENT (PLUGIN_GGC_START)

    /* Extend the GGC marking. */
    DEFEVENT (PLUGIN_GGC_MARKING)

    /* Called at end of GGC. */
    DEFEVENT (PLUGIN_GGC_END)

    /* Register an extra GGC root table. */
    //DEFEVENT (PLUGIN_REGISTER_GGC_ROOTS)

    /* Register an extra GGC cache table. */
    //DEFEVENT (PLUGIN_REGISTER_GGC_CACHES)

    /* Called during attribute registration.  */
    DEFEVENT (PLUGIN_ATTRIBUTES)

    /* Called before processing a translation unit.  */
    DEFEVENT (PLUGIN_START_UNIT)

    /* Called during pragma registration.  */
    DEFEVENT (PLUGIN_PRAGMAS)

    /* Called before first pass from all_passes.  */
    DEFEVENT (PLUGIN_ALL_PASSES_START)

    /* Called after last pass from all_passes.  */
    DEFEVENT (PLUGIN_ALL_PASSES_END)

    /* Called before first ipa pass.  */
    DEFEVENT (PLUGIN_ALL_IPA_PASSES_START)

    /* Called after last ipa pass.  */
    DEFEVENT (PLUGIN_ALL_IPA_PASSES_END)

    /* Allows to override pass gate decision for current_pass.  */
    DEFEVENT (PLUGIN_OVERRIDE_GATE)

    /* Called before executing a pass.  */
    DEFEVENT (PLUGIN_PASS_EXECUTION)

    /* Called before executing subpasses of a GIMPLE_PASS in
       execute_ipa_pass_list.  */
    DEFEVENT (PLUGIN_EARLY_GIMPLE_PASSES_START)

    /* Called after executing subpasses of a GIMPLE_PASS in
       execute_ipa_pass_list.  */
    DEFEVENT (PLUGIN_EARLY_GIMPLE_PASSES_END)

    /* Called when a pass is first instantiated.  */
    DEFEVENT (PLUGIN_NEW_PASS)

    }


int plugin_is_GPL_compatible; // 
int
plugin_init (struct plugin_name_args *plugin_info,
	     struct plugin_gcc_version *version)
{


  register_all_plugins(plugin_info);

  register_special_plugins  (plugin_info);

  return 0;  
}


/*   gcc.PLUGIN_ATTRIBUTES	For creating custom GCC attributes */
/* gcc.PLUGIN_PRE_GENERICIZE	For working with the AST in the C and C++ frontends */
/* gcc.PLUGIN_PASS_EXECUTION	Called before each pass is executed */
/* gcc.PLUGIN_FINISH_UNIT	At the end of working with a translation unit (aka source file) */
/* gcc.PLUGIN_FINISH_TYPE	After a type has been parsed */
/* gcc.PLUGIN_FINISH_DECL	After a declaration has been parsed (GCC 4.7 or later) */
/* gcc.PLUGIN_FINISH	Called before GCC exits */
/* http://gcc-python-plugin.readthedocs.org/en/latest/callbacks.html */

/*   PLUGIN_PASS_MANAGER_SETUP,    /\* To hook into pass manager.  *\/ */
/*        PLUGIN_FINISH_TYPE,           /\* After finishing parsing a type.  *\/ */
/*        PLUGIN_FINISH_DECL,           /\* After finishing parsing a declaration. *\/ */
/*        PLUGIN_FINISH_UNIT,           /\* Useful for summary processing.  *\/ */
/*        PLUGIN_PRE_GENERICIZE,        /\* Allows to see low level AST in C and C++ frontends.  *\/ */
/*        PLUGIN_FINISH,                /\* Called before GCC exits.  *\/ */
/*        PLUGIN_INFO,                  /\* Information about the plugin. *\/ */
/*        PLUGIN_GGC_START,             /\* Called at start of GCC Garbage Collection. *\/ */
/*        PLUGIN_GGC_MARKING,           /\* Extend the GGC marking. *\/ */
/*        PLUGIN_GGC_END,               /\* Called at end of GGC. *\/ */
/*        PLUGIN_REGISTER_GGC_ROOTS,    /\* Register an extra GGC root table. *\/ */
/*        PLUGIN_REGISTER_GGC_CACHES,   /\* Register an extra GGC cache table. *\/ */
/*        PLUGIN_ATTRIBUTES,            /\* Called during attribute registration *\/ */
/*        PLUGIN_START_UNIT,            /\* Called before processing a translation unit.  *\/ */
/*        PLUGIN_PRAGMAS,               /\* Called during pragma registration. *\/ */
/*        /\* Called before first pass from all_passes.  *\/ */
/*        PLUGIN_ALL_PASSES_START, */
/*        /\* Called after last pass from all_passes.  *\/ */
/*        PLUGIN_ALL_PASSES_END, */
/*        /\* Called before first ipa pass.  *\/ */
/*        PLUGIN_ALL_IPA_PASSES_START, */
/*        /\* Called after last ipa pass.  *\/ */
/*        PLUGIN_ALL_IPA_PASSES_END, */
/*        /\* Allows to override pass gate decision for current_pass.  *\/ */
/*        PLUGIN_OVERRIDE_GATE, */
/*        /\* Called before executing a pass.  *\/ */
/*        PLUGIN_PASS_EXECUTION, */
/*        /\* Called before executing subpasses of a GIMPLE_PASS in */
/*           execute_ipa_pass_list.  *\/ */
/*        PLUGIN_EARLY_GIMPLE_PASSES_START, */
/*        /\* Called after executing subpasses of a GIMPLE_PASS in */
/*           execute_ipa_pass_list.  *\/ */
/*        PLUGIN_EARLY_GIMPLE_PASSES_END, */
/*        /\* Called when a pass is first instantiated.  *\/ */
/*        PLUGIN_NEW_PASS, */
     
/*        PLUGIN_EVENT_FIRST_DYNAMIC    /\* Dummy event used for indexing callback */
/*                                         array.  *\/ */
