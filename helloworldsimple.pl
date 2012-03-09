use Cwd;
use strict;
use warnings;
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

sub print_tree
{
    warn "hello";
}

add_node (1,"blah");


