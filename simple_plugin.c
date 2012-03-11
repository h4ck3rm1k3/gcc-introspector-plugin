#include "gcc.h"
/*
  the generic callback is used for debugging the plugins. normally we dont need it.
*/
static void generic_callback(void *gcc_data, void *user_data)
{
  const char *c_gcc_data  = (const char *)gcc_data;
  const char *c_user_data = (const char *)user_data;
  printf("GenericCallback %p %s\n", c_gcc_data, c_user_data);  
  if (gcc_data)    {  
    void print_data()
    {
      int x;
      for (x=0;x<sizeof(union tree_node);x++)
	{
	  //	printf("%d %c %x\t", x, c_gcc_data[x], c_gcc_data[x]);  
	  printf("%x", c_gcc_data[x]);  
	}
    }
  }
  printf("finish generic callback\n");  
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

    /* Called before GCC exits.  */    DEFEVENT (PLUGIN_FINISH)
    /* Information about the plugin. */    //DEFEVENT (PLUGIN_INFO)
    /* Called at start of GCC Garbage Collection. */    DEFEVENT (PLUGIN_GGC_START)
    /* Extend the GGC marking. */    DEFEVENT (PLUGIN_GGC_MARKING)
    /* Called at end of GGC. */    DEFEVENT (PLUGIN_GGC_END)

    /* Register an extra GGC root table. */    //DEFEVENT (PLUGIN_REGISTER_GGC_ROOTS)
    /* Register an extra GGC cache table. */  //DEFEVENT (PLUGIN_REGISTER_GGC_CACHES)

    /* Called during attribute registration.  */    DEFEVENT (PLUGIN_ATTRIBUTES)
    /* Called before processing a translation unit.  */    DEFEVENT (PLUGIN_START_UNIT)
    /* Called during pragma registration.  */    DEFEVENT (PLUGIN_PRAGMAS)
    /* Called before first pass from all_passes.  */    DEFEVENT (PLUGIN_ALL_PASSES_START)
    /* Called after last pass from all_passes.  */    DEFEVENT (PLUGIN_ALL_PASSES_END)
    /* Called before first ipa pass.  */   DEFEVENT (PLUGIN_ALL_IPA_PASSES_START)
    /* Called after last ipa pass.  */    DEFEVENT (PLUGIN_ALL_IPA_PASSES_END)
    /* Allows to override pass gate decision for current_pass.  */    DEFEVENT (PLUGIN_OVERRIDE_GATE)
    /* Called before executing a pass.  */    DEFEVENT (PLUGIN_PASS_EXECUTION)
    DEFEVENT (PLUGIN_EARLY_GIMPLE_PASSES_START)        /* Called before executing subpasses of a GIMPLE_PASS in       execute_ipa_pass_list.  */
    DEFEVENT (PLUGIN_EARLY_GIMPLE_PASSES_END)/* Called after executing subpasses of a GIMPLE_PASS in execute_ipa_pass_list.  */

    /* Called when a pass is first instantiated.  */
    DEFEVENT (PLUGIN_NEW_PASS)

    }
