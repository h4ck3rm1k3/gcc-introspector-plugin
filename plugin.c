#include <stdio.h>
//#include "gcc-plugin.h"
#include "gcc-plugin.h"
#include "plugin-version.h"
// based on this doc http://gcc.gnu.org/onlinedocs/gccint/Plugins.html

int plugin_is_GPL_compatible; // 
int
plugin_init (struct plugin_name_args *plugin_info,
	     struct plugin_gcc_version *version)
{
  //if (!plugin_default_version_check (version, &gcc_version))
  //    {
  //      return 1;  
  //    }
  printf("Hello World\n");
  return 0;  
}
