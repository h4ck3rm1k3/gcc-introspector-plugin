GCC=gcc-4.5
PLUGIN_SOURCE_FILES= plugin.c
PLUGIN_OBJECT_FILES= $(patsubst %.c,%.o,$(PLUGIN_SOURCE_FILES))

TOP := $(dir $(lastword $(MAKEFILE_LIST)))

#GCCPLUGINS_DIR:= $(shell $(GCC) -print-file-name=plugin)
#GCCPLUGINS_DIR:=/usr/lib/gcc/x86_64-linux-gnu/4.5/plugin/include/
GCCPLUGINS_DIR:= $(TOP)/pluginheaders/
PERLCORE_DIR:= $(TOP)/perlcore
#PERLCORE_DIR=/usr/lib/perl/5.10.1/CORE/
# see bug report http://www.mail-archive.com/ubuntu-bugs@lists.ubuntu.com/msg1375448.html

CFLAGS+= -g -O0 -save-temps -I$(GCCPLUGINS_DIR) -I/usr/lib/glib-2.0/include/ -I/usr/lib/gtk-2.0/include/ -I/usr/include/gtk-2.0 -I/usr/include/glib-2.0 -fPIC -O2 -I/usr/lib/i386-linux-gnu/glib-2.0/include -I /usr/include/cairo -I /usr/include/pango-1.0 -I/usr/lib/i386-linux-gnu/gtk-3.0/include -I /usr/include/gdk-pixbuf-2.0 -I/usr/include/atk-1.0/ -I$(PERLCORE_DIR) -lperl -Wl,-E  -fstack-protector -L/usr/local/lib  -L/usr/lib/perl/5.12/CORE -lperl -ldl -lm -lpthread -lc -lcrypt

#/usr/lib/gcc/i686-linux-gnu/4.6/plugin/include/
#LD_PRELOAD=/usr/lib/libgtk-3.so
#MYLIBS="-pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0"
#gcc -I ../perlcore/ miniperlmain.c  -lperl

plugin.so: $(PLUGIN_OBJECT_FILES) gtkinterface.o gtk_perl_interface.o field_type.o
	$(GCC) -shared -pthread -lperl -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0 $^ -o $@

test2: $(PLUGIN_OBJECT_FILES) main2.o gtkinterface.o gtk_perl_interface.o
	$(GCC) $(CFLAGS) -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0 $^ -o $@

test : plugin.so
	LD_PRELOAD=/usr/lib/libgtk-x11-2.0.so:/usr/lib/libperl.so gcc-4.5 -fplugin=$(TOP)/plugin.so -I$(GCCPLUGINS_DIR)/include  hello.c -c -o plugin-bootstrap.o

clean :
	rm plugin.so
	rm *.o

plugincpp.o : plugin.cpp
	g++ -c -fpermissive -std=gnu++0x  -I $(GCCPLUGINS_DIR) plugin.cpp -o plugincpp.o

main2cpp.o : main2.cpp
	g++ -c -fpermissive -std=gnu++0x  -I $(GCCPLUGINS_DIR) main2.cpp -o main2cpp.o

dummy.o : dummy.cpp
	g++ -c -fpermissive -std=gnu++0x  -I $(GCCPLUGINS_DIR) dummy.cpp -o dummy.o

cpp : plugincpp.o dummy.o main2cpp.o 
	g++ -fpermissive -std=gnu++0x  -I $(GCCPLUGINS_DIR) plugincpp.o main2.o dummy.o
cxxml : plugin.cpp
	gccxml -fxml=plugin.xml -fpermissive   -I $(GCCPLUGINS_DIR) plugin.cpp