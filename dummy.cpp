#include "gtkinterface.h"
char * tree_code_name[]={};
int gtk_add_node(tree_node*, char const*){}
int gtk_shutdown(){}
int gtk_startup(){}
//int register_callback(){}

extern "C" {
typedef void (*plugin_callback_func) (void *gcc_data, void *user_data);


void register_callback (const char *plugin_name,
			int event,
			plugin_callback_func callback,
			void *user_data)
{

}

};
