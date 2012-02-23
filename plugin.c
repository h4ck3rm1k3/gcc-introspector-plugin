#include <stdio.h>
//#include "gcc-plugin.h"
#include "gcc-plugin.h"
#include "plugin-version.h"
// based on this doc http://gcc.gnu.org/onlinedocs/gccint/Plugins.html

static void generic_callback(void *gcc_data, void *user_data)
{
  printf("GenericCallback %p %s\n", gcc_data, (const char *)user_data);  
}

/*
  register a simple handler for all plugins,
  the commented out ones just crash
*/
void register_all_plugins  (struct plugin_name_args *plugin_info)
{
#define DEFEVENT(X)   register_callback (plugin_info->base_name,  X,  &generic_callback, #X );

/* To hook into pass manager.  */
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

  return 0;  
}
