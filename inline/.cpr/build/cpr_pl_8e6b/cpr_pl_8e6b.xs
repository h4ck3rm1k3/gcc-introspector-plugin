#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "CPR.h"


// #!perl /usr/local/bin/cpr.pl

 int cpr_main(void) {
         
        printf("Hello World, I'm running under Perl version %s\n",
               CPR_eval("use Config; $Config{version}")
              );

        return 0;
    }

MODULE = cpr_pl_8e6b     	PACKAGE = main

PROTOTYPES: DISABLE

int
cpr_main()

