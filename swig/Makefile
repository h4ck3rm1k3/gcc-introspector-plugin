GCC=gcc
PLUGIN_SOURCE_FILES= plugin.c
PLUGIN_OBJECT_FILES= $(patsubst %.c,%.o,$(PLUGIN_SOURCE_FILES))
#GCCPLUGINS_DIR:= $(shell $(GCC) -print-file-name=plugin)
#GCCPLUGINS_DIR:= ../pluginheaders/
GCCPLUGINS_DIR:= /home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/
PERLCORE_DIR:= /home/mdupont/experiments/introspector/plugin/firstplugin/perlcore
CFLAGS+= -save-temps -I$(GCCPLUGINS_DIR) -I/usr/include/gtk-3.0 -I/usr/include/glib-2.0 -fPIC -O2 -I/usr/lib/i386-linux-gnu/glib-2.0/include -I /usr/include/cairo -I /usr/include/pango-1.0 -I/usr/lib/i386-linux-gnu/gtk-3.0/include -I /usr/include/gdk-pixbuf-2.0 -I/usr/include/atk-1.0/

all : compile


gen:
	swig -v -w -perl -module gcc     plugin.swig  
#-c++ -xml 
#PERLCORE=/usr/lib/perl/5.12.4/CORE
#PERLCORE=/usr/lib/perl/5.12.4/CORE

#-DSTANDARD_C	-D__LANGUAGE_C__ -D_NO_PROTO
compile :
	 gcc $(CFLAGS) -DSTANDARD_C	-D__LANGUAGE_C__ -D_NO_PROTO -shared -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0 -I $(PERLCORE_DIR) plugin_wrap.c

small :
	 gcc $(CFLAGS) -shared -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0 -I /usr/lib/perl/5.12.4/CORE test.c