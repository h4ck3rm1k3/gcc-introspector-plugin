//#include "gtkinterface.h"
#include "gcc.h"
#define USE_MONGOOSE 1
#ifdef USE_MONGOOSE
#include "mongoose_webserver.h"
#endif
void process (tree t); // forward
void process_type(tree t);

static void generic_callbackPLUGIN_ALL_IPA_PASSES_START()
{
  plugin_close_files();
}

static void generic_callbackPLUGIN_FINISH_TYPE (tree t, void *i)
{
  plugin_finish_type (t,i);
}

static void generic_callbackPLUGIN_START_UNIT()
{
  plugin_open_files();

}

static void generic_callbackPLUGIN_FINISH (tree t, void *_)
{
#ifdef USE_GTK
  gtk_shutdown();

#endif
#ifdef USE_MONGOOSE
  mongoose_stop();
#endif
}

static void generic_callbackPLUGIN_ATTRIBUTES ()
{
#ifdef USE_GTK
  gtk_startup();
#endif
#ifdef USE_MONGOOSE
  mongoose_start();
#endif
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
  //  DEFEVENTSPECIAL (PLUGIN_GGC_START);
  //  DEFEVENTSPECIAL (PLUGIN_GGC_END);

  DEFEVENTSPECIAL (  PLUGIN_START_UNIT); // open the output files
  DEFEVENTSPECIAL ( PLUGIN_ALL_IPA_PASSES_START); // close the output files
}



int plugin_is_GPL_compatible; // 
int
plugin_init (struct plugin_name_args *plugin_info,
	     struct plugin_gcc_version *version)
{
  //  register_all_plugins(plugin_info);
  register_special_plugins  (plugin_info);
  return 0;  
}


