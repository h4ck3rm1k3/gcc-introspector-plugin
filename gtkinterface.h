#pragma once 

union tree_node;
typedef union tree_node *tree;
struct tree_base;

int gtk_add_node(tree node_ptr,const char * node_type);
int gtk_shutdown();
int gtk_startup();
void gtk_perl_interface (); // start the perl interface
