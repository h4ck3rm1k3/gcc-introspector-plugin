use ExtUtils::MakeMaker;
my %options = %{
{
  'TYPEMAPS' => [
    '/usr/share/perl/5.12/ExtUtils/typemap'
  ],
  'NAME' => 'GCC_pm_7f52',
  'CCFLAGS' => ' -save-temps --verbose',
  'INC' => '-I"/home/mdupont/experiments/introspector/plugin/firstplugin/inline" -I/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/',
  'VERSION' => '0.00'
}
};
WriteMakefile(%options);

# Remove the Makefile dependency. Causes problems on a few systems.
sub MY::makefile { '' }
