
while(<>)
{
if (/\#define (\w+)\(NODE\)/)
{
    my $name=$1;
    print "void field_type_${name}(tree t)
    {
       if (${name}(t)) {
         printf (\"$name\\n\");
        printf (\"$name %d\\n\",${name}(t));
       }
    }\n";
}
}
