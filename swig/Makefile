GCC=gcc
PLUGIN_SOURCE_FILES= plugin.c
PLUGIN_OBJECT_FILES= $(patsubst %.c,%.o,$(PLUGIN_SOURCE_FILES))
#GCCPLUGINS_DIR:= $(shell $(GCC) -print-file-name=plugin)
#GCCPLUGINS_DIR:= ../pluginheaders/
GCCPLUGINS_DIR:= /home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/
CFLAGS+= -save-temps -I$(GCCPLUGINS_DIR) -I/usr/include/gtk-3.0 -I/usr/include/glib-2.0 -fPIC -O2 -I/usr/lib/i386-linux-gnu/glib-2.0/include -I /usr/include/cairo -I /usr/include/pango-1.0 -I/usr/lib/i386-linux-gnu/gtk-3.0/include -I /usr/include/gdk-pixbuf-2.0 -I/usr/include/atk-1.0/

all : compile


gen:
	swig -v -w -perl -module gcc     plugin.swig  
#-c++ -xml 

compile :
	 gcc $(CFLAGS) -I /usr/lib/perl/5.12.4/CORE plugin_wrap.c