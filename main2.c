#include "gtkinterface.h"

void register_callback()
{}

void xassert()
{}

//int gtk_startup();
//int gtk_shutdown();// forward


int main ()
{
  gtk_startup();
  tree t;
  gtk_add_node(t,"Blah");
  gtk_shutdown();
  return 0;
}
