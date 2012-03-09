// from :http://search.cpan.org/~flora/perl-5.14.2/pod/perlembed.pod#Adding_a_Perl_interpreter_to_your_C_program

#include <EXTERN.h>               /* from the Perl distribution     */
#include <perl.h>                 /* from the Perl distribution     */

static PerlInterpreter *my_perl;  /***    The Perl interpreter    ***/

int perl_main(int argc, char **argv, char **env)
{
  PERL_SYS_INIT3(&argc,&argv,&env);
  my_perl = perl_alloc();
  perl_construct(my_perl);
  PL_exit_flags |= PERL_EXIT_DESTRUCT_END;
  perl_parse(my_perl, NULL, argc, argv, (char **)NULL);
  perl_run(my_perl);
  perl_destruct(my_perl);
  perl_free(my_perl);
  PERL_SYS_TERM();
}

int gtk_perl_interface()
{
  char * argv []  = { "blah","helloworld.pl"};
  char * env []  = {};
  int argc=2;
  return perl_main(argc,argv, env);
}