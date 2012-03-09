use Inline 'Info', 'Force', 'Noclean';
use Inline C => Config => 
    AUTO_INCLUDE => '#include "gcc.h"',
    INC => '-I/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/',
    CCFLAGS=> '-save-temps --verbose',
    TYPEMAPS => 'typemap',
    ENABLE => AUTOWRAP ;
use Inline C;

print "this is being executed in the compiler;\n";

sub showtime
{
    print "lets dance!";
}

sub add_node
{
    my $ptree=shift;
    my $type=shift;
    warn "add node called";
    warn $ptree;
    print_tree($ptree);
    warn $type;
}

##greet('Mike');

__END__
__C__

void greet(char* name) {
    printf("Hello %s!\n", name);
}

void print_tree(tree t) {
    printf("%p %ld code %d!\n", t, t,  t->base.code);
}
