#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "INLINE.h"
#include "gcc.h"
void greet(char* name) {
    printf("Hello %s!\n", name);
}

MODULE = GCC_pm_7dc9	PACKAGE = main	

PROTOTYPES: DISABLE


void
greet (name)
	char *	name
	PREINIT:
	I32* temp;
	PPCODE:
	temp = PL_markstack_ptr++;
	greet(name);
	if (PL_markstack_ptr != temp) {
          /* truly void, because dXSARGS not invoked */
	  PL_markstack_ptr = temp;
	  XSRETURN_EMPTY; /* return empty stack */
        }
        /* must have used dXSARGS; list context implied */
	return; /* assume stack size is correct */

