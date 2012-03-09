use ExtUtils::MakeMaker;
my %options = %{
{
  'TYPEMAPS' => [
    '/usr/share/perl/5.12/ExtUtils/typemap',
    '/home/mdupont/experiments/introspector/plugin/firstplugin/typemap',
    '/home/mdupont/experiments/introspector/plugin/firstplugin/typemap'
  ],
  'NAME' => 'helloworld_pl_972e',
  'CCFLAGS' => ' -save-temps --verbose',
  'INC' => '-I"/home/mdupont/experiments/introspector/plugin/firstplugin" -I/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/',
  'VERSION' => '0.00'
}
};
WriteMakefile(%options);

# Remove the Makefile dependency. Causes problems on a few systems.
sub MY::makefile { '' }
