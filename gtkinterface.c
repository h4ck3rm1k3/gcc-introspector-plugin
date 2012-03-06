#include <gtk/gtk.h>
#include "gtkinterface.h"

/*
with help from :
 http://scentric.net/tutorial/sec-treemodel-data-retrieval.html
 http://www.gtk.org/api/2.6/gtk/TreeWidget.html
 http://zetcode.com/tutorials/gtktutorial/gtktreeview/

very good :
 http://en.wikibooks.org/wiki/GTK%2B_By_Example/Tree_View/Columns_and_Renderers
*/

/* Another callback */
static void destroy( GtkWidget *widget,
                     gpointer   data )
{
    gtk_main_quit ();
}

enum
{
  COL_COMPILER_PASS=0,
  COL_COMPILER_CALLBACK,
  COL_NODE_POINTER,
  COL_NODE_TYPE,
  COL_NODE_NAME,
  NUM_COLS
} ;

typedef struct Context_struct
{
  GtkTreeStore        *treestore;
  //GtkTreeModel        *model; do we need this?
  //GtkTreeViewColumn   *col;
  GtkCellRenderer     *renderer;
  GtkWidget           *view;
  GtkWidget           *window;
  //GtkTreeIter         toplevel;
  //GtkTreeIter         lastInsert;
} Context;
Context g;

int gtk_startup()
{
  printf("starting up\n");
  /* This is called in all GTK applications. Arguments are parsed
   * from the command line and are returned to the application. */
  gtk_init (0, 0);
  g.window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
  g_signal_connect(g.window, "delete_event", gtk_main_quit, NULL); 
  g_signal_connect (g.window, "destroy", G_CALLBACK (destroy), NULL);
  gtk_container_set_border_width (GTK_CONTAINER (g.window), 10);
  g.view = gtk_tree_view_new();

  int x;
  char * names[] = {
    "COL_COMPILER_PASS",
    "COL_COMPILER_CALLBACK",
    "COL_NODE_POINTER",
    "COL_NODE_TYPE",
    "COL_NODE_NAME"
  };

  for (x=0; x < NUM_COLS; x++)   {
    if (x == COL_NODE_POINTER)	{
    
    } 
    else 
    {
      GtkTreeViewColumn   *col;
      col  = gtk_tree_view_column_new();
      gtk_tree_view_column_set_title(col, names[x]);
      gtk_tree_view_append_column(GTK_TREE_VIEW(g.view), col);
      GtkCellRenderer     *renderer;
      renderer = gtk_cell_renderer_text_new();
      g_object_set(renderer,
		   "cell-background", "Orange",
		   "cell-background-set", TRUE,
		   NULL);
      gtk_tree_view_column_pack_start(col, renderer, TRUE);	
      gtk_tree_view_column_add_attribute(col, renderer, "text", x);
    }
  }
  
  // setup the treestore
  g.treestore = gtk_tree_store_new
    (
     NUM_COLS,			   
     G_TYPE_STRING,//"COL_COMPILER_PASS",
     G_TYPE_STRING,//"COL_COMPILER_CALLBACK
     G_TYPE_UINT64, // G_TYPE_POINTER,//"COL_NODE_POINTER",
     G_TYPE_STRING,//"COL_NODE_TYPE",
     G_TYPE_STRING //"COL_NODE_NAME"
     );
  gtk_tree_view_set_model(g.view, g.treestore);
  gtk_container_add (GTK_CONTAINER (g.window), g.view);
  
/* and the window */
  gtk_window_set_default_size(g.window,640,480);
  gtk_widget_show (g.view);
  gtk_widget_show (g.window);
  return 0;
}


int gtk_shutdown()
{
  printf("what did we collect?\n");
  traverse_tree_store ();

  printf("running gui\n");

  gtk_main ();
  printf("done\n");
  g_object_unref(g.treestore);	
  return 0;
}

void gcc_report_tree_visit(tree t); // in the gcc model
const int sizeof_tree();

void traverse_tree_store () {
  GtkTreeIter  iter;
  gboolean     valid;
  g_return_if_fail ( g.treestore != NULL );
  /* Get first row in list store */
  valid = gtk_tree_model_get_iter_first(g.treestore , &iter);
  
  while (valid)
    {
      /* ... do something with that row using the iter ...          */
      /* (Here column 0 of the list store is of type G_TYPE_STRING) */
      //gtk_list_store_set(liststore, &iter, 0, "Joe", -1);
      void visit(){
	gchar *node_type;
	guintptr *node_pointer;
	gchar *tree_path_str;
	gtk_tree_model_get ((struct GtkTreeStore *)g.treestore, &iter,
			    COL_NODE_POINTER, &node_pointer,
			    -1);
	
	gtk_tree_model_get ((struct GtkTreeStore *)g.treestore, &iter,
			    COL_NODE_TYPE, &node_type,
			    -1);

	GtkTreePath *   path=gtk_tree_model_get_path(g.treestore,&iter);
	
	tree_path_str = gtk_tree_path_to_string(path);
	
	g_print ("GTK Row %s: %s %p\n", tree_path_str,
		 node_type, node_pointer);

	
	//	now let convert this back into a tree and hook into the gcc via a callback 
	gcc_report_tree_visit(node_pointer);

	g_free(tree_path_str);
	
	g_free(node_type); /* gtk_tree_model_get made copies of       */
	
      }
      visit();
      /* Make iter point to the next row in the list store */
      valid = gtk_tree_model_iter_next(g.treestore, &iter);
    }
}

int gtk_add_node(tree node_ptr,const char * node_type)

{
  GtkTreeIter  toplevel;
  printf("GTK going to append node %p,%s\n",node_ptr,node_type);
  gtk_tree_store_append(g.treestore, &toplevel, NULL);

  //  guint64 ptr=node_ptr;
  guintptr ptr=node_ptr;
  //printf("GTK going to set %p %p\n",node_ptr,ptr);
  //  printf("GTK going to set %ul %ul\n",node_ptr,ptr);
  gtk_tree_store_set(g.treestore, &toplevel,    COL_NODE_POINTER,ptr,-1);
  //  printf("GTK going to set2 %s\n",node_type);
  gtk_tree_store_set(g.treestore, &toplevel,
                     COL_NODE_TYPE, node_type,
                     -1);

	return 0;
}

