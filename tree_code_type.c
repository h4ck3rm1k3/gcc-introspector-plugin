#include "gcc.h"
//#define USE_GTK
#define DEFTREECODE(SYM, NAME, TYPE, LENGTH) TYPE,
#define END_OF_BASE_TREE_CODES

const enum tree_code_class tree_code_type[] = {
#include "all-tree.def"
};
