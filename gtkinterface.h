#pragma once 

#ifndef tree_node
union tree_node;
typedef union tree_node *tree;
struct tree_base;
#endif

int gtk_add_node(tree node_ptr,const char * node_type);
int gtk_shutdown();
int gtk_startup();
int gtk_perl_interface_start (); // start the perl interface
int gtk_perl_interface_finish(); // shut it down.
int gtk_perl_add_node(tree node_ptr,const char * node_type); // add a node to perl
