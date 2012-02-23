GCC=gcc
PLUGIN_SOURCE_FILES= plugin.c
PLUGIN_OBJECT_FILES= $(patsubst %.c,%.o,$(PLUGIN_SOURCE_FILES))
GCCPLUGINS_DIR:= $(shell $(GCC) -print-file-name=plugin)
CFLAGS+= -I$(GCCPLUGINS_DIR)/include -fPIC -O2

plugin.so: $(PLUGIN_OBJECT_FILES)
	$(GCC) -shared $^ -o $@

test : plugin.so
	gcc-4.6 -fplugin=/home/mdupont/experiments/introspector/plugin/firstplugin/plugin.so -I$(GCCPLUGINS_DIR)/include  plugin.c main.c
