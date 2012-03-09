use Inline 'Info', 'Force', 'Noclean';
use Inline C => Config => 
    AUTO_INCLUDE => '#include "gcc.h"',
    INC => '-I/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/',
    CCFLAGS=> '-save-temps --verbose',
    ENABLE => AUTOWRAP ;

use Inline C;
greet('Mike');

__END__
__C__


void greet(char* name) {
    printf("Hello %s!\n", name);
}

void print_tree(tree t) {
    printf("%p %ld code %d!\n", t, t,  t->base.code);
}
