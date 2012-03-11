
while(<>)
{
if (/\#define (\w+)\(NODE\)/)
{
    my $name=$1;
    print "field_type_${name}(t);\n";
}
}
