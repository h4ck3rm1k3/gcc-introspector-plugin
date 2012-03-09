use Inline C => Config => 
    AUTO_INCLUDE => '#include "gcc.h"',
#   INC => '-I/usr/lib/gcc/i686-linux-gnu/4.6/plugin/include/',
    INC => '-I/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/',
    CCFLAGS=> '-save-temps --verbose',
    ENABLE => AUTOWRAP ;
#use Inline C => version => "0.01";
#  use Inline C => Config => TYPEMAPS => '/your/path/typemap';
#    ccflags : -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fno-strict-aliasing -pipe -fstack-protector -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64

use Inline C;
greet('Mike');

__END__
__C__
void greet(char* name) {
    printf("Hello %s!\n", name);
}
