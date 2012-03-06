GCC=gcc
PLUGIN_SOURCE_FILES= plugin.c
PLUGIN_OBJECT_FILES= $(patsubst %.c,%.o,$(PLUGIN_SOURCE_FILES))
GCCPLUGINS_DIR:= $(shell $(GCC) -print-file-name=plugin)
CFLAGS+= -save-temps -I$(GCCPLUGINS_DIR)/include -I/usr/include/gtk-3.0 -I/usr/include/glib-2.0 -fPIC -O2 -I/usr/lib/i386-linux-gnu/glib-2.0/include -I /usr/include/cairo -I /usr/include/pango-1.0 -I/usr/lib/i386-linux-gnu/gtk-3.0/include -I /usr/include/gdk-pixbuf-2.0 -I/usr/include/atk-1.0/

#/usr/lib/gcc/i686-linux-gnu/4.6/plugin/include/
LD_PRELOAD=/usr/lib/libgtk-3.so
#MYLIBS="-pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0"

plugin.so: $(PLUGIN_OBJECT_FILES) gtkinterface.o 	
	$(GCC) -shared -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0 $^ -o $@

test2: $(PLUGIN_OBJECT_FILES) main2.o gtkinterface.o 	
	$(GCC) -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0 $^ -o $@

test : plugin.so
	LD_PRELOAD=/usr/lib/libgtk-3.so gcc-4.6 -fplugin=/home/mdupont/experiments/introspector/plugin/firstplugin/plugin.so -I$(GCCPLUGINS_DIR)/include  hello.c -c -o plugin-bootstrap.o

clean :
	rm plugin.so
	rm *.o



plugincpp.o : plugin.cpp
	g++ -c -fpermissive -std=gnu++0x  -I /usr/lib/gcc/i686-linux-gnu/4.6/plugin/include/ plugin.cpp -o plugincpp.o

main2.o : main2.cpp
	g++ -c -fpermissive -std=gnu++0x  -I /usr/lib/gcc/i686-linux-gnu/4.6/plugin/include/ main2.cpp -o main2.o

dummy.o : dummy.cpp
	g++ -c -fpermissive -std=gnu++0x  -I /usr/lib/gcc/i686-linux-gnu/4.6/plugin/include/ dummy.cpp -o dummy.o

cpp : plugincpp.o dummy.o main2.o 
	g++ -fpermissive -std=gnu++0x  -I /usr/lib/gcc/i686-linux-gnu/4.6/plugin/include/ plugincpp.o main2.o dummy.o