// from :http://search.cpan.org/~flora/perl-5.14.2/pod/perlembed.pod#Adding_a_Perl_interpreter_to_your_C_program


#include <EXTERN.h>               /* from the Perl distribution     */
#include <perl.h>                 /* from the Perl distribution     */

static PerlInterpreter *my_perl=0;  /***    The Perl interpreter    ***/

static void xs_init (pTHX);

int perl_start(int argc, char **argv, char **env)
{
  PERL_SYS_INIT3(&argc,&argv,&env);
  my_perl = perl_alloc();
  perl_construct(my_perl);
  PL_exit_flags |= PERL_EXIT_DESTRUCT_END;
  perl_parse(my_perl, xs_init, argc, argv, (char **)NULL);
}

int perl_main(int argc, char **argv, char **env)
{
  perl_run(my_perl);
}
int call_function()
{
  char *args[] = { NULL };
  call_argv("showtime", G_DISCARD | G_NOARGS, args);
}

int perl_shutdown ()
{
  //  perl_run(my_perl);
  perl_destruct(my_perl);
  perl_free(my_perl);
  PERL_SYS_TERM();
}


int gtk_perl_interface_finish()
{
  perl_shutdown ();
}


int gtk_perl_interface_start()
{
  char * argv []  = { "blah","helloworld.pl"};
  char * env []  = {};
  int argc=2;
  perl_start(argc, argv, env);
  perl_main(argc,argv, env);
  call_function();
  //  perl_shutdown ();
}


int gtk_perl_add_node(void* node_ptr,const char * node_type) // add a node to perl
{
  //char *args[] = { node_ptr, node_type };
  //  call_argv("add_node", G_DISCARD , args);
  //  return ;
  assert(my_perl);
  dSP;
   ENTER;
   SAVETMPS;
   PUSHMARK(SP);
   XPUSHs(sv_2mortal(newSViv(node_ptr)));
   XPUSHs(sv_2mortal(newSVpv(node_type,strlen(node_type))));
   PUTBACK;
   printf("going to call add node");
   call_pv("add_node", G_DISCARD);
   FREETMPS;
   LEAVE;

}


EXTERN_C void boot_DynaLoader (pTHX_ CV* cv);
EXTERN_C void boot_Socket (pTHX_ CV* cv);
EXTERN_C void
xs_init(pTHX)
{
  char *file = __FILE__;
  /* DynaLoader is a special case */
  newXS("DynaLoader::boot_DynaLoader", boot_DynaLoader, file);
  // newXS("Socket::bootstrap", boot_Socket, file);
}
