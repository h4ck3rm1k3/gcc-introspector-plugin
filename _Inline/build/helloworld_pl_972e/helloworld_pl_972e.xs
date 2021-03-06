#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "INLINE.h"
#include "gcc.h"

void greet(char* name) {
    printf("Hello %s!\n", name);
}

void print_tree(tree t) {
    printf("%p %ld code %d!\n", t, t,  t->base.code);
}

MODULE = helloworld_pl_972e	PACKAGE = main	

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

void
print_tree (t)
	tree	t
	PREINIT:
	I32* temp;
	PPCODE:
	temp = PL_markstack_ptr++;
	print_tree(t);
	if (PL_markstack_ptr != temp) {
          /* truly void, because dXSARGS not invoked */
	  PL_markstack_ptr = temp;
	  XSRETURN_EMPTY; /* return empty stack */
        }
        /* must have used dXSARGS; list context implied */
	return; /* assume stack size is correct */

