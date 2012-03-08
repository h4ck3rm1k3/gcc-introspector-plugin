# 1 "plugin.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "plugin.c"
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf)
     ; // __attribute__ ((__nothrow__)) ; // __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver,  char *__filename,
      struct stat *__stat_buf) ; // __attribute__ ((__nothrow__)) ; // __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver,  char *__filename,
       struct stat *__stat_buf) ; // __attribute__ ((__nothrow__)) ; // __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes,  char *__filename,
         struct stat *__stat_buf, int __flag)
     ; // __attribute__ ((__nothrow__)) ; // __attribute__ ((__nonnull__ (3, 4)));
# 444 "/usr/include/i386-linux-gnu/sys/stat.h" 3 4
extern int __xmknod (int __ver,  char *__path, __mode_t __mode,
       __dev_t *__dev) ; // __attribute__ ((__nothrow__)) ; // __attribute__ ((__nonnull__ (2, 4)));

extern int __xmknodat (int __ver, int __fd,  char *__path,
         __mode_t __mode, __dev_t *__dev)
     ; // __attribute__ ((__nothrow__)) ; // __attribute__ ((__nonnull__ (3, 5)));




extern  int  stat ( char *__path, struct stat *__statbuf)
{
  return __xstat (3, __path, __statbuf);
}


extern  int  lstat ( char *__path, struct stat *__statbuf)
{
  return __lxstat (3, __path, __statbuf);
}


extern  int  fstat (int __fd, struct stat *__statbuf)
{
  return __fxstat (3, __fd, __statbuf);
}


extern  int  fstatat (int __fd,  char *__filename, struct stat *__statbuf, int __flag)

{
  return __fxstatat (3, __fd, __filename, __statbuf, __flag);
}



extern  int  mknod ( char *__path, __mode_t __mode, __dev_t __dev)
{
  return __xmknod (1, __path, __mode, &__dev);
}



extern  int  mknodat (int __fd,  char *__path, __mode_t __mode, __dev_t __dev)

{
  return __xmknodat (1, __fd, __path, __mode, &__dev);
}
# 536 "/usr/include/i386-linux-gnu/sys/stat.h" 3 4

# 505 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h" 2
# 576 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/filenames.h" 1
# 73 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/filenames.h"
extern int filename_cmp (const char *s1, const char *s2);


extern int filename_ncmp (const char *s1, const char *s2,
     size_t n);
# 577 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h" 2
# 588 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h"
# 1 "/usr/include/dlfcn.h" 1 3 4
# 25 "/usr/include/dlfcn.h" 3 4
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/include/stddef.h" 1 3 4
# 26 "/usr/include/dlfcn.h" 2 3 4


# 1 "/usr/include/i386-linux-gnu/bits/dlfcn.h" 1 3 4
# 29 "/usr/include/dlfcn.h" 2 3 4
# 53 "/usr/include/dlfcn.h" 3 4




extern void *dlopen ( char *__file, int __mode) ; // __attribute__ ((__nothrow__));



extern int dlclose (void *__handle) ; // __attribute__ ((__nothrow__)) ; // __attribute__ ((__nonnull__ (1)));



extern void *dlsym (void * __handle,
       char * __name) ; // __attribute__ ((__nothrow__)) ; // __attribute__ ((__nonnull__ (2)));
# 83 "/usr/include/dlfcn.h" 3 4
extern char *dlerror (void) ; // __attribute__ ((__nothrow__));
# 189 "/usr/include/dlfcn.h" 3 4

# 589 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h" 2



# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h" 1
# 46 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/include/stddef.h" 1 3 4
# 47 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h" 2
# 56 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern void unlock_stream (FILE *);





extern void unlock_std_streams (void);





extern FILE *fopen_unlocked (const char *, const char *);
extern FILE *fdopen_unlocked (int, const char *);
extern FILE *freopen_unlocked (const char *, const char *, FILE *);




extern char **buildargv (const char *) ; // __attribute__ ((__malloc__));



extern void freeargv (char **);




extern char **dupargv (char **) ; // __attribute__ ((__malloc__));



extern void expandargv (int *, char ***);



extern int writeargv (char **, FILE *);
# 117 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern const char *lbasename (const char *);




extern const char *dos_lbasename (const char *);





extern const char *unix_lbasename (const char *);



extern char *lrealpath (const char *);





extern char *concat (const char *, ...) ; // __attribute__ ((__malloc__)) ; // __attribute__ ((__sentinel__));
# 147 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern char *reconcat (char *, const char *, ...) ; // __attribute__ ((__malloc__)) ; // __attribute__ ((__sentinel__));





extern unsigned long concat_length (const char *, ...) ; // __attribute__ ((__sentinel__));






extern char *concat_copy (char *, const char *, ...) ; // __attribute__ ((__sentinel__));






extern char *concat_copy2 (const char *, ...) ; // __attribute__ ((__sentinel__));



extern char *libiberty_concat_ptr;
# 183 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern int fdmatch (int fd1, int fd2);
# 195 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern char * getpwd (void);
# 208 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern long get_run_time (void);




extern char *make_relative_prefix (const char *, const char *,
                                   const char *) ; // __attribute__ ((__malloc__));





extern char *make_relative_prefix_ignore_links (const char *, const char *,
      const char *) ; // __attribute__ ((__malloc__));



extern char *choose_temp_base (void) ; // __attribute__ ((__malloc__));



extern char *make_temp_file (const char *) ; // __attribute__ ((__malloc__));



extern int unlink_if_ordinary (const char *);



extern const char *spaces (int count);




extern int errno_max (void);




extern const char *strerrno (int);



extern int strtoerrno (const char *);



extern char *xstrerror (int);




extern int signo_max (void);
# 272 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern const char *strsigno (int);



extern int strtosigno (const char *);



extern int xatexit (void (*fn) (void));



extern void xexit (int status) ; // __attribute__ ((__noreturn__));



extern void xmalloc_set_program_name (const char *);


extern void xmalloc_failed (size_t) ; // __attribute__ ((__noreturn__));





extern void *xmalloc (size_t) ; // __attribute__ ((__malloc__));





extern void *xrealloc (void *, size_t);




extern void *xcalloc (size_t, size_t) ; // __attribute__ ((__malloc__));



extern char *xstrdup (const char *) ; // __attribute__ ((__malloc__));



extern char *xstrndup (const char *, size_t) ; // __attribute__ ((__malloc__));



extern void *xmemdup (const void *, size_t, size_t) ; // __attribute__ ((__malloc__));


extern double physmem_total (void);
extern double physmem_available (void);


extern unsigned int xcrc32 (const unsigned char *, int, unsigned int);
# 371 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern const unsigned char _hex_value[256];
extern void hex_init (void);
# 397 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern struct pex_obj *pex_init (int flags, const char *pname,
     const char *tempbase);
# 492 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern const char *pex_run (struct pex_obj *obj, int flags,
       const char *executable, char * const *argv,
       const char *outname, const char *errname,
       int *err);
# 507 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern const char *pex_run_in_environment (struct pex_obj *obj, int flags,
                      const char *executable,
                                           char * const *argv,
                                           char * const *env,
                              const char *outname,
        const char *errname, int *err);





extern FILE *pex_input_file (struct pex_obj *obj, int flags,
                             const char *in_name);






extern FILE *pex_input_pipe (struct pex_obj *obj, int binary);







extern FILE *pex_read_output (struct pex_obj *, int binary);







extern FILE *pex_read_err (struct pex_obj *, int binary);





extern int pex_get_status (struct pex_obj *, int count, int *vector);






struct pex_time
{
  unsigned long user_seconds;
  unsigned long user_microseconds;
  unsigned long system_seconds;
  unsigned long system_microseconds;
};

extern int pex_get_times (struct pex_obj *, int count,
     struct pex_time *vector);




extern void pex_free (struct pex_obj *);
# 582 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern const char *pex_one (int flags, const char *executable,
       char * const *argv, const char *pname,
       const char *outname, const char *errname,
       int *status, int *err);
# 601 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern int pexecute (const char *, char * const *, const char *,
                     const char *, char **, char **, int);



extern int pwait (int, int *, int);
# 638 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern void setproctitle (const char *name, ...);


extern void stack_limit_increase (unsigned long);
# 651 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/libiberty.h"
extern void *C_alloca (size_t) ; // __attribute__ ((__malloc__));
# 593 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h" 2
# 630 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h"
extern void fancy_abort (const char *, int, const char *) ; // __attribute__ ((__noreturn__));
# 720 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h"
        




        






        


        
# 776 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h"
        
# 834 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h"
        
# 845 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h"
        



        
# 860 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h"
        
# 876 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h"
        
# 29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gcc-plugin.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/coretypes.h" 1
# 47 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/coretypes.h"
struct bitmap_head_def;
typedef struct bitmap_head_def *bitmap;
typedef const struct bitmap_head_def *const_bitmap;
struct simple_bitmap_def;
typedef struct simple_bitmap_def *sbitmap;
typedef const struct simple_bitmap_def *const_sbitmap;
struct rtx_def;
typedef struct rtx_def *rtx;
typedef const struct rtx_def *const_rtx;
struct rtvec_def;
typedef struct rtvec_def *rtvec;
typedef const struct rtvec_def *const_rtvec;
union tree_node;
typedef union tree_node *tree;
union gimple_statement_d;
typedef union gimple_statement_d *gimple;
typedef const union tree_node *const_tree;
typedef const union gimple_statement_d *const_gimple;
union section;
typedef union section section;
struct gcc_options;
struct cl_target_option;
struct cl_optimization;
struct cl_option;
struct cl_decoded_option;
struct cl_option_handlers;
struct diagnostic_context;
typedef struct diagnostic_context diagnostic_context;
struct gimple_seq_d;
typedef struct gimple_seq_d *gimple_seq;
typedef const struct gimple_seq_d *const_gimple_seq;


typedef unsigned char addr_space_t;






enum ir_type {
  IR_GIMPLE,
  IR_RTL_CFGRTL,
  IR_RTL_CFGLAYOUT
};






struct cpp_reader;
struct cpp_token;




enum tls_model {
  TLS_MODEL_NONE,
  TLS_MODEL_EMULATED,
  TLS_MODEL_REAL,
  TLS_MODEL_GLOBAL_DYNAMIC = TLS_MODEL_REAL,
  TLS_MODEL_LOCAL_DYNAMIC,
  TLS_MODEL_INITIAL_EXEC,
  TLS_MODEL_LOCAL_EXEC
};



enum unwind_info_type
{
  UI_NONE,
  UI_SJLJ,
  UI_DWARF2,
  UI_TARGET
};


enum node_frequency {


  NODE_FREQUENCY_UNLIKELY_EXECUTED,


  NODE_FREQUENCY_EXECUTED_ONCE,

  NODE_FREQUENCY_NORMAL,


  NODE_FREQUENCY_HOT
};


struct edge_def;
typedef struct edge_def *edge;
typedef const struct edge_def *const_edge;
struct basic_block_def;
typedef struct basic_block_def *basic_block;
typedef const struct basic_block_def *const_basic_block;
# 158 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/coretypes.h"
typedef int reg_class_t;
# 30 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gcc-plugin.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/highlev-plugin-common.h" 1
# 31 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gcc-plugin.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/hashtab.h" 1
# 47 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/hashtab.h"
typedef unsigned int hashval_t;




typedef hashval_t (*htab_hash) (const void *);






typedef int (*htab_eq) (const void *, const void *);



typedef void (*htab_del) (void *);





typedef int (*htab_trav) (void **, void *);





typedef void *(*htab_alloc) (size_t, size_t);


typedef void (*htab_free) (void *);



typedef void *(*htab_alloc_with_arg) (void *, size_t, size_t);
typedef void (*htab_free_with_arg) (void *, void *);
# 100 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/hashtab.h"
struct htab {

  htab_hash hash_f;


  htab_eq eq_f;


  htab_del del_f;


  void ** entries;


  size_t size;


  size_t n_elements;


  size_t n_deleted;



  unsigned int searches;



  unsigned int collisions;


  htab_alloc alloc_f;
  htab_free free_f;


  void * alloc_arg;
  htab_alloc_with_arg alloc_with_arg_f;
  htab_free_with_arg free_with_arg_f;



  unsigned int size_prime_index;
};

typedef struct htab *htab_t;


enum insert_option {NO_INSERT, INSERT};



extern htab_t htab_create_alloc (size_t, htab_hash,
                                    htab_eq, htab_del,
                                    htab_alloc, htab_free);

extern htab_t htab_create_alloc_ex (size_t, htab_hash,
                                      htab_eq, htab_del,
                                      void *, htab_alloc_with_arg,
                                      htab_free_with_arg);

extern htab_t htab_create_typed_alloc (size_t, htab_hash, htab_eq, htab_del,
     htab_alloc, htab_alloc, htab_free);


extern htab_t htab_create (size_t, htab_hash, htab_eq, htab_del);
extern htab_t htab_try_create (size_t, htab_hash, htab_eq, htab_del);

extern void htab_set_functions_ex (htab_t, htab_hash,
                                       htab_eq, htab_del,
                                       void *, htab_alloc_with_arg,
                                       htab_free_with_arg);

extern void htab_delete (htab_t);
extern void htab_empty (htab_t);

extern void * htab_find (htab_t, const void *);
extern void ** htab_find_slot (htab_t, const void *, enum insert_option);
extern void * htab_find_with_hash (htab_t, const void *, hashval_t);
extern void ** htab_find_slot_with_hash (htab_t, const void *,
       hashval_t, enum insert_option);
extern void htab_clear_slot (htab_t, void **);
extern void htab_remove_elt (htab_t, void *);
extern void htab_remove_elt_with_hash (htab_t, void *, hashval_t);

extern void htab_traverse (htab_t, htab_trav, void *);
extern void htab_traverse_noresize (htab_t, htab_trav, void *);

extern size_t htab_size (htab_t);
extern size_t htab_elements (htab_t);
extern double htab_collisions (htab_t);


extern htab_hash htab_hash_pointer;


extern htab_eq htab_eq_pointer;


extern hashval_t htab_hash_string (const void *);


extern hashval_t iterative_hash (const void *, size_t, hashval_t);
# 32 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gcc-plugin.h" 2


enum plugin_event
{

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/plugin.def" 1
# 22 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/plugin.def"
PLUGIN_PASS_MANAGER_SETUP,


PLUGIN_FINISH_TYPE,


PLUGIN_FINISH_UNIT,


PLUGIN_PRE_GENERICIZE,


PLUGIN_FINISH,


PLUGIN_INFO,


PLUGIN_GGC_START,


PLUGIN_GGC_MARKING,


PLUGIN_GGC_END,


PLUGIN_REGISTER_GGC_ROOTS,


PLUGIN_REGISTER_GGC_CACHES,


PLUGIN_ATTRIBUTES,


PLUGIN_START_UNIT,


PLUGIN_PRAGMAS,


PLUGIN_ALL_PASSES_START,


PLUGIN_ALL_PASSES_END,


PLUGIN_ALL_IPA_PASSES_START,


PLUGIN_ALL_IPA_PASSES_END,


PLUGIN_OVERRIDE_GATE,


PLUGIN_PASS_EXECUTION,



PLUGIN_EARLY_GIMPLE_PASSES_START,



PLUGIN_EARLY_GIMPLE_PASSES_END,


PLUGIN_NEW_PASS,
# 38 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gcc-plugin.h" 2

  PLUGIN_EVENT_FIRST_DYNAMIC
};







extern const char **plugin_event_name;

struct plugin_argument
{
  char *key;
  char *value;
};



struct plugin_info
{
  const char *version;
  const char *help;
};



struct plugin_gcc_version
{
  const char *basever;
  const char *datestamp;
  const char *devphase;
  const char *revision;
  const char *configuration_arguments;
};


struct plugin_name_args
{
  char *base_name;

  const char *full_name;

  int argc;

  struct plugin_argument *argv;
  const char *version;
  const char *help;
};



extern unsigned char plugin_default_version_check (struct plugin_gcc_version *,
       struct plugin_gcc_version *);
# 103 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gcc-plugin.h"
typedef int (*plugin_init_func) (struct plugin_name_args *plugin_info,
                                 struct plugin_gcc_version *version);



extern int plugin_init (struct plugin_name_args *plugin_info,
                        struct plugin_gcc_version *version);






typedef void (*plugin_callback_func) (void *gcc_data, void *user_data);
# 129 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gcc-plugin.h"
extern int get_event_last (void);

int get_named_event_id (const char *name, enum insert_option insert);






extern void register_callback (const char *plugin_name,
          int event,
                               plugin_callback_func callback,
                               void *user_data);

extern int unregister_callback (const char *plugin_name, int event);





extern const char* default_plugin_dir_name (void);
# 161 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gcc-plugin.h"
extern int plugin_is_GPL_compatible;
# 4 "plugin.c" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 1
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/machmode.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/machmode.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/insn-modes.h" 1






enum machine_mode
{
  VOIDmode,
  BLKmode,
  CCmode,
  CCGCmode,
  CCGOCmode,
  CCNOmode,
  CCAmode,
  CCCmode,
  CCOmode,
  CCSmode,
  CCZmode,
  CCFPmode,
  CCFPUmode,
  BImode,
  QImode,
  HImode,
  SImode,
  DImode,
  TImode,
  OImode,
  QQmode,
  HQmode,
  SQmode,
  DQmode,
  TQmode,
  UQQmode,
  UHQmode,
  USQmode,
  UDQmode,
  UTQmode,
  HAmode,
  SAmode,
  DAmode,
  TAmode,
  UHAmode,
  USAmode,
  UDAmode,
  UTAmode,
  SFmode,
  DFmode,
  XFmode,
  TFmode,
  SDmode,
  DDmode,
  TDmode,
  CQImode,
  CHImode,
  CSImode,
  CDImode,
  CTImode,
  COImode,
  SCmode,
  DCmode,
  XCmode,
  TCmode,
  V2QImode,
  V4QImode,
  V2HImode,
  V1SImode,
  V8QImode,
  V4HImode,
  V2SImode,
  V1DImode,
  V16QImode,
  V8HImode,
  V4SImode,
  V2DImode,
  V1TImode,
  V32QImode,
  V16HImode,
  V8SImode,
  V4DImode,
  V2TImode,
  V64QImode,
  V32HImode,
  V16SImode,
  V8DImode,
  V4TImode,
  V2SFmode,
  V4SFmode,
  V2DFmode,
  V8SFmode,
  V4DFmode,
  V2TFmode,
  V16SFmode,
  V8DFmode,
  V4TFmode,
  MAX_MACHINE_MODE,

  MIN_MODE_RANDOM = VOIDmode,
  MAX_MODE_RANDOM = BLKmode,

  MIN_MODE_CC = CCmode,
  MAX_MODE_CC = CCFPUmode,

  MIN_MODE_INT = QImode,
  MAX_MODE_INT = OImode,

  MIN_MODE_PARTIAL_INT = VOIDmode,
  MAX_MODE_PARTIAL_INT = VOIDmode,

  MIN_MODE_FRACT = QQmode,
  MAX_MODE_FRACT = TQmode,

  MIN_MODE_UFRACT = UQQmode,
  MAX_MODE_UFRACT = UTQmode,

  MIN_MODE_ACCUM = HAmode,
  MAX_MODE_ACCUM = TAmode,

  MIN_MODE_UACCUM = UHAmode,
  MAX_MODE_UACCUM = UTAmode,

  MIN_MODE_FLOAT = SFmode,
  MAX_MODE_FLOAT = TFmode,

  MIN_MODE_DECIMAL_FLOAT = SDmode,
  MAX_MODE_DECIMAL_FLOAT = TDmode,

  MIN_MODE_COMPLEX_INT = CQImode,
  MAX_MODE_COMPLEX_INT = COImode,

  MIN_MODE_COMPLEX_FLOAT = SCmode,
  MAX_MODE_COMPLEX_FLOAT = TCmode,

  MIN_MODE_VECTOR_INT = V2QImode,
  MAX_MODE_VECTOR_INT = V4TImode,

  MIN_MODE_VECTOR_FRACT = VOIDmode,
  MAX_MODE_VECTOR_FRACT = VOIDmode,

  MIN_MODE_VECTOR_UFRACT = VOIDmode,
  MAX_MODE_VECTOR_UFRACT = VOIDmode,

  MIN_MODE_VECTOR_ACCUM = VOIDmode,
  MAX_MODE_VECTOR_ACCUM = VOIDmode,

  MIN_MODE_VECTOR_UACCUM = VOIDmode,
  MAX_MODE_VECTOR_UACCUM = VOIDmode,

  MIN_MODE_VECTOR_FLOAT = V2SFmode,
  MAX_MODE_VECTOR_FLOAT = V4TFmode,

  NUM_MACHINE_MODES = MAX_MACHINE_MODE
};
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/machmode.h" 2



extern const char * const mode_name[NUM_MACHINE_MODES];




# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/mode-classes.def" 1
# 35 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/machmode.h" 2

enum mode_class { MODE_RANDOM, MODE_CC, MODE_INT, MODE_PARTIAL_INT, MODE_FRACT, MODE_UFRACT, MODE_ACCUM, MODE_UACCUM, MODE_FLOAT, MODE_DECIMAL_FLOAT, MODE_COMPLEX_INT, MODE_COMPLEX_FLOAT, MODE_VECTOR_INT, MODE_VECTOR_FRACT, MODE_VECTOR_UFRACT, MODE_VECTOR_ACCUM, MODE_VECTOR_UACCUM, MODE_VECTOR_FLOAT, MAX_MODE_CLASS };






//extern const unsigned char mode_class[NUM_MACHINE_MODES];
# 179 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/machmode.h"
extern unsigned char mode_size[NUM_MACHINE_MODES];




extern const unsigned short mode_precision[NUM_MACHINE_MODES];



extern const unsigned char mode_ibit[NUM_MACHINE_MODES];



extern const unsigned char mode_fbit[NUM_MACHINE_MODES];





extern const unsigned long long mode_mask_array[NUM_MACHINE_MODES];





extern const unsigned char mode_inner[NUM_MACHINE_MODES];
# 216 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/machmode.h"
extern const unsigned char mode_nunits[NUM_MACHINE_MODES];




extern const unsigned char mode_wider[NUM_MACHINE_MODES];


extern const unsigned char mode_2xwider[NUM_MACHINE_MODES];






extern enum machine_mode mode_for_size (unsigned int, enum mode_class, int);



extern enum machine_mode smallest_mode_for_size (unsigned int,
       enum mode_class);





extern enum machine_mode int_mode_for_mode (enum machine_mode);




extern enum machine_mode mode_for_vector (enum machine_mode, unsigned);



extern enum machine_mode get_best_mode (int, int, unsigned int,
     enum machine_mode, int);



extern unsigned char mode_base_align[NUM_MACHINE_MODES];

extern unsigned get_mode_alignment (enum machine_mode);





extern const unsigned char class_narrowest_mode[MAX_MODE_CLASS];






extern enum machine_mode byte_mode;
extern enum machine_mode word_mode;
extern enum machine_mode ptr_mode;


extern void init_adjust_machine_modes (void);
# 27 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/input.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/input.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/line-map.h" 1
# 36 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/line-map.h"
enum lc_reason {LC_ENTER = 0, LC_LEAVE, LC_RENAME, LC_RENAME_VERBATIM};


typedef unsigned int linenum_type;


typedef unsigned int source_location;


typedef void *(*line_map_realloc) (void *, size_t);
# 59 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/line-map.h"
struct line_map {
  const char *to_file;
  linenum_type to_line;
  source_location start_location;
  int included_from;
enum lc_reason reason : 8;

  unsigned char sysp;

  unsigned int column_bits : 8;
};


struct line_maps {
  struct line_map * maps;
  unsigned int allocated;
  unsigned int used;

  unsigned int cache;




  int last_listed;


  unsigned int depth;


  unsigned char trace_includes;


  source_location highest_location;


  source_location highest_line;



  unsigned int max_column_hint;



  line_map_realloc reallocator;
};


extern void linemap_init (struct line_maps *);


extern void linemap_free (struct line_maps *);



extern void linemap_check_files_exited (struct line_maps *);







extern source_location linemap_line_start
(struct line_maps *set, linenum_type to_line, unsigned int max_column_hint);
# 135 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/line-map.h"
extern const struct line_map *linemap_add
  (struct line_maps *, enum lc_reason, unsigned int sysp,
   const char *to_file, linenum_type to_line);



extern const struct line_map *linemap_lookup
  (struct line_maps *, source_location);
# 190 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/line-map.h"
extern source_location
linemap_position_for_column (struct line_maps *set, unsigned int to_column);
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/input.h" 2

extern struct line_maps *line_table;
# 37 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/input.h"
extern char builtins_location_check[ 1];

typedef struct
{

  const char *file;


  int line;

  int column;


  unsigned char sysp;
} expanded_location;

extern expanded_location expand_location (source_location);



typedef source_location location_t;

extern location_t input_location;
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/statistics.h" 1
# 41 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/statistics.h"
struct function;


extern void statistics_early_init (void);
extern void statistics_init (void);
extern void statistics_fini (void);
extern void statistics_fini_pass (void);
extern void statistics_counter_event (struct function *, const char *, int);
extern void statistics_histogram_event (struct function *, const char *, int);
# 29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/vec.h" 1
# 467 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/vec.h"
extern void *vec_gc_p_reserve (void *, int );
extern void *vec_gc_p_reserve_exact (void *, int );
extern void *vec_gc_o_reserve (void *, int, size_t, size_t );
extern void *vec_gc_o_reserve_exact (void *, int, size_t, size_t
         );
extern void ggc_free (void *);

extern void *vec_heap_p_reserve (void *, int );
extern void *vec_heap_p_reserve_exact (void *, int );
extern void *vec_heap_o_reserve (void *, int, size_t, size_t );
extern void *vec_heap_o_reserve_exact (void *, int, size_t, size_t
           );
extern void dump_vec_loc_statistics (void);
# 1337 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/vec.h"
extern void *vec_stack_p_reserve (void *, int );
extern void *vec_stack_p_reserve_exact (void *, int );
extern void *vec_stack_p_reserve_exact_1 (int, void *);
extern void *vec_stack_o_reserve (void *, int, size_t, size_t );
extern void *vec_stack_o_reserve_exact (void *, int, size_t, size_t
      );
extern void vec_stack_free (void *);
# 30 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/vecir.h" 1
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/vecir.h"
static void VEC_tree_must_be_pointer_type (void) { (void)((tree)1 == (void *)1); } typedef struct VEC_tree_base { unsigned num; unsigned alloc; tree vec[1]; } VEC_tree_base; typedef struct VEC_tree_none { VEC_tree_base base; } VEC_tree_none; static unsigned VEC_tree_base_length (const VEC_tree_base *vec_) { return vec_ ? vec_->num : 0; } static tree VEC_tree_base_last (const VEC_tree_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static tree VEC_tree_base_index (const VEC_tree_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_tree_base_iterate (const VEC_tree_base *vec_, unsigned ix_, tree *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (tree) 0; return 0; } } static size_t VEC_tree_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_tree_base, vec) + alloc_ * sizeof(tree); } static void VEC_tree_base_embedded_init (VEC_tree_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_tree_base_space (VEC_tree_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_tree_base_splice (VEC_tree_base *dst_, VEC_tree_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (tree)); dst_->num += len_; } } static tree *VEC_tree_base_quick_push (VEC_tree_base *vec_, tree obj_ ) { tree *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static tree VEC_tree_base_pop (VEC_tree_base *vec_ ) { tree obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_tree_base_truncate (VEC_tree_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static tree VEC_tree_base_replace (VEC_tree_base *vec_, unsigned ix_, tree obj_ ) { tree old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static tree *VEC_tree_base_quick_insert (VEC_tree_base *vec_, unsigned ix_, tree obj_ ) { tree *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (tree)); *slot_ = obj_; return slot_; } static tree VEC_tree_base_ordered_remove (VEC_tree_base *vec_, unsigned ix_ ) { tree *slot_; tree obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (tree)); return obj_; } static tree VEC_tree_base_unordered_remove (VEC_tree_base *vec_, unsigned ix_ ) { tree *slot_; tree obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_tree_base_block_remove (VEC_tree_base *vec_, unsigned ix_, unsigned len_ ) { tree *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (tree)); } static tree *VEC_tree_base_address (VEC_tree_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_tree_base_lower_bound (VEC_tree_base *vec_, const tree obj_, unsigned char (*lessthan_)(const tree, const tree) ) { unsigned int len_ = VEC_tree_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { tree middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_tree_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_tree_gc { VEC_tree_base base; } VEC_tree_gc; static VEC_tree_gc *VEC_tree_gc_alloc (int alloc_ ) { return (VEC_tree_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_tree_gc_free (VEC_tree_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_tree_gc *VEC_tree_gc_copy (VEC_tree_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_tree_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_tree_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (tree) * len_); } return new_vec_; } static int VEC_tree_gc_reserve (VEC_tree_gc **vec_, int alloc_ ) { int extend = !VEC_tree_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_tree_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_tree_gc_reserve_exact (VEC_tree_gc **vec_, int alloc_ ) { int extend = !VEC_tree_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_tree_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_tree_gc_safe_grow (VEC_tree_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_tree_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_tree_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_tree_gc_safe_grow_cleared (VEC_tree_gc **vec_, int size_ ) { int oldsize = VEC_tree_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_tree_gc_safe_grow (vec_, size_ ); memset (&(VEC_tree_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (tree) * (size_ - oldsize)); } static void VEC_tree_gc_safe_splice (VEC_tree_gc **dst_, VEC_tree_base *src_ ) { if (src_) { VEC_tree_gc_reserve_exact (dst_, src_->num ); VEC_tree_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static tree *VEC_tree_gc_safe_push (VEC_tree_gc **vec_, tree obj_ ) { VEC_tree_gc_reserve (vec_, 1 ); return VEC_tree_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static tree *VEC_tree_gc_safe_insert (VEC_tree_gc **vec_, unsigned ix_, tree obj_ ) { VEC_tree_gc_reserve (vec_, 1 ); return VEC_tree_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
typedef struct VEC_tree_heap { VEC_tree_base base; } VEC_tree_heap; static VEC_tree_heap *VEC_tree_heap_alloc (int alloc_ ) { return (VEC_tree_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_tree_heap_free (VEC_tree_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_tree_heap *VEC_tree_heap_copy (VEC_tree_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_tree_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_tree_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (tree) * len_); } return new_vec_; } static int VEC_tree_heap_reserve (VEC_tree_heap **vec_, int alloc_ ) { int extend = !VEC_tree_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_tree_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_tree_heap_reserve_exact (VEC_tree_heap **vec_, int alloc_ ) { int extend = !VEC_tree_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_tree_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_tree_heap_safe_grow (VEC_tree_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_tree_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_tree_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_tree_heap_safe_grow_cleared (VEC_tree_heap **vec_, int size_ ) { int oldsize = VEC_tree_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_tree_heap_safe_grow (vec_, size_ ); memset (&(VEC_tree_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (tree) * (size_ - oldsize)); } static void VEC_tree_heap_safe_splice (VEC_tree_heap **dst_, VEC_tree_base *src_ ) { if (src_) { VEC_tree_heap_reserve_exact (dst_, src_->num ); VEC_tree_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static tree *VEC_tree_heap_safe_push (VEC_tree_heap **vec_, tree obj_ ) { VEC_tree_heap_reserve (vec_, 1 ); return VEC_tree_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static tree *VEC_tree_heap_safe_insert (VEC_tree_heap **vec_, unsigned ix_, tree obj_ ) { VEC_tree_heap_reserve (vec_, 1 ); return VEC_tree_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;


static void VEC_gimple_must_be_pointer_type (void) { (void)((gimple)1 == (void *)1); } typedef struct VEC_gimple_base { unsigned num; unsigned alloc; gimple vec[1]; } VEC_gimple_base; typedef struct VEC_gimple_none { VEC_gimple_base base; } VEC_gimple_none; static unsigned VEC_gimple_base_length (const VEC_gimple_base *vec_) { return vec_ ? vec_->num : 0; } static gimple VEC_gimple_base_last (const VEC_gimple_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static gimple VEC_gimple_base_index (const VEC_gimple_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_gimple_base_iterate (const VEC_gimple_base *vec_, unsigned ix_, gimple *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (gimple) 0; return 0; } } static size_t VEC_gimple_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_gimple_base, vec) + alloc_ * sizeof(gimple); } static void VEC_gimple_base_embedded_init (VEC_gimple_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_gimple_base_space (VEC_gimple_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_gimple_base_splice (VEC_gimple_base *dst_, VEC_gimple_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (gimple)); dst_->num += len_; } } static gimple *VEC_gimple_base_quick_push (VEC_gimple_base *vec_, gimple obj_ ) { gimple *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static gimple VEC_gimple_base_pop (VEC_gimple_base *vec_ ) { gimple obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_gimple_base_truncate (VEC_gimple_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static gimple VEC_gimple_base_replace (VEC_gimple_base *vec_, unsigned ix_, gimple obj_ ) { gimple old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static gimple *VEC_gimple_base_quick_insert (VEC_gimple_base *vec_, unsigned ix_, gimple obj_ ) { gimple *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (gimple)); *slot_ = obj_; return slot_; } static gimple VEC_gimple_base_ordered_remove (VEC_gimple_base *vec_, unsigned ix_ ) { gimple *slot_; gimple obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (gimple)); return obj_; } static gimple VEC_gimple_base_unordered_remove (VEC_gimple_base *vec_, unsigned ix_ ) { gimple *slot_; gimple obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_gimple_base_block_remove (VEC_gimple_base *vec_, unsigned ix_, unsigned len_ ) { gimple *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (gimple)); } static gimple *VEC_gimple_base_address (VEC_gimple_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_gimple_base_lower_bound (VEC_gimple_base *vec_, const gimple obj_, unsigned char (*lessthan_)(const gimple, const gimple) ) { unsigned int len_ = VEC_gimple_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { gimple middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_gimple_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_gimple_heap { VEC_gimple_base base; } VEC_gimple_heap; static VEC_gimple_heap *VEC_gimple_heap_alloc (int alloc_ ) { return (VEC_gimple_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_gimple_heap_free (VEC_gimple_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_gimple_heap *VEC_gimple_heap_copy (VEC_gimple_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_gimple_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_gimple_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (gimple) * len_); } return new_vec_; } static int VEC_gimple_heap_reserve (VEC_gimple_heap **vec_, int alloc_ ) { int extend = !VEC_gimple_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_gimple_heap_reserve_exact (VEC_gimple_heap **vec_, int alloc_ ) { int extend = !VEC_gimple_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_gimple_heap_safe_grow (VEC_gimple_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_gimple_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_gimple_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_gimple_heap_safe_grow_cleared (VEC_gimple_heap **vec_, int size_ ) { int oldsize = VEC_gimple_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_gimple_heap_safe_grow (vec_, size_ ); memset (&(VEC_gimple_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (gimple) * (size_ - oldsize)); } static void VEC_gimple_heap_safe_splice (VEC_gimple_heap **dst_, VEC_gimple_base *src_ ) { if (src_) { VEC_gimple_heap_reserve_exact (dst_, src_->num ); VEC_gimple_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static gimple *VEC_gimple_heap_safe_push (VEC_gimple_heap **vec_, gimple obj_ ) { VEC_gimple_heap_reserve (vec_, 1 ); return VEC_gimple_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static gimple *VEC_gimple_heap_safe_insert (VEC_gimple_heap **vec_, unsigned ix_, gimple obj_ ) { VEC_gimple_heap_reserve (vec_, 1 ); return VEC_gimple_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
typedef struct VEC_gimple_gc { VEC_gimple_base base; } VEC_gimple_gc; static VEC_gimple_gc *VEC_gimple_gc_alloc (int alloc_ ) { return (VEC_gimple_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_gimple_gc_free (VEC_gimple_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_gimple_gc *VEC_gimple_gc_copy (VEC_gimple_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_gimple_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_gimple_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (gimple) * len_); } return new_vec_; } static int VEC_gimple_gc_reserve (VEC_gimple_gc **vec_, int alloc_ ) { int extend = !VEC_gimple_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_gimple_gc_reserve_exact (VEC_gimple_gc **vec_, int alloc_ ) { int extend = !VEC_gimple_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_gimple_gc_safe_grow (VEC_gimple_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_gimple_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_gimple_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_gimple_gc_safe_grow_cleared (VEC_gimple_gc **vec_, int size_ ) { int oldsize = VEC_gimple_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_gimple_gc_safe_grow (vec_, size_ ); memset (&(VEC_gimple_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (gimple) * (size_ - oldsize)); } static void VEC_gimple_gc_safe_splice (VEC_gimple_gc **dst_, VEC_gimple_base *src_ ) { if (src_) { VEC_gimple_gc_reserve_exact (dst_, src_->num ); VEC_gimple_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static gimple *VEC_gimple_gc_safe_push (VEC_gimple_gc **vec_, gimple obj_ ) { VEC_gimple_gc_reserve (vec_, 1 ); return VEC_gimple_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static gimple *VEC_gimple_gc_safe_insert (VEC_gimple_gc **vec_, unsigned ix_, gimple obj_ ) { VEC_gimple_gc_reserve (vec_, 1 ); return VEC_gimple_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;


typedef gimple *gimple_p;
static void VEC_gimple_p_must_be_pointer_type (void) { (void)((gimple_p)1 == (void *)1); } typedef struct VEC_gimple_p_base { unsigned num; unsigned alloc; gimple_p vec[1]; } VEC_gimple_p_base; typedef struct VEC_gimple_p_none { VEC_gimple_p_base base; } VEC_gimple_p_none; static unsigned VEC_gimple_p_base_length (const VEC_gimple_p_base *vec_) { return vec_ ? vec_->num : 0; } static gimple_p VEC_gimple_p_base_last (const VEC_gimple_p_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static gimple_p VEC_gimple_p_base_index (const VEC_gimple_p_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_gimple_p_base_iterate (const VEC_gimple_p_base *vec_, unsigned ix_, gimple_p *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (gimple_p) 0; return 0; } } static size_t VEC_gimple_p_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_gimple_p_base, vec) + alloc_ * sizeof(gimple_p); } static void VEC_gimple_p_base_embedded_init (VEC_gimple_p_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_gimple_p_base_space (VEC_gimple_p_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_gimple_p_base_splice (VEC_gimple_p_base *dst_, VEC_gimple_p_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (gimple_p)); dst_->num += len_; } } static gimple_p *VEC_gimple_p_base_quick_push (VEC_gimple_p_base *vec_, gimple_p obj_ ) { gimple_p *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static gimple_p VEC_gimple_p_base_pop (VEC_gimple_p_base *vec_ ) { gimple_p obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_gimple_p_base_truncate (VEC_gimple_p_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static gimple_p VEC_gimple_p_base_replace (VEC_gimple_p_base *vec_, unsigned ix_, gimple_p obj_ ) { gimple_p old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static gimple_p *VEC_gimple_p_base_quick_insert (VEC_gimple_p_base *vec_, unsigned ix_, gimple_p obj_ ) { gimple_p *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (gimple_p)); *slot_ = obj_; return slot_; } static gimple_p VEC_gimple_p_base_ordered_remove (VEC_gimple_p_base *vec_, unsigned ix_ ) { gimple_p *slot_; gimple_p obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (gimple_p)); return obj_; } static gimple_p VEC_gimple_p_base_unordered_remove (VEC_gimple_p_base *vec_, unsigned ix_ ) { gimple_p *slot_; gimple_p obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_gimple_p_base_block_remove (VEC_gimple_p_base *vec_, unsigned ix_, unsigned len_ ) { gimple_p *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (gimple_p)); } static gimple_p *VEC_gimple_p_base_address (VEC_gimple_p_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_gimple_p_base_lower_bound (VEC_gimple_p_base *vec_, const gimple_p obj_, unsigned char (*lessthan_)(const gimple_p, const gimple_p) ) { unsigned int len_ = VEC_gimple_p_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { gimple_p middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_gimple_p_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_gimple_p_heap { VEC_gimple_p_base base; } VEC_gimple_p_heap; static VEC_gimple_p_heap *VEC_gimple_p_heap_alloc (int alloc_ ) { return (VEC_gimple_p_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_gimple_p_heap_free (VEC_gimple_p_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_gimple_p_heap *VEC_gimple_p_heap_copy (VEC_gimple_p_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_gimple_p_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_gimple_p_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (gimple_p) * len_); } return new_vec_; } static int VEC_gimple_p_heap_reserve (VEC_gimple_p_heap **vec_, int alloc_ ) { int extend = !VEC_gimple_p_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_p_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_gimple_p_heap_reserve_exact (VEC_gimple_p_heap **vec_, int alloc_ ) { int extend = !VEC_gimple_p_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_p_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_gimple_p_heap_safe_grow (VEC_gimple_p_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_gimple_p_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_gimple_p_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_gimple_p_heap_safe_grow_cleared (VEC_gimple_p_heap **vec_, int size_ ) { int oldsize = VEC_gimple_p_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_gimple_p_heap_safe_grow (vec_, size_ ); memset (&(VEC_gimple_p_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (gimple_p) * (size_ - oldsize)); } static void VEC_gimple_p_heap_safe_splice (VEC_gimple_p_heap **dst_, VEC_gimple_p_base *src_ ) { if (src_) { VEC_gimple_p_heap_reserve_exact (dst_, src_->num ); VEC_gimple_p_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static gimple_p *VEC_gimple_p_heap_safe_push (VEC_gimple_p_heap **vec_, gimple_p obj_ ) { VEC_gimple_p_heap_reserve (vec_, 1 ); return VEC_gimple_p_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static gimple_p *VEC_gimple_p_heap_safe_insert (VEC_gimple_p_heap **vec_, unsigned ix_, gimple_p obj_ ) { VEC_gimple_p_heap_reserve (vec_, 1 ); return VEC_gimple_p_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;


static void VEC_gimple_seq_must_be_pointer_type (void) { (void)((gimple_seq)1 == (void *)1); } typedef struct VEC_gimple_seq_base { unsigned num; unsigned alloc; gimple_seq vec[1]; } VEC_gimple_seq_base; typedef struct VEC_gimple_seq_none { VEC_gimple_seq_base base; } VEC_gimple_seq_none; static unsigned VEC_gimple_seq_base_length (const VEC_gimple_seq_base *vec_) { return vec_ ? vec_->num : 0; } static gimple_seq VEC_gimple_seq_base_last (const VEC_gimple_seq_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static gimple_seq VEC_gimple_seq_base_index (const VEC_gimple_seq_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_gimple_seq_base_iterate (const VEC_gimple_seq_base *vec_, unsigned ix_, gimple_seq *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (gimple_seq) 0; return 0; } } static size_t VEC_gimple_seq_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_gimple_seq_base, vec) + alloc_ * sizeof(gimple_seq); } static void VEC_gimple_seq_base_embedded_init (VEC_gimple_seq_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_gimple_seq_base_space (VEC_gimple_seq_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_gimple_seq_base_splice (VEC_gimple_seq_base *dst_, VEC_gimple_seq_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (gimple_seq)); dst_->num += len_; } } static gimple_seq *VEC_gimple_seq_base_quick_push (VEC_gimple_seq_base *vec_, gimple_seq obj_ ) { gimple_seq *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static gimple_seq VEC_gimple_seq_base_pop (VEC_gimple_seq_base *vec_ ) { gimple_seq obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_gimple_seq_base_truncate (VEC_gimple_seq_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static gimple_seq VEC_gimple_seq_base_replace (VEC_gimple_seq_base *vec_, unsigned ix_, gimple_seq obj_ ) { gimple_seq old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static gimple_seq *VEC_gimple_seq_base_quick_insert (VEC_gimple_seq_base *vec_, unsigned ix_, gimple_seq obj_ ) { gimple_seq *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (gimple_seq)); *slot_ = obj_; return slot_; } static gimple_seq VEC_gimple_seq_base_ordered_remove (VEC_gimple_seq_base *vec_, unsigned ix_ ) { gimple_seq *slot_; gimple_seq obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (gimple_seq)); return obj_; } static gimple_seq VEC_gimple_seq_base_unordered_remove (VEC_gimple_seq_base *vec_, unsigned ix_ ) { gimple_seq *slot_; gimple_seq obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_gimple_seq_base_block_remove (VEC_gimple_seq_base *vec_, unsigned ix_, unsigned len_ ) { gimple_seq *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (gimple_seq)); } static gimple_seq *VEC_gimple_seq_base_address (VEC_gimple_seq_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_gimple_seq_base_lower_bound (VEC_gimple_seq_base *vec_, const gimple_seq obj_, unsigned char (*lessthan_)(const gimple_seq, const gimple_seq) ) { unsigned int len_ = VEC_gimple_seq_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { gimple_seq middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_gimple_seq_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_gimple_seq_gc { VEC_gimple_seq_base base; } VEC_gimple_seq_gc; static VEC_gimple_seq_gc *VEC_gimple_seq_gc_alloc (int alloc_ ) { return (VEC_gimple_seq_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_gimple_seq_gc_free (VEC_gimple_seq_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_gimple_seq_gc *VEC_gimple_seq_gc_copy (VEC_gimple_seq_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_gimple_seq_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_gimple_seq_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (gimple_seq) * len_); } return new_vec_; } static int VEC_gimple_seq_gc_reserve (VEC_gimple_seq_gc **vec_, int alloc_ ) { int extend = !VEC_gimple_seq_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_seq_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_gimple_seq_gc_reserve_exact (VEC_gimple_seq_gc **vec_, int alloc_ ) { int extend = !VEC_gimple_seq_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_seq_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_gimple_seq_gc_safe_grow (VEC_gimple_seq_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_gimple_seq_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_gimple_seq_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_gimple_seq_gc_safe_grow_cleared (VEC_gimple_seq_gc **vec_, int size_ ) { int oldsize = VEC_gimple_seq_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_gimple_seq_gc_safe_grow (vec_, size_ ); memset (&(VEC_gimple_seq_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (gimple_seq) * (size_ - oldsize)); } static void VEC_gimple_seq_gc_safe_splice (VEC_gimple_seq_gc **dst_, VEC_gimple_seq_base *src_ ) { if (src_) { VEC_gimple_seq_gc_reserve_exact (dst_, src_->num ); VEC_gimple_seq_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static gimple_seq *VEC_gimple_seq_gc_safe_push (VEC_gimple_seq_gc **vec_, gimple_seq obj_ ) { VEC_gimple_seq_gc_reserve (vec_, 1 ); return VEC_gimple_seq_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static gimple_seq *VEC_gimple_seq_gc_safe_insert (VEC_gimple_seq_gc **vec_, unsigned ix_, gimple_seq obj_ ) { VEC_gimple_seq_gc_reserve (vec_, 1 ); return VEC_gimple_seq_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
typedef struct VEC_gimple_seq_heap { VEC_gimple_seq_base base; } VEC_gimple_seq_heap; static VEC_gimple_seq_heap *VEC_gimple_seq_heap_alloc (int alloc_ ) { return (VEC_gimple_seq_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_gimple_seq_heap_free (VEC_gimple_seq_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_gimple_seq_heap *VEC_gimple_seq_heap_copy (VEC_gimple_seq_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_gimple_seq_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_gimple_seq_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (gimple_seq) * len_); } return new_vec_; } static int VEC_gimple_seq_heap_reserve (VEC_gimple_seq_heap **vec_, int alloc_ ) { int extend = !VEC_gimple_seq_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_seq_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_gimple_seq_heap_reserve_exact (VEC_gimple_seq_heap **vec_, int alloc_ ) { int extend = !VEC_gimple_seq_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_seq_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_gimple_seq_heap_safe_grow (VEC_gimple_seq_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_gimple_seq_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_gimple_seq_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_gimple_seq_heap_safe_grow_cleared (VEC_gimple_seq_heap **vec_, int size_ ) { int oldsize = VEC_gimple_seq_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_gimple_seq_heap_safe_grow (vec_, size_ ); memset (&(VEC_gimple_seq_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (gimple_seq) * (size_ - oldsize)); } static void VEC_gimple_seq_heap_safe_splice (VEC_gimple_seq_heap **dst_, VEC_gimple_seq_base *src_ ) { if (src_) { VEC_gimple_seq_heap_reserve_exact (dst_, src_->num ); VEC_gimple_seq_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static gimple_seq *VEC_gimple_seq_heap_safe_push (VEC_gimple_seq_heap **vec_, gimple_seq obj_ ) { VEC_gimple_seq_heap_reserve (vec_, 1 ); return VEC_gimple_seq_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static gimple_seq *VEC_gimple_seq_heap_safe_insert (VEC_gimple_seq_heap **vec_, unsigned ix_, gimple_seq obj_ ) { VEC_gimple_seq_heap_reserve (vec_, 1 ); return VEC_gimple_seq_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;


static void VEC_rtx_must_be_pointer_type (void) { (void)((rtx)1 == (void *)1); } typedef struct VEC_rtx_base { unsigned num; unsigned alloc; rtx vec[1]; } VEC_rtx_base; typedef struct VEC_rtx_none { VEC_rtx_base base; } VEC_rtx_none; static unsigned VEC_rtx_base_length (const VEC_rtx_base *vec_) { return vec_ ? vec_->num : 0; } static rtx VEC_rtx_base_last (const VEC_rtx_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static rtx VEC_rtx_base_index (const VEC_rtx_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_rtx_base_iterate (const VEC_rtx_base *vec_, unsigned ix_, rtx *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (rtx) 0; return 0; } } static size_t VEC_rtx_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_rtx_base, vec) + alloc_ * sizeof(rtx); } static void VEC_rtx_base_embedded_init (VEC_rtx_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_rtx_base_space (VEC_rtx_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_rtx_base_splice (VEC_rtx_base *dst_, VEC_rtx_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (rtx)); dst_->num += len_; } } static rtx *VEC_rtx_base_quick_push (VEC_rtx_base *vec_, rtx obj_ ) { rtx *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static rtx VEC_rtx_base_pop (VEC_rtx_base *vec_ ) { rtx obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_rtx_base_truncate (VEC_rtx_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static rtx VEC_rtx_base_replace (VEC_rtx_base *vec_, unsigned ix_, rtx obj_ ) { rtx old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static rtx *VEC_rtx_base_quick_insert (VEC_rtx_base *vec_, unsigned ix_, rtx obj_ ) { rtx *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (rtx)); *slot_ = obj_; return slot_; } static rtx VEC_rtx_base_ordered_remove (VEC_rtx_base *vec_, unsigned ix_ ) { rtx *slot_; rtx obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (rtx)); return obj_; } static rtx VEC_rtx_base_unordered_remove (VEC_rtx_base *vec_, unsigned ix_ ) { rtx *slot_; rtx obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_rtx_base_block_remove (VEC_rtx_base *vec_, unsigned ix_, unsigned len_ ) { rtx *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (rtx)); } static rtx *VEC_rtx_base_address (VEC_rtx_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_rtx_base_lower_bound (VEC_rtx_base *vec_, const rtx obj_, unsigned char (*lessthan_)(const rtx, const rtx) ) { unsigned int len_ = VEC_rtx_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { rtx middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_rtx_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_rtx_heap { VEC_rtx_base base; } VEC_rtx_heap; static VEC_rtx_heap *VEC_rtx_heap_alloc (int alloc_ ) { return (VEC_rtx_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_rtx_heap_free (VEC_rtx_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_rtx_heap *VEC_rtx_heap_copy (VEC_rtx_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_rtx_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_rtx_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (rtx) * len_); } return new_vec_; } static int VEC_rtx_heap_reserve (VEC_rtx_heap **vec_, int alloc_ ) { int extend = !VEC_rtx_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_rtx_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_rtx_heap_reserve_exact (VEC_rtx_heap **vec_, int alloc_ ) { int extend = !VEC_rtx_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_rtx_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_rtx_heap_safe_grow (VEC_rtx_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_rtx_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_rtx_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_rtx_heap_safe_grow_cleared (VEC_rtx_heap **vec_, int size_ ) { int oldsize = VEC_rtx_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_rtx_heap_safe_grow (vec_, size_ ); memset (&(VEC_rtx_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (rtx) * (size_ - oldsize)); } static void VEC_rtx_heap_safe_splice (VEC_rtx_heap **dst_, VEC_rtx_base *src_ ) { if (src_) { VEC_rtx_heap_reserve_exact (dst_, src_->num ); VEC_rtx_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static rtx *VEC_rtx_heap_safe_push (VEC_rtx_heap **vec_, rtx obj_ ) { VEC_rtx_heap_reserve (vec_, 1 ); return VEC_rtx_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static rtx *VEC_rtx_heap_safe_insert (VEC_rtx_heap **vec_, unsigned ix_, rtx obj_ ) { VEC_rtx_heap_reserve (vec_, 1 ); return VEC_rtx_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
typedef struct VEC_rtx_gc { VEC_rtx_base base; } VEC_rtx_gc; static VEC_rtx_gc *VEC_rtx_gc_alloc (int alloc_ ) { return (VEC_rtx_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_rtx_gc_free (VEC_rtx_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_rtx_gc *VEC_rtx_gc_copy (VEC_rtx_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_rtx_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_rtx_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (rtx) * len_); } return new_vec_; } static int VEC_rtx_gc_reserve (VEC_rtx_gc **vec_, int alloc_ ) { int extend = !VEC_rtx_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_rtx_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_rtx_gc_reserve_exact (VEC_rtx_gc **vec_, int alloc_ ) { int extend = !VEC_rtx_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_rtx_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_rtx_gc_safe_grow (VEC_rtx_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_rtx_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_rtx_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_rtx_gc_safe_grow_cleared (VEC_rtx_gc **vec_, int size_ ) { int oldsize = VEC_rtx_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_rtx_gc_safe_grow (vec_, size_ ); memset (&(VEC_rtx_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (rtx) * (size_ - oldsize)); } static void VEC_rtx_gc_safe_splice (VEC_rtx_gc **dst_, VEC_rtx_base *src_ ) { if (src_) { VEC_rtx_gc_reserve_exact (dst_, src_->num ); VEC_rtx_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static rtx *VEC_rtx_gc_safe_push (VEC_rtx_gc **vec_, rtx obj_ ) { VEC_rtx_gc_reserve (vec_, 1 ); return VEC_rtx_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static rtx *VEC_rtx_gc_safe_insert (VEC_rtx_gc **vec_, unsigned ix_, rtx obj_ ) { VEC_rtx_gc_reserve (vec_, 1 ); return VEC_rtx_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
# 31 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/double-int.h" 1
# 24 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/double-int.h"
# 1 "/usr/include/gmp.h" 1 3 4
# 47 "/usr/include/gmp.h" 3 4
# 1 "/usr/include/gmp-i386.h" 1 3 4
# 52 "/usr/include/gmp-i386.h" 3 4
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/include/stddef.h" 1 3 4
# 53 "/usr/include/gmp-i386.h" 2 3 4
# 193 "/usr/include/gmp-i386.h" 3 4
typedef unsigned long int mp_limb_t;
typedef long int mp_limb_signed_t;


typedef unsigned long int mp_bitcnt_t;




typedef struct
{
  int _mp_alloc;

  int _mp_size;


  mp_limb_t *_mp_d;
} __mpz_struct;




typedef __mpz_struct MP_INT;
typedef __mpz_struct mpz_t[1];

typedef mp_limb_t * mp_ptr;
typedef const mp_limb_t * mp_srcptr;







typedef long int mp_size_t;
typedef long int mp_exp_t;


typedef struct
{
  __mpz_struct _mp_num;
  __mpz_struct _mp_den;
} __mpq_struct;

typedef __mpq_struct MP_RAT;
typedef __mpq_struct mpq_t[1];

typedef struct
{
  int _mp_prec;



  int _mp_size;


  mp_exp_t _mp_exp;
  mp_limb_t *_mp_d;
} __mpf_struct;


typedef __mpf_struct mpf_t[1];


typedef enum
{
  GMP_RAND_ALG_DEFAULT = 0,
  GMP_RAND_ALG_LC = GMP_RAND_ALG_DEFAULT
} gmp_randalg_t;


typedef struct
{
  mpz_t _mp_seed;
  gmp_randalg_t _mp_alg;
  union {
    void *_mp_lc;
  } _mp_algdata;
} __gmp_randstate_struct;
typedef __gmp_randstate_struct gmp_randstate_t[1];



typedef const __mpz_struct *mpz_srcptr;
typedef __mpz_struct *mpz_ptr;
typedef const __mpf_struct *mpf_srcptr;
typedef __mpf_struct *mpf_ptr;
typedef const __mpq_struct *mpq_srcptr;
typedef __mpq_struct *mpq_ptr;
# 542 "/usr/include/gmp-i386.h" 3 4
 void __gmp_set_memory_functions (void *(*) (size_t), void *(*) (void *, size_t, size_t), void (*) (void *, size_t))

                                                   ;


 void __gmp_get_memory_functions (void *(**) (size_t), void *(**) (void *, size_t, size_t), void (**) (void *, size_t))

                                                                                ;


 extern const int __gmp_bits_per_limb;


 extern int __gmp_errno;


 extern const char * const __gmp_version;






 void __gmp_randinit (gmp_randstate_t, gmp_randalg_t, ...);


 void __gmp_randinit_default (gmp_randstate_t);


 void __gmp_randinit_lc_2exp (gmp_randstate_t, mpz_srcptr, unsigned long int, mp_bitcnt_t)

                          ;


 int __gmp_randinit_lc_2exp_size (gmp_randstate_t, mp_bitcnt_t);


 void __gmp_randinit_mt (gmp_randstate_t);


 void __gmp_randinit_set (gmp_randstate_t, const __gmp_randstate_struct *);


 void __gmp_randseed (gmp_randstate_t, mpz_srcptr);


 void __gmp_randseed_ui (gmp_randstate_t, unsigned long int);


 void __gmp_randclear (gmp_randstate_t);


 unsigned long __gmp_urandomb_ui (gmp_randstate_t, unsigned long);


 unsigned long __gmp_urandomm_ui (gmp_randstate_t, unsigned long);





 int __gmp_asprintf (char **, const char *, ...);



 int __gmp_fprintf (FILE *, const char *, ...);
# 621 "/usr/include/gmp-i386.h" 3 4
 int __gmp_printf (const char *, ...);


 int __gmp_snprintf (char *, size_t, const char *, ...);


 int __gmp_sprintf (char *, const char *, ...);



 int __gmp_vasprintf (char **, const char *, va_list);




 int __gmp_vfprintf (FILE *, const char *, va_list);




 int __gmp_vprintf (const char *, va_list);




 int __gmp_vsnprintf (char *, size_t, const char *, va_list);




 int __gmp_vsprintf (char *, const char *, va_list);







 int __gmp_fscanf (FILE *, const char *, ...);



 int __gmp_scanf (const char *, ...);


 int __gmp_sscanf (const char *, const char *, ...);



 int __gmp_vfscanf (FILE *, const char *, va_list);




 int __gmp_vscanf (const char *, va_list);




 int __gmp_vsscanf (const char *, const char *, va_list);







 void *__gmpz_realloc (mpz_ptr, mp_size_t);



 void __gmpz_abs (mpz_ptr, mpz_srcptr);



 void __gmpz_add (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_add_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_addmul (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_addmul_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_and (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_array_init (mpz_ptr, mp_size_t, mp_size_t);


 void __gmpz_bin_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_bin_uiui (mpz_ptr, unsigned long int, unsigned long int);


 void __gmpz_cdiv_q (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_cdiv_q_2exp (mpz_ptr, mpz_srcptr, unsigned long);


 unsigned long int __gmpz_cdiv_q_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_cdiv_qr (mpz_ptr, mpz_ptr, mpz_srcptr, mpz_srcptr);


 unsigned long int __gmpz_cdiv_qr_ui (mpz_ptr, mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_cdiv_r (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_cdiv_r_2exp (mpz_ptr, mpz_srcptr, mp_bitcnt_t);


 unsigned long int __gmpz_cdiv_r_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 unsigned long int __gmpz_cdiv_ui (mpz_srcptr, unsigned long int) ; // __attribute__ ((__pure__));


 void __gmpz_clear (mpz_ptr);


 void __gmpz_clears (mpz_ptr, ...);


 void __gmpz_clrbit (mpz_ptr, mp_bitcnt_t);


 int __gmpz_cmp (mpz_srcptr, mpz_srcptr) ; // __attribute__ ((__pure__));


 int __gmpz_cmp_d (mpz_srcptr, double) ; // __attribute__ ((__pure__));


 int __gmpz_cmp_si (mpz_srcptr, signed long int) ; // __attribute__ ((__pure__));


 int __gmpz_cmp_ui (mpz_srcptr, unsigned long int) ; // __attribute__ ((__pure__));


 int __gmpz_cmpabs (mpz_srcptr, mpz_srcptr) ; // __attribute__ ((__pure__));


 int __gmpz_cmpabs_d (mpz_srcptr, double) ; // __attribute__ ((__pure__));


 int __gmpz_cmpabs_ui (mpz_srcptr, unsigned long int) ; // __attribute__ ((__pure__));


 void __gmpz_com (mpz_ptr, mpz_srcptr);


 void __gmpz_combit (mpz_ptr, mp_bitcnt_t);


 int __gmpz_congruent_p (mpz_srcptr, mpz_srcptr, mpz_srcptr) ; // __attribute__ ((__pure__));


 int __gmpz_congruent_2exp_p (mpz_srcptr, mpz_srcptr, mp_bitcnt_t) ; // __attribute__ ((__pure__));


 int __gmpz_congruent_ui_p (mpz_srcptr, unsigned long, unsigned long) ; // __attribute__ ((__pure__));


 void __gmpz_divexact (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_divexact_ui (mpz_ptr, mpz_srcptr, unsigned long);


 int __gmpz_divisible_p (mpz_srcptr, mpz_srcptr) ; // __attribute__ ((__pure__));


 int __gmpz_divisible_ui_p (mpz_srcptr, unsigned long) ; // __attribute__ ((__pure__));


 int __gmpz_divisible_2exp_p (mpz_srcptr, mp_bitcnt_t) ; // __attribute__ ((__pure__));


 void __gmpz_dump (mpz_srcptr);


 void *__gmpz_export (void *, size_t *, int, size_t, int, size_t, mpz_srcptr);


 void __gmpz_fac_ui (mpz_ptr, unsigned long int);


 void __gmpz_fdiv_q (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_fdiv_q_2exp (mpz_ptr, mpz_srcptr, mp_bitcnt_t);


 unsigned long int __gmpz_fdiv_q_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_fdiv_qr (mpz_ptr, mpz_ptr, mpz_srcptr, mpz_srcptr);


 unsigned long int __gmpz_fdiv_qr_ui (mpz_ptr, mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_fdiv_r (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_fdiv_r_2exp (mpz_ptr, mpz_srcptr, mp_bitcnt_t);


 unsigned long int __gmpz_fdiv_r_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 unsigned long int __gmpz_fdiv_ui (mpz_srcptr, unsigned long int) ; // __attribute__ ((__pure__));


 void __gmpz_fib_ui (mpz_ptr, unsigned long int);


 void __gmpz_fib2_ui (mpz_ptr, mpz_ptr, unsigned long int);


 int __gmpz_fits_sint_p (mpz_srcptr) ; // __attribute__ ((__pure__));


 int __gmpz_fits_slong_p (mpz_srcptr) ; // __attribute__ ((__pure__));


 int __gmpz_fits_sshort_p (mpz_srcptr) ; // __attribute__ ((__pure__));



 int __gmpz_fits_uint_p (mpz_srcptr) ; // __attribute__ ((__pure__));




 int __gmpz_fits_ulong_p (mpz_srcptr) ; // __attribute__ ((__pure__));




 int __gmpz_fits_ushort_p (mpz_srcptr) ; // __attribute__ ((__pure__));



 void __gmpz_gcd (mpz_ptr, mpz_srcptr, mpz_srcptr);


 unsigned long int __gmpz_gcd_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_gcdext (mpz_ptr, mpz_ptr, mpz_ptr, mpz_srcptr, mpz_srcptr);


 double __gmpz_get_d (mpz_srcptr) ; // __attribute__ ((__pure__));


 double __gmpz_get_d_2exp (signed long int *, mpz_srcptr);


 long int __gmpz_get_si (mpz_srcptr) ; // __attribute__ ((__pure__));


 char *__gmpz_get_str (char *, int, mpz_srcptr);



 unsigned long int __gmpz_get_ui (mpz_srcptr) ; // __attribute__ ((__pure__));




 mp_limb_t __gmpz_getlimbn (mpz_srcptr, mp_size_t) ; // __attribute__ ((__pure__));



 mp_bitcnt_t __gmpz_hamdist (mpz_srcptr, mpz_srcptr) ; // __attribute__ ((__pure__));


 void __gmpz_import (mpz_ptr, size_t, int, size_t, int, size_t, const void *);


 void __gmpz_init (mpz_ptr);


 void __gmpz_init2 (mpz_ptr, mp_bitcnt_t);


 void __gmpz_inits (mpz_ptr, ...);


 void __gmpz_init_set (mpz_ptr, mpz_srcptr);


 void __gmpz_init_set_d (mpz_ptr, double);


 void __gmpz_init_set_si (mpz_ptr, signed long int);


 int __gmpz_init_set_str (mpz_ptr, const char *, int);


 void __gmpz_init_set_ui (mpz_ptr, unsigned long int);



 size_t __gmpz_inp_raw (mpz_ptr, FILE *);




 size_t __gmpz_inp_str (mpz_ptr, FILE *, int);



 int __gmpz_invert (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_ior (mpz_ptr, mpz_srcptr, mpz_srcptr);


 int __gmpz_jacobi (mpz_srcptr, mpz_srcptr) ; // __attribute__ ((__pure__));




 int __gmpz_kronecker_si (mpz_srcptr, long) ; // __attribute__ ((__pure__));


 int __gmpz_kronecker_ui (mpz_srcptr, unsigned long) ; // __attribute__ ((__pure__));


 int __gmpz_si_kronecker (long, mpz_srcptr) ; // __attribute__ ((__pure__));


 int __gmpz_ui_kronecker (unsigned long, mpz_srcptr) ; // __attribute__ ((__pure__));


 void __gmpz_lcm (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_lcm_ui (mpz_ptr, mpz_srcptr, unsigned long);




 void __gmpz_lucnum_ui (mpz_ptr, unsigned long int);


 void __gmpz_lucnum2_ui (mpz_ptr, mpz_ptr, unsigned long int);


 int __gmpz_millerrabin (mpz_srcptr, int) ; // __attribute__ ((__pure__));


 void __gmpz_mod (mpz_ptr, mpz_srcptr, mpz_srcptr);




 void __gmpz_mul (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_mul_2exp (mpz_ptr, mpz_srcptr, mp_bitcnt_t);


 void __gmpz_mul_si (mpz_ptr, mpz_srcptr, long int);


 void __gmpz_mul_ui (mpz_ptr, mpz_srcptr, unsigned long int);



 void __gmpz_neg (mpz_ptr, mpz_srcptr);



 void __gmpz_nextprime (mpz_ptr, mpz_srcptr);



 size_t __gmpz_out_raw (FILE *, mpz_srcptr);




 size_t __gmpz_out_str (FILE *, int, mpz_srcptr);



 int __gmpz_perfect_power_p (mpz_srcptr) ; // __attribute__ ((__pure__));



 int __gmpz_perfect_square_p (mpz_srcptr) ; // __attribute__ ((__pure__));




 mp_bitcnt_t __gmpz_popcount (mpz_srcptr) ; // __attribute__ ((__pure__));



 void __gmpz_pow_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_powm (mpz_ptr, mpz_srcptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_powm_sec (mpz_ptr, mpz_srcptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_powm_ui (mpz_ptr, mpz_srcptr, unsigned long int, mpz_srcptr);


 int __gmpz_probab_prime_p (mpz_srcptr, int) ; // __attribute__ ((__pure__));


 void __gmpz_random (mpz_ptr, mp_size_t);


 void __gmpz_random2 (mpz_ptr, mp_size_t);


 void __gmpz_realloc2 (mpz_ptr, mp_bitcnt_t);


 unsigned long int __gmpz_remove (mpz_ptr, mpz_srcptr, mpz_srcptr);


 int __gmpz_root (mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_rootrem (mpz_ptr,mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_rrandomb (mpz_ptr, gmp_randstate_t, mp_bitcnt_t);


 mp_bitcnt_t __gmpz_scan0 (mpz_srcptr, mp_bitcnt_t) ; // __attribute__ ((__pure__));


 mp_bitcnt_t __gmpz_scan1 (mpz_srcptr, mp_bitcnt_t) ; // __attribute__ ((__pure__));


 void __gmpz_set (mpz_ptr, mpz_srcptr);


 void __gmpz_set_d (mpz_ptr, double);


 void __gmpz_set_f (mpz_ptr, mpf_srcptr);



 void __gmpz_set_q (mpz_ptr, mpq_srcptr);



 void __gmpz_set_si (mpz_ptr, signed long int);


 int __gmpz_set_str (mpz_ptr, const char *, int);


 void __gmpz_set_ui (mpz_ptr, unsigned long int);


 void __gmpz_setbit (mpz_ptr, mp_bitcnt_t);



 size_t __gmpz_size (mpz_srcptr) ; // __attribute__ ((__pure__));



 size_t __gmpz_sizeinbase (mpz_srcptr, int) ; // __attribute__ ((__pure__));


 void __gmpz_sqrt (mpz_ptr, mpz_srcptr);


 void __gmpz_sqrtrem (mpz_ptr, mpz_ptr, mpz_srcptr);


 void __gmpz_sub (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_sub_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_ui_sub (mpz_ptr, unsigned long int, mpz_srcptr);


 void __gmpz_submul (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_submul_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_swap (mpz_ptr, mpz_ptr) ;


 unsigned long int __gmpz_tdiv_ui (mpz_srcptr, unsigned long int) ; // __attribute__ ((__pure__));


 void __gmpz_tdiv_q (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_tdiv_q_2exp (mpz_ptr, mpz_srcptr, mp_bitcnt_t);


 unsigned long int __gmpz_tdiv_q_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_tdiv_qr (mpz_ptr, mpz_ptr, mpz_srcptr, mpz_srcptr);


 unsigned long int __gmpz_tdiv_qr_ui (mpz_ptr, mpz_ptr, mpz_srcptr, unsigned long int);


 void __gmpz_tdiv_r (mpz_ptr, mpz_srcptr, mpz_srcptr);


 void __gmpz_tdiv_r_2exp (mpz_ptr, mpz_srcptr, mp_bitcnt_t);


 unsigned long int __gmpz_tdiv_r_ui (mpz_ptr, mpz_srcptr, unsigned long int);


 int __gmpz_tstbit (mpz_srcptr, mp_bitcnt_t) ; // __attribute__ ((__pure__));


 void __gmpz_ui_pow_ui (mpz_ptr, unsigned long int, unsigned long int);


 void __gmpz_urandomb (mpz_ptr, gmp_randstate_t, mp_bitcnt_t);


 void __gmpz_urandomm (mpz_ptr, gmp_randstate_t, mpz_srcptr);



 void __gmpz_xor (mpz_ptr, mpz_srcptr, mpz_srcptr);






 void __gmpq_abs (mpq_ptr, mpq_srcptr);



 void __gmpq_add (mpq_ptr, mpq_srcptr, mpq_srcptr);


 void __gmpq_canonicalize (mpq_ptr);


 void __gmpq_clear (mpq_ptr);


 void __gmpq_clears (mpq_ptr, ...);


 int __gmpq_cmp (mpq_srcptr, mpq_srcptr) ; // __attribute__ ((__pure__));


 int __gmpq_cmp_si (mpq_srcptr, long, unsigned long) ; // __attribute__ ((__pure__));


 int __gmpq_cmp_ui (mpq_srcptr, unsigned long int, unsigned long int) ; // __attribute__ ((__pure__));


 void __gmpq_div (mpq_ptr, mpq_srcptr, mpq_srcptr);


 void __gmpq_div_2exp (mpq_ptr, mpq_srcptr, mp_bitcnt_t);


 int __gmpq_equal (mpq_srcptr, mpq_srcptr) ; // __attribute__ ((__pure__));


 void __gmpq_get_num (mpz_ptr, mpq_srcptr);


 void __gmpq_get_den (mpz_ptr, mpq_srcptr);


 double __gmpq_get_d (mpq_srcptr) ; // __attribute__ ((__pure__));


 char *__gmpq_get_str (char *, int, mpq_srcptr);


 void __gmpq_init (mpq_ptr);


 void __gmpq_inits (mpq_ptr, ...);



 size_t __gmpq_inp_str (mpq_ptr, FILE *, int);



 void __gmpq_inv (mpq_ptr, mpq_srcptr);


 void __gmpq_mul (mpq_ptr, mpq_srcptr, mpq_srcptr);


 void __gmpq_mul_2exp (mpq_ptr, mpq_srcptr, mp_bitcnt_t);



 void __gmpq_neg (mpq_ptr, mpq_srcptr);




 size_t __gmpq_out_str (FILE *, int, mpq_srcptr);



 void __gmpq_set (mpq_ptr, mpq_srcptr);


 void __gmpq_set_d (mpq_ptr, double);


 void __gmpq_set_den (mpq_ptr, mpz_srcptr);


 void __gmpq_set_f (mpq_ptr, mpf_srcptr);


 void __gmpq_set_num (mpq_ptr, mpz_srcptr);


 void __gmpq_set_si (mpq_ptr, signed long int, unsigned long int);


 int __gmpq_set_str (mpq_ptr, const char *, int);


 void __gmpq_set_ui (mpq_ptr, unsigned long int, unsigned long int);


 void __gmpq_set_z (mpq_ptr, mpz_srcptr);


 void __gmpq_sub (mpq_ptr, mpq_srcptr, mpq_srcptr);


 void __gmpq_swap (mpq_ptr, mpq_ptr) ;





 void __gmpf_abs (mpf_ptr, mpf_srcptr);


 void __gmpf_add (mpf_ptr, mpf_srcptr, mpf_srcptr);


 void __gmpf_add_ui (mpf_ptr, mpf_srcptr, unsigned long int);

 void __gmpf_ceil (mpf_ptr, mpf_srcptr);


 void __gmpf_clear (mpf_ptr);


 void __gmpf_clears (mpf_ptr, ...);


 int __gmpf_cmp (mpf_srcptr, mpf_srcptr) ; // __attribute__ ((__pure__));


 int __gmpf_cmp_d (mpf_srcptr, double) ; // __attribute__ ((__pure__));


 int __gmpf_cmp_si (mpf_srcptr, signed long int) ; // __attribute__ ((__pure__));


 int __gmpf_cmp_ui (mpf_srcptr, unsigned long int) ; // __attribute__ ((__pure__));


 void __gmpf_div (mpf_ptr, mpf_srcptr, mpf_srcptr);


 void __gmpf_div_2exp (mpf_ptr, mpf_srcptr, mp_bitcnt_t);


 void __gmpf_div_ui (mpf_ptr, mpf_srcptr, unsigned long int);


 void __gmpf_dump (mpf_srcptr);


 int __gmpf_eq (mpf_srcptr, mpf_srcptr, unsigned long int) ; // __attribute__ ((__pure__));


 int __gmpf_fits_sint_p (mpf_srcptr) ; // __attribute__ ((__pure__));


 int __gmpf_fits_slong_p (mpf_srcptr) ; // __attribute__ ((__pure__));


 int __gmpf_fits_sshort_p (mpf_srcptr) ; // __attribute__ ((__pure__));


 int __gmpf_fits_uint_p (mpf_srcptr) ; // __attribute__ ((__pure__));


 int __gmpf_fits_ulong_p (mpf_srcptr) ; // __attribute__ ((__pure__));


 int __gmpf_fits_ushort_p (mpf_srcptr) ; // __attribute__ ((__pure__));


 void __gmpf_floor (mpf_ptr, mpf_srcptr);


 double __gmpf_get_d (mpf_srcptr) ; // __attribute__ ((__pure__));


 double __gmpf_get_d_2exp (signed long int *, mpf_srcptr);


 mp_bitcnt_t __gmpf_get_default_prec (void) ; // __attribute__ ((__pure__));


 mp_bitcnt_t __gmpf_get_prec (mpf_srcptr) ; // __attribute__ ((__pure__));


 long __gmpf_get_si (mpf_srcptr) ; // __attribute__ ((__pure__));


 char *__gmpf_get_str (char *, mp_exp_t *, int, size_t, mpf_srcptr);


 unsigned long __gmpf_get_ui (mpf_srcptr) ; // __attribute__ ((__pure__));


 void __gmpf_init (mpf_ptr);


 void __gmpf_init2 (mpf_ptr, mp_bitcnt_t);


 void __gmpf_inits (mpf_ptr, ...);


 void __gmpf_init_set (mpf_ptr, mpf_srcptr);


 void __gmpf_init_set_d (mpf_ptr, double);


 void __gmpf_init_set_si (mpf_ptr, signed long int);


 int __gmpf_init_set_str (mpf_ptr, const char *, int);


 void __gmpf_init_set_ui (mpf_ptr, unsigned long int);



 size_t __gmpf_inp_str (mpf_ptr, FILE *, int);



 int __gmpf_integer_p (mpf_srcptr) ; // __attribute__ ((__pure__));


 void __gmpf_mul (mpf_ptr, mpf_srcptr, mpf_srcptr);


 void __gmpf_mul_2exp (mpf_ptr, mpf_srcptr, mp_bitcnt_t);


 void __gmpf_mul_ui (mpf_ptr, mpf_srcptr, unsigned long int);


 void __gmpf_neg (mpf_ptr, mpf_srcptr);



 size_t __gmpf_out_str (FILE *, int, size_t, mpf_srcptr);



 void __gmpf_pow_ui (mpf_ptr, mpf_srcptr, unsigned long int);


 void __gmpf_random2 (mpf_ptr, mp_size_t, mp_exp_t);


 void __gmpf_reldiff (mpf_ptr, mpf_srcptr, mpf_srcptr);


 void __gmpf_set (mpf_ptr, mpf_srcptr);


 void __gmpf_set_d (mpf_ptr, double);


 void __gmpf_set_default_prec (mp_bitcnt_t) ;


 void __gmpf_set_prec (mpf_ptr, mp_bitcnt_t);


 void __gmpf_set_prec_raw (mpf_ptr, mp_bitcnt_t) ;


 void __gmpf_set_q (mpf_ptr, mpq_srcptr);


 void __gmpf_set_si (mpf_ptr, signed long int);


 int __gmpf_set_str (mpf_ptr, const char *, int);


 void __gmpf_set_ui (mpf_ptr, unsigned long int);


 void __gmpf_set_z (mpf_ptr, mpz_srcptr);


 size_t __gmpf_size (mpf_srcptr) ; // __attribute__ ((__pure__));


 void __gmpf_sqrt (mpf_ptr, mpf_srcptr);


 void __gmpf_sqrt_ui (mpf_ptr, unsigned long int);


 void __gmpf_sub (mpf_ptr, mpf_srcptr, mpf_srcptr);


 void __gmpf_sub_ui (mpf_ptr, mpf_srcptr, unsigned long int);


 void __gmpf_swap (mpf_ptr, mpf_ptr) ;


 void __gmpf_trunc (mpf_ptr, mpf_srcptr);


 void __gmpf_ui_div (mpf_ptr, unsigned long int, mpf_srcptr);


 void __gmpf_ui_sub (mpf_ptr, unsigned long int, mpf_srcptr);


 void __gmpf_urandomb (mpf_t, gmp_randstate_t, mp_bitcnt_t);
# 1501 "/usr/include/gmp-i386.h" 3 4
 mp_limb_t __gmpn_add (mp_ptr, mp_srcptr, mp_size_t, mp_srcptr,mp_size_t);




 mp_limb_t __gmpn_add_1 (mp_ptr, mp_srcptr, mp_size_t, mp_limb_t) ;



 mp_limb_t __gmpn_add_n (mp_ptr, mp_srcptr, mp_srcptr, mp_size_t);


 mp_limb_t __gmpn_addmul_1 (mp_ptr, mp_srcptr, mp_size_t, mp_limb_t);



 int __gmpn_cmp (mp_srcptr, mp_srcptr, mp_size_t) ; // __attribute__ ((__pure__));






 mp_limb_t __gmpn_divexact_by3c (mp_ptr, mp_srcptr, mp_size_t, mp_limb_t);





 mp_limb_t __gmpn_divrem (mp_ptr, mp_size_t, mp_ptr, mp_size_t, mp_srcptr, mp_size_t);


 mp_limb_t __gmpn_divrem_1 (mp_ptr, mp_size_t, mp_srcptr, mp_size_t, mp_limb_t);


 mp_limb_t __gmpn_divrem_2 (mp_ptr, mp_size_t, mp_ptr, mp_size_t, mp_srcptr);


 mp_size_t __gmpn_gcd (mp_ptr, mp_ptr, mp_size_t, mp_ptr, mp_size_t);


 mp_limb_t __gmpn_gcd_1 (mp_srcptr, mp_size_t, mp_limb_t) ; // __attribute__ ((__pure__));


 mp_limb_t __gmpn_gcdext_1 (mp_limb_signed_t *, mp_limb_signed_t *, mp_limb_t, mp_limb_t);


 mp_size_t __gmpn_gcdext (mp_ptr, mp_ptr, mp_size_t *, mp_ptr, mp_size_t, mp_ptr, mp_size_t);


 size_t __gmpn_get_str (unsigned char *, int, mp_ptr, mp_size_t);


 mp_bitcnt_t __gmpn_hamdist (mp_srcptr, mp_srcptr, mp_size_t) ; // __attribute__ ((__pure__));


 mp_limb_t __gmpn_lshift (mp_ptr, mp_srcptr, mp_size_t, unsigned int);


 mp_limb_t __gmpn_mod_1 (mp_srcptr, mp_size_t, mp_limb_t) ; // __attribute__ ((__pure__));


 mp_limb_t __gmpn_mul (mp_ptr, mp_srcptr, mp_size_t, mp_srcptr, mp_size_t);


 mp_limb_t __gmpn_mul_1 (mp_ptr, mp_srcptr, mp_size_t, mp_limb_t);


 void __gmpn_mul_n (mp_ptr, mp_srcptr, mp_srcptr, mp_size_t);


 void __gmpn_sqr (mp_ptr, mp_srcptr, mp_size_t);



 mp_limb_t __gmpn_neg (mp_ptr, mp_srcptr, mp_size_t);




 void __gmpn_com (mp_ptr, mp_srcptr, mp_size_t);



 int __gmpn_perfect_square_p (mp_srcptr, mp_size_t) ; // __attribute__ ((__pure__));


 int __gmpn_perfect_power_p (mp_srcptr, mp_size_t) ; // __attribute__ ((__pure__));


 mp_bitcnt_t __gmpn_popcount (mp_srcptr, mp_size_t) ; // __attribute__ ((__pure__));


 mp_size_t __gmpn_pow_1 (mp_ptr, mp_srcptr, mp_size_t, mp_limb_t, mp_ptr);



 mp_limb_t __gmpn_preinv_mod_1 (mp_srcptr, mp_size_t, mp_limb_t, mp_limb_t) ; // __attribute__ ((__pure__));


 void __gmpn_random (mp_ptr, mp_size_t);


 void __gmpn_random2 (mp_ptr, mp_size_t);


 mp_limb_t __gmpn_rshift (mp_ptr, mp_srcptr, mp_size_t, unsigned int);


 mp_bitcnt_t __gmpn_scan0 (mp_srcptr, mp_bitcnt_t) ; // __attribute__ ((__pure__));


 mp_bitcnt_t __gmpn_scan1 (mp_srcptr, mp_bitcnt_t) ; // __attribute__ ((__pure__));


 mp_size_t __gmpn_set_str (mp_ptr, const unsigned char *, size_t, int);


 mp_size_t __gmpn_sqrtrem (mp_ptr, mp_ptr, mp_srcptr, mp_size_t);



 mp_limb_t __gmpn_sub (mp_ptr, mp_srcptr, mp_size_t, mp_srcptr,mp_size_t);




 mp_limb_t __gmpn_sub_1 (mp_ptr, mp_srcptr, mp_size_t, mp_limb_t) ;



 mp_limb_t __gmpn_sub_n (mp_ptr, mp_srcptr, mp_srcptr, mp_size_t);


 mp_limb_t __gmpn_submul_1 (mp_ptr, mp_srcptr, mp_size_t, mp_limb_t);


 void __gmpn_tdiv_qr (mp_ptr, mp_ptr, mp_size_t, mp_srcptr, mp_size_t, mp_srcptr, mp_size_t);


 void __gmpn_and_n (mp_ptr, mp_srcptr, mp_srcptr, mp_size_t);

 void __gmpn_andn_n (mp_ptr, mp_srcptr, mp_srcptr, mp_size_t);

 void __gmpn_nand_n (mp_ptr, mp_srcptr, mp_srcptr, mp_size_t);

 void __gmpn_ior_n (mp_ptr, mp_srcptr, mp_srcptr, mp_size_t);

 void __gmpn_iorn_n (mp_ptr, mp_srcptr, mp_srcptr, mp_size_t);

 void __gmpn_nior_n (mp_ptr, mp_srcptr, mp_srcptr, mp_size_t);

 void __gmpn_xor_n (mp_ptr, mp_srcptr, mp_srcptr, mp_size_t);

 void __gmpn_xnor_n (mp_ptr, mp_srcptr, mp_srcptr, mp_size_t);


 void __gmpn_copyi (mp_ptr, mp_srcptr, mp_size_t);

 void __gmpn_copyd (mp_ptr, mp_srcptr, mp_size_t);

 void __gmpn_zero (mp_ptr, mp_size_t);
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/double-int.h" 2
# 54 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/double-int.h"
typedef struct
{
  unsigned long long low;
  long long high;
} double_int;
# 67 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/double-int.h"
static double_int
shwi_to_double_int (long long cst)
{
  double_int r;

  r.low = (unsigned long long) cst;
  r.high = cst < 0 ? -1 : 0;

  return r;
}
# 89 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/double-int.h"
static double_int
uhwi_to_double_int (unsigned long long cst)
{
  double_int r;

  r.low = cst;
  r.high = 0;

  return r;
}




static long long
double_int_to_shwi (double_int cst)
{
  return (long long) cst.low;
}




static unsigned long long
double_int_to_uhwi (double_int cst)
{
  return cst.low;
}

unsigned char double_int_fits_in_hwi_p (double_int, unsigned char);
unsigned char double_int_fits_in_shwi_p (double_int);



static unsigned char
double_int_fits_in_uhwi_p (double_int cst)
{
  return cst.high == 0;
}






double_int double_int_mul (double_int, double_int);
double_int double_int_mul_with_sign (double_int, double_int, unsigned char, int *);
double_int double_int_add (double_int, double_int);
double_int double_int_sub (double_int, double_int);
double_int double_int_neg (double_int);




double_int double_int_div (double_int, double_int, unsigned char, unsigned);
double_int double_int_sdiv (double_int, double_int, unsigned);
double_int double_int_udiv (double_int, double_int, unsigned);
double_int double_int_mod (double_int, double_int, unsigned char, unsigned);
double_int double_int_smod (double_int, double_int, unsigned);
double_int double_int_umod (double_int, double_int, unsigned);
double_int double_int_divmod (double_int, double_int, unsigned char, unsigned, double_int *);
double_int double_int_sdivmod (double_int, double_int, unsigned, double_int *);
double_int double_int_udivmod (double_int, double_int, unsigned, double_int *);

double_int double_int_setbit (double_int, unsigned);
int double_int_ctz (double_int);





static double_int
double_int_not (double_int a)
{
  a.low = ~a.low;
  a.high = ~a.high;
  return a;
}



static double_int
double_int_ior (double_int a, double_int b)
{
  a.low |= b.low;
  a.high |= b.high;
  return a;
}



static double_int
double_int_and (double_int a, double_int b)
{
  a.low &= b.low;
  a.high &= b.high;
  return a;
}



static double_int
double_int_and_not (double_int a, double_int b)
{
  a.low &= ~b.low;
  a.high &= ~b.high;
  return a;
}



static double_int
double_int_xor (double_int a, double_int b)
{
  a.low ^= b.low;
  a.high ^= b.high;
  return a;
}



double_int double_int_lshift (double_int, long long, unsigned int, unsigned char);
double_int double_int_rshift (double_int, long long, unsigned int, unsigned char);
double_int double_int_lrotate (double_int, long long, unsigned int);
double_int double_int_rrotate (double_int, long long, unsigned int);




static unsigned char
double_int_negative_p (double_int cst)
{
  return cst.high < 0;
}

int double_int_cmp (double_int, double_int, unsigned char);
int double_int_scmp (double_int, double_int);
int double_int_ucmp (double_int, double_int);

double_int double_int_max (double_int, double_int, unsigned char);
double_int double_int_smax (double_int, double_int);
double_int double_int_umax (double_int, double_int);

double_int double_int_min (double_int, double_int, unsigned char);
double_int double_int_smin (double_int, double_int);
double_int double_int_umin (double_int, double_int);

void dump_double_int (FILE *, double_int, unsigned char);



double_int double_int_ext (double_int, unsigned, unsigned char);
double_int double_int_sext (double_int, unsigned);
double_int double_int_zext (double_int, unsigned);
double_int double_int_mask (unsigned);
# 253 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/double-int.h"
static unsigned char
double_int_zero_p (double_int cst)
{
  return cst.low == 0 && cst.high == 0;
}



static unsigned char
double_int_one_p (double_int cst)
{
  return cst.low == 1 && cst.high == 0;
}



static unsigned char
double_int_minus_one_p (double_int cst)
{
  return (cst.low == (~((unsigned long long) 0)) && cst.high == -1);
}



static unsigned char
double_int_equal_p (double_int cst1, double_int cst2)
{
  return cst1.low == cst2.low && cst1.high == cst2.high;
}




extern int add_double_with_sign (unsigned long long, long long,
     unsigned long long, long long,
     unsigned long long *, long long *,
     unsigned char);


extern int neg_double (unsigned long long, long long,
         unsigned long long *, long long *);
extern int mul_double_with_sign (unsigned long long, long long,
     unsigned long long, long long,
     unsigned long long *, long long *,
     unsigned char);


extern void lshift_double (unsigned long long, long long,
      long long, unsigned int,
      unsigned long long *, long long *, unsigned char);
extern void rshift_double (unsigned long long, long long,
      long long, unsigned int,
      unsigned long long *, long long *, unsigned char);
extern int div_and_round_double (unsigned, int, unsigned long long,
     long long, unsigned long long,
     long long, unsigned long long *,
     long long *, unsigned long long *,
     long long *);





void mpz_set_double_int (mpz_t, double_int, unsigned char);
double_int mpz_get_double_int (const_tree, mpz_t, unsigned char);
# 32 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/real.h" 1
# 30 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/real.h"
enum real_value_class {
  rvc_zero,
  rvc_normal,
  rvc_inf,
  rvc_nan
};







struct real_value {



  unsigned int cl : 2;
  unsigned int decimal : 1;
  unsigned int sign : 1;
  unsigned int signalling : 1;
  unsigned int canonical : 1;
  unsigned int uexp : (32 - 6);
  unsigned long sig[((128 + (8 * 4)) / (8 * 4))];
};
# 77 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/real.h"
extern char test_real_width
  [sizeof(struct real_value) <= (((128 + (8 * 4)) + 32)/(8 * 8) + (((128 + (8 * 4)) + 32)%(8 * 8) ? 1 : 0))*sizeof(long long) ? 1 : -1];
# 115 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/real.h"
struct real_format
{

  void (*encode) (const struct real_format *, long *,
    const struct real_value *);
  void (*decode) (const struct real_format *, struct real_value *,
    const long *);


  int b;


  int p;


  int pnan;


  int emin;


  int emax;



  int signbit_ro;



  int signbit_rw;


  unsigned char round_towards_zero;
  unsigned char has_sign_dependent_rounding;


  unsigned char has_nans;
  unsigned char has_inf;
  unsigned char has_denorm;
  unsigned char has_signed_zero;
  unsigned char qnan_msb_set;
  unsigned char canonical_nan_lsbs_set;
};







extern const struct real_format *
  real_format_for_mode[MAX_MODE_FLOAT - MIN_MODE_FLOAT + 1
         + MAX_MODE_DECIMAL_FLOAT - MIN_MODE_DECIMAL_FLOAT + 1];
# 226 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/real.h"
extern unsigned char real_arithmetic (struct real_value *, int, const struct real_value *,
        const struct real_value *);


extern unsigned char real_compare (int, const struct real_value *, const struct real_value *);


extern unsigned char real_isinf (const struct real_value *);


extern unsigned char real_isnan (const struct real_value *);


extern unsigned char real_isfinite (const struct real_value *);


extern unsigned char real_isneg (const struct real_value *);


extern unsigned char real_isnegzero (const struct real_value *);


extern unsigned char real_identical (const struct real_value *, const struct real_value *);


extern void real_convert (struct real_value *, enum machine_mode,
     const struct real_value *);


extern unsigned char exact_real_truncate (enum machine_mode, const struct real_value *);


extern void real_to_decimal (char *, const struct real_value *, size_t,
        size_t, int);



extern void real_to_decimal_for_mode (char *, const struct real_value *, size_t,
          size_t, int, enum machine_mode);


extern void real_to_hexadecimal (char *, const struct real_value *,
     size_t, size_t, int);


extern long long real_to_integer (const struct real_value *);
extern void real_to_integer2 (long long *, long long *,
         const struct real_value *);



extern int real_from_string (struct real_value *, const char *);

extern void real_from_string3 (struct real_value *, const char *, enum machine_mode);


extern void real_from_integer (struct real_value *, enum machine_mode,
          unsigned long long, long long, int);

extern long real_to_target_fmt (long *, const struct real_value *,
    const struct real_format *);
extern long real_to_target (long *, const struct real_value *, enum machine_mode);

extern void real_from_target_fmt (struct real_value *, const long *,
      const struct real_format *);
extern void real_from_target (struct real_value *, const long *,
         enum machine_mode);

extern void real_inf (struct real_value *);

extern unsigned char real_nan (struct real_value *, const char *, int, enum machine_mode);

extern void real_maxval (struct real_value *, int, enum machine_mode);

extern void real_2expN (struct real_value *, int, enum machine_mode);

extern unsigned int real_hash (const struct real_value *);



extern const struct real_format ieee_single_format;
extern const struct real_format mips_single_format;
extern const struct real_format motorola_single_format;
extern const struct real_format spu_single_format;
extern const struct real_format ieee_double_format;
extern const struct real_format mips_double_format;
extern const struct real_format motorola_double_format;
extern const struct real_format ieee_extended_motorola_format;
extern const struct real_format ieee_extended_intel_96_format;
extern const struct real_format ieee_extended_intel_96_round_53_format;
extern const struct real_format ieee_extended_intel_128_format;
extern const struct real_format ibm_extended_format;
extern const struct real_format mips_extended_format;
extern const struct real_format ieee_quad_format;
extern const struct real_format mips_quad_format;
extern const struct real_format vax_f_format;
extern const struct real_format vax_d_format;
extern const struct real_format vax_g_format;
extern const struct real_format real_internal_format;
extern const struct real_format decimal_single_format;
extern const struct real_format decimal_double_format;
extern const struct real_format decimal_quad_format;
extern const struct real_format ieee_half_format;
extern const struct real_format arm_half_format;
# 385 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/real.h"
extern struct real_value real_value_truncate (enum machine_mode,
         struct real_value);




extern struct real_value real_value_negate (const struct real_value *);
extern struct real_value real_value_abs (const struct real_value *);

extern int significand_size (enum machine_mode);

extern struct real_value real_from_string2 (const char *, enum machine_mode);
# 414 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/real.h"
extern int real_exponent (const struct real_value *);


extern void real_ldexp (struct real_value *, const struct real_value *, int);





extern struct real_value dconst0;
extern struct real_value dconst1;
extern struct real_value dconst2;
extern struct real_value dconstm1;
extern struct real_value dconsthalf;






extern const struct real_value * dconst_e_ptr (void);


extern const struct real_value * dconst_third_ptr (void);


extern const struct real_value * dconst_sqrt2_ptr (void);



struct real_value real_value_from_int_cst (const_tree, const_tree);
# 453 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/real.h"
extern rtx const_double_from_real_value (struct real_value, enum machine_mode);


extern unsigned char exact_real_inverse (enum machine_mode, struct real_value *);




unsigned char real_can_shorten_arithmetic (enum machine_mode, enum machine_mode);


extern tree build_real (tree, struct real_value);


extern unsigned char real_sqrt (struct real_value *, enum machine_mode,
         const struct real_value *);


extern unsigned char real_powi (struct real_value *, enum machine_mode,
         const struct real_value *, long long);


extern void real_trunc (struct real_value *, enum machine_mode,
   const struct real_value *);
extern void real_floor (struct real_value *, enum machine_mode,
   const struct real_value *);
extern void real_ceil (struct real_value *, enum machine_mode,
         const struct real_value *);
extern void real_round (struct real_value *, enum machine_mode,
   const struct real_value *);


extern void real_copysign (struct real_value *, const struct real_value *);


extern unsigned char real_isinteger (const struct real_value *c, enum machine_mode mode);




extern void get_max_float (const struct real_format *, char *, size_t);
# 33 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/fixed-value.h" 1
# 27 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/fixed-value.h"
struct fixed_value
{
  double_int data;
  enum machine_mode mode;
};
# 40 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/fixed-value.h"
extern struct fixed_value fconst0[18];
extern struct fixed_value fconst1[8];
# 50 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/fixed-value.h"
extern rtx const_fixed_from_fixed_value (struct fixed_value, enum machine_mode);


extern void fixed_from_string (struct fixed_value *, const char *,
          enum machine_mode);


extern tree build_fixed (tree, struct fixed_value);


extern unsigned char fixed_convert (struct fixed_value *, enum machine_mode,
      const struct fixed_value *, unsigned char);


extern unsigned char fixed_convert_from_int (struct fixed_value *, enum machine_mode,
        double_int, unsigned char, unsigned char);


extern unsigned char fixed_convert_from_real (struct fixed_value *, enum machine_mode,
         const struct real_value *, unsigned char);


extern void real_convert_from_fixed (struct real_value *, enum machine_mode,
         const struct fixed_value *);


extern unsigned char fixed_identical (const struct fixed_value *, const struct fixed_value *);


extern unsigned int fixed_hash (const struct fixed_value *);







extern void fixed_to_decimal (char *str, const struct fixed_value *, size_t);


extern unsigned char fixed_arithmetic (struct fixed_value *, int, const struct fixed_value *,
         const struct fixed_value *, unsigned char);


extern unsigned char fixed_compare (int, const struct fixed_value *,
      const struct fixed_value *);


extern unsigned char fixed_isneg (const struct fixed_value *);
# 34 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/alias.h" 1
# 31 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/alias.h"
typedef int alias_set_type;

extern alias_set_type new_alias_set (void);
extern alias_set_type get_alias_set (tree);
extern alias_set_type get_deref_alias_set (tree);
extern alias_set_type get_varargs_alias_set (void);
extern alias_set_type get_frame_alias_set (void);
extern unsigned char component_uses_parent_alias_set (const_tree);
extern unsigned char alias_set_subset_of (alias_set_type, alias_set_type);
extern void record_alias_subset (alias_set_type, alias_set_type);
extern void record_component_aliases (tree);
extern int alias_sets_conflict_p (alias_set_type, alias_set_type);
extern int alias_sets_must_conflict_p (alias_set_type, alias_set_type);
extern int objects_must_conflict_p (tree, tree);
extern int nonoverlapping_memrefs_p (const_rtx, const_rtx, unsigned char);
# 35 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/flags.h" 1
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/flags.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/flag-types.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/flag-types.h"
enum debug_info_type
{
  NO_DEBUG,
  DBX_DEBUG,
  SDB_DEBUG,
  DWARF2_DEBUG,
  XCOFF_DEBUG,
  VMS_DEBUG,
  VMS_AND_DWARF2_DEBUG

};

enum debug_info_levels
{
  DINFO_LEVEL_NONE,
  DINFO_LEVEL_TERSE,
  DINFO_LEVEL_NORMAL,
  DINFO_LEVEL_VERBOSE
};
# 53 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/flag-types.h"
enum debug_info_usage
{
  DINFO_USAGE_DFN,
  DINFO_USAGE_DIR_USE,
  DINFO_USAGE_IND_USE,
  DINFO_USAGE_NUM_ENUMS
};
# 86 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/flag-types.h"
enum debug_struct_file
{
  DINFO_STRUCT_FILE_NONE,
  DINFO_STRUCT_FILE_BASE,

  DINFO_STRUCT_FILE_SYS,

  DINFO_STRUCT_FILE_ANY
};





enum symbol_visibility
{
  VISIBILITY_DEFAULT,
  VISIBILITY_PROTECTED,
  VISIBILITY_HIDDEN,
  VISIBILITY_INTERNAL
};



enum ira_algorithm
{
  IRA_ALGORITHM_CB,
  IRA_ALGORITHM_PRIORITY
};


enum ira_region
{
  IRA_REGION_ONE,
  IRA_REGION_ALL,
  IRA_REGION_MIXED
};


enum excess_precision
{
  EXCESS_PRECISION_DEFAULT,
  EXCESS_PRECISION_FAST,
  EXCESS_PRECISION_STANDARD
};


enum graph_dump_types
{
  no_graph = 0,
  vcg
};


enum stack_check_type
{

  NO_STACK_CHECK = 0,



  GENERIC_STACK_CHECK,




  STATIC_BUILTIN_STACK_CHECK,



  FULL_BUILTIN_STACK_CHECK
};




enum warn_strict_overflow_code
{



  WARN_STRICT_OVERFLOW_ALL = 1,




  WARN_STRICT_OVERFLOW_CONDITIONAL = 2,


  WARN_STRICT_OVERFLOW_COMPARISON = 3,


  WARN_STRICT_OVERFLOW_MISC = 4,


  WARN_STRICT_OVERFLOW_MAGNITUDE = 5
};


enum fp_contract_mode {
  FP_CONTRACT_OFF = 0,
  FP_CONTRACT_ON = 1,
  FP_CONTRACT_FAST = 2
};


enum vect_verbosity_levels {
  REPORT_NONE,
  REPORT_VECTORIZED_LOCATIONS,
  REPORT_UNVECTORIZED_LOCATIONS,
  REPORT_COST,
  REPORT_ALIGNMENT,
  REPORT_DR_DETAILS,
  REPORT_BAD_FORM_LOOPS,
  REPORT_OUTER_LOOPS,
  REPORT_SLP,
  REPORT_DETAILS,

  MAX_VERBOSITY_LEVEL
};
# 27 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/flags.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/options.h" 1
# 11 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/options.h"
struct gcc_options



{




  long long x_frame_larger_than_size;





  long long x_larger_than_size;





  unsigned char x_exit_after_options;





  unsigned char x_flag_dump_all_passed;





  unsigned char x_flag_opts_finished;





  unsigned char x_flag_warn_unused_result;





  unsigned char x_use_gnu_debug_info_extensions;





  unsigned char x_warn_frame_larger_than;





  unsigned char x_warn_larger_than;





  char * x_help_enum_printed;





  char * x_help_printed;





  const char * x_main_input_basename;





  const char * x_main_input_filename;





  enum debug_info_levels x_debug_info_level;





  enum debug_info_type x_write_symbols;





  enum debug_struct_file x_debug_struct_generic[DINFO_USAGE_NUM_ENUMS];





  enum debug_struct_file x_debug_struct_ordinary[DINFO_USAGE_NUM_ENUMS];





  enum graph_dump_types x_graph_dump_format;





  enum stack_check_type x_flag_stack_check;





  enum vect_verbosity_levels x_user_vect_verbosity_level;





  int * x_param_values;





  int x_flag_complex_method;





  int x_flag_debug_asm;





  int x_flag_dump_rtl_in_asm;





  int x_flag_evaluation_order;





  int x_flag_gen_aux_info;





  int x_flag_generate_lto;





  int x_flag_print_asm_name;





  int x_flag_shlib;





  int x_ix86_isa_flags;





  int x_main_input_baselength;





  int x_optimize;





  int x_optimize_fast;





  int x_optimize_size;





  int x_rtl_dump_and_exit;





  int x_target_flags;





  unsigned int x_help_columns;





  unsigned int x_initial_max_fld_align;





  void * x_flag_instrument_functions_exclude_files;





  void * x_flag_instrument_functions_exclude_functions;





  int x_help_flag;





  int x_flag_preprocess_only;





  int x_warn_abi;





  int x_warn_address;





  int x_warn_aggregate_return;





  int x_warn_array_bounds;





  int x_warn_assign_intercept;





  int x_warn_attributes;





  int x_warn_bad_function_cast;





  int x_warn_cxx_compat;





  int x_warn_cxx0x_compat;





  int x_warn_cast_align;





  int x_warn_cast_qual;





  int x_warn_char_subscripts;





  int x_warn_clobbered;





  int x_warn_conversion;





  int x_warn_conversion_null;





  int x_warn_coverage_mismatch;





  int x_warn_cpp;





  int x_warn_ctor_dtor_privacy;





  int x_warn_declaration_after_statement;





  int x_warn_deprecated;





  int x_warn_deprecated_decl;





  int x_warn_disabled_optimization;





  int x_warn_div_by_zero;





  int x_warn_double_promotion;





  int x_warn_ecpp;





  int x_warn_empty_body;





  int x_warn_enum_compare;





  int x_warnings_are_errors;





  int x_extra_warnings;





  int x_flag_extraneous_semicolon;





  int x_flag_fatal_errors;





  int x_warn_float_equal;





  int x_warn_format_contains_nul;





  int x_warn_format_extra_args;





  int x_warn_format_nonliteral;





  int x_warn_format_security;





  int x_warn_format_y2k;





  int x_warn_format_zero_length;





  int x_warn_ignored_qualifiers;





  int x_warn_implicit;





  int x_warn_implicit_function_declaration;





  int x_warn_implicit_int;





  int x_warn_init_self;





  int x_warn_inline;





  int x_warn_int_to_pointer_cast;





  int x_warn_invalid_offsetof;





  int x_warn_jump_misses_init;





  int x_warn_logical_op;





  int x_warn_long_long;





  int x_warn_main;





  int x_warn_missing_braces;





  int x_warn_missing_declarations;





  int x_warn_missing_field_initializers;





  int x_warn_missing_format_attribute;





  int x_warn_missing_noreturn;





  int x_warn_missing_parameter_type;





  int x_warn_missing_prototypes;





  int x_warn_mudflap;





  int x_warn_nested_externs;





  int x_warn_noexcept;





  int x_warn_nontemplate_friend;





  int x_warn_nonvdtor;





  int x_warn_nonnull;





  int x_warn_old_style_cast;





  int x_warn_old_style_declaration;





  int x_warn_old_style_definition;





  int x_flag_newer;





  int x_warn_overflow;





  int x_warn_overlength_strings;





  int x_warn_overloaded_virtual;





  int x_warn_override_init;





  int x_warn_packed;





  int x_warn_packed_bitfield_compat;





  int x_warn_padded;





  int x_warn_parentheses;





  int x_warn_pmf2ptr;





  int x_warn_pointer_arith;





  int x_warn_pointer_sign;





  int x_warn_pointer_to_int_cast;





  int x_warn_pragmas;





  int x_warn_property_assign_default;





  int x_warn_protocol;





  int x_warn_psabi;





  int x_warn_redundant_decls;





  int x_flag_redundant;





  int x_warn_reorder;





  int x_warn_return_type;





  int x_warn_selector;





  int x_warn_sequence_point;





  int x_warn_shadow;





  int x_warn_sign_compare;





  int x_warn_sign_conversion;





  int x_warn_sign_promo;





  int x_warn_stack_protect;





  int x_warn_strict_aliasing;





  int x_warn_strict_null_sentinel;





  int x_warn_strict_overflow;





  int x_warn_strict_prototypes;





  int x_warn_strict_selector_match;





  int x_warn_suggest_attribute_const;





  int x_warn_suggest_attribute_noreturn;





  int x_warn_suggest_attribute_pure;





  int x_warn_switch;





  int x_warn_switch_default;





  int x_warn_switch_enum;





  int x_warn_sync_nand;





  int x_warn_synth;





  int x_warn_system_headers;





  int x_warn_traditional;





  int x_warn_traditional_conversion;





  int x_warn_trampolines;





  int x_warn_type_limits;





  int x_warn_undeclared_selector;





  int x_warn_uninitialized;





  int x_warn_unsafe_loop_optimizations;





  int x_warn_unsuffixed_float_constants;





  int x_warn_unused;





  int x_warn_unused_but_set_parameter;





  int x_warn_unused_but_set_variable;





  int x_warn_unused_function;





  int x_warn_unused_label;





  int x_warn_unused_parameter;





  int x_warn_unused_result;





  int x_warn_unused_value;





  int x_warn_unused_variable;





  int x_warn_vla;





  int x_warn_volatile_register_var;





  int x_warn_write_strings;





  const char *x_aux_info_file_name;





  const char *x_aux_base_name;





  const char *x_dump_base_name;





  const char *x_dump_dir_name;





  int x_flag_pic;





  int x_flag_pie;





  int x_flag_abi_version;





  int x_flag_access_control;





  int x_align_functions;





  int x_align_jumps;





  int x_align_labels;





  int x_align_loops;





  int x_flag_no_asm;





  int x_flag_assert;





  int x_flag_associative_math;





  int x_flag_asynchronous_unwind_tables;





  int x_flag_auto_inc_dec;





  int x_flag_bootstrap_classes;





  int x_flag_bounds_check;





  int x_flag_branch_on_count_reg;





  int x_flag_branch_probabilities;





  int x_flag_branch_target_load_optimize;





  int x_flag_branch_target_load_optimize2;





  int x_flag_btr_bb_exclusive;





  int x_flag_no_builtin;





  void *x_common_deferred_options;





  int x_flag_caller_saves;





  int x_flag_check_data_deps;





  int x_flag_check_new;





  int x_flag_check_references;





  int x_flag_combine_stack_adjustments;





  int x_flag_no_common;





  int x_flag_compare_debug;





  const char *x_flag_compare_debug_opt;





  int x_flag_compare_elim_after_reload;





  int x_flag_conserve_space;





  int x_flag_conserve_stack;





  int x_max_constexpr_depth;





  int x_flag_cprop_registers;





  int x_flag_crossjumping;





  int x_flag_cse_follow_jumps;





  int x_flag_cx_fortran_rules;





  int x_flag_cx_limited_range;





  int x_flag_data_sections;





  int x_flag_dce;





  int x_flag_deduce_init_list;





  int x_flag_defer_pop;





  int x_flag_delayed_branch;





  int x_flag_delete_null_pointer_checks;





  int x_flag_devirtualize;





  int x_flag_diagnostics_show_option;





  int x_flag_dse;





  const char *x_flag_dump_final_insns;





  const char *x_flag_dump_go_spec;





  int x_flag_dump_noaddr;





  int x_flag_dump_unnumbered;





  int x_flag_dump_unnumbered_links;





  int x_flag_dwarf2_cfi_asm;





  int x_flag_early_inlining;





  int x_flag_elide_constructors;





  int x_flag_eliminate_dwarf2_dups;





  int x_flag_debug_only_used_symbols;





  int x_flag_eliminate_unused_debug_types;





  int x_flag_emit_class_debug_always;





  int x_flag_emit_class_files;





  int x_flag_enable_icf_debug;





  int x_flag_enforce_eh_specs;





  int x_flag_exceptions;





  enum excess_precision x_flag_excess_precision_cmdline;





  int x_flag_expensive_optimizations;





  int x_flag_filelist_file;





  int x_flag_finite_math_only;





  int x_flag_float_store;





  int x_flag_new_for_scope;





  int x_flag_force_classes_archive_check;





  int x_flag_forward_propagate;





  enum fp_contract_mode x_flag_fp_contract_mode;





  int x_flag_friend_injection;





  int x_flag_no_function_cse;





  int x_flag_function_sections;





  int x_flag_gcse;





  int x_flag_gcse_after_reload;





  int x_flag_gcse_las;





  int x_flag_gcse_lm;





  int x_flag_gcse_sm;





  int x_flag_no_gnu_keywords;





  int x_flag_gnu89_inline;





  int x_flag_graphite;





  int x_flag_graphite_identity;





  int x_flag_guess_branch_prob;





  int x_flag_hash_synchronization;





  int x_flag_no_ident;





  int x_flag_if_conversion;





  int x_flag_if_conversion2;





  int x_flag_implement_inlines;





  int x_flag_implicit_inline_templates;





  int x_flag_implicit_templates;





  int x_flag_indirect_classes;





  int x_flag_indirect_dispatch;





  int x_flag_indirect_inlining;





  int x_flag_inhibit_size_directive;





  int x_flag_no_inline;





  int x_flag_inline_functions;





  int x_flag_inline_functions_called_once;





  int x_flag_inline_small_functions;





  int x_flag_instrument_function_entry_exit;





  int x_flag_ipa_cp;





  int x_flag_ipa_cp_clone;





  int x_flag_ipa_matrix_reorg;





  int x_flag_ipa_profile;





  int x_flag_ipa_pta;





  int x_flag_ipa_pure_const;





  int x_flag_ipa_reference;





  int x_flag_ipa_sra;





  int x_flag_ipa_struct_reorg;





  enum ira_algorithm x_flag_ira_algorithm;





  int x_flag_ira_loop_pressure;





  enum ira_region x_flag_ira_region;





  int x_flag_ira_share_save_slots;





  int x_flag_ira_share_spill_slots;





  int x_flag_ira_verbose;





  int x_flag_ivopts;





  int x_flag_jni;





  int x_flag_jump_tables;





  int x_flag_keep_inline_dllexport;





  int x_flag_keep_inline_functions;





  int x_flag_keep_static_consts;





  int x_flag_lax_vector_conversions;





  int x_flag_leading_underscore;





  int x_flag_loop_block;





  int x_flag_loop_flatten;





  int x_flag_loop_interchange;





  int x_flag_loop_parallelize_all;





  int x_flag_loop_strip_mine;





  int x_flag_lto_compression_level;





  int x_flag_lto_partition_1to1;





  int x_flag_lto_partition_balanced;





  int x_flag_lto_partition_none;





  int x_flag_lto_report;





  const char *x_flag_lto;





  int x_flag_ltrans;





  const char *x_ltrans_output_list;





  int x_flag_errno_math;





  int x_flag_max_errors;





  int x_mem_report;





  int x_flag_merge_constants;





  int x_flag_merge_debug_strings;





  int x_flag_modulo_sched;





  int x_flag_modulo_sched_allow_regmoves;





  int x_flag_move_loop_invariants;





  int x_flag_ms_extensions;





  int x_flag_mudflap;





  int x_flag_mudflap_ignore_reads;





  int x_flag_nil_receivers;





  int x_flag_non_call_exceptions;





  int x_flag_no_nonansi_builtin;





  int x_flag_nothrow_opt;





  int x_flag_objc_abi;





  int x_flag_objc_call_cxx_cdtors;





  int x_flag_objc_direct_dispatch;





  int x_flag_objc_exceptions;





  int x_flag_objc_gc;





  int x_flag_objc_nilcheck;





  int x_flag_objc_sjlj_exceptions;





  int x_flag_objc1_only;





  int x_flag_omit_frame_pointer;





  int x_flag_openmp;





  int x_flag_regmove;





  int x_flag_optimize_sibling_calls;





  int x_flag_optimize_sci;





  int x_flag_pack_struct;





  int x_flag_partial_inlining;





  int x_flag_pcc_struct_return;





  int x_flag_peel_loops;





  int x_flag_no_peephole;





  int x_flag_peephole2;





  int x_flag_plan9_extensions;





  int x_post_ipa_mem_report;





  int x_pre_ipa_mem_report;





  int x_flag_predictive_commoning;





  int x_flag_prefetch_loop_arrays;





  int x_flag_pretty_templates;





  int x_profile_flag;





  int x_profile_arc_flag;





  int x_flag_profile_correction;





  const char *x_profile_data_prefix;





  int x_flag_profile_use;





  int x_flag_profile_values;





  int x_flag_reciprocal_math;





  int x_flag_record_gcc_switches;





  int x_flag_reduced_reflection;





  int x_flag_rename_registers;





  int x_flag_reorder_blocks;





  int x_flag_reorder_blocks_and_partition;





  int x_flag_reorder_functions;





  int x_flag_replace_objc_classes;





  int x_go_require_return_statement;





  int x_flag_rerun_cse_after_loop;





  int x_flag_resched_modulo_sched;





  int x_flag_rounding_math;





  int x_flag_rtti;





  int x_flag_sched_critical_path_heuristic;





  int x_flag_sched_dep_count_heuristic;





  int x_flag_sched_group_heuristic;





  int x_flag_schedule_interblock;





  int x_flag_sched_last_insn_heuristic;





  int x_flag_sched_pressure;





  int x_flag_sched_rank_heuristic;





  int x_flag_schedule_speculative;





  int x_flag_sched_spec_insn_heuristic;





  int x_flag_schedule_speculative_load;





  int x_flag_schedule_speculative_load_dangerous;





  int x_flag_sched_stalled_insns;





  int x_flag_sched_stalled_insns_dep;





  int x_sched_verbose_param;





  int x_flag_sched2_use_superblocks;





  int x_flag_schedule_insns;





  int x_flag_schedule_insns_after_reload;





  int x_flag_section_anchors;





  int x_flag_sel_sched_pipelining;





  int x_flag_sel_sched_pipelining_outer_loops;





  int x_flag_sel_sched_reschedule_pipelined;





  int x_flag_selective_scheduling;





  int x_flag_selective_scheduling2;





  int x_flag_short_double;





  int x_flag_short_enums;





  int x_flag_short_wchar;





  int x_flag_show_column;





  int x_flag_signaling_nans;





  int x_flag_signed_bitfields;





  int x_flag_signed_char;





  int x_flag_signed_zeros;





  int x_flag_single_precision_constant;





  int x_flag_split_ivs_in_unroller;





  int x_flag_split_stack;





  int x_flag_split_wide_types;





  int x_flag_stack_protect;





  int x_flag_stack_usage;





  int x_flag_detailed_statistics;





  int x_flag_store_check;





  int x_flag_strict_aliasing;





  int x_flag_strict_enums;





  int x_flag_strict_overflow;





  int x_flag_strict_volatile_bitfields;





  int x_flag_syntax_only;





  int x_flag_test_coverage;





  int x_flag_thread_jumps;





  int x_flag_threadsafe_statics;





  int x_time_report;





  enum tls_model x_flag_tls_default;





  int x_flag_toplevel_reorder;





  int x_flag_tracer;





  int x_flag_trapping_math;





  int x_flag_trapv;





  int x_flag_tree_bit_ccp;





  int x_flag_tree_builtin_call_dce;





  int x_flag_tree_ccp;





  int x_flag_tree_ch;





  int x_flag_tree_copy_prop;





  int x_flag_tree_copyrename;





  int x_flag_tree_cselim;





  int x_flag_tree_dce;





  int x_flag_tree_dom;





  int x_flag_tree_dse;





  int x_flag_tree_forwprop;





  int x_flag_tree_fre;





  int x_flag_tree_loop_distribute_patterns;





  int x_flag_tree_loop_distribution;





  int x_flag_tree_loop_if_convert;





  int x_flag_tree_loop_if_convert_stores;





  int x_flag_tree_loop_im;





  int x_flag_tree_loop_ivcanon;





  int x_flag_tree_loop_optimize;





  int x_flag_tree_live_range_split;





  int x_flag_tree_parallelize_loops;





  int x_flag_tree_phiprop;





  int x_flag_tree_pre;





  int x_flag_tree_pta;





  int x_flag_tree_reassoc;





  int x_flag_tree_scev_cprop;





  int x_flag_tree_sink;





  int x_flag_tree_slp_vectorize;





  int x_flag_tree_sra;





  int x_flag_tree_switch_conversion;





  int x_flag_tree_ter;





  int x_flag_tree_vect_loop_version;





  int x_flag_tree_vectorize;





  int x_flag_tree_vrp;





  int x_flag_unit_at_a_time;





  int x_flag_unroll_all_loops;





  int x_flag_unroll_loops;





  int x_flag_unsafe_loop_optimizations;





  int x_flag_unsafe_math_optimizations;





  int x_flag_unswitch_loops;





  int x_flag_unwind_tables;





  int x_flag_use_atomic_builtins;





  int x_flag_use_boehm_gc;





  int x_flag_use_cxa_atexit;





  int x_flag_use_cxa_get_exception_ptr;





  int x_flag_use_divide_subroutine;





  int x_flag_var_tracking;





  int x_flag_var_tracking_assignments;





  int x_flag_var_tracking_assignments_toggle;





  int x_flag_var_tracking_uninit;





  int x_flag_variable_expansion_in_unroller;





  int x_flag_vect_cost_model;





  int x_flag_verbose_asm;





  int x_flag_visibility_ms_compat;





  enum symbol_visibility x_default_visibility;





  int x_flag_value_profile_transformations;





  int x_flag_weak;





  int x_flag_web;





  int x_flag_whole_program;





  int x_flag_working_directory;





  int x_flag_wpa;





  int x_flag_wrapv;





  int x_flag_zee;





  int x_flag_zero_initialized_in_bss;





  int x_flag_zero_link;





  int x_dwarf_version;





  int x_flag_gen_declaration;





  int x_dwarf_strict;





  int x_flag_gtoggle;





  const char *x_imultiarch;





  const char *x_plugindir_string;





  const char *x_ix86_abi_string;





  const char *x_ix86_align_funcs_string;





  const char *x_ix86_align_jumps_string;





  const char *x_ix86_align_loops_string;





  int x_flag_android;





  const char *x_ix86_arch_string;





  const char *x_ix86_asm_string;





  int x_linux_libc;





  const char *x_ix86_branch_cost_string;





  const char *x_ix86_cmodel_string;





  int x_flag_dispatch_scheduler;





  int x_flag_fentry;





  int x_ix86_force_drap;





  const char *x_ix86_fpmath_string;





  const char *x_ix86_incoming_stack_boundary_string;





  const char *x_ix86_section_threshold_string;





  const char *x_ix87_precision_string;





  const char *x_ix86_preferred_stack_boundary_string;





  const char *x_ix86_regparm_string;





  int x_ix86_sse2avx;





  int x_ix86_force_align_arg_pointer;





  const char *x_ix86_stringop_string;





  const char *x_ix86_tls_dialect_string;





  const char *x_ix86_tune_string;





  const char *x_ix86_veclibabi_string;





  const char *x_asm_file_name;





  int x_pass_exit_codes;





  int x_pedantic;





  int x_flag_pedantic_errors;





  int x_use_pipes;





  const char *x_print_file_name;





  int x_print_multi_directory;





  int x_print_multi_lib;





  int x_print_multi_os_directory;





  int x_print_multiarch;





  const char *x_print_prog_name;





  int x_print_search_dirs;





  int x_print_sysroot;





  int x_print_sysroot_headers_suffix;





  int x_quiet_flag;





  int x_report_times;





  int x_flag_undef;





  int x_verbose_flag;





  int x_version_flag;





  int x_inhibit_warnings;





  const char *x_wrapper_string;



  unsigned char frontend_set_flag_associative_math;


  unsigned char frontend_set_flag_cx_limited_range;


  unsigned char frontend_set_flag_finite_math_only;


  unsigned char frontend_set_flag_errno_math;


  unsigned char frontend_set_flag_reciprocal_math;


  unsigned char frontend_set_flag_rounding_math;


  unsigned char frontend_set_flag_signaling_nans;


  unsigned char frontend_set_flag_signed_zeros;


  unsigned char frontend_set_flag_trapping_math;


  unsigned char frontend_set_flag_unsafe_math_optimizations;


};
extern struct gcc_options global_options;
extern const struct gcc_options global_options_init;
extern struct gcc_options global_options_set;







struct cl_optimization
{
  int x_align_functions;
  int x_align_jumps;
  int x_align_labels;
  int x_align_loops;
  int x_flag_sched_stalled_insns;
  int x_flag_sched_stalled_insns_dep;
  enum fp_contract_mode x_flag_fp_contract_mode;
  unsigned char x_optimize;
  unsigned char x_optimize_size;
  signed char x_flag_asynchronous_unwind_tables;
  signed char x_flag_branch_on_count_reg;
  signed char x_flag_branch_probabilities;
  signed char x_flag_branch_target_load_optimize;
  signed char x_flag_branch_target_load_optimize2;
  signed char x_flag_btr_bb_exclusive;
  signed char x_flag_caller_saves;
  signed char x_flag_combine_stack_adjustments;
  signed char x_flag_no_common;
  signed char x_flag_compare_elim_after_reload;
  signed char x_flag_conserve_stack;
  signed char x_flag_cprop_registers;
  signed char x_flag_crossjumping;
  signed char x_flag_cse_follow_jumps;
  signed char x_flag_cx_fortran_rules;
  signed char x_flag_cx_limited_range;
  signed char x_flag_data_sections;
  signed char x_flag_dce;
  signed char x_flag_defer_pop;
  signed char x_flag_delayed_branch;
  signed char x_flag_delete_null_pointer_checks;
  signed char x_flag_devirtualize;
  signed char x_flag_dse;
  signed char x_flag_early_inlining;
  signed char x_flag_exceptions;
  signed char x_flag_expensive_optimizations;
  signed char x_flag_finite_math_only;
  signed char x_flag_float_store;
  signed char x_flag_forward_propagate;
  signed char x_flag_gcse;
  signed char x_flag_gcse_after_reload;
  signed char x_flag_gcse_las;
  signed char x_flag_gcse_lm;
  signed char x_flag_gcse_sm;
  signed char x_flag_graphite_identity;
  signed char x_flag_guess_branch_prob;
  signed char x_flag_if_conversion;
  signed char x_flag_if_conversion2;
  signed char x_flag_inline_functions;
  signed char x_flag_inline_functions_called_once;
  signed char x_flag_inline_small_functions;
  signed char x_flag_ipa_cp;
  signed char x_flag_ipa_cp_clone;
  signed char x_flag_ipa_matrix_reorg;
  signed char x_flag_ipa_profile;
  signed char x_flag_ipa_pta;
  signed char x_flag_ipa_pure_const;
  signed char x_flag_ipa_reference;
  signed char x_flag_ipa_sra;
  signed char x_flag_ivopts;
  signed char x_flag_jump_tables;
  signed char x_flag_loop_block;
  signed char x_flag_loop_flatten;
  signed char x_flag_loop_interchange;
  signed char x_flag_loop_parallelize_all;
  signed char x_flag_loop_strip_mine;
  signed char x_flag_lto_report;
  signed char x_flag_ltrans;
  signed char x_flag_errno_math;
  signed char x_flag_merge_constants;
  signed char x_flag_modulo_sched;
  signed char x_flag_move_loop_invariants;
  signed char x_flag_non_call_exceptions;
  signed char x_flag_nothrow_opt;
  signed char x_flag_omit_frame_pointer;
  signed char x_flag_regmove;
  signed char x_flag_optimize_sibling_calls;
  signed char x_flag_pack_struct;
  signed char x_flag_peel_loops;
  signed char x_flag_no_peephole;
  signed char x_flag_peephole2;
  signed char x_flag_predictive_commoning;
  signed char x_flag_prefetch_loop_arrays;
  signed char x_flag_pcc_struct_return;
  signed char x_flag_rename_registers;
  signed char x_flag_reorder_blocks;
  signed char x_flag_reorder_blocks_and_partition;
  signed char x_flag_reorder_functions;
  signed char x_flag_rerun_cse_after_loop;
  signed char x_flag_resched_modulo_sched;
  signed char x_flag_rounding_math;
  signed char x_flag_rtti;
  signed char x_flag_sched_critical_path_heuristic;
  signed char x_flag_sched_dep_count_heuristic;
  signed char x_flag_sched_group_heuristic;
  signed char x_flag_schedule_interblock;
  signed char x_flag_sched_last_insn_heuristic;
  signed char x_flag_sched_pressure;
  signed char x_flag_sched_rank_heuristic;
  signed char x_flag_schedule_speculative;
  signed char x_flag_sched_spec_insn_heuristic;
  signed char x_flag_schedule_speculative_load;
  signed char x_flag_schedule_speculative_load_dangerous;
  signed char x_flag_sched2_use_superblocks;
  signed char x_flag_schedule_insns;
  signed char x_flag_schedule_insns_after_reload;
  signed char x_flag_section_anchors;
  signed char x_flag_sel_sched_pipelining;
  signed char x_flag_sel_sched_pipelining_outer_loops;
  signed char x_flag_sel_sched_reschedule_pipelined;
  signed char x_flag_selective_scheduling;
  signed char x_flag_selective_scheduling2;
  signed char x_flag_short_double;
  signed char x_flag_short_enums;
  signed char x_flag_short_wchar;
  signed char x_flag_signaling_nans;
  signed char x_flag_signed_zeros;
  signed char x_flag_single_precision_constant;
  signed char x_flag_split_ivs_in_unroller;
  signed char x_flag_split_wide_types;
  signed char x_flag_strict_aliasing;
  signed char x_flag_strict_enums;
  signed char x_flag_thread_jumps;
  signed char x_flag_threadsafe_statics;
  signed char x_flag_toplevel_reorder;
  signed char x_flag_trapping_math;
  signed char x_flag_trapv;
  signed char x_flag_tree_bit_ccp;
  signed char x_flag_tree_builtin_call_dce;
  signed char x_flag_tree_ccp;
  signed char x_flag_tree_ch;
  signed char x_flag_tree_copy_prop;
  signed char x_flag_tree_copyrename;
  signed char x_flag_tree_cselim;
  signed char x_flag_tree_dce;
  signed char x_flag_tree_dom;
  signed char x_flag_tree_dse;
  signed char x_flag_tree_forwprop;
  signed char x_flag_tree_fre;
  signed char x_flag_tree_loop_distribute_patterns;
  signed char x_flag_tree_loop_distribution;
  signed char x_flag_tree_loop_if_convert;
  signed char x_flag_tree_loop_if_convert_stores;
  signed char x_flag_tree_loop_im;
  signed char x_flag_tree_loop_ivcanon;
  signed char x_flag_tree_loop_optimize;
  signed char x_flag_tree_live_range_split;
  signed char x_flag_tree_phiprop;
  signed char x_flag_tree_pre;
  signed char x_flag_tree_pta;
  signed char x_flag_tree_reassoc;
  signed char x_flag_tree_scev_cprop;
  signed char x_flag_tree_sink;
  signed char x_flag_tree_slp_vectorize;
  signed char x_flag_tree_sra;
  signed char x_flag_tree_switch_conversion;
  signed char x_flag_tree_ter;
  signed char x_flag_tree_vect_loop_version;
  signed char x_flag_tree_vectorize;
  signed char x_flag_tree_vrp;
  signed char x_flag_unit_at_a_time;
  signed char x_flag_unroll_all_loops;
  signed char x_flag_unroll_loops;
  signed char x_flag_unsafe_loop_optimizations;
  signed char x_flag_unsafe_math_optimizations;
  signed char x_flag_unswitch_loops;
  signed char x_flag_unwind_tables;
  signed char x_flag_var_tracking;
  signed char x_flag_var_tracking_assignments;
  signed char x_flag_var_tracking_assignments_toggle;
  signed char x_flag_var_tracking_uninit;
  signed char x_flag_variable_expansion_in_unroller;
  signed char x_flag_vect_cost_model;
  signed char x_flag_value_profile_transformations;
  signed char x_flag_web;
  signed char x_flag_whole_program;
  signed char x_flag_wpa;
  signed char x_flag_wrapv;
};


struct cl_target_option
{
  int ix86_isa_flags_explicit;
  int ix86_target_flags_explicit;
  int x_target_flags;
  int x_ix86_isa_flags;
  unsigned char arch;
  unsigned char arch_specified;
  unsigned char branch_cost;
  unsigned char fpmath;
  unsigned char schedule;
  unsigned char tune;
  unsigned char tune_defaulted;
};



extern void cl_optimization_save (struct cl_optimization *, struct gcc_options *);


extern void cl_optimization_restore (struct gcc_options *, struct cl_optimization *);


extern void cl_optimization_print (FILE *, int, struct cl_optimization *);


extern void cl_target_option_save (struct cl_target_option *, struct gcc_options *);


extern void cl_target_option_restore (struct gcc_options *, struct cl_target_option *);


extern void cl_target_option_print (FILE *, int, struct cl_target_option *);
# 3652 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/options.h"
enum opt_code
{
  OPT____ = 0,
# 3686 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/options.h"
  OPT__help = 32,
  OPT__help_ = 33,
# 3719 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/options.h"
  OPT__output_pch_ = 65,

  OPT__param = 67,
# 3754 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/options.h"
  OPT__sysroot_ = 100,
  OPT__target_help = 101,
# 3765 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/options.h"
  OPT__version = 111,


  OPT_A = 114,
  OPT_B = 115,
  OPT_C = 116,
  OPT_CC = 117,

  OPT_D = 119,
  OPT_E = 120,
  OPT_F = 121,
  OPT_H = 122,
  OPT_I = 123,
  OPT_J = 124,
  OPT_L = 125,
  OPT_M = 126,
  OPT_MD = 127,
  OPT_MD_ = 128,
  OPT_MF = 129,
  OPT_MG = 130,
  OPT_MM = 131,
  OPT_MMD = 132,
  OPT_MMD_ = 133,
  OPT_MP = 134,
  OPT_MQ = 135,
  OPT_MT = 136,
  OPT_N = 137,
  OPT_O = 138,
  OPT_Ofast = 139,
  OPT_Os = 140,
  OPT_P = 141,
  OPT_Q = 142,
  OPT_Qn = 143,
  OPT_Qy = 144,
  OPT_R = 145,
  OPT_S = 146,
  OPT_T = 147,
  OPT_Tbss = 148,
  OPT_Tbss_ = 149,
  OPT_Tdata = 150,
  OPT_Tdata_ = 151,
  OPT_Ttext = 152,
  OPT_Ttext_ = 153,
  OPT_U = 154,

  OPT_Wa_ = 156,
  OPT_Wabi = 157,
  OPT_Waddress = 158,
  OPT_Waggregate_return = 159,
  OPT_Waliasing = 160,
  OPT_Walign_commons = 161,
  OPT_Wall = 162,
  OPT_Wall_deprecation = 163,
  OPT_Wall_javadoc = 164,
  OPT_Wampersand = 165,
  OPT_Warray_bounds = 166,
  OPT_Warray_temporaries = 167,
  OPT_Wassert_identifier = 168,
  OPT_Wassign_intercept = 169,
  OPT_Wattributes = 170,
  OPT_Wbad_function_cast = 171,
  OPT_Wboxing = 172,
  OPT_Wbuiltin_macro_redefined = 173,
  OPT_Wc___compat = 174,
  OPT_Wc__0x_compat = 175,
  OPT_Wcast_align = 176,
  OPT_Wcast_qual = 177,
  OPT_Wchar_concat = 178,
  OPT_Wchar_subscripts = 179,
  OPT_Wcharacter_truncation = 180,
  OPT_Wclobbered = 181,
  OPT_Wcomment = 182,

  OPT_Wcondition_assign = 184,
  OPT_Wconstructor_name = 185,
  OPT_Wconversion = 186,
  OPT_Wconversion_extra = 187,
  OPT_Wconversion_null = 188,
  OPT_Wcoverage_mismatch = 189,
  OPT_Wcpp = 190,
  OPT_Wctor_dtor_privacy = 191,
  OPT_Wdeclaration_after_statement = 192,
  OPT_Wdep_ann = 193,
  OPT_Wdeprecated = 194,
  OPT_Wdeprecated_declarations = 195,
  OPT_Wdisabled_optimization = 196,
  OPT_Wdiscouraged = 197,
  OPT_Wdiv_by_zero = 198,
  OPT_Wdouble_promotion = 199,
  OPT_Weffc__ = 200,
  OPT_Wempty_block = 201,
  OPT_Wempty_body = 202,
  OPT_Wendif_labels = 203,
  OPT_Wenum_compare = 204,
  OPT_Wenum_identifier = 205,
  OPT_Wenum_switch = 206,
  OPT_Werror = 207,

  OPT_Werror_ = 209,
  OPT_Wextra = 210,
  OPT_Wextraneous_semicolon = 211,
  OPT_Wfallthrough = 212,
  OPT_Wfatal_errors = 213,
  OPT_Wfield_hiding = 214,
  OPT_Wfinal_bound = 215,
  OPT_Wfinally = 216,
  OPT_Wfloat_equal = 217,
  OPT_Wforbidden = 218,
  OPT_Wformat = 219,
  OPT_Wformat_contains_nul = 220,
  OPT_Wformat_extra_args = 221,
  OPT_Wformat_nonliteral = 222,
  OPT_Wformat_security = 223,
  OPT_Wformat_y2k = 224,
  OPT_Wformat_zero_length = 225,
  OPT_Wformat_ = 226,
  OPT_Wframe_larger_than_ = 227,
  OPT_Whiding = 228,
  OPT_Wignored_qualifiers = 229,
  OPT_Wimplicit = 230,
  OPT_Wimplicit_function_declaration = 231,
  OPT_Wimplicit_int = 232,
  OPT_Wimplicit_interface = 233,
  OPT_Wimplicit_procedure = 234,

  OPT_Windirect_static = 236,
  OPT_Winit_self = 237,
  OPT_Winline = 238,
  OPT_Wint_to_pointer_cast = 239,
  OPT_Wintf_annotation = 240,
  OPT_Wintf_non_inherited = 241,
  OPT_Wintrinsic_shadow = 242,
  OPT_Wintrinsics_std = 243,
  OPT_Winvalid_offsetof = 244,
  OPT_Winvalid_pch = 245,
  OPT_Wjavadoc = 246,
  OPT_Wjump_misses_init = 247,
  OPT_Wl_ = 248,

  OPT_Wlarger_than_ = 250,
  OPT_Wline_truncation = 251,
  OPT_Wlocal_hiding = 252,
  OPT_Wlogical_op = 253,
  OPT_Wlong_long = 254,
  OPT_Wmain = 255,
  OPT_Wmasked_catch_block = 256,
  OPT_Wmissing_braces = 257,
  OPT_Wmissing_declarations = 258,
  OPT_Wmissing_field_initializers = 259,
  OPT_Wmissing_format_attribute = 260,
  OPT_Wmissing_include_dirs = 261,
  OPT_Wmissing_noreturn = 262,
  OPT_Wmissing_parameter_type = 263,
  OPT_Wmissing_prototypes = 264,
  OPT_Wmudflap = 265,
  OPT_Wmultichar = 266,
  OPT_Wnested_externs = 267,
  OPT_Wnls = 268,
  OPT_Wno_effect_assign = 269,
  OPT_Wnoexcept = 270,
  OPT_Wnon_template_friend = 271,
  OPT_Wnon_virtual_dtor = 272,
  OPT_Wnonnull = 273,
  OPT_Wnormalized_ = 274,
  OPT_Wnull = 275,
  OPT_Wold_style_cast = 276,
  OPT_Wold_style_declaration = 277,
  OPT_Wold_style_definition = 278,
  OPT_Wout_of_date = 279,
  OPT_Wover_ann = 280,
  OPT_Woverflow = 281,
  OPT_Woverlength_strings = 282,
  OPT_Woverloaded_virtual = 283,
  OPT_Woverride_init = 284,
  OPT_Wp_ = 285,
  OPT_Wpacked = 286,
  OPT_Wpacked_bitfield_compat = 287,
  OPT_Wpadded = 288,
  OPT_Wparam_assign = 289,
  OPT_Wparentheses = 290,
  OPT_Wpkg_default_method = 291,
  OPT_Wpmf_conversions = 292,
  OPT_Wpointer_arith = 293,
  OPT_Wpointer_sign = 294,
  OPT_Wpointer_to_int_cast = 295,
  OPT_Wpragmas = 296,
  OPT_Wproperty_assign_default = 297,
  OPT_Wprotocol = 298,
  OPT_Wpsabi = 299,
  OPT_Wraw = 300,
  OPT_Wreal_q_constant = 301,
  OPT_Wredundant_decls = 302,
  OPT_Wredundant_modifiers = 303,
  OPT_Wreorder = 304,
  OPT_Wreturn_type = 305,
  OPT_Wselector = 306,
  OPT_Wsequence_point = 307,
  OPT_Wserial = 308,
  OPT_Wshadow = 309,
  OPT_Wsign_compare = 310,
  OPT_Wsign_conversion = 311,
  OPT_Wsign_promo = 312,
  OPT_Wspecial_param_hiding = 313,
  OPT_Wstack_protector = 314,
  OPT_Wstatic_access = 315,
  OPT_Wstatic_receiver = 316,
  OPT_Wstrict_aliasing = 317,
  OPT_Wstrict_aliasing_ = 318,
  OPT_Wstrict_null_sentinel = 319,
  OPT_Wstrict_overflow = 320,
  OPT_Wstrict_overflow_ = 321,
  OPT_Wstrict_prototypes = 322,
  OPT_Wstrict_selector_match = 323,
  OPT_Wsuggest_attribute_const = 324,
  OPT_Wsuggest_attribute_noreturn = 325,
  OPT_Wsuggest_attribute_pure = 326,
  OPT_Wsuppress = 327,
  OPT_Wsurprising = 328,
  OPT_Wswitch = 329,
  OPT_Wswitch_default = 330,
  OPT_Wswitch_enum = 331,
  OPT_Wsync_nand = 332,
  OPT_Wsynth = 333,
  OPT_Wsynthetic_access = 334,
  OPT_Wsystem_headers = 335,
  OPT_Wtabs = 336,
  OPT_Wtasks = 337,
  OPT_Wtraditional = 338,
  OPT_Wtraditional_conversion = 339,
  OPT_Wtrampolines = 340,
  OPT_Wtrigraphs = 341,
  OPT_Wtype_hiding = 342,
  OPT_Wtype_limits = 343,
  OPT_Wuncheck = 344,
  OPT_Wundeclared_selector = 345,
  OPT_Wundef = 346,
  OPT_Wunderflow = 347,
  OPT_Wuninitialized = 348,
  OPT_Wunknown_pragmas = 349,
  OPT_Wunnecessary_else = 350,
  OPT_Wunqualified_field = 351,

  OPT_Wunsafe_loop_optimizations = 353,
  OPT_Wunsuffixed_float_constants = 354,
  OPT_Wunused = 355,
  OPT_Wunused_argument = 356,
  OPT_Wunused_but_set_parameter = 357,
  OPT_Wunused_but_set_variable = 358,
  OPT_Wunused_dummy_argument = 359,
  OPT_Wunused_function = 360,
  OPT_Wunused_import = 361,
  OPT_Wunused_label = 362,
  OPT_Wunused_local = 363,
  OPT_Wunused_macros = 364,
  OPT_Wunused_parameter = 365,
  OPT_Wunused_private = 366,
  OPT_Wunused_result = 367,
  OPT_Wunused_thrown = 368,
  OPT_Wunused_value = 369,
  OPT_Wunused_variable = 370,
  OPT_Wuseless_type_check = 371,
  OPT_Wvarargs_cast = 372,
  OPT_Wvariadic_macros = 373,
  OPT_Wvla = 374,
  OPT_Wvolatile_register_var = 375,
  OPT_Wwarning_token = 376,
  OPT_Wwrite_strings = 377,
  OPT_Xassembler = 378,
  OPT_Xlinker = 379,
  OPT_Xpreprocessor = 380,
  OPT_Z = 381,
  OPT_ansi = 382,
  OPT_aux_info = 383,

  OPT_auxbase = 385,
  OPT_auxbase_strip = 386,

  OPT_c = 388,

  OPT_coverage = 390,
  OPT_cpp = 391,
  OPT_cpp_ = 392,
  OPT_d = 393,
  OPT_dumpbase = 394,
  OPT_dumpdir = 395,
  OPT_dumpmachine = 396,
  OPT_dumpspecs = 397,
  OPT_dumpversion = 398,
  OPT_e = 399,

  OPT_export_dynamic = 401,
  OPT_extdirs = 402,

  OPT_fPIC = 404,
  OPT_fPIE = 405,
  OPT_fRTS_ = 406,
  OPT_fabi_version_ = 407,
  OPT_faccess_control = 408,
  OPT_falign_commons = 409,
  OPT_falign_functions = 410,
  OPT_falign_functions_ = 411,
  OPT_falign_jumps = 412,
  OPT_falign_jumps_ = 413,
  OPT_falign_labels = 414,
  OPT_falign_labels_ = 415,
  OPT_falign_loops = 416,
  OPT_falign_loops_ = 417,
  OPT_fall_intrinsics = 418,

  OPT_fallow_leading_underscore = 420,





  OPT_fasm = 426,
  OPT_fassert = 427,
  OPT_fassociative_math = 428,
  OPT_fassume_compiled = 429,
  OPT_fassume_compiled_ = 430,
  OPT_fasynchronous_unwind_tables = 431,
  OPT_fauto_inc_dec = 432,
  OPT_fautomatic = 433,
  OPT_faux_classpath = 434,
  OPT_fbackslash = 435,
  OPT_fbacktrace = 436,
  OPT_fblas_matmul_limit_ = 437,
  OPT_fbootclasspath_ = 438,
  OPT_fbootstrap_classes = 439,
  OPT_fbounds_check = 440,
  OPT_fbranch_count_reg = 441,
  OPT_fbranch_probabilities = 442,
  OPT_fbranch_target_load_optimize = 443,
  OPT_fbranch_target_load_optimize2 = 444,
  OPT_fbtr_bb_exclusive = 445,
  OPT_fbuiltin = 446,
  OPT_fbuiltin_ = 447,
  OPT_fcall_saved_ = 448,
  OPT_fcall_used_ = 449,
  OPT_fcaller_saves = 450,
  OPT_fcheck_array_temporaries = 451,
  OPT_fcheck_data_deps = 452,
  OPT_fcheck_new = 453,
  OPT_fcheck_references = 454,
  OPT_fcheck_ = 455,
  OPT_fclasspath_ = 456,
  OPT_fcoarray_ = 457,
  OPT_fcombine_stack_adjustments = 458,
  OPT_fcommon = 459,
  OPT_fcompare_debug = 460,
  OPT_fcompare_debug_second = 461,
  OPT_fcompare_debug_ = 462,
  OPT_fcompare_elim = 463,
  OPT_fcompile_resource_ = 464,
  OPT_fcond_mismatch = 465,
  OPT_fconserve_space = 466,
  OPT_fconserve_stack = 467,
  OPT_fconstant_string_class_ = 468,
  OPT_fconstexpr_depth_ = 469,
  OPT_fconvert_big_endian = 470,
  OPT_fconvert_little_endian = 471,
  OPT_fconvert_native = 472,
  OPT_fconvert_swap = 473,
  OPT_fcprop_registers = 474,
  OPT_fcray_pointer = 475,
  OPT_fcrossjumping = 476,
  OPT_fcse_follow_jumps = 477,

  OPT_fcx_fortran_rules = 479,
  OPT_fcx_limited_range = 480,
  OPT_fd_lines_as_code = 481,
  OPT_fd_lines_as_comments = 482,
  OPT_fdata_sections = 483,
  OPT_fdbg_cnt_list = 484,
  OPT_fdbg_cnt_ = 485,
  OPT_fdce = 486,
  OPT_fdebug_prefix_map_ = 487,
  OPT_fdeduce_init_list = 488,
  OPT_fdefault_double_8 = 489,

  OPT_fdefault_integer_8 = 491,
  OPT_fdefault_real_8 = 492,
  OPT_fdefer_pop = 493,
  OPT_fdelayed_branch = 494,
  OPT_fdelete_null_pointer_checks = 495,
  OPT_fdevirtualize = 496,
  OPT_fdiagnostics_show_location_ = 497,
  OPT_fdiagnostics_show_option = 498,
  OPT_fdirectives_only = 499,
  OPT_fdisable_assertions = 500,
  OPT_fdisable_assertions_ = 501,
  OPT_fdollar_ok = 502,
  OPT_fdollars_in_identifiers = 503,
  OPT_fdse = 504,
  OPT_fdump_ = 505,
  OPT_fdump_core = 506,
  OPT_fdump_final_insns = 507,
  OPT_fdump_final_insns_ = 508,
  OPT_fdump_fortran_optimized = 509,
  OPT_fdump_fortran_original = 510,
  OPT_fdump_go_spec_ = 511,
  OPT_fdump_noaddr = 512,
  OPT_fdump_parse_tree = 513,
  OPT_fdump_unnumbered = 514,
  OPT_fdump_unnumbered_links = 515,
  OPT_fdwarf2_cfi_asm = 516,
  OPT_fearly_inlining = 517,
  OPT_felide_constructors = 518,
  OPT_feliminate_dwarf2_dups = 519,
  OPT_feliminate_unused_debug_symbols = 520,
  OPT_feliminate_unused_debug_types = 521,
  OPT_femit_class_debug_always = 522,
  OPT_femit_class_file = 523,
  OPT_femit_class_files = 524,
  OPT_femit_struct_debug_baseonly = 525,
  OPT_femit_struct_debug_detailed_ = 526,
  OPT_femit_struct_debug_reduced = 527,
  OPT_fenable_assertions = 528,
  OPT_fenable_assertions_ = 529,
  OPT_fenable_icf_debug = 530,
  OPT_fencoding_ = 531,
  OPT_fenforce_eh_specs = 532,

  OPT_fexceptions = 534,
  OPT_fexcess_precision_ = 535,
  OPT_fexec_charset_ = 536,
  OPT_fexpensive_optimizations = 537,
  OPT_fextdirs_ = 538,
  OPT_fextended_identifiers = 539,
  OPT_fexternal_blas = 540,

  OPT_ff2c = 542,
  OPT_ffast_math = 543,
  OPT_ffilelist_file = 544,
  OPT_ffinite_math_only = 545,
  OPT_ffixed_ = 546,
  OPT_ffixed_form = 547,
  OPT_ffixed_line_length_ = 548,
  OPT_ffixed_line_length_none = 549,
  OPT_ffloat_store = 550,
  OPT_ffor_scope = 551,

  OPT_fforce_classes_archive_check = 553,
  OPT_fforward_propagate = 554,
  OPT_ffp_contract_ = 555,
  OPT_ffpe_trap_ = 556,
  OPT_ffree_form = 557,
  OPT_ffree_line_length_ = 558,
  OPT_ffree_line_length_none = 559,
  OPT_ffreestanding = 560,
  OPT_ffriend_injection = 561,
  OPT_ffunction_cse = 562,
  OPT_ffunction_sections = 563,
  OPT_fgcse = 564,
  OPT_fgcse_after_reload = 565,
  OPT_fgcse_las = 566,
  OPT_fgcse_lm = 567,
  OPT_fgcse_sm = 568,
  OPT_fgnu_keywords = 569,
  OPT_fgnu_runtime = 570,
  OPT_fgnu89_inline = 571,
  OPT_fgo_dump_ = 572,
  OPT_fgo_prefix_ = 573,
  OPT_fgraphite = 574,
  OPT_fgraphite_identity = 575,
  OPT_fguess_branch_probability = 576,


  OPT_fhash_synchronization = 579,



  OPT_fhosted = 583,

  OPT_fident = 585,
  OPT_fif_conversion = 586,
  OPT_fif_conversion2 = 587,
  OPT_fimplement_inlines = 588,
  OPT_fimplicit_inline_templates = 589,
  OPT_fimplicit_none = 590,
  OPT_fimplicit_templates = 591,
  OPT_findirect_classes = 592,
  OPT_findirect_dispatch = 593,
  OPT_findirect_inlining = 594,
  OPT_finhibit_size_directive = 595,
  OPT_finit_character_ = 596,
  OPT_finit_integer_ = 597,
  OPT_finit_local_zero = 598,
  OPT_finit_logical_ = 599,
  OPT_finit_real_ = 600,
  OPT_finline = 601,
  OPT_finline_functions = 602,
  OPT_finline_functions_called_once = 603,

  OPT_finline_limit_ = 605,
  OPT_finline_small_functions = 606,
  OPT_finput_charset_ = 607,
  OPT_finstrument_functions = 608,
  OPT_finstrument_functions_exclude_file_list_ = 609,
  OPT_finstrument_functions_exclude_function_list_ = 610,
  OPT_fintrinsic_modules_path = 611,
  OPT_fipa_cp = 612,
  OPT_fipa_cp_clone = 613,
  OPT_fipa_matrix_reorg = 614,
  OPT_fipa_profile = 615,
  OPT_fipa_pta = 616,
  OPT_fipa_pure_const = 617,
  OPT_fipa_reference = 618,
  OPT_fipa_sra = 619,
  OPT_fipa_struct_reorg = 620,
  OPT_fira_algorithm_ = 621,
  OPT_fira_loop_pressure = 622,
  OPT_fira_region_ = 623,
  OPT_fira_share_save_slots = 624,
  OPT_fira_share_spill_slots = 625,
  OPT_fira_verbose_ = 626,
  OPT_fivopts = 627,
  OPT_fjni = 628,
  OPT_fjump_tables = 629,
  OPT_fkeep_inline_dllexport = 630,
  OPT_fkeep_inline_functions = 631,
  OPT_fkeep_static_consts = 632,

  OPT_flax_vector_conversions = 634,
  OPT_fleading_underscore = 635,
  OPT_floop_block = 636,
  OPT_floop_flatten = 637,
  OPT_floop_interchange = 638,

  OPT_floop_parallelize_all = 640,
  OPT_floop_strip_mine = 641,
  OPT_flto = 642,
  OPT_flto_compression_level_ = 643,
  OPT_flto_partition_1to1 = 644,
  OPT_flto_partition_balanced = 645,
  OPT_flto_partition_none = 646,
  OPT_flto_report = 647,
  OPT_flto_ = 648,
  OPT_fltrans = 649,
  OPT_fltrans_output_list_ = 650,
  OPT_fmain_ = 651,
  OPT_fmath_errno = 652,
  OPT_fmax_array_constructor_ = 653,
  OPT_fmax_errors_ = 654,
  OPT_fmax_identifier_length_ = 655,
  OPT_fmax_stack_var_size_ = 656,
  OPT_fmax_subrecord_length_ = 657,
  OPT_fmem_report = 658,
  OPT_fmerge_all_constants = 659,
  OPT_fmerge_constants = 660,
  OPT_fmerge_debug_strings = 661,
  OPT_fmessage_length_ = 662,
  OPT_fmodule_private = 663,
  OPT_fmodulo_sched = 664,
  OPT_fmodulo_sched_allow_regmoves = 665,
  OPT_fmove_loop_invariants = 666,
  OPT_fms_extensions = 667,
  OPT_fmudflap = 668,
  OPT_fmudflapir = 669,
  OPT_fmudflapth = 670,


  OPT_fnext_runtime = 673,
  OPT_fnil_receivers = 674,
  OPT_fnon_call_exceptions = 675,
  OPT_fnonansi_builtins = 676,

  OPT_fnothrow_opt = 678,
  OPT_fobjc_abi_version_ = 679,
  OPT_fobjc_call_cxx_cdtors = 680,
  OPT_fobjc_direct_dispatch = 681,
  OPT_fobjc_exceptions = 682,
  OPT_fobjc_gc = 683,
  OPT_fobjc_nilcheck = 684,
  OPT_fobjc_sjlj_exceptions = 685,
  OPT_fobjc_std_objc1 = 686,
  OPT_fomit_frame_pointer = 687,
  OPT_fopenmp = 688,
  OPT_foperator_names = 689,
  OPT_foptimize_register_move = 690,
  OPT_foptimize_sibling_calls = 691,
  OPT_foptimize_static_class_initialization = 692,

  OPT_foutput_class_dir_ = 694,
  OPT_fpack_derived = 695,
  OPT_fpack_struct = 696,
  OPT_fpack_struct_ = 697,
  OPT_fpartial_inlining = 698,
  OPT_fpcc_struct_return = 699,
  OPT_fpch_deps = 700,
  OPT_fpch_preprocess = 701,
  OPT_fpeel_loops = 702,
  OPT_fpeephole = 703,
  OPT_fpeephole2 = 704,
  OPT_fpermissive = 705,
  OPT_fpic = 706,
  OPT_fpie = 707,
  OPT_fplan9_extensions = 708,
  OPT_fplugin_arg_ = 709,
  OPT_fplugin_ = 710,
  OPT_fpost_ipa_mem_report = 711,
  OPT_fpre_ipa_mem_report = 712,
  OPT_fpredictive_commoning = 713,
  OPT_fprefetch_loop_arrays = 714,
  OPT_fpreprocessed = 715,
  OPT_fpretty_templates = 716,
  OPT_fprofile = 717,
  OPT_fprofile_arcs = 718,
  OPT_fprofile_correction = 719,
  OPT_fprofile_dir_ = 720,
  OPT_fprofile_generate = 721,
  OPT_fprofile_generate_ = 722,
  OPT_fprofile_use = 723,
  OPT_fprofile_use_ = 724,
  OPT_fprofile_values = 725,
  OPT_fprotect_parens = 726,
  OPT_frandom_seed = 727,
  OPT_frandom_seed_ = 728,
  OPT_frange_check = 729,
  OPT_frealloc_lhs = 730,
  OPT_freciprocal_math = 731,
  OPT_frecord_gcc_switches = 732,
  OPT_frecord_marker_4 = 733,
  OPT_frecord_marker_8 = 734,
  OPT_frecursive = 735,
  OPT_freduced_reflection = 736,
  OPT_freg_struct_return = 737,
  OPT_fregmove = 738,
  OPT_frename_registers = 739,
  OPT_freorder_blocks = 740,
  OPT_freorder_blocks_and_partition = 741,
  OPT_freorder_functions = 742,
  OPT_frepack_arrays = 743,
  OPT_freplace_objc_classes = 744,
  OPT_frepo = 745,
  OPT_frequire_return_statement = 746,
  OPT_frerun_cse_after_loop = 747,

  OPT_freschedule_modulo_scheduled_loops = 749,
  OPT_fresolution_ = 750,
  OPT_frounding_math = 751,
  OPT_frtti = 752,
  OPT_fsaw_java_file = 753,
  OPT_fsched_critical_path_heuristic = 754,
  OPT_fsched_dep_count_heuristic = 755,
  OPT_fsched_group_heuristic = 756,
  OPT_fsched_interblock = 757,
  OPT_fsched_last_insn_heuristic = 758,
  OPT_fsched_pressure = 759,
  OPT_fsched_rank_heuristic = 760,
  OPT_fsched_spec = 761,
  OPT_fsched_spec_insn_heuristic = 762,
  OPT_fsched_spec_load = 763,
  OPT_fsched_spec_load_dangerous = 764,
  OPT_fsched_stalled_insns = 765,
  OPT_fsched_stalled_insns_dep = 766,
  OPT_fsched_stalled_insns_dep_ = 767,
  OPT_fsched_stalled_insns_ = 768,
  OPT_fsched_verbose_ = 769,
  OPT_fsched2_use_superblocks = 770,

  OPT_fschedule_insns = 772,
  OPT_fschedule_insns2 = 773,
  OPT_fsecond_underscore = 774,
  OPT_fsection_anchors = 775,

  OPT_fsel_sched_pipelining = 777,
  OPT_fsel_sched_pipelining_outer_loops = 778,
  OPT_fsel_sched_reschedule_pipelined = 779,
  OPT_fselective_scheduling = 780,
  OPT_fselective_scheduling2 = 781,
  OPT_fshort_double = 782,
  OPT_fshort_enums = 783,
  OPT_fshort_wchar = 784,
  OPT_fshow_column = 785,
  OPT_fsign_zero = 786,
  OPT_fsignaling_nans = 787,
  OPT_fsigned_bitfields = 788,
  OPT_fsigned_char = 789,
  OPT_fsigned_zeros = 790,
  OPT_fsingle_precision_constant = 791,
  OPT_fsource_filename_ = 792,
  OPT_fsource_ = 793,
  OPT_fsplit_ivs_in_unroller = 794,
  OPT_fsplit_stack = 795,
  OPT_fsplit_wide_types = 796,


  OPT_fstack_check_ = 799,
  OPT_fstack_limit = 800,
  OPT_fstack_limit_register_ = 801,
  OPT_fstack_limit_symbol_ = 802,
  OPT_fstack_protector = 803,
  OPT_fstack_protector_all = 804,
  OPT_fstack_usage = 805,
  OPT_fstats = 806,
  OPT_fstore_check = 807,

  OPT_fstrict_aliasing = 809,
  OPT_fstrict_enums = 810,
  OPT_fstrict_overflow = 811,

  OPT_fstrict_volatile_bitfields = 813,
  OPT_fsyntax_only = 814,
  OPT_ftabstop_ = 815,

  OPT_ftarget_ = 817,

  OPT_ftemplate_depth_ = 819,
  OPT_ftest_coverage = 820,

  OPT_fthread_jumps = 822,
  OPT_fthreadsafe_statics = 823,
  OPT_ftime_report = 824,
  OPT_ftls_model_ = 825,
  OPT_ftoplevel_reorder = 826,
  OPT_ftracer = 827,
  OPT_ftrapping_math = 828,
  OPT_ftrapv = 829,
  OPT_ftree_bit_ccp = 830,
  OPT_ftree_builtin_call_dce = 831,
  OPT_ftree_ccp = 832,
  OPT_ftree_ch = 833,
  OPT_ftree_copy_prop = 834,
  OPT_ftree_copyrename = 835,
  OPT_ftree_cselim = 836,
  OPT_ftree_dce = 837,
  OPT_ftree_dominator_opts = 838,
  OPT_ftree_dse = 839,
  OPT_ftree_forwprop = 840,
  OPT_ftree_fre = 841,
  OPT_ftree_loop_distribute_patterns = 842,
  OPT_ftree_loop_distribution = 843,
  OPT_ftree_loop_if_convert = 844,
  OPT_ftree_loop_if_convert_stores = 845,
  OPT_ftree_loop_im = 846,
  OPT_ftree_loop_ivcanon = 847,

  OPT_ftree_loop_optimize = 849,
  OPT_ftree_lrs = 850,
  OPT_ftree_parallelize_loops_ = 851,
  OPT_ftree_phiprop = 852,
  OPT_ftree_pre = 853,
  OPT_ftree_pta = 854,
  OPT_ftree_reassoc = 855,

  OPT_ftree_scev_cprop = 857,
  OPT_ftree_sink = 858,
  OPT_ftree_slp_vectorize = 859,
  OPT_ftree_sra = 860,


  OPT_ftree_switch_conversion = 863,
  OPT_ftree_ter = 864,
  OPT_ftree_vect_loop_version = 865,
  OPT_ftree_vectorize = 866,
  OPT_ftree_vectorizer_verbose_ = 867,
  OPT_ftree_vrp = 868,
  OPT_funderscoring = 869,
  OPT_funit_at_a_time = 870,
  OPT_funroll_all_loops = 871,
  OPT_funroll_loops = 872,
  OPT_funsafe_loop_optimizations = 873,
  OPT_funsafe_math_optimizations = 874,
  OPT_funsigned_bitfields = 875,
  OPT_funsigned_char = 876,
  OPT_funswitch_loops = 877,
  OPT_funwind_tables = 878,
  OPT_fuse_atomic_builtins = 879,
  OPT_fuse_boehm_gc = 880,
  OPT_fuse_cxa_atexit = 881,
  OPT_fuse_cxa_get_exception_ptr = 882,
  OPT_fuse_divide_subroutine = 883,
  OPT_fuse_linker_plugin = 884,
  OPT_fvar_tracking = 885,
  OPT_fvar_tracking_assignments = 886,
  OPT_fvar_tracking_assignments_toggle = 887,
  OPT_fvar_tracking_uninit = 888,
  OPT_fvariable_expansion_in_unroller = 889,
  OPT_fvect_cost_model = 890,
  OPT_fverbose_asm = 891,

  OPT_fvisibility_inlines_hidden = 893,
  OPT_fvisibility_ms_compat = 894,
  OPT_fvisibility_ = 895,
  OPT_fvpt = 896,


  OPT_fweak = 899,
  OPT_fweb = 900,
  OPT_fwhole_file = 901,
  OPT_fwhole_program = 902,
  OPT_fwide_exec_charset_ = 903,
  OPT_fworking_directory = 904,
  OPT_fwpa = 905,
  OPT_fwrapv = 906,

  OPT_fzee = 908,
  OPT_fzero_initialized_in_bss = 909,
  OPT_fzero_link = 910,
  OPT_g = 911,
  OPT_gant = 912,
  OPT_gcoff = 913,
  OPT_gdwarf_ = 914,
  OPT_gen_decls = 915,
  OPT_ggdb = 916,
  OPT_gnat = 917,
  OPT_gnatO = 918,
  OPT_gno_strict_dwarf = 919,
  OPT_gstabs = 920,
  OPT_gstabs_ = 921,
  OPT_gstrict_dwarf = 922,
  OPT_gtoggle = 923,
  OPT_gvms = 924,
  OPT_gxcoff = 925,
  OPT_gxcoff_ = 926,
  OPT_h = 927,
  OPT_idirafter = 928,
  OPT_imacros = 929,
  OPT_imultiarch = 930,
  OPT_imultilib = 931,
  OPT_include = 932,
  OPT_iplugindir_ = 933,
  OPT_iprefix = 934,
  OPT_iquote = 935,
  OPT_isysroot = 936,
  OPT_isystem = 937,
  OPT_iwithprefix = 938,
  OPT_iwithprefixbefore = 939,
  OPT_k8 = 940,
  OPT_l = 941,
  OPT_lang_asm = 942,
  OPT_m128bit_long_double = 943,
  OPT_m32 = 944,
  OPT_m3dnow = 945,
  OPT_m3dnowa = 946,
  OPT_m64 = 947,
  OPT_m80387 = 948,
  OPT_m8bit_idiv = 949,
  OPT_m96bit_long_double = 950,
  OPT_mabi_ = 951,
  OPT_mabm = 952,
  OPT_maccumulate_outgoing_args = 953,
  OPT_maes = 954,
  OPT_malign_double = 955,
  OPT_malign_functions_ = 956,
  OPT_malign_jumps_ = 957,
  OPT_malign_loops_ = 958,
  OPT_malign_stringops = 959,
  OPT_mandroid = 960,
  OPT_march_ = 961,
  OPT_masm_ = 962,
  OPT_mavx = 963,
  OPT_mavx256_split_unaligned_load = 964,
  OPT_mavx256_split_unaligned_store = 965,
  OPT_mbionic = 966,
  OPT_mbmi = 967,
  OPT_mbranch_cost_ = 968,
  OPT_mcld = 969,
  OPT_mcmodel_ = 970,

  OPT_mcrc32 = 972,
  OPT_mcx16 = 973,
  OPT_mdispatch_scheduler = 974,
  OPT_mf16c = 975,
  OPT_mfancy_math_387 = 976,
  OPT_mfentry = 977,
  OPT_mfma = 978,
  OPT_mfma4 = 979,
  OPT_mforce_drap = 980,
  OPT_mfp_ret_in_387 = 981,
  OPT_mfpmath_ = 982,
  OPT_mfsgsbase = 983,

  OPT_mglibc = 985,
  OPT_mhard_float = 986,
  OPT_mieee_fp = 987,
  OPT_mincoming_stack_boundary_ = 988,
  OPT_minline_all_stringops = 989,
  OPT_minline_stringops_dynamically = 990,

  OPT_mlarge_data_threshold_ = 992,
  OPT_mlwp = 993,
  OPT_mmmx = 994,
  OPT_mmovbe = 995,
  OPT_mms_bitfields = 996,
  OPT_mno_align_stringops = 997,
  OPT_mno_fancy_math_387 = 998,
  OPT_mno_push_args = 999,
  OPT_mno_red_zone = 1000,
  OPT_mno_sse4 = 1001,
  OPT_momit_leaf_frame_pointer = 1002,
  OPT_mpc = 1003,
  OPT_mpclmul = 1004,
  OPT_mpopcnt = 1005,
  OPT_mprefer_avx128 = 1006,
  OPT_mpreferred_stack_boundary_ = 1007,
  OPT_mpush_args = 1008,
  OPT_mrdrnd = 1009,
  OPT_mrecip = 1010,
  OPT_mred_zone = 1011,
  OPT_mregparm_ = 1012,
  OPT_mrtd = 1013,
  OPT_msahf = 1014,
  OPT_msoft_float = 1015,
  OPT_msse = 1016,
  OPT_msse2 = 1017,
  OPT_msse2avx = 1018,
  OPT_msse3 = 1019,
  OPT_msse4 = 1020,
  OPT_msse4_1 = 1021,
  OPT_msse4_2 = 1022,
  OPT_msse4a = 1023,

  OPT_msseregparm = 1025,
  OPT_mssse3 = 1026,
  OPT_mstack_arg_probe = 1027,
  OPT_mstackrealign = 1028,
  OPT_mstringop_strategy_ = 1029,
  OPT_mtbm = 1030,
  OPT_mtls_dialect_ = 1031,
  OPT_mtls_direct_seg_refs = 1032,
  OPT_mtune_ = 1033,
  OPT_muclibc = 1034,
  OPT_mveclibabi_ = 1035,
  OPT_mvect8_ret_in_mem = 1036,
  OPT_mvzeroupper = 1037,
  OPT_mxop = 1038,
  OPT_n = 1039,
  OPT_no_canonical_prefixes = 1040,
  OPT_no_integrated_cpp = 1041,
  OPT_nocpp = 1042,
  OPT_nodefaultlibs = 1043,
  OPT_nostartfiles = 1044,
  OPT_nostdinc = 1045,
  OPT_nostdinc__ = 1046,
  OPT_nostdlib = 1047,
  OPT_o = 1048,
  OPT_p = 1049,
  OPT_pass_exit_codes = 1050,
  OPT_pedantic = 1051,
  OPT_pedantic_errors = 1052,
  OPT_pg = 1053,
  OPT_pie = 1054,
  OPT_pipe = 1055,
  OPT_posix = 1056,
  OPT_print_file_name_ = 1057,
  OPT_print_libgcc_file_name = 1058,
  OPT_print_multi_directory = 1059,
  OPT_print_multi_lib = 1060,
  OPT_print_multi_os_directory = 1061,
  OPT_print_multiarch = 1062,
  OPT_print_objc_runtime_info = 1063,
  OPT_print_prog_name_ = 1064,
  OPT_print_search_dirs = 1065,
  OPT_print_sysroot = 1066,
  OPT_print_sysroot_headers_suffix = 1067,
  OPT_profile = 1068,
  OPT_pthread = 1069,
  OPT_quiet = 1070,
  OPT_r = 1071,
  OPT_rdynamic = 1072,
  OPT_remap = 1073,
  OPT_s = 1074,
  OPT_s_bc_abi = 1075,
  OPT_save_temps = 1076,
  OPT_save_temps_ = 1077,
  OPT_shared = 1078,
  OPT_shared_libgcc = 1079,

  OPT_specs_ = 1081,
  OPT_static = 1082,
  OPT_static_libgcc = 1083,
  OPT_static_libgcj = 1084,
  OPT_static_libgfortran = 1085,
  OPT_static_libgo = 1086,
  OPT_static_libstdc__ = 1087,

  OPT_std_c__0x = 1089,
  OPT_std_c__98 = 1090,
  OPT_std_c1x = 1091,

  OPT_std_c90 = 1093,
  OPT_std_c99 = 1094,

  OPT_std_f2003 = 1096,
  OPT_std_f2008 = 1097,
  OPT_std_f95 = 1098,
  OPT_std_gnu = 1099,
  OPT_std_gnu__0x = 1100,
  OPT_std_gnu__98 = 1101,
  OPT_std_gnu1x = 1102,

  OPT_std_gnu90 = 1104,
  OPT_std_gnu99 = 1105,


  OPT_std_iso9899_199409 = 1108,


  OPT_std_legacy = 1111,
  OPT_symbolic = 1112,
  OPT_t = 1113,
  OPT_time = 1114,
  OPT_time_ = 1115,
  OPT_tno_android_cc = 1116,
  OPT_tno_android_ld = 1117,
  OPT_traditional = 1118,
  OPT_traditional_cpp = 1119,
  OPT_trigraphs = 1120,
  OPT_u = 1121,
  OPT_undef = 1122,
  OPT_v = 1123,
  OPT_version = 1124,
  OPT_w = 1125,
  OPT_wrapper = 1126,
  OPT_x = 1127,
  OPT_z = 1128,
  N_OPTS,
  OPT_SPECIAL_unknown,
  OPT_SPECIAL_ignore,
  OPT_SPECIAL_program_name,
  OPT_SPECIAL_input_file
};
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/flags.h" 2




extern const char *const debug_type_names[];

extern void strip_off_ending (char *, int);
extern int base_of_path (const char *path, const char **base_out);






extern unsigned char in_lto_p;


extern unsigned char fast_math_flags_set_p (const struct gcc_options *);
extern unsigned char fast_math_flags_struct_set_p (struct cl_optimization *);
# 55 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/flags.h"
extern void set_Wstrict_aliasing (struct gcc_options *opts, int onoff);





extern unsigned char final_insns_dump_p;



extern int flag_permissive;



extern int flag_next_runtime;




struct target_flag_state {




  int x_align_loops_log;
  int x_align_loops_max_skip;
  int x_align_jumps_log;
  int x_align_jumps_max_skip;
  int x_align_labels_log;
  int x_align_labels_max_skip;
  int x_align_functions_log;


  enum excess_precision x_flag_excess_precision;
};

extern struct target_flag_state default_target_flag_state;
# 116 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/flags.h"
extern int dump_for_graph;
# 36 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2






enum tree_code {
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 1
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def" 1
# 42 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
ERROR_MARK,





IDENTIFIER_NODE,






TREE_LIST,


TREE_VEC,
# 79 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
BLOCK,
# 123 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
OFFSET_TYPE,
# 136 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
ENUMERAL_TYPE,



BOOLEAN_TYPE,
# 150 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
INTEGER_TYPE,



REAL_TYPE,
# 163 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
POINTER_TYPE,



REFERENCE_TYPE,


NULLPTR_TYPE,




FIXED_POINT_TYPE,
# 184 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
COMPLEX_TYPE,




VECTOR_TYPE,
# 205 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
ARRAY_TYPE,
# 215 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
RECORD_TYPE,





UNION_TYPE,





QUAL_UNION_TYPE,






VOID_TYPE,







FUNCTION_TYPE,






METHOD_TYPE,





LANG_TYPE,
# 268 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
INTEGER_CST,


REAL_CST,


FIXED_CST,



COMPLEX_CST,


VECTOR_CST,


STRING_CST,
# 344 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
FUNCTION_DECL,
LABEL_DECL,




FIELD_DECL,
VAR_DECL,
CONST_DECL,
PARM_DECL,
TYPE_DECL,
RESULT_DECL,



DEBUG_EXPR_DECL,



NAMESPACE_DECL,
# 374 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
IMPORTED_DECL,



TRANSLATION_UNIT_DECL,
# 391 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
COMPONENT_REF,
# 401 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
BIT_FIELD_REF,



REALPART_EXPR,
IMAGPART_EXPR,






ARRAY_REF,




ARRAY_RANGE_REF,


INDIRECT_REF,
# 430 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
OBJ_TYPE_REF,
# 446 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
CONSTRUCTOR,
# 456 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
COMPOUND_EXPR,


MODIFY_EXPR,




INIT_EXPR,







TARGET_EXPR,
# 486 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
COND_EXPR,
# 498 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
VEC_COND_EXPR,
# 521 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
BIND_EXPR,







CALL_EXPR,






WITH_CLEANUP_EXPR,
# 553 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
CLEANUP_POINT_EXPR,
# 605 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
PLACEHOLDER_EXPR,


PLUS_EXPR,
MINUS_EXPR,
MULT_EXPR,



POINTER_PLUS_EXPR,


TRUNC_DIV_EXPR,


CEIL_DIV_EXPR,


FLOOR_DIV_EXPR,


ROUND_DIV_EXPR,


TRUNC_MOD_EXPR,
CEIL_MOD_EXPR,
FLOOR_MOD_EXPR,
ROUND_MOD_EXPR,


RDIV_EXPR,



EXACT_DIV_EXPR,


FIX_TRUNC_EXPR,


FLOAT_EXPR,


NEGATE_EXPR,




MIN_EXPR,
MAX_EXPR,





ABS_EXPR,
# 675 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
LSHIFT_EXPR,
RSHIFT_EXPR,
LROTATE_EXPR,
RROTATE_EXPR,


BIT_IOR_EXPR,
BIT_XOR_EXPR,
BIT_AND_EXPR,
BIT_NOT_EXPR,
# 695 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
TRUTH_ANDIF_EXPR,
TRUTH_ORIF_EXPR,
TRUTH_AND_EXPR,
TRUTH_OR_EXPR,
TRUTH_XOR_EXPR,
TRUTH_NOT_EXPR,







LT_EXPR,
LE_EXPR,
GT_EXPR,
GE_EXPR,
EQ_EXPR,
NE_EXPR,


UNORDERED_EXPR,
ORDERED_EXPR,


UNLT_EXPR,
UNLE_EXPR,
UNGT_EXPR,
UNGE_EXPR,
UNEQ_EXPR,


LTGT_EXPR,

RANGE_EXPR,



PAREN_EXPR,




CONVERT_EXPR,



ADDR_SPACE_CONVERT_EXPR,




FIXED_CONVERT_EXPR,


NOP_EXPR,


NON_LVALUE_EXPR,
# 765 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
VIEW_CONVERT_EXPR,






COMPOUND_LITERAL_EXPR,




SAVE_EXPR,



ADDR_EXPR,



FDESC_EXPR,



COMPLEX_EXPR,


CONJ_EXPR,




PREDECREMENT_EXPR,
PREINCREMENT_EXPR,
POSTDECREMENT_EXPR,
POSTINCREMENT_EXPR,


VA_ARG_EXPR,






TRY_CATCH_EXPR,




TRY_FINALLY_EXPR,





DECL_EXPR,




LABEL_EXPR,



GOTO_EXPR,






RETURN_EXPR,



EXIT_EXPR,




LOOP_EXPR,
# 860 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
SWITCH_EXPR,





CASE_LABEL_EXPR,






ASM_EXPR,




SSA_NAME,



CATCH_EXPR,





EH_FILTER_EXPR,



SCEV_KNOWN,



SCEV_NOT_KNOWN,



POLYNOMIAL_CHREC,



STATEMENT_LIST,
# 923 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
ASSERT_EXPR,



TREE_BINFO,






WITH_SIZE_EXPR,
# 945 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
REALIGN_LOAD_EXPR,
# 961 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
TARGET_MEM_REF,
# 971 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
MEM_REF,







OMP_PARALLEL,





OMP_TASK,
# 1006 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
OMP_FOR,




OMP_SECTIONS,




OMP_SINGLE,



OMP_SECTION,



OMP_MASTER,



OMP_ORDERED,




OMP_CRITICAL,







OMP_ATOMIC,


OMP_CLAUSE,







REDUC_MAX_EXPR,
REDUC_MIN_EXPR,
REDUC_PLUS_EXPR,
# 1065 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
DOT_PROD_EXPR,
# 1074 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
WIDEN_SUM_EXPR,






WIDEN_MULT_EXPR,
# 1090 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
WIDEN_MULT_PLUS_EXPR,


WIDEN_MULT_MINUS_EXPR,





FMA_EXPR,




VEC_LSHIFT_EXPR,
VEC_RSHIFT_EXPR,






VEC_WIDEN_MULT_HI_EXPR,
VEC_WIDEN_MULT_LO_EXPR,





VEC_UNPACK_HI_EXPR,
VEC_UNPACK_LO_EXPR,





VEC_UNPACK_FLOAT_HI_EXPR,
VEC_UNPACK_FLOAT_LO_EXPR,





VEC_PACK_TRUNC_EXPR,
VEC_PACK_SAT_EXPR,





VEC_PACK_FIX_TRUNC_EXPR,


VEC_EXTRACT_EVEN_EXPR,
VEC_EXTRACT_ODD_EXPR,


VEC_INTERLEAVE_HIGH_EXPR,
VEC_INTERLEAVE_LOW_EXPR,






PREDICT_EXPR,


OPTIMIZATION_NODE,


TARGET_OPTION_NODE,
# 2 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
LAST_AND_UNUSED_TREE_CODE,
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.def" 1
# 41 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.def"
C_MAYBE_CONST_EXPR,






EXCESS_PRECISION_EXPR,
# 4 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def" 1
# 29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def"
UNCONSTRAINED_ARRAY_TYPE,





UNCONSTRAINED_ARRAY_REF,




NULL_EXPR,



PLUS_NOMOD_EXPR,



MINUS_NOMOD_EXPR,




ATTR_ADDR_EXPR,
# 62 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def"
STMT_STMT,





LOOP_STMT,





EXIT_STMT,
# 5 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def" 1
# 43 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
OFFSET_REF,




PTRMEM_CST,





NEW_EXPR,
VEC_NEW_EXPR,




DELETE_EXPR,
VEC_DELETE_EXPR,




SCOPE_REF,




MEMBER_REF,



TYPE_EXPR,






AGGR_INIT_EXPR,




VEC_INIT_EXPR,



THROW_EXPR,



EMPTY_CLASS_EXPR,
# 109 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
BASELINK,
# 126 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_DECL,
# 161 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_PARM_INDEX,
# 170 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_TEMPLATE_PARM,
# 179 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_TYPE_PARM,





TYPENAME_TYPE,



TYPEOF_TYPE,





BOUND_TEMPLATE_TEMPLATE_PARM,





UNBOUND_CLASS_TEMPLATE,





USING_DECL,


USING_STMT,




DEFAULT_ARG,






TEMPLATE_ID_EXPR,



OVERLOAD,
# 238 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
PSEUDO_DTOR_EXPR,



MODOP_EXPR,
CAST_EXPR,
REINTERPRET_CAST_EXPR,
CONST_CAST_EXPR,
STATIC_CAST_EXPR,
DYNAMIC_CAST_EXPR,
DOTSTAR_EXPR,
TYPEID_EXPR,
NOEXCEPT_EXPR,
# 261 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
NON_DEPENDENT_EXPR,



CTOR_INITIALIZER,

TRY_BLOCK,

EH_SPEC_BLOCK,





HANDLER,



MUST_NOT_THROW_EXPR,




CLEANUP_STMT,





IF_STMT,



FOR_STMT,




RANGE_FOR_STMT,



WHILE_STMT,



DO_STMT,


BREAK_STMT,


CONTINUE_STMT,



SWITCH_STMT,



EXPR_STMT,

TAG_DEFN,


OFFSETOF_EXPR,


SIZEOF_EXPR,


ARROW_EXPR,



ALIGNOF_EXPR,



AT_ENCODE_EXPR,




STMT_EXPR,



UNARY_PLUS_EXPR,







STATIC_ASSERT,
# 376 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TYPE_ARGUMENT_PACK,
# 385 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
NONTYPE_ARGUMENT_PACK,
# 408 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TYPE_PACK_EXPANSION,






EXPR_PACK_EXPANSION,
# 427 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
ARGUMENT_PACK_SELECT,




TRAIT_EXPR,
# 441 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
LAMBDA_EXPR,
# 450 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
DECLTYPE_TYPE,
# 460 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
TEMPLATE_INFO,
# 6 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/java/java-tree.def" 1
# 23 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/java/java-tree.def"
URSHIFT_EXPR,



COMPARE_EXPR,


COMPARE_L_EXPR,

COMPARE_G_EXPR,
# 7 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def"
CLASS_INTERFACE_TYPE,
CLASS_IMPLEMENTATION_TYPE,

CATEGORY_INTERFACE_TYPE,
CATEGORY_IMPLEMENTATION_TYPE,

PROTOCOL_INTERFACE_TYPE,


KEYWORD_DECL,
INSTANCE_METHOD_DECL,
CLASS_METHOD_DECL,
PROPERTY_DECL,


MESSAGE_SEND_EXPR,
CLASS_REFERENCE_EXPR,
# 71 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def"
PROPERTY_REF,
# 7 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
# 44 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
MAX_TREE_CODES
};




extern unsigned char tree_contains_struct[MAX_TREE_CODES][64];
# 61 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
enum tree_code_class {
  tcc_exceptional,
  tcc_constant,

  tcc_type,
  tcc_declaration,
  tcc_reference,
  tcc_comparison,
  tcc_unary,
  tcc_binary,
  tcc_statement,

  tcc_vl_exp,

  tcc_expression
};




extern const char *const tree_code_class_strings[];






extern const enum tree_code_class tree_code_type[];
# 175 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern const unsigned char tree_code_length[];




extern const char *const tree_code_name[];
# 190 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
typedef enum {
  ALIAS_DIAG_NONE = 0x0,
  ALIAS_DIAG_TO_UNDEF = 0x1,
  ALIAS_DIAG_TO_EXTERN = 0x2
} alias_diag_flags;

typedef struct alias_pair
{
  tree decl;
  tree target;
  int emitted_diags;
} alias_pair;


typedef struct VEC_alias_pair_base { unsigned num; unsigned alloc; alias_pair vec[1]; } VEC_alias_pair_base; typedef struct VEC_alias_pair_none { VEC_alias_pair_base base; } VEC_alias_pair_none; static unsigned VEC_alias_pair_base_length (const VEC_alias_pair_base *vec_) { return vec_ ? vec_->num : 0; } static alias_pair *VEC_alias_pair_base_last (VEC_alias_pair_base *vec_ ) { (void)(vec_ && vec_->num); return &vec_->vec[vec_->num - 1]; } static alias_pair *VEC_alias_pair_base_index (VEC_alias_pair_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return &vec_->vec[ix_]; } static int VEC_alias_pair_base_iterate (VEC_alias_pair_base *vec_, unsigned ix_, alias_pair **ptr) { if (vec_ && ix_ < vec_->num) { *ptr = &vec_->vec[ix_]; return 1; } else { *ptr = 0; return 0; } } static size_t VEC_alias_pair_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_alias_pair_base, vec) + alloc_ * sizeof(alias_pair); } static void VEC_alias_pair_base_embedded_init (VEC_alias_pair_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_alias_pair_base_space (VEC_alias_pair_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_alias_pair_base_splice (VEC_alias_pair_base *dst_, VEC_alias_pair_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (alias_pair)); dst_->num += len_; } } static alias_pair *VEC_alias_pair_base_quick_push (VEC_alias_pair_base *vec_, const alias_pair *obj_ ) { alias_pair *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; if (obj_) *slot_ = *obj_; return slot_; } static void VEC_alias_pair_base_pop (VEC_alias_pair_base *vec_ ) { (void)(vec_->num); --vec_->num; } static void VEC_alias_pair_base_truncate (VEC_alias_pair_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static alias_pair *VEC_alias_pair_base_replace (VEC_alias_pair_base *vec_, unsigned ix_, const alias_pair *obj_ ) { alias_pair *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; if (obj_) *slot_ = *obj_; return slot_; } static alias_pair *VEC_alias_pair_base_quick_insert (VEC_alias_pair_base *vec_, unsigned ix_, const alias_pair *obj_ ) { alias_pair *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (alias_pair)); if (obj_) *slot_ = *obj_; return slot_; } static void VEC_alias_pair_base_ordered_remove (VEC_alias_pair_base *vec_, unsigned ix_ ) { alias_pair *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (alias_pair)); } static void VEC_alias_pair_base_unordered_remove (VEC_alias_pair_base *vec_, unsigned ix_ ) { (void)(ix_ < vec_->num); vec_->vec[ix_] = vec_->vec[--vec_->num]; } static void VEC_alias_pair_base_block_remove (VEC_alias_pair_base *vec_, unsigned ix_, unsigned len_ ) { alias_pair *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (alias_pair)); } static alias_pair *VEC_alias_pair_base_address (VEC_alias_pair_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_alias_pair_base_lower_bound (VEC_alias_pair_base *vec_, const alias_pair *obj_, unsigned char (*lessthan_)(const alias_pair *, const alias_pair *) ) { unsigned int len_ = VEC_alias_pair_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { alias_pair *middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_alias_pair_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_alias_pair_gc { VEC_alias_pair_base base; } VEC_alias_pair_gc; static VEC_alias_pair_gc *VEC_alias_pair_gc_alloc (int alloc_ ) { return (VEC_alias_pair_gc *) vec_gc_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_alias_pair_gc, base.vec), sizeof (alias_pair) ); } static VEC_alias_pair_gc *VEC_alias_pair_gc_copy (VEC_alias_pair_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_alias_pair_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_alias_pair_gc *)(vec_gc_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_alias_pair_gc, base.vec), sizeof (alias_pair) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (alias_pair) * len_); } return new_vec_; } static void VEC_alias_pair_gc_free (VEC_alias_pair_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static int VEC_alias_pair_gc_reserve (VEC_alias_pair_gc **vec_, int alloc_ ) { int extend = !VEC_alias_pair_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_alias_pair_gc *) vec_gc_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_alias_pair_gc, base.vec), sizeof (alias_pair) ); return extend; } static int VEC_alias_pair_gc_reserve_exact (VEC_alias_pair_gc **vec_, int alloc_ ) { int extend = !VEC_alias_pair_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_alias_pair_gc *) vec_gc_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_alias_pair_gc, base.vec), sizeof (alias_pair) ); return extend; } static void VEC_alias_pair_gc_safe_grow (VEC_alias_pair_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_alias_pair_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_alias_pair_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_alias_pair_gc_safe_grow_cleared (VEC_alias_pair_gc **vec_, int size_ ) { int oldsize = VEC_alias_pair_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_alias_pair_gc_safe_grow (vec_, size_ ); memset (&(VEC_alias_pair_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (alias_pair) * (size_ - oldsize)); } static void VEC_alias_pair_gc_safe_splice (VEC_alias_pair_gc **dst_, VEC_alias_pair_base *src_ ) { if (src_) { VEC_alias_pair_gc_reserve_exact (dst_, src_->num ); VEC_alias_pair_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static alias_pair *VEC_alias_pair_gc_safe_push (VEC_alias_pair_gc **vec_, const alias_pair *obj_ ) { VEC_alias_pair_gc_reserve (vec_, 1 ); return VEC_alias_pair_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static alias_pair *VEC_alias_pair_gc_safe_insert (VEC_alias_pair_gc **vec_, unsigned ix_, const alias_pair *obj_ ) { VEC_alias_pair_gc_reserve (vec_, 1 ); return VEC_alias_pair_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

extern VEC_alias_pair_gc * alias_pairs;




enum built_in_class
{
  NOT_BUILT_IN = 0,
  BUILT_IN_FRONTEND,
  BUILT_IN_MD,
  BUILT_IN_NORMAL
};


extern const char *const built_in_class_names[4];





enum built_in_function
{
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/builtins.def" 1
# 177 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/builtins.def"
BUILT_IN_ACOS,
BUILT_IN_ACOSF,
BUILT_IN_ACOSH,
BUILT_IN_ACOSHF,
BUILT_IN_ACOSHL,
BUILT_IN_ACOSL,
BUILT_IN_ASIN,
BUILT_IN_ASINF,
BUILT_IN_ASINH,
BUILT_IN_ASINHF,
BUILT_IN_ASINHL,
BUILT_IN_ASINL,
BUILT_IN_ATAN,
BUILT_IN_ATAN2,
BUILT_IN_ATAN2F,
BUILT_IN_ATAN2L,
BUILT_IN_ATANF,
BUILT_IN_ATANH,
BUILT_IN_ATANHF,
BUILT_IN_ATANHL,
BUILT_IN_ATANL,
BUILT_IN_CBRT,
BUILT_IN_CBRTF,
BUILT_IN_CBRTL,
BUILT_IN_CEIL,
BUILT_IN_CEILF,
BUILT_IN_CEILL,
BUILT_IN_COPYSIGN,
BUILT_IN_COPYSIGNF,
BUILT_IN_COPYSIGNL,
BUILT_IN_COS,
BUILT_IN_COSF,
BUILT_IN_COSH,
BUILT_IN_COSHF,
BUILT_IN_COSHL,
BUILT_IN_COSL,
BUILT_IN_DREM,
BUILT_IN_DREMF,
BUILT_IN_DREML,
BUILT_IN_ERF,
BUILT_IN_ERFC,
BUILT_IN_ERFCF,
BUILT_IN_ERFCL,
BUILT_IN_ERFF,
BUILT_IN_ERFL,
BUILT_IN_EXP,
BUILT_IN_EXP10,
BUILT_IN_EXP10F,
BUILT_IN_EXP10L,
BUILT_IN_EXP2,
BUILT_IN_EXP2F,
BUILT_IN_EXP2L,
BUILT_IN_EXPF,
BUILT_IN_EXPL,
BUILT_IN_EXPM1,
BUILT_IN_EXPM1F,
BUILT_IN_EXPM1L,
BUILT_IN_FABS,
BUILT_IN_FABSF,
BUILT_IN_FABSL,
BUILT_IN_FDIM,
BUILT_IN_FDIMF,
BUILT_IN_FDIML,
BUILT_IN_FLOOR,
BUILT_IN_FLOORF,
BUILT_IN_FLOORL,
BUILT_IN_FMA,
BUILT_IN_FMAF,
BUILT_IN_FMAL,
BUILT_IN_FMAX,
BUILT_IN_FMAXF,
BUILT_IN_FMAXL,
BUILT_IN_FMIN,
BUILT_IN_FMINF,
BUILT_IN_FMINL,
BUILT_IN_FMOD,
BUILT_IN_FMODF,
BUILT_IN_FMODL,
BUILT_IN_FREXP,
BUILT_IN_FREXPF,
BUILT_IN_FREXPL,
BUILT_IN_GAMMA,
BUILT_IN_GAMMAF,
BUILT_IN_GAMMAL,
BUILT_IN_GAMMA_R,
BUILT_IN_GAMMAF_R,
BUILT_IN_GAMMAL_R,
BUILT_IN_HUGE_VAL,
BUILT_IN_HUGE_VALF,
BUILT_IN_HUGE_VALL,
BUILT_IN_HYPOT,
BUILT_IN_HYPOTF,
BUILT_IN_HYPOTL,
BUILT_IN_ILOGB,
BUILT_IN_ILOGBF,
BUILT_IN_ILOGBL,
BUILT_IN_INF,
BUILT_IN_INFF,
BUILT_IN_INFL,
BUILT_IN_INFD32,
BUILT_IN_INFD64,
BUILT_IN_INFD128,
BUILT_IN_J0,
BUILT_IN_J0F,
BUILT_IN_J0L,
BUILT_IN_J1,
BUILT_IN_J1F,
BUILT_IN_J1L,
BUILT_IN_JN,
BUILT_IN_JNF,
BUILT_IN_JNL,
BUILT_IN_LCEIL,
BUILT_IN_LCEILF,
BUILT_IN_LCEILL,
BUILT_IN_LDEXP,
BUILT_IN_LDEXPF,
BUILT_IN_LDEXPL,
BUILT_IN_LFLOOR,
BUILT_IN_LFLOORF,
BUILT_IN_LFLOORL,
BUILT_IN_LGAMMA,
BUILT_IN_LGAMMAF,
BUILT_IN_LGAMMAL,
BUILT_IN_LGAMMA_R,
BUILT_IN_LGAMMAF_R,
BUILT_IN_LGAMMAL_R,
BUILT_IN_LLCEIL,
BUILT_IN_LLCEILF,
BUILT_IN_LLCEILL,
BUILT_IN_LLFLOOR,
BUILT_IN_LLFLOORF,
BUILT_IN_LLFLOORL,
BUILT_IN_LLRINT,
BUILT_IN_LLRINTF,
BUILT_IN_LLRINTL,
BUILT_IN_LLROUND,
BUILT_IN_LLROUNDF,
BUILT_IN_LLROUNDL,
BUILT_IN_LOG,
BUILT_IN_LOG10,
BUILT_IN_LOG10F,
BUILT_IN_LOG10L,
BUILT_IN_LOG1P,
BUILT_IN_LOG1PF,
BUILT_IN_LOG1PL,
BUILT_IN_LOG2,
BUILT_IN_LOG2F,
BUILT_IN_LOG2L,
BUILT_IN_LOGB,
BUILT_IN_LOGBF,
BUILT_IN_LOGBL,
BUILT_IN_LOGF,
BUILT_IN_LOGL,
BUILT_IN_LRINT,
BUILT_IN_LRINTF,
BUILT_IN_LRINTL,
BUILT_IN_LROUND,
BUILT_IN_LROUNDF,
BUILT_IN_LROUNDL,
BUILT_IN_MODF,
BUILT_IN_MODFF,
BUILT_IN_MODFL,
BUILT_IN_NAN,
BUILT_IN_NANF,
BUILT_IN_NANL,
BUILT_IN_NAND32,
BUILT_IN_NAND64,
BUILT_IN_NAND128,
BUILT_IN_NANS,
BUILT_IN_NANSF,
BUILT_IN_NANSL,
BUILT_IN_NEARBYINT,
BUILT_IN_NEARBYINTF,
BUILT_IN_NEARBYINTL,
BUILT_IN_NEXTAFTER,
BUILT_IN_NEXTAFTERF,
BUILT_IN_NEXTAFTERL,
BUILT_IN_NEXTTOWARD,
BUILT_IN_NEXTTOWARDF,
BUILT_IN_NEXTTOWARDL,
BUILT_IN_POW,
BUILT_IN_POW10,
BUILT_IN_POW10F,
BUILT_IN_POW10L,
BUILT_IN_POWF,
BUILT_IN_POWI,
BUILT_IN_POWIF,
BUILT_IN_POWIL,
BUILT_IN_POWL,
BUILT_IN_REMAINDER,
BUILT_IN_REMAINDERF,
BUILT_IN_REMAINDERL,
BUILT_IN_REMQUO,
BUILT_IN_REMQUOF,
BUILT_IN_REMQUOL,
BUILT_IN_RINT,
BUILT_IN_RINTF,
BUILT_IN_RINTL,
BUILT_IN_ROUND,
BUILT_IN_ROUNDF,
BUILT_IN_ROUNDL,
BUILT_IN_SCALB,
BUILT_IN_SCALBF,
BUILT_IN_SCALBL,
BUILT_IN_SCALBLN,
BUILT_IN_SCALBLNF,
BUILT_IN_SCALBLNL,
BUILT_IN_SCALBN,
BUILT_IN_SCALBNF,
BUILT_IN_SCALBNL,
BUILT_IN_SIGNBIT,
BUILT_IN_SIGNBITF,
BUILT_IN_SIGNBITL,
BUILT_IN_SIGNBITD32,
BUILT_IN_SIGNBITD64,
BUILT_IN_SIGNBITD128,
BUILT_IN_SIGNIFICAND,
BUILT_IN_SIGNIFICANDF,
BUILT_IN_SIGNIFICANDL,
BUILT_IN_SIN,
BUILT_IN_SINCOS,
BUILT_IN_SINCOSF,
BUILT_IN_SINCOSL,
BUILT_IN_SINF,
BUILT_IN_SINH,
BUILT_IN_SINHF,
BUILT_IN_SINHL,
BUILT_IN_SINL,
BUILT_IN_SQRT,
BUILT_IN_SQRTF,
BUILT_IN_SQRTL,
BUILT_IN_TAN,
BUILT_IN_TANF,
BUILT_IN_TANH,
BUILT_IN_TANHF,
BUILT_IN_TANHL,
BUILT_IN_TANL,
BUILT_IN_TGAMMA,
BUILT_IN_TGAMMAF,
BUILT_IN_TGAMMAL,
BUILT_IN_TRUNC,
BUILT_IN_TRUNCF,
BUILT_IN_TRUNCL,
BUILT_IN_Y0,
BUILT_IN_Y0F,
BUILT_IN_Y0L,
BUILT_IN_Y1,
BUILT_IN_Y1F,
BUILT_IN_Y1L,
BUILT_IN_YN,
BUILT_IN_YNF,
BUILT_IN_YNL,


BUILT_IN_CABS,
BUILT_IN_CABSF,
BUILT_IN_CABSL,
BUILT_IN_CACOS,
BUILT_IN_CACOSF,
BUILT_IN_CACOSH,
BUILT_IN_CACOSHF,
BUILT_IN_CACOSHL,
BUILT_IN_CACOSL,
BUILT_IN_CARG,
BUILT_IN_CARGF,
BUILT_IN_CARGL,
BUILT_IN_CASIN,
BUILT_IN_CASINF,
BUILT_IN_CASINH,
BUILT_IN_CASINHF,
BUILT_IN_CASINHL,
BUILT_IN_CASINL,
BUILT_IN_CATAN,
BUILT_IN_CATANF,
BUILT_IN_CATANH,
BUILT_IN_CATANHF,
BUILT_IN_CATANHL,
BUILT_IN_CATANL,
BUILT_IN_CCOS,
BUILT_IN_CCOSF,
BUILT_IN_CCOSH,
BUILT_IN_CCOSHF,
BUILT_IN_CCOSHL,
BUILT_IN_CCOSL,
BUILT_IN_CEXP,
BUILT_IN_CEXPF,
BUILT_IN_CEXPL,
BUILT_IN_CEXPI,
BUILT_IN_CEXPIF,
BUILT_IN_CEXPIL,
BUILT_IN_CIMAG,
BUILT_IN_CIMAGF,
BUILT_IN_CIMAGL,
BUILT_IN_CLOG,
BUILT_IN_CLOGF,
BUILT_IN_CLOGL,
BUILT_IN_CLOG10,
BUILT_IN_CLOG10F,
BUILT_IN_CLOG10L,
BUILT_IN_CONJ,
BUILT_IN_CONJF,
BUILT_IN_CONJL,
BUILT_IN_CPOW,
BUILT_IN_CPOWF,
BUILT_IN_CPOWL,
BUILT_IN_CPROJ,
BUILT_IN_CPROJF,
BUILT_IN_CPROJL,
BUILT_IN_CREAL,
BUILT_IN_CREALF,
BUILT_IN_CREALL,
BUILT_IN_CSIN,
BUILT_IN_CSINF,
BUILT_IN_CSINH,
BUILT_IN_CSINHF,
BUILT_IN_CSINHL,
BUILT_IN_CSINL,
BUILT_IN_CSQRT,
BUILT_IN_CSQRTF,
BUILT_IN_CSQRTL,
BUILT_IN_CTAN,
BUILT_IN_CTANF,
BUILT_IN_CTANH,
BUILT_IN_CTANHF,
BUILT_IN_CTANHL,
BUILT_IN_CTANL,




BUILT_IN_BCMP,
BUILT_IN_BCOPY,
BUILT_IN_BZERO,
BUILT_IN_INDEX,
BUILT_IN_MEMCHR,
BUILT_IN_MEMCMP,
BUILT_IN_MEMCPY,
BUILT_IN_MEMMOVE,
BUILT_IN_MEMPCPY,
BUILT_IN_MEMSET,
BUILT_IN_RINDEX,
BUILT_IN_STPCPY,
BUILT_IN_STPNCPY,
BUILT_IN_STRCASECMP,
BUILT_IN_STRCAT,
BUILT_IN_STRCHR,
BUILT_IN_STRCMP,
BUILT_IN_STRCPY,
BUILT_IN_STRCSPN,
BUILT_IN_STRDUP,
BUILT_IN_STRNDUP,
BUILT_IN_STRLEN,
BUILT_IN_STRNCASECMP,
BUILT_IN_STRNCAT,
BUILT_IN_STRNCMP,
BUILT_IN_STRNCPY,
BUILT_IN_STRPBRK,
BUILT_IN_STRRCHR,
BUILT_IN_STRSPN,
BUILT_IN_STRSTR,


BUILT_IN_FPRINTF,
BUILT_IN_FPRINTF_UNLOCKED,
BUILT_IN_PUTC,
BUILT_IN_PUTC_UNLOCKED,
BUILT_IN_FPUTC,
BUILT_IN_FPUTC_UNLOCKED,
BUILT_IN_FPUTS,
BUILT_IN_FPUTS_UNLOCKED,
BUILT_IN_FSCANF,
BUILT_IN_FWRITE,
BUILT_IN_FWRITE_UNLOCKED,
BUILT_IN_PRINTF,
BUILT_IN_PRINTF_UNLOCKED,
BUILT_IN_PUTCHAR,
BUILT_IN_PUTCHAR_UNLOCKED,
BUILT_IN_PUTS,
BUILT_IN_PUTS_UNLOCKED,
BUILT_IN_SCANF,
BUILT_IN_SNPRINTF,
BUILT_IN_SPRINTF,
BUILT_IN_SSCANF,
BUILT_IN_VFPRINTF,
BUILT_IN_VFSCANF,
BUILT_IN_VPRINTF,
BUILT_IN_VSCANF,
BUILT_IN_VSNPRINTF,
BUILT_IN_VSPRINTF,
BUILT_IN_VSSCANF,


BUILT_IN_ISALNUM,
BUILT_IN_ISALPHA,
BUILT_IN_ISASCII,
BUILT_IN_ISBLANK,
BUILT_IN_ISCNTRL,
BUILT_IN_ISDIGIT,
BUILT_IN_ISGRAPH,
BUILT_IN_ISLOWER,
BUILT_IN_ISPRINT,
BUILT_IN_ISPUNCT,
BUILT_IN_ISSPACE,
BUILT_IN_ISUPPER,
BUILT_IN_ISXDIGIT,
BUILT_IN_TOASCII,
BUILT_IN_TOLOWER,
BUILT_IN_TOUPPER,


BUILT_IN_ISWALNUM,
BUILT_IN_ISWALPHA,
BUILT_IN_ISWBLANK,
BUILT_IN_ISWCNTRL,
BUILT_IN_ISWDIGIT,
BUILT_IN_ISWGRAPH,
BUILT_IN_ISWLOWER,
BUILT_IN_ISWPRINT,
BUILT_IN_ISWPUNCT,
BUILT_IN_ISWSPACE,
BUILT_IN_ISWUPPER,
BUILT_IN_ISWXDIGIT,
BUILT_IN_TOWLOWER,
BUILT_IN_TOWUPPER,


BUILT_IN_ABORT,
BUILT_IN_ABS,
BUILT_IN_AGGREGATE_INCOMING_ADDRESS,
BUILT_IN_ALLOCA,
BUILT_IN_APPLY,
BUILT_IN_APPLY_ARGS,
BUILT_IN_BSWAP32,
BUILT_IN_BSWAP64,
BUILT_IN_CLEAR_CACHE,
BUILT_IN_CALLOC,
BUILT_IN_CLASSIFY_TYPE,
BUILT_IN_CLZ,
BUILT_IN_CLZIMAX,
BUILT_IN_CLZL,
BUILT_IN_CLZLL,
BUILT_IN_CONSTANT_P,
BUILT_IN_CTZ,
BUILT_IN_CTZIMAX,
BUILT_IN_CTZL,
BUILT_IN_CTZLL,
BUILT_IN_DCGETTEXT,
BUILT_IN_DGETTEXT,
BUILT_IN_DWARF_CFA,
BUILT_IN_DWARF_SP_COLUMN,
BUILT_IN_EH_RETURN,
BUILT_IN_EH_RETURN_DATA_REGNO,
BUILT_IN_EXECL,
BUILT_IN_EXECLP,
BUILT_IN_EXECLE,
BUILT_IN_EXECV,
BUILT_IN_EXECVP,
BUILT_IN_EXECVE,
BUILT_IN_EXIT,
BUILT_IN_EXPECT,
BUILT_IN_EXTEND_POINTER,
BUILT_IN_EXTRACT_RETURN_ADDR,
BUILT_IN_FFS,
BUILT_IN_FFSIMAX,
BUILT_IN_FFSL,
BUILT_IN_FFSLL,
BUILT_IN_FORK,
BUILT_IN_FRAME_ADDRESS,
BUILT_IN_FREE,
BUILT_IN_FROB_RETURN_ADDR,
BUILT_IN_GETTEXT,
BUILT_IN_IMAXABS,
BUILT_IN_INIT_DWARF_REG_SIZES,
BUILT_IN_FINITE,
BUILT_IN_FINITEF,
BUILT_IN_FINITEL,
BUILT_IN_FINITED32,
BUILT_IN_FINITED64,
BUILT_IN_FINITED128,
BUILT_IN_FPCLASSIFY,
BUILT_IN_ISFINITE,
BUILT_IN_ISINF_SIGN,
BUILT_IN_ISINF,
BUILT_IN_ISINFF,
BUILT_IN_ISINFL,
BUILT_IN_ISINFD32,
BUILT_IN_ISINFD64,
BUILT_IN_ISINFD128,
BUILT_IN_ISNAN,
BUILT_IN_ISNANF,
BUILT_IN_ISNANL,
BUILT_IN_ISNAND32,
BUILT_IN_ISNAND64,
BUILT_IN_ISNAND128,
BUILT_IN_ISNORMAL,
BUILT_IN_ISGREATER,
BUILT_IN_ISGREATEREQUAL,
BUILT_IN_ISLESS,
BUILT_IN_ISLESSEQUAL,
BUILT_IN_ISLESSGREATER,
BUILT_IN_ISUNORDERED,
BUILT_IN_LABS,
BUILT_IN_LLABS,
BUILT_IN_LONGJMP,
BUILT_IN_MALLOC,
BUILT_IN_NEXT_ARG,
BUILT_IN_PARITY,
BUILT_IN_PARITYIMAX,
BUILT_IN_PARITYL,
BUILT_IN_PARITYLL,
BUILT_IN_POPCOUNT,
BUILT_IN_POPCOUNTIMAX,
BUILT_IN_POPCOUNTL,
BUILT_IN_POPCOUNTLL,
BUILT_IN_PREFETCH,
BUILT_IN_REALLOC,
BUILT_IN_RETURN,
BUILT_IN_RETURN_ADDRESS,
BUILT_IN_SAVEREGS,
BUILT_IN_SETJMP,
BUILT_IN_STRFMON,
BUILT_IN_STRFTIME,
BUILT_IN_TRAP,
BUILT_IN_UNREACHABLE,
BUILT_IN_UNWIND_INIT,
BUILT_IN_UPDATE_SETJMP_BUF,
BUILT_IN_VA_COPY,
BUILT_IN_VA_END,
BUILT_IN_VA_START,
BUILT_IN_VA_ARG_PACK,
BUILT_IN_VA_ARG_PACK_LEN,
BUILT_IN__EXIT,
BUILT_IN__EXIT2,


BUILT_IN_INIT_TRAMPOLINE,
BUILT_IN_ADJUST_TRAMPOLINE,
BUILT_IN_NONLOCAL_GOTO,


BUILT_IN_SETJMP_SETUP,
BUILT_IN_SETJMP_DISPATCHER,
BUILT_IN_SETJMP_RECEIVER,


BUILT_IN_STACK_SAVE,
BUILT_IN_STACK_RESTORE,


BUILT_IN_OBJECT_SIZE,
BUILT_IN_MEMCPY_CHK,
BUILT_IN_MEMMOVE_CHK,
BUILT_IN_MEMPCPY_CHK,
BUILT_IN_MEMSET_CHK,
BUILT_IN_STPCPY_CHK,
BUILT_IN_STRCAT_CHK,
BUILT_IN_STRCPY_CHK,
BUILT_IN_STRNCAT_CHK,
BUILT_IN_STRNCPY_CHK,
BUILT_IN_SNPRINTF_CHK,
BUILT_IN_SPRINTF_CHK,
BUILT_IN_VSNPRINTF_CHK,
BUILT_IN_VSPRINTF_CHK,
BUILT_IN_FPRINTF_CHK,
BUILT_IN_PRINTF_CHK,
BUILT_IN_VFPRINTF_CHK,
BUILT_IN_VPRINTF_CHK,


BUILT_IN_PROFILE_FUNC_ENTER,

BUILT_IN_PROFILE_FUNC_EXIT,



BUILT_IN_EMUTLS_GET_ADDRESS,




BUILT_IN_EMUTLS_REGISTER_COMMON,






BUILT_IN_UNWIND_RESUME,
BUILT_IN_CXA_END_CLEANUP,
BUILT_IN_EH_POINTER,
BUILT_IN_EH_FILTER,
BUILT_IN_EH_COPY_VALUES,


# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/sync-builtins.def" 1
# 31 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/sync-builtins.def"
BUILT_IN_FETCH_AND_ADD_N,

BUILT_IN_FETCH_AND_ADD_1,

BUILT_IN_FETCH_AND_ADD_2,

BUILT_IN_FETCH_AND_ADD_4,

BUILT_IN_FETCH_AND_ADD_8,

BUILT_IN_FETCH_AND_ADD_16,


BUILT_IN_FETCH_AND_SUB_N,

BUILT_IN_FETCH_AND_SUB_1,

BUILT_IN_FETCH_AND_SUB_2,

BUILT_IN_FETCH_AND_SUB_4,

BUILT_IN_FETCH_AND_SUB_8,

BUILT_IN_FETCH_AND_SUB_16,


BUILT_IN_FETCH_AND_OR_N,

BUILT_IN_FETCH_AND_OR_1,

BUILT_IN_FETCH_AND_OR_2,

BUILT_IN_FETCH_AND_OR_4,

BUILT_IN_FETCH_AND_OR_8,

BUILT_IN_FETCH_AND_OR_16,


BUILT_IN_FETCH_AND_AND_N,

BUILT_IN_FETCH_AND_AND_1,

BUILT_IN_FETCH_AND_AND_2,

BUILT_IN_FETCH_AND_AND_4,

BUILT_IN_FETCH_AND_AND_8,

BUILT_IN_FETCH_AND_AND_16,


BUILT_IN_FETCH_AND_XOR_N,

BUILT_IN_FETCH_AND_XOR_1,

BUILT_IN_FETCH_AND_XOR_2,

BUILT_IN_FETCH_AND_XOR_4,

BUILT_IN_FETCH_AND_XOR_8,

BUILT_IN_FETCH_AND_XOR_16,


BUILT_IN_FETCH_AND_NAND_N,

BUILT_IN_FETCH_AND_NAND_1,

BUILT_IN_FETCH_AND_NAND_2,

BUILT_IN_FETCH_AND_NAND_4,

BUILT_IN_FETCH_AND_NAND_8,

BUILT_IN_FETCH_AND_NAND_16,


BUILT_IN_ADD_AND_FETCH_N,

BUILT_IN_ADD_AND_FETCH_1,

BUILT_IN_ADD_AND_FETCH_2,

BUILT_IN_ADD_AND_FETCH_4,

BUILT_IN_ADD_AND_FETCH_8,

BUILT_IN_ADD_AND_FETCH_16,


BUILT_IN_SUB_AND_FETCH_N,

BUILT_IN_SUB_AND_FETCH_1,

BUILT_IN_SUB_AND_FETCH_2,

BUILT_IN_SUB_AND_FETCH_4,

BUILT_IN_SUB_AND_FETCH_8,

BUILT_IN_SUB_AND_FETCH_16,


BUILT_IN_OR_AND_FETCH_N,

BUILT_IN_OR_AND_FETCH_1,

BUILT_IN_OR_AND_FETCH_2,

BUILT_IN_OR_AND_FETCH_4,

BUILT_IN_OR_AND_FETCH_8,

BUILT_IN_OR_AND_FETCH_16,


BUILT_IN_AND_AND_FETCH_N,

BUILT_IN_AND_AND_FETCH_1,

BUILT_IN_AND_AND_FETCH_2,

BUILT_IN_AND_AND_FETCH_4,

BUILT_IN_AND_AND_FETCH_8,

BUILT_IN_AND_AND_FETCH_16,


BUILT_IN_XOR_AND_FETCH_N,

BUILT_IN_XOR_AND_FETCH_1,

BUILT_IN_XOR_AND_FETCH_2,

BUILT_IN_XOR_AND_FETCH_4,

BUILT_IN_XOR_AND_FETCH_8,

BUILT_IN_XOR_AND_FETCH_16,


BUILT_IN_NAND_AND_FETCH_N,

BUILT_IN_NAND_AND_FETCH_1,

BUILT_IN_NAND_AND_FETCH_2,

BUILT_IN_NAND_AND_FETCH_4,

BUILT_IN_NAND_AND_FETCH_8,

BUILT_IN_NAND_AND_FETCH_16,


BUILT_IN_BOOL_COMPARE_AND_SWAP_N,


BUILT_IN_BOOL_COMPARE_AND_SWAP_1,


BUILT_IN_BOOL_COMPARE_AND_SWAP_2,


BUILT_IN_BOOL_COMPARE_AND_SWAP_4,


BUILT_IN_BOOL_COMPARE_AND_SWAP_8,


BUILT_IN_BOOL_COMPARE_AND_SWAP_16,



BUILT_IN_VAL_COMPARE_AND_SWAP_N,


BUILT_IN_VAL_COMPARE_AND_SWAP_1,


BUILT_IN_VAL_COMPARE_AND_SWAP_2,


BUILT_IN_VAL_COMPARE_AND_SWAP_4,


BUILT_IN_VAL_COMPARE_AND_SWAP_8,


BUILT_IN_VAL_COMPARE_AND_SWAP_16,



BUILT_IN_LOCK_TEST_AND_SET_N,

BUILT_IN_LOCK_TEST_AND_SET_1,

BUILT_IN_LOCK_TEST_AND_SET_2,

BUILT_IN_LOCK_TEST_AND_SET_4,

BUILT_IN_LOCK_TEST_AND_SET_8,

BUILT_IN_LOCK_TEST_AND_SET_16,


BUILT_IN_LOCK_RELEASE_N,

BUILT_IN_LOCK_RELEASE_1,

BUILT_IN_LOCK_RELEASE_2,

BUILT_IN_LOCK_RELEASE_4,

BUILT_IN_LOCK_RELEASE_8,

BUILT_IN_LOCK_RELEASE_16,


BUILT_IN_SYNCHRONIZE,
# 772 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/builtins.def" 2


# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/omp-builtins.def" 1
# 27 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/omp-builtins.def"
BUILT_IN_OMP_GET_THREAD_NUM,

BUILT_IN_OMP_GET_NUM_THREADS,


BUILT_IN_GOMP_ATOMIC_START,

BUILT_IN_GOMP_ATOMIC_END,

BUILT_IN_GOMP_BARRIER,

BUILT_IN_GOMP_TASKWAIT,

BUILT_IN_GOMP_CRITICAL_START,

BUILT_IN_GOMP_CRITICAL_END,

BUILT_IN_GOMP_CRITICAL_NAME_START,


BUILT_IN_GOMP_CRITICAL_NAME_END,





BUILT_IN_GOMP_LOOP_STATIC_START,



BUILT_IN_GOMP_LOOP_DYNAMIC_START,



BUILT_IN_GOMP_LOOP_GUIDED_START,



BUILT_IN_GOMP_LOOP_RUNTIME_START,



BUILT_IN_GOMP_LOOP_ORDERED_STATIC_START,



BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_START,



BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_START,



BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_START,



BUILT_IN_GOMP_LOOP_STATIC_NEXT,

BUILT_IN_GOMP_LOOP_DYNAMIC_NEXT,

BUILT_IN_GOMP_LOOP_GUIDED_NEXT,

BUILT_IN_GOMP_LOOP_RUNTIME_NEXT,

BUILT_IN_GOMP_LOOP_ORDERED_STATIC_NEXT,


BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_NEXT,


BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_NEXT,


BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_NEXT,


BUILT_IN_GOMP_LOOP_ULL_STATIC_START,



BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_START,



BUILT_IN_GOMP_LOOP_ULL_GUIDED_START,



BUILT_IN_GOMP_LOOP_ULL_RUNTIME_START,



BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_START,



BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_START,



BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_START,



BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_START,



BUILT_IN_GOMP_LOOP_ULL_STATIC_NEXT,

BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_NEXT,

BUILT_IN_GOMP_LOOP_ULL_GUIDED_NEXT,

BUILT_IN_GOMP_LOOP_ULL_RUNTIME_NEXT,

BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_NEXT,


BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_NEXT,


BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_NEXT,


BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_NEXT,





BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START,



BUILT_IN_GOMP_PARALLEL_LOOP_DYNAMIC_START,



BUILT_IN_GOMP_PARALLEL_LOOP_GUIDED_START,



BUILT_IN_GOMP_PARALLEL_LOOP_RUNTIME_START,



BUILT_IN_GOMP_LOOP_END,

BUILT_IN_GOMP_LOOP_END_NOWAIT,

BUILT_IN_GOMP_ORDERED_START,

BUILT_IN_GOMP_ORDERED_END,

BUILT_IN_GOMP_PARALLEL_START,

BUILT_IN_GOMP_PARALLEL_END,

BUILT_IN_GOMP_TASK,


BUILT_IN_GOMP_SECTIONS_START,

BUILT_IN_GOMP_SECTIONS_NEXT,

BUILT_IN_GOMP_PARALLEL_SECTIONS_START,


BUILT_IN_GOMP_SECTIONS_END,

BUILT_IN_GOMP_SECTIONS_END_NOWAIT,


BUILT_IN_GOMP_SINGLE_START,

BUILT_IN_GOMP_SINGLE_COPY_START,

BUILT_IN_GOMP_SINGLE_COPY_END,
# 774 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/builtins.def" 2
# 230 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2



  BUILT_IN_COMPLEX_MUL_MIN,
  BUILT_IN_COMPLEX_MUL_MAX
    = BUILT_IN_COMPLEX_MUL_MIN
      + MAX_MODE_COMPLEX_FLOAT
      - MIN_MODE_COMPLEX_FLOAT,

  BUILT_IN_COMPLEX_DIV_MIN,
  BUILT_IN_COMPLEX_DIV_MAX
    = BUILT_IN_COMPLEX_DIV_MIN
      + MAX_MODE_COMPLEX_FLOAT
      - MIN_MODE_COMPLEX_FLOAT,


  END_BUILTINS
};



extern const char * built_in_names[(int) END_BUILTINS];
# 276 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern tree built_in_decls[(int) END_BUILTINS];
extern tree implicit_built_in_decls[(int) END_BUILTINS];




extern const char omp_clause_num_ops[];
extern const char * const omp_clause_code_name[];



enum omp_clause_code
{


  OMP_CLAUSE_ERROR = 0,


  OMP_CLAUSE_PRIVATE,


  OMP_CLAUSE_SHARED,


  OMP_CLAUSE_FIRSTPRIVATE,


  OMP_CLAUSE_LASTPRIVATE,
# 312 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
  OMP_CLAUSE_REDUCTION,


  OMP_CLAUSE_COPYIN,


  OMP_CLAUSE_COPYPRIVATE,


  OMP_CLAUSE_IF,


  OMP_CLAUSE_NUM_THREADS,


  OMP_CLAUSE_SCHEDULE,


  OMP_CLAUSE_NOWAIT,


  OMP_CLAUSE_ORDERED,


  OMP_CLAUSE_DEFAULT,


  OMP_CLAUSE_COLLAPSE,


  OMP_CLAUSE_UNTIED
};
# 367 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_base {
enum tree_code code : 16;

  unsigned side_effects_flag : 1;
  unsigned constant_flag : 1;
  unsigned addressable_flag : 1;
  unsigned volatile_flag : 1;
  unsigned readonly_flag : 1;
  unsigned unsigned_flag : 1;
  unsigned asm_written_flag: 1;
  unsigned nowarning_flag : 1;

  unsigned used_flag : 1;
  unsigned nothrow_flag : 1;
  unsigned static_flag : 1;
  unsigned public_flag : 1;
  unsigned private_flag : 1;
  unsigned protected_flag : 1;
  unsigned deprecated_flag : 1;
  unsigned saturating_flag : 1;

  unsigned default_def_flag : 1;
  unsigned lang_flag_0 : 1;
  unsigned lang_flag_1 : 1;
  unsigned lang_flag_2 : 1;
  unsigned lang_flag_3 : 1;
  unsigned lang_flag_4 : 1;
  unsigned lang_flag_5 : 1;
  unsigned lang_flag_6 : 1;

  unsigned visited : 1;
  unsigned packed_flag : 1;
  unsigned user_align : 1;
  unsigned nameless_flag : 1;

  unsigned spare : 12;




  unsigned address_space : 8;
};

struct tree_common {
  struct tree_base base;
  tree chain;
  tree type;
};
# 645 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
enum tree_node_structure_enum {
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/treestruct.def" 1
# 33 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/treestruct.def"
TS_BASE,
TS_COMMON,
TS_INT_CST,
TS_REAL_CST,
TS_FIXED_CST,
TS_VECTOR,
TS_STRING,
TS_COMPLEX,
TS_IDENTIFIER,
TS_DECL_MINIMAL,
TS_DECL_COMMON,
TS_DECL_WRTL,
TS_DECL_NON_COMMON,
TS_DECL_WITH_VIS,
TS_FIELD_DECL,
TS_VAR_DECL,
TS_PARM_DECL,
TS_LABEL_DECL,
TS_RESULT_DECL,
TS_CONST_DECL,
TS_TYPE_DECL,
TS_FUNCTION_DECL,
TS_TRANSLATION_UNIT_DECL,
TS_TYPE,
TS_LIST,
TS_VEC,
TS_EXP,
TS_SSA_NAME,
TS_BLOCK,
TS_BINFO,
TS_STATEMENT_LIST,
TS_CONSTRUCTOR,
TS_OMP_CLAUSE,
TS_OPTIMIZATION,
TS_TARGET_OPTION,
# 647 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
  LAST_TS_ENUM
};
# 945 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-check.h" 1
# 946 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
# 1409 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_int_cst {
  struct tree_common common;
  double_int int_cst;
};




struct real_value;




struct tree_real_cst {
  struct tree_common common;
  struct real_value * real_cst_ptr;
};


struct fixed_value;





struct tree_fixed_cst {
  struct tree_common common;
  struct fixed_value * fixed_cst_ptr;
};






struct tree_string {
  struct tree_common common;
  int length;
  char str[1];
};





struct tree_complex {
  struct tree_common common;
  tree real;
  tree imag;
};




struct tree_vector {
  struct tree_common common;
  tree elements;
};

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/symtab.h" 1
# 22 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/symtab.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/obstack.h" 1
# 157 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/obstack.h"
struct _obstack_chunk
{
  char *limit;
  struct _obstack_chunk *prev;
  char contents[4];
};

struct obstack
{
  long chunk_size;
  struct _obstack_chunk *chunk;
  char *object_base;
  char *next_free;
  char *chunk_limit;
  int temp;
  int alignment_mask;



  struct _obstack_chunk *(*chunkfun) (void *, long);
  void (*freefun) (void *, struct _obstack_chunk *);
  void *extra_arg;
  unsigned use_extra_arg:1;
  unsigned maybe_empty_object:1;



  unsigned alloc_failed:1;


};



extern void _obstack_newchunk (struct obstack *, int);
extern void _obstack_free (struct obstack *, void *);
extern int _obstack_begin (struct obstack *, int, int,
       void *(*) (long), void (*) (void *));
extern int _obstack_begin_1 (struct obstack *, int, int,
        void *(*) (void *, long),
        void (*) (void *, void *), void *);
extern int _obstack_memory_used (struct obstack *);




void obstack_init (struct obstack *obstack);

void * obstack_alloc (struct obstack *obstack, int size);

void * obstack_copy (struct obstack *obstack, void *address, int size);
void * obstack_copy0 (struct obstack *obstack, void *address, int size);

void obstack_free (struct obstack *obstack, void *block);

void obstack_blank (struct obstack *obstack, int size);

void obstack_grow (struct obstack *obstack, void *data, int size);
void obstack_grow0 (struct obstack *obstack, void *data, int size);

void obstack_1grow (struct obstack *obstack, int data_char);
void obstack_ptr_grow (struct obstack *obstack, void *data);
void obstack_int_grow (struct obstack *obstack, int data);

void * obstack_finish (struct obstack *obstack);

int obstack_object_size (struct obstack *obstack);

int obstack_room (struct obstack *obstack);
void obstack_make_room (struct obstack *obstack, int size);
void obstack_1grow_fast (struct obstack *obstack, int data_char);
void obstack_ptr_grow_fast (struct obstack *obstack, void *data);
void obstack_int_grow_fast (struct obstack *obstack, int data);
void obstack_blank_fast (struct obstack *obstack, int size);

void * obstack_base (struct obstack *obstack);
void * obstack_next_free (struct obstack *obstack);
int obstack_alignment_mask (struct obstack *obstack);
int obstack_chunk_size (struct obstack *obstack);
int obstack_memory_used (struct obstack *obstack);




extern void (*obstack_alloc_failed_handler) (void);


extern int obstack_exit_failure;
# 23 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/symtab.h" 2







typedef struct ht_identifier ht_identifier;
typedef struct ht_identifier *ht_identifier_ptr;
struct ht_identifier {
  const unsigned char *str;
  unsigned int len;
  unsigned int hash_value;
};




typedef struct ht hash_table;
typedef struct ht_identifier *hashnode;

enum ht_lookup_option {HT_NO_INSERT = 0, HT_ALLOC};


struct ht
{

  struct obstack stack;

  hashnode *entries;

  hashnode (*alloc_node) (hash_table *);


  void * (*alloc_subobject) (size_t);

  unsigned int nslots;
  unsigned int nelements;


  struct cpp_reader *pfile;


  unsigned int searches;
  unsigned int collisions;


  unsigned char entries_owned;
};


extern hash_table *ht_create (unsigned int order);


extern void ht_destroy (hash_table *);

extern hashnode ht_lookup (hash_table *, const unsigned char *,
      size_t, enum ht_lookup_option);
extern hashnode ht_lookup_with_hash (hash_table *, const unsigned char *,
                                     size_t, unsigned int,
                                     enum ht_lookup_option);






typedef int (*ht_cb) (struct cpp_reader *, hashnode, const void *);
extern void ht_forall (hash_table *, ht_cb, const void *);



extern void ht_purge (hash_table *, ht_cb, const void *);


extern void ht_load (hash_table *ht, hashnode *entries,
       unsigned int nslots, unsigned int nelements, unsigned char own);


extern void ht_dump_statistics (hash_table *);
# 1469 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 2
# 1486 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_identifier {
  struct tree_common common;
  struct ht_identifier id;
};





struct tree_list {
  struct tree_common common;
  tree purpose;
  tree value;
};
# 1508 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_vec {
  struct tree_common common;
  int length;
  tree a[1];
};
# 1559 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
typedef struct constructor_elt_d {
  tree index;
  tree value;
} constructor_elt;

typedef struct VEC_constructor_elt_base { unsigned num; unsigned alloc; constructor_elt vec[1]; } VEC_constructor_elt_base; typedef struct VEC_constructor_elt_none { VEC_constructor_elt_base base; } VEC_constructor_elt_none; static unsigned VEC_constructor_elt_base_length (const VEC_constructor_elt_base *vec_) { return vec_ ? vec_->num : 0; } static constructor_elt *VEC_constructor_elt_base_last (VEC_constructor_elt_base *vec_ ) { (void)(vec_ && vec_->num); return &vec_->vec[vec_->num - 1]; } static constructor_elt *VEC_constructor_elt_base_index (VEC_constructor_elt_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return &vec_->vec[ix_]; } static int VEC_constructor_elt_base_iterate (VEC_constructor_elt_base *vec_, unsigned ix_, constructor_elt **ptr) { if (vec_ && ix_ < vec_->num) { *ptr = &vec_->vec[ix_]; return 1; } else { *ptr = 0; return 0; } } static size_t VEC_constructor_elt_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_constructor_elt_base, vec) + alloc_ * sizeof(constructor_elt); } static void VEC_constructor_elt_base_embedded_init (VEC_constructor_elt_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_constructor_elt_base_space (VEC_constructor_elt_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_constructor_elt_base_splice (VEC_constructor_elt_base *dst_, VEC_constructor_elt_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (constructor_elt)); dst_->num += len_; } } static constructor_elt *VEC_constructor_elt_base_quick_push (VEC_constructor_elt_base *vec_, const constructor_elt *obj_ ) { constructor_elt *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; if (obj_) *slot_ = *obj_; return slot_; } static void VEC_constructor_elt_base_pop (VEC_constructor_elt_base *vec_ ) { (void)(vec_->num); --vec_->num; } static void VEC_constructor_elt_base_truncate (VEC_constructor_elt_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static constructor_elt *VEC_constructor_elt_base_replace (VEC_constructor_elt_base *vec_, unsigned ix_, const constructor_elt *obj_ ) { constructor_elt *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; if (obj_) *slot_ = *obj_; return slot_; } static constructor_elt *VEC_constructor_elt_base_quick_insert (VEC_constructor_elt_base *vec_, unsigned ix_, const constructor_elt *obj_ ) { constructor_elt *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (constructor_elt)); if (obj_) *slot_ = *obj_; return slot_; } static void VEC_constructor_elt_base_ordered_remove (VEC_constructor_elt_base *vec_, unsigned ix_ ) { constructor_elt *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (constructor_elt)); } static void VEC_constructor_elt_base_unordered_remove (VEC_constructor_elt_base *vec_, unsigned ix_ ) { (void)(ix_ < vec_->num); vec_->vec[ix_] = vec_->vec[--vec_->num]; } static void VEC_constructor_elt_base_block_remove (VEC_constructor_elt_base *vec_, unsigned ix_, unsigned len_ ) { constructor_elt *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (constructor_elt)); } static constructor_elt *VEC_constructor_elt_base_address (VEC_constructor_elt_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_constructor_elt_base_lower_bound (VEC_constructor_elt_base *vec_, const constructor_elt *obj_, unsigned char (*lessthan_)(const constructor_elt *, const constructor_elt *) ) { unsigned int len_ = VEC_constructor_elt_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { constructor_elt *middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_constructor_elt_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_constructor_elt_gc { VEC_constructor_elt_base base; } VEC_constructor_elt_gc; static VEC_constructor_elt_gc *VEC_constructor_elt_gc_alloc (int alloc_ ) { return (VEC_constructor_elt_gc *) vec_gc_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_constructor_elt_gc, base.vec), sizeof (constructor_elt) ); } static VEC_constructor_elt_gc *VEC_constructor_elt_gc_copy (VEC_constructor_elt_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_constructor_elt_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_constructor_elt_gc *)(vec_gc_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_constructor_elt_gc, base.vec), sizeof (constructor_elt) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (constructor_elt) * len_); } return new_vec_; } static void VEC_constructor_elt_gc_free (VEC_constructor_elt_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static int VEC_constructor_elt_gc_reserve (VEC_constructor_elt_gc **vec_, int alloc_ ) { int extend = !VEC_constructor_elt_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_constructor_elt_gc *) vec_gc_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_constructor_elt_gc, base.vec), sizeof (constructor_elt) ); return extend; } static int VEC_constructor_elt_gc_reserve_exact (VEC_constructor_elt_gc **vec_, int alloc_ ) { int extend = !VEC_constructor_elt_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_constructor_elt_gc *) vec_gc_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_constructor_elt_gc, base.vec), sizeof (constructor_elt) ); return extend; } static void VEC_constructor_elt_gc_safe_grow (VEC_constructor_elt_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_constructor_elt_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_constructor_elt_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_constructor_elt_gc_safe_grow_cleared (VEC_constructor_elt_gc **vec_, int size_ ) { int oldsize = VEC_constructor_elt_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_constructor_elt_gc_safe_grow (vec_, size_ ); memset (&(VEC_constructor_elt_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (constructor_elt) * (size_ - oldsize)); } static void VEC_constructor_elt_gc_safe_splice (VEC_constructor_elt_gc **dst_, VEC_constructor_elt_base *src_ ) { if (src_) { VEC_constructor_elt_gc_reserve_exact (dst_, src_->num ); VEC_constructor_elt_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static constructor_elt *VEC_constructor_elt_gc_safe_push (VEC_constructor_elt_gc **vec_, const constructor_elt *obj_ ) { VEC_constructor_elt_gc_reserve (vec_, 1 ); return VEC_constructor_elt_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static constructor_elt *VEC_constructor_elt_gc_safe_insert (VEC_constructor_elt_gc **vec_, unsigned ix_, const constructor_elt *obj_ ) { VEC_constructor_elt_gc_reserve (vec_, 1 ); return VEC_constructor_elt_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

struct tree_constructor {
  struct tree_common common;
  VEC_constructor_elt_gc *elts;
};
# 1612 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern void protected_set_expr_location (tree, location_t);
# 1833 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
enum omp_clause_schedule_kind
{
  OMP_CLAUSE_SCHEDULE_STATIC,
  OMP_CLAUSE_SCHEDULE_DYNAMIC,
  OMP_CLAUSE_SCHEDULE_GUIDED,
  OMP_CLAUSE_SCHEDULE_AUTO,
  OMP_CLAUSE_SCHEDULE_RUNTIME
};




enum omp_clause_default_kind
{
  OMP_CLAUSE_DEFAULT_UNSPECIFIED,
  OMP_CLAUSE_DEFAULT_SHARED,
  OMP_CLAUSE_DEFAULT_NONE,
  OMP_CLAUSE_DEFAULT_PRIVATE,
  OMP_CLAUSE_DEFAULT_FIRSTPRIVATE
};




struct tree_exp {
  struct tree_common common;
  location_t locus;
  tree block;
  tree

    operands[1];
};
# 1904 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct ptr_info_def;



typedef struct ssa_use_operand_d {
  struct ssa_use_operand_d* prev;
  struct ssa_use_operand_d* next;





  union { gimple stmt; tree ssa_name; } loc;
  tree * use;
} ssa_use_operand_t;




struct tree_ssa_name {
  struct tree_common common;


  tree var;


  gimple def_stmt;


  unsigned int version;


  struct ptr_info_def *ptr_info;


  struct ssa_use_operand_d imm_uses;
};

struct phi_arg_d {


  struct ssa_use_operand_d imm_use;
  tree def;
  location_t locus;
};
# 1963 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_omp_clause {
  struct tree_common common;
  location_t locus;
  enum omp_clause_code code;
  union omp_clause_subcode {
    enum omp_clause_default_kind default_kind;
    enum omp_clause_schedule_kind schedule_kind;
    enum tree_code reduction_code;
  } subcode;



  gimple_seq gimple_reduction_init;
  gimple_seq gimple_reduction_merge;

  tree ops[1];
};
# 2034 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_block {
  struct tree_common common;

  unsigned abstract_flag : 1;
  unsigned block_num : 31;

  location_t locus;

  tree vars;
  VEC_tree_gc *nonlocalized_vars;

  tree subblocks;
  tree supercontext;
  tree abstract_origin;
  tree fragment_origin;
  tree fragment_chain;
};
# 2090 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern enum machine_mode vector_type_mode (const_tree);
# 2330 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct die_struct;

struct tree_type {
  struct tree_common common;
  tree values;
  tree size;
  tree size_unit;
  tree attributes;
  unsigned int uid;

  unsigned int precision : 10;
  unsigned no_force_blk_flag : 1;
  unsigned needs_constructing_flag : 1;
  unsigned transparent_aggr_flag : 1;
  unsigned restrict_flag : 1;
  unsigned contains_placeholder_bits : 2;

enum machine_mode mode : 8;

  unsigned string_flag : 1;
  unsigned lang_flag_0 : 1;
  unsigned lang_flag_1 : 1;
  unsigned lang_flag_2 : 1;
  unsigned lang_flag_3 : 1;
  unsigned lang_flag_4 : 1;
  unsigned lang_flag_5 : 1;
  unsigned lang_flag_6 : 1;

  unsigned int align;
  alias_set_type alias_set;
  tree pointer_to;
  tree reference_to;
  union tree_type_symtab {
    int address;
    const char * pointer;
    struct die_struct * die;
  } symtab;
  tree name;
  tree minval;
  tree maxval;
  tree next_variant;
  tree main_variant;
  tree binfo;
  tree context;
  tree canonical;

  struct lang_type_t *lang_specific;
};
# 2482 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_binfo {
  struct tree_common common;

  tree offset;
  tree vtable;
  tree virtuals;
  tree vptr_field;
  VEC_tree_gc *base_accesses;
  tree inheritance;

  tree vtt_subvtt;
  tree vtt_vptr;

  VEC_tree_none base_binfos;
};
# 2526 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct function;
# 2579 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_decl_minimal {
  struct tree_common common;
  location_t locus;
  unsigned int uid;
  tree name;
  tree context;
};
# 2747 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_decl_common {
  struct tree_decl_minimal common;
  tree size;

enum machine_mode mode : 8;

  unsigned nonlocal_flag : 1;
  unsigned virtual_flag : 1;
  unsigned ignored_flag : 1;
  unsigned abstract_flag : 1;
  unsigned artificial_flag : 1;
  unsigned preserve_flag: 1;
  unsigned debug_expr_is_from : 1;

  unsigned lang_flag_0 : 1;
  unsigned lang_flag_1 : 1;
  unsigned lang_flag_2 : 1;
  unsigned lang_flag_3 : 1;
  unsigned lang_flag_4 : 1;
  unsigned lang_flag_5 : 1;
  unsigned lang_flag_6 : 1;
  unsigned lang_flag_7 : 1;
  unsigned lang_flag_8 : 1;



  unsigned decl_flag_0 : 1;



  unsigned decl_flag_1 : 1;



  unsigned decl_flag_2 : 1;


  unsigned gimple_reg_flag : 1;

  unsigned decl_by_reference_flag : 1;

  unsigned decl_restricted_flag : 1;



  unsigned decl_read_flag : 1;



  unsigned decl_nonshareable_flag : 1;


  unsigned int off_align : 8;




  unsigned int align;


  unsigned int pt_uid;

  tree size_unit;
  tree initial;
  tree attributes;
  tree abstract_origin;


  struct lang_decl *lang_specific;
};

extern tree decl_value_expr_lookup (tree);
extern void decl_value_expr_insert (tree, tree);
# 2863 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_decl_with_rtl {
  struct tree_decl_common common;
  rtx rtl;
};
# 2931 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_field_decl {
  struct tree_decl_common common;

  tree offset;
  tree bit_field_type;
  tree qualifier;
  tree bit_offset;
  tree fcontext;
};
# 2957 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_label_decl {
  struct tree_decl_with_rtl common;
  int label_decl_uid;
  int eh_landing_pad_nr;
};

struct var_ann_d;
struct tree_result_decl {
  struct tree_decl_with_rtl common;
  struct var_ann_d *ann;
};

struct tree_const_decl {
  struct tree_decl_with_rtl common;
};
# 2982 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_parm_decl {
  struct tree_decl_with_rtl common;
  rtx incoming_rtl;
  struct var_ann_d *ann;
};
# 3121 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_decl_with_vis {
 struct tree_decl_with_rtl common;
 tree assembler_name;
 tree section_name;
 tree comdat_group;


 unsigned defer_output : 1;
 unsigned hard_register : 1;
 unsigned thread_local : 1;
 unsigned common_flag : 1;
 unsigned in_text_section : 1;
 unsigned in_constant_pool : 1;
 unsigned dllimport_flag : 1;

 unsigned weak_flag : 1;

 unsigned seen_in_bind_expr : 1;
 unsigned comdat_flag : 1;
  enum symbol_visibility visibility : 2;
 unsigned visibility_specified : 1;

  enum tls_model tls_model : 3;


 unsigned init_priority_p : 1;

 unsigned shadowed_for_var_p : 1;

 unsigned implicit_section_name_p : 1;

};

extern tree decl_debug_expr_lookup (tree);
extern void decl_debug_expr_insert (tree, tree);
# 3166 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
typedef unsigned short priority_type;

extern priority_type decl_init_priority_lookup (tree);
extern priority_type decl_fini_priority_lookup (tree);
extern void decl_init_priority_insert (tree, priority_type);
extern void decl_fini_priority_insert (tree, priority_type);
# 3205 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_var_decl {
  struct tree_decl_with_vis common;
  struct var_ann_d *ann;
};
# 3227 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct
 tree_decl_non_common {
  struct tree_decl_with_vis common;

  tree saved_tree;

  tree arguments;

  tree result;

  tree vindex;
};
# 3369 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_function_decl {
  struct tree_decl_non_common common;

  struct function *f;


  tree personality;


  tree function_specific_target;
  tree function_specific_optimization;





enum built_in_function function_code : 11;
enum built_in_class built_in_class : 2;

  unsigned static_ctor_flag : 1;
  unsigned static_dtor_flag : 1;
  unsigned uninlinable : 1;

  unsigned possibly_inlined : 1;
  unsigned novops_flag : 1;
  unsigned returns_twice_flag : 1;
  unsigned malloc_flag : 1;
  unsigned operator_new_flag : 1;
  unsigned declared_inline_flag : 1;
  unsigned regdecl_flag : 1;

  unsigned no_inline_warning_flag : 1;
  unsigned no_instrument_function_entry_exit : 1;
  unsigned no_limit_stack : 1;
  unsigned disregard_inline_limits : 1;
  unsigned pure_flag : 1;
  unsigned looping_const_or_pure_flag : 1;



};







struct tree_translation_unit_decl {
  struct tree_decl_common common;

  const char * language;


};


extern VEC_tree_gc *all_translation_units;
# 3443 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_type_decl {
  struct tree_decl_non_common common;

};
# 3459 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
struct tree_statement_list_node
 {
  struct tree_statement_list_node *prev;
  struct tree_statement_list_node *next;
  tree stmt;
};

struct tree_statement_list
 {
  struct tree_common common;
  struct tree_statement_list_node *head;
  struct tree_statement_list_node *tail;
};




struct tree_optimization_option {
  struct tree_common common;


  struct cl_optimization opts;
};





extern tree build_optimization_node (void);



struct tree_target_option {
  struct tree_common common;


  struct cl_target_option opts;
};





extern tree build_target_option_node (void);






union
                                                         
tree_node {
  struct tree_base base;
  struct tree_common common;
  struct tree_int_cst int_cst;
  struct tree_real_cst real_cst;
  struct tree_fixed_cst fixed_cst;
  struct tree_vector vector;
  struct tree_string string;
  //struct tree_complex complex;
  struct tree_identifier identifier;
  struct tree_decl_minimal decl_minimal;
  struct tree_decl_common decl_common;
  struct tree_decl_with_rtl decl_with_rtl;
  struct tree_decl_non_common decl_non_common;
  struct tree_parm_decl parm_decl;
  struct tree_decl_with_vis decl_with_vis;
  struct tree_var_decl var_decl;
  struct tree_field_decl field_decl;
  struct tree_label_decl label_decl;
  struct tree_result_decl result_decl;
  struct tree_const_decl const_decl;
  struct tree_type_decl type_decl;
  struct tree_function_decl function_decl;
  struct tree_translation_unit_decl
    translation_unit_decl;
  struct tree_type type;
  struct tree_list list;
  struct tree_vec vec;
  struct tree_exp exp;
  struct tree_ssa_name ssa_name;
  struct tree_block block;
  struct tree_binfo binfo;
  struct tree_statement_list stmt_list;
  struct tree_constructor constructor;
  struct tree_omp_clause omp_clause;
  struct tree_optimization_option optimization;
  struct tree_target_option target_option;
};



enum tree_index
{
  TI_ERROR_MARK,
  TI_INTQI_TYPE,
  TI_INTHI_TYPE,
  TI_INTSI_TYPE,
  TI_INTDI_TYPE,
  TI_INTTI_TYPE,

  TI_UINTQI_TYPE,
  TI_UINTHI_TYPE,
  TI_UINTSI_TYPE,
  TI_UINTDI_TYPE,
  TI_UINTTI_TYPE,

  TI_UINT32_TYPE,
  TI_UINT64_TYPE,

  TI_INTEGER_ZERO,
  TI_INTEGER_ONE,
  TI_INTEGER_THREE,
  TI_INTEGER_MINUS_ONE,
  TI_NULL_POINTER,

  TI_SIZE_ZERO,
  TI_SIZE_ONE,

  TI_BITSIZE_ZERO,
  TI_BITSIZE_ONE,
  TI_BITSIZE_UNIT,

  TI_PUBLIC,
  TI_PROTECTED,
  TI_PRIVATE,

  TI_BOOLEAN_FALSE,
  TI_BOOLEAN_TRUE,

  TI_COMPLEX_INTEGER_TYPE,
  TI_COMPLEX_FLOAT_TYPE,
  TI_COMPLEX_DOUBLE_TYPE,
  TI_COMPLEX_LONG_DOUBLE_TYPE,

  TI_FLOAT_TYPE,
  TI_DOUBLE_TYPE,
  TI_LONG_DOUBLE_TYPE,

  TI_FLOAT_PTR_TYPE,
  TI_DOUBLE_PTR_TYPE,
  TI_LONG_DOUBLE_PTR_TYPE,
  TI_INTEGER_PTR_TYPE,

  TI_VOID_TYPE,
  TI_PTR_TYPE,
  TI_CONST_PTR_TYPE,
  TI_SIZE_TYPE,
  TI_PID_TYPE,
  TI_PTRDIFF_TYPE,
  TI_VA_LIST_TYPE,
  TI_VA_LIST_GPR_COUNTER_FIELD,
  TI_VA_LIST_FPR_COUNTER_FIELD,
  TI_BOOLEAN_TYPE,
  TI_FILEPTR_TYPE,

  TI_DFLOAT32_TYPE,
  TI_DFLOAT64_TYPE,
  TI_DFLOAT128_TYPE,
  TI_DFLOAT32_PTR_TYPE,
  TI_DFLOAT64_PTR_TYPE,
  TI_DFLOAT128_PTR_TYPE,

  TI_VOID_LIST_NODE,

  TI_MAIN_IDENTIFIER,

  TI_SAT_SFRACT_TYPE,
  TI_SAT_FRACT_TYPE,
  TI_SAT_LFRACT_TYPE,
  TI_SAT_LLFRACT_TYPE,
  TI_SAT_USFRACT_TYPE,
  TI_SAT_UFRACT_TYPE,
  TI_SAT_ULFRACT_TYPE,
  TI_SAT_ULLFRACT_TYPE,
  TI_SFRACT_TYPE,
  TI_FRACT_TYPE,
  TI_LFRACT_TYPE,
  TI_LLFRACT_TYPE,
  TI_USFRACT_TYPE,
  TI_UFRACT_TYPE,
  TI_ULFRACT_TYPE,
  TI_ULLFRACT_TYPE,
  TI_SAT_SACCUM_TYPE,
  TI_SAT_ACCUM_TYPE,
  TI_SAT_LACCUM_TYPE,
  TI_SAT_LLACCUM_TYPE,
  TI_SAT_USACCUM_TYPE,
  TI_SAT_UACCUM_TYPE,
  TI_SAT_ULACCUM_TYPE,
  TI_SAT_ULLACCUM_TYPE,
  TI_SACCUM_TYPE,
  TI_ACCUM_TYPE,
  TI_LACCUM_TYPE,
  TI_LLACCUM_TYPE,
  TI_USACCUM_TYPE,
  TI_UACCUM_TYPE,
  TI_ULACCUM_TYPE,
  TI_ULLACCUM_TYPE,
  TI_QQ_TYPE,
  TI_HQ_TYPE,
  TI_SQ_TYPE,
  TI_DQ_TYPE,
  TI_TQ_TYPE,
  TI_UQQ_TYPE,
  TI_UHQ_TYPE,
  TI_USQ_TYPE,
  TI_UDQ_TYPE,
  TI_UTQ_TYPE,
  TI_SAT_QQ_TYPE,
  TI_SAT_HQ_TYPE,
  TI_SAT_SQ_TYPE,
  TI_SAT_DQ_TYPE,
  TI_SAT_TQ_TYPE,
  TI_SAT_UQQ_TYPE,
  TI_SAT_UHQ_TYPE,
  TI_SAT_USQ_TYPE,
  TI_SAT_UDQ_TYPE,
  TI_SAT_UTQ_TYPE,
  TI_HA_TYPE,
  TI_SA_TYPE,
  TI_DA_TYPE,
  TI_TA_TYPE,
  TI_UHA_TYPE,
  TI_USA_TYPE,
  TI_UDA_TYPE,
  TI_UTA_TYPE,
  TI_SAT_HA_TYPE,
  TI_SAT_SA_TYPE,
  TI_SAT_DA_TYPE,
  TI_SAT_TA_TYPE,
  TI_SAT_UHA_TYPE,
  TI_SAT_USA_TYPE,
  TI_SAT_UDA_TYPE,
  TI_SAT_UTA_TYPE,

  TI_OPTIMIZATION_DEFAULT,
  TI_OPTIMIZATION_CURRENT,
  TI_TARGET_OPTION_DEFAULT,
  TI_TARGET_OPTION_CURRENT,
  TI_CURRENT_TARGET_PRAGMA,
  TI_CURRENT_OPTIMIZE_PRAGMA,

  TI_MAX
};

extern tree global_trees[TI_MAX];
# 3889 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
enum integer_type_kind
{
  itk_char,
  itk_signed_char,
  itk_unsigned_char,
  itk_short,
  itk_unsigned_short,
  itk_int,
  itk_unsigned_int,
  itk_long,
  itk_unsigned_long,
  itk_long_long,
  itk_unsigned_long_long,
  itk_int128,
  itk_unsigned_int128,
  itk_none
};

//typedef enum integer_type_kind integer_type_kind;



extern tree integer_types[itk_none];
# 3948 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
enum ptrmemfunc_vbit_where_t
{
  ptrmemfunc_vbit_in_pfn,
  ptrmemfunc_vbit_in_delta
};



extern tree decl_assembler_name (tree);
extern unsigned char decl_assembler_name_equal (tree decl, const_tree asmname);
extern hashval_t decl_assembler_name_hash (const_tree asmname);




extern size_t tree_size (const_tree);




extern size_t tree_code_size (enum tree_code);





extern tree make_node_stat (enum tree_code );




extern tree copy_node_stat (tree );




extern tree copy_list (tree);


extern tree make_tree_binfo_stat (unsigned );




extern tree make_tree_vec_stat (int );





extern tree get_identifier (const char *);
# 4011 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern tree get_identifier_with_length (const char *, size_t);





extern tree maybe_get_identifier (const char *);



extern tree build_nt (enum tree_code, ...);
extern tree build_nt_call_vec (tree, VEC_tree_gc *);

extern tree build0_stat (enum tree_code, tree );

extern tree build1_stat (enum tree_code, tree, tree );

extern tree build2_stat (enum tree_code, tree, tree, tree );

extern tree build3_stat (enum tree_code, tree, tree, tree, tree );

extern tree build4_stat (enum tree_code, tree, tree, tree, tree,
    tree );

extern tree build5_stat (enum tree_code, tree, tree, tree, tree, tree,
    tree );

extern tree build6_stat (enum tree_code, tree, tree, tree, tree, tree,
    tree, tree );





static tree
build1_stat_loc (location_t loc, enum tree_code code, tree type,
   tree arg1 )
{
  tree t = build1_stat (code, type, arg1 );
  if (((t) && ((tree_code_type[(int) (((enum tree_code) (t)->base.code))]) >= tcc_reference && (tree_code_type[(int) (((enum tree_code) (t)->base.code))]) <= tcc_expression)))
    ((t))->exp.locus = (loc);
  return t;
}


static tree
build2_stat_loc (location_t loc, enum tree_code code, tree type, tree arg0,
   tree arg1 )
{
  tree t = build2_stat (code, type, arg0, arg1 );
  if (((t) && ((tree_code_type[(int) (((enum tree_code) (t)->base.code))]) >= tcc_reference && (tree_code_type[(int) (((enum tree_code) (t)->base.code))]) <= tcc_expression)))
    ((t))->exp.locus = (loc);
  return t;
}


static tree
build3_stat_loc (location_t loc, enum tree_code code, tree type, tree arg0,
   tree arg1, tree arg2 )
{
  tree t = build3_stat (code, type, arg0, arg1, arg2 );
  if (((t) && ((tree_code_type[(int) (((enum tree_code) (t)->base.code))]) >= tcc_reference && (tree_code_type[(int) (((enum tree_code) (t)->base.code))]) <= tcc_expression)))
    ((t))->exp.locus = (loc);
  return t;
}



static tree
build4_stat_loc (location_t loc, enum tree_code code, tree type, tree arg0,
   tree arg1, tree arg2, tree arg3 )
{
  tree t = build4_stat (code, type, arg0, arg1, arg2, arg3 );
  if (((t) && ((tree_code_type[(int) (((enum tree_code) (t)->base.code))]) >= tcc_reference && (tree_code_type[(int) (((enum tree_code) (t)->base.code))]) <= tcc_expression)))
    ((t))->exp.locus = (loc);
  return t;
}



static tree
build5_stat_loc (location_t loc, enum tree_code code, tree type, tree arg0,
   tree arg1, tree arg2, tree arg3, tree arg4 )
{
  tree t = build5_stat (code, type, arg0, arg1, arg2, arg3,
   arg4 );
  if (((t) && ((tree_code_type[(int) (((enum tree_code) (t)->base.code))]) >= tcc_reference && (tree_code_type[(int) (((enum tree_code) (t)->base.code))]) <= tcc_expression)))
    ((t))->exp.locus = (loc);
  return t;
}



static tree
build6_stat_loc (location_t loc, enum tree_code code, tree type, tree arg0,
   tree arg1, tree arg2, tree arg3, tree arg4,
   tree arg5 )
{
  tree t = build6_stat (code, type, arg0, arg1, arg2, arg3, arg4,
   arg5 );
  if (((t) && ((tree_code_type[(int) (((enum tree_code) (t)->base.code))]) >= tcc_reference && (tree_code_type[(int) (((enum tree_code) (t)->base.code))]) <= tcc_expression)))
    ((t))->exp.locus = (loc);
  return t;
}



extern tree build_var_debug_value_stat (tree, tree );





static double_int
tree_to_double_int (const_tree cst)
{
  return ((cst)->int_cst.int_cst);
}

extern tree double_int_to_tree (tree, double_int);
extern unsigned char double_int_fits_to_tree_p (const_tree, double_int);
extern tree force_fit_type_double (tree, double_int, int, unsigned char);



static tree
build_int_cstu (tree type, unsigned long long cst)
{
  return double_int_to_tree (type, uhwi_to_double_int (cst));
}

extern tree build_int_cst (tree, long long);
extern tree build_int_cst_type (tree, long long);
extern tree build_int_cst_wide (tree, unsigned long long, long long);
extern tree build_vector (tree, tree);
extern tree build_vector_from_ctor (tree, VEC_constructor_elt_gc *);
extern tree build_vector_from_val (tree, tree);
extern tree build_constructor (tree, VEC_constructor_elt_gc *);
extern tree build_constructor_single (tree, tree, tree);
extern tree build_constructor_from_list (tree, tree);
extern tree build_real_from_int_cst (tree, const_tree);
extern tree build_complex (tree, tree, tree);
extern tree build_one_cst (tree);
extern tree build_zero_cst (tree);
extern tree build_string (int, const char *);
extern tree build_tree_list_stat (tree, tree );

extern tree build_tree_list_vec_stat (const VEC_tree_gc * );

extern tree build_decl_stat (location_t, enum tree_code,
        tree, tree );
extern tree build_fn_decl (const char *, tree);

extern tree build_translation_unit_decl (tree);
extern tree build_block (tree, tree, tree, tree);
extern tree build_empty_stmt (location_t);
extern tree build_omp_clause (location_t, enum omp_clause_code);

extern tree build_vl_exp_stat (enum tree_code, int );


extern tree build_call_nary (tree, tree, int, ...);
extern tree build_call_valist (tree, tree, int, va_list);


extern tree build_call_array_loc (location_t, tree, tree, int, const tree *);
extern tree build_call_vec (tree, tree, VEC_tree_gc *);



extern tree make_signed_type (int);
extern tree make_unsigned_type (int);
extern tree signed_or_unsigned_type_for (int, tree);
extern tree signed_type_for (tree);
extern tree unsigned_type_for (tree);
extern void initialize_sizetypes (void);
extern void set_sizetype (tree);
extern void fixup_unsigned_type (tree);
extern tree build_pointer_type_for_mode (tree, enum machine_mode, unsigned char);
extern tree build_pointer_type (tree);
extern tree build_reference_type_for_mode (tree, enum machine_mode, unsigned char);
extern tree build_reference_type (tree);
extern tree build_vector_type_for_mode (tree, enum machine_mode);
extern tree build_vector_type (tree innertype, int nunits);
extern tree build_opaque_vector_type (tree innertype, int nunits);
extern tree build_type_no_quals (tree);
extern tree build_index_type (tree);
extern tree build_array_type (tree, tree);
extern tree build_nonshared_array_type (tree, tree);
extern tree build_array_type_nelts (tree, unsigned long long);
extern tree build_function_type (tree, tree);
extern tree build_function_type_list (tree, ...);
extern tree build_function_type_skip_args (tree, bitmap);
extern tree build_function_decl_skip_args (tree, bitmap);
extern tree build_varargs_function_type_list (tree, ...);
extern tree build_method_type_directly (tree, tree, tree);
extern tree build_method_type (tree, tree);
extern tree build_offset_type (tree, tree);
extern tree build_complex_type (tree);
extern tree array_type_nelts (const_tree);
extern unsigned char in_array_bounds_p (tree);
extern unsigned char range_in_array_bounds_p (tree);

extern tree value_member (tree, tree);
extern tree purpose_member (const_tree, tree);
extern unsigned char vec_member (const_tree, VEC_tree_gc *);
extern tree chain_index (int, tree);

extern int attribute_list_equal (const_tree, const_tree);
extern int attribute_list_contained (const_tree, const_tree);
extern int tree_int_cst_equal (const_tree, const_tree);
extern int tree_int_cst_lt (const_tree, const_tree);
extern int tree_int_cst_compare (const_tree, const_tree);
extern int host_integerp (const_tree, int)

  ; // __attribute__ ((__pure__))

  ;
extern long long tree_low_cst (const_tree, int);

extern  long long
tree_low_cst (const_tree t, int pos);
extern int tree_int_cst_msb (const_tree);
extern int tree_int_cst_sgn (const_tree);
extern int tree_int_cst_sign_bit (const_tree);
extern unsigned int tree_int_cst_min_precision (tree, unsigned char);
extern unsigned char tree_expr_nonnegative_p (tree);
extern unsigned char tree_expr_nonnegative_warnv_p (tree, unsigned char *);
extern unsigned char may_negate_without_overflow_p (const_tree);
extern tree strip_array_types (tree);
extern tree excess_precision_type (tree);



extern tree make_fract_type (int, int, int);
extern tree make_accum_type (int, int, int);
# 4283 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern tree make_tree (tree, rtx);







extern tree build_type_attribute_variant (tree, tree);
extern tree build_decl_attribute_variant (tree, tree);
extern tree build_type_attribute_qual_variant (tree, tree, int);


struct attribute_spec
{


  const char *const name;

  const int min_length;


  const int max_length;







  const unsigned char decl_required;


  const unsigned char type_required;




  const unsigned char function_type_required;
# 4336 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
  tree (*const handler) (tree *node, tree name, tree args,
     int flags, unsigned char *no_add_attrs);
};



enum attribute_flags
{



  ATTR_FLAG_DECL_NEXT = 1,



  ATTR_FLAG_FUNCTION_NEXT = 2,



  ATTR_FLAG_ARRAY_NEXT = 4,


  ATTR_FLAG_TYPE_IN_PLACE = 8,



  ATTR_FLAG_BUILT_IN = 16
};



extern tree merge_decl_attributes (tree, tree);
extern tree merge_type_attributes (tree, tree);




extern int is_attribute_p (const char *, const_tree);




extern tree lookup_attribute (const char *, tree);




extern tree remove_attribute (const char *, tree);



extern tree merge_attributes (tree, tree);
# 4401 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern unsigned char check_qualified_type (const_tree, const_tree, int);





extern tree get_qualified_type (tree, int);




extern tree build_qualified_type (tree, int);



extern tree build_aligned_type (tree, unsigned int);
# 4430 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern tree build_distinct_type_copy (tree);
extern tree build_variant_type_copy (tree);




extern void finish_builtin_struct (tree, const char *,
        tree, tree);





extern void layout_type (tree);
# 4452 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
typedef struct record_layout_info_s
{

  tree t;


  tree offset;

  unsigned int offset_align;

  tree bitpos;

  unsigned int record_align;


  unsigned int unpacked_align;

  tree prev_field;


  VEC_tree_gc *pending_statics;

  int remaining_in_alignment;


  int packed_maybe_necessary;
} *record_layout_info;

extern record_layout_info start_record_layout (tree);
extern tree bit_from_pos (tree, tree);
extern tree byte_from_pos (tree, tree);
extern void pos_from_bit (tree *, tree *, unsigned int, tree);
extern void normalize_offset (tree *, tree *, unsigned int);
extern tree rli_size_unit_so_far (record_layout_info);
extern tree rli_size_so_far (record_layout_info);
extern void normalize_rli (record_layout_info);
extern void place_field (record_layout_info, tree);
extern void compute_record_mode (tree);
extern void finish_record_layout (record_layout_info, int);






extern tree type_hash_canon (unsigned int, tree);
# 4507 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern void layout_decl (tree, unsigned);




extern void relayout_decl (tree);






extern enum machine_mode mode_for_size_tree (const_tree, enum mode_class, int);




extern tree non_lvalue_loc (location_t, tree);

extern tree convert (tree, tree);
extern unsigned int expr_align (const_tree);
extern tree expr_first (tree);
extern tree expr_last (tree);
extern tree size_in_bytes (const_tree);
extern long long int_size_in_bytes (const_tree);
extern long long max_int_size_in_bytes (const_tree);
extern tree tree_expr_size (const_tree);
extern tree bit_position (const_tree);
extern long long int_bit_position (const_tree);
extern tree byte_position (const_tree);
extern long long int_byte_position (const_tree);




enum size_type_kind
{
  SIZETYPE,
  SSIZETYPE,
  BITSIZETYPE,
  SBITSIZETYPE,
  TYPE_KIND_LAST};

extern tree sizetype_tab[(int) TYPE_KIND_LAST];






extern tree size_int_kind (long long, enum size_type_kind);


extern tree size_binop_loc (location_t, enum tree_code, tree, tree);


extern tree size_diffop_loc (location_t, tree, tree);







extern tree round_up_loc (location_t, tree, int);

extern tree round_down_loc (location_t, tree, int);
extern VEC_tree_gc *get_pending_sizes (void);
extern void put_pending_size (tree);
extern void put_pending_sizes (VEC_tree_gc *);
extern void finalize_size_functions (void);
# 4587 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern unsigned int maximum_field_alignment;





extern tree chainon (tree, tree);



extern tree tree_cons_stat (tree, tree, tree );




extern tree tree_last (tree);



extern tree nreverse (tree);




extern int list_length (const_tree);



extern int fields_length (const_tree);



extern tree first_field (const_tree);




extern unsigned char initializer_zerop (const_tree);



extern VEC_tree_gc *ctor_to_vec (tree);

extern unsigned char categorize_ctor_elements (const_tree, long long *,
          long long *, unsigned char *);

extern unsigned char complete_ctor_at_level_p (const_tree, long long, const_tree);



extern int integer_zerop (const_tree);



extern int integer_onep (const_tree);




extern int integer_all_onesp (const_tree);




extern int integer_pow2p (const_tree);




extern int integer_nonzerop (const_tree);

extern unsigned char cst_and_fits_in_hwi (const_tree);
extern tree num_ending_zeros (const_tree);




extern int fixed_zerop (const_tree);




extern tree staticp (tree);





extern tree save_expr (tree);




extern tree skip_simple_arithmetic (tree);



enum tree_node_structure_enum tree_node_structure (const_tree);




extern unsigned char contains_placeholder_p (const_tree);
# 4701 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern unsigned char type_contains_placeholder_p (tree);
# 4710 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern void find_placeholder_in_expr (tree, VEC_tree_heap **);
# 4728 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern tree substitute_in_expr (tree, tree, tree);
# 4739 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern tree substitute_placeholder_in_expr (tree, tree);
# 4754 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern tree variable_size (tree);





extern tree stabilize_reference (tree);





extern tree stabilize_reference_1 (tree);






extern tree get_unwidened (tree, tree);






extern tree get_narrower (tree, int *);



static unsigned char
handled_component_p (const_tree t)
{
  switch (((enum tree_code) (t)->base.code))
    {
    case BIT_FIELD_REF:
    case COMPONENT_REF:
    case ARRAY_REF:
    case ARRAY_RANGE_REF:
    case VIEW_CONVERT_EXPR:
    case REALPART_EXPR:
    case IMAGPART_EXPR:
      return 1;

    default:
      return 0;
    }
}





extern tree get_inner_reference (tree, long long *, long long *,
     tree *, enum machine_mode *, int *, int *,
     unsigned char);





extern unsigned char contains_packed_reference (const_tree exp);




extern tree array_ref_element_size (tree);




extern tree array_ref_low_bound (tree);




extern tree array_ref_up_bound (tree);




extern tree component_ref_field_offset (tree);




extern tree get_containing_scope (const_tree);



extern tree decl_function_context (const_tree);



extern tree decl_type_context (const_tree);


extern int real_zerop (const_tree);






extern int pedantic_lvalues;



extern tree current_function_decl;


extern const char * current_function_func_begin_label;


typedef struct {
  tree next;
} function_args_iterator;



static void
function_args_iter_init (function_args_iterator *i, const_tree fntype)
{
  i->next = ((fntype)->type.values);
}




static tree *
function_args_iter_cond_ptr (function_args_iterator *i)
{
  return (i->next) ? &((i->next)->list.value) : ((void *)0);
}




static tree
function_args_iter_cond (function_args_iterator *i)
{
  return (i->next) ? ((i->next)->list.value) : (tree) ((void *)0);
}


static void
function_args_iter_next (function_args_iterator *i)
{
  ((void)(!(i->next != (tree) ((void *)0)) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h", 4902, __FUNCTION__), 0 : 0));
  i->next = ((i->next)->common.chain);
}



static unsigned char
inlined_function_outer_scope_p (const_tree block)
{
 return ((block)->block.locus) != ((source_location) 0);
}
# 4933 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern unsigned crc32_string (unsigned, const char *);
extern void clean_symbol_name (char *);
extern tree get_file_function_name (const char *);
extern tree get_callee_fndecl (const_tree);
extern int type_num_arguments (const_tree);
extern unsigned char associative_tree_code (enum tree_code);
extern unsigned char commutative_tree_code (enum tree_code);
extern unsigned char commutative_ternary_tree_code (enum tree_code);
extern tree upper_bound_in_type (tree, tree);
extern tree lower_bound_in_type (tree, tree);
extern int operand_equal_for_phi_arg_p (const_tree, const_tree);
extern tree call_expr_arg (tree, int);
extern tree *call_expr_argp (tree, int);
extern tree create_artificial_label (location_t);
extern const char *get_name (tree);
extern unsigned char stdarg_p (const_tree);
extern unsigned char prototype_p (tree);
extern unsigned char is_typedef_decl (tree x);
extern unsigned char typedef_variant_p (tree);
extern unsigned char auto_var_in_fn_p (const_tree, const_tree);
extern tree build_low_bits_mask (tree, unsigned);
extern tree tree_strip_nop_conversions (tree);
extern tree tree_strip_sign_nop_conversions (tree);
extern tree lhd_gcc_personality (void);
extern void assign_assembler_name_if_neeeded (tree);
extern void warn_deprecated_use (tree, tree);



extern void change_decl_assembler_name (tree, tree);


extern tree unshare_expr (tree);



extern void expand_expr_stmt (tree);
extern int warn_if_unused_value (const_tree, location_t);
extern void expand_label (tree);
extern void expand_goto (tree);

extern rtx expand_stack_save (void);
extern void expand_stack_restore (tree);
extern void expand_return (tree);


extern void using_eh_for_cleanups (void);





extern int folding_initializer;


extern int native_encode_expr (const_tree, unsigned char *, int);
extern tree native_interpret_expr (tree, const unsigned char *, int);







extern tree fold (tree);


extern tree fold_unary_loc (location_t, enum tree_code, tree, tree);


extern tree fold_unary_ignore_overflow_loc (location_t, enum tree_code, tree, tree);


extern tree fold_binary_loc (location_t, enum tree_code, tree, tree, tree);


extern tree fold_ternary_loc (location_t, enum tree_code, tree, tree, tree, tree);




extern tree fold_build1_stat_loc (location_t, enum tree_code, tree,
      tree );




extern tree fold_build2_stat_loc (location_t, enum tree_code, tree, tree,
      tree );




extern tree fold_build3_stat_loc (location_t, enum tree_code, tree, tree, tree,
      tree );
extern tree fold_build1_initializer_loc (location_t, enum tree_code, tree, tree);
extern tree fold_build2_initializer_loc (location_t, enum tree_code, tree, tree, tree);
extern tree fold_build3_initializer_loc (location_t, enum tree_code, tree, tree, tree, tree);


extern tree fold_build_call_array_loc (location_t, tree, tree, int, tree *);


extern tree fold_build_call_array_initializer_loc (location_t, tree, tree, int, tree *);
extern unsigned char fold_convertible_p (const_tree, const_tree);


extern tree fold_convert_loc (location_t, tree, tree);
extern tree fold_single_bit_test (location_t, enum tree_code, tree, tree, tree);
extern tree fold_ignored_result (tree);
extern tree fold_abs_const (tree, tree);
extern tree fold_indirect_ref_1 (location_t, tree, tree);
extern void fold_defer_overflow_warnings (void);
extern void fold_undefer_overflow_warnings (unsigned char, const_gimple, int);
extern void fold_undefer_and_ignore_overflow_warnings (void);
extern unsigned char fold_deferring_overflow_warnings_p (void);
extern tree fold_fma (location_t, tree, tree, tree, tree);

enum operand_equal_flag
{
  OEP_ONLY_CONST = 1,
  OEP_PURE_SAME = 2
};

extern int operand_equal_p (const_tree, const_tree, unsigned int);
extern int multiple_of_p (tree, const_tree, const_tree);


extern tree omit_one_operand_loc (location_t, tree, tree, tree);


extern tree omit_two_operands_loc (location_t, tree, tree, tree, tree);


extern tree invert_truthvalue_loc (location_t, tree);
extern tree fold_truth_not_expr (location_t, tree);
extern tree fold_unary_to_constant (enum tree_code, tree, tree);
extern tree fold_binary_to_constant (enum tree_code, tree, tree, tree);
extern tree fold_read_from_constant_string (tree);
extern tree int_const_binop (enum tree_code, const_tree, const_tree, int);


extern tree build_fold_addr_expr_loc (location_t, tree);


extern tree build_fold_addr_expr_with_type_loc (location_t, tree, tree);
extern tree fold_build_cleanup_point_expr (tree type, tree expr);
extern tree fold_strip_sign_ops (tree);


extern tree build_fold_indirect_ref_loc (location_t, tree);


extern tree fold_indirect_ref_loc (location_t, tree);
extern tree build_simple_mem_ref_loc (location_t, tree);


extern double_int mem_ref_offset (const_tree);
extern tree reference_alias_ptr_type (const_tree);
extern tree constant_boolean_node (int, tree);
extern tree div_if_zero_remainder (enum tree_code, const_tree, const_tree);

extern unsigned char tree_swap_operands_p (const_tree, const_tree, unsigned char);
extern enum tree_code swap_tree_comparison (enum tree_code);

extern unsigned char ptr_difference_const (tree, tree, long long *);
extern enum tree_code invert_tree_comparison (enum tree_code, unsigned char);

extern unsigned char tree_expr_nonzero_p (tree);
extern unsigned char tree_unary_nonzero_warnv_p (enum tree_code, tree, tree, unsigned char *);
extern unsigned char tree_binary_nonzero_warnv_p (enum tree_code, tree, tree, tree op1,
                                         unsigned char *);
extern unsigned char tree_single_nonzero_warnv_p (tree, unsigned char *);
extern unsigned char tree_unary_nonnegative_warnv_p (enum tree_code, tree, tree, unsigned char *);
extern unsigned char tree_binary_nonnegative_warnv_p (enum tree_code, tree, tree, tree,
                                             unsigned char *);
extern unsigned char tree_single_nonnegative_warnv_p (tree t, unsigned char *strict_overflow_p);
extern unsigned char tree_invalid_nonnegative_warnv_p (tree t, unsigned char *strict_overflow_p);
extern unsigned char tree_call_nonnegative_warnv_p (tree, tree, tree, tree, unsigned char *);

extern unsigned char tree_expr_nonzero_warnv_p (tree, unsigned char *);

extern unsigned char fold_real_zero_addition_p (const_tree, const_tree, int);
extern tree combine_comparisons (location_t, enum tree_code, enum tree_code,
     enum tree_code, tree, tree, tree);
extern void debug_fold_checksum (const_tree);


static unsigned char
truth_value_p (enum tree_code code)
{
  return (tree_code_type[(int) (code)] == tcc_comparison
   || code == TRUTH_AND_EXPR || code == TRUTH_ANDIF_EXPR
   || code == TRUTH_OR_EXPR || code == TRUTH_ORIF_EXPR
   || code == TRUTH_XOR_EXPR || code == TRUTH_NOT_EXPR);
}



extern tree fold_call_expr (location_t, tree, unsigned char);
extern tree fold_builtin_fputs (location_t, tree, tree, unsigned char, unsigned char, tree);
extern tree fold_builtin_strcpy (location_t, tree, tree, tree, tree);
extern tree fold_builtin_strncpy (location_t, tree, tree, tree, tree, tree);
extern tree fold_builtin_memory_chk (location_t, tree, tree, tree, tree, tree, tree, unsigned char,
         enum built_in_function);
extern tree fold_builtin_stxcpy_chk (location_t, tree, tree, tree, tree, tree, unsigned char,
         enum built_in_function);
extern tree fold_builtin_strncpy_chk (location_t, tree, tree, tree, tree, tree);
extern tree fold_builtin_snprintf_chk (location_t, tree, tree, enum built_in_function);
extern unsigned char fold_builtin_next_arg (tree, unsigned char);
extern enum built_in_function builtin_mathfn_code (const_tree);
extern tree fold_builtin_call_array (location_t, tree, tree, int, tree *);
extern tree build_call_expr_loc_array (location_t, tree, int, tree *);
extern tree build_call_expr_loc_vec (location_t, tree, VEC_tree_gc *);
extern tree build_call_expr_loc (location_t, tree, int, ...);
extern tree build_call_expr (tree, int, ...);
extern tree mathfn_built_in (tree, enum built_in_function fn);
extern tree c_strlen (tree, int);
extern tree std_gimplify_va_arg_expr (tree, tree, gimple_seq *, gimple_seq *);
extern tree build_va_arg_indirect_ref (tree);
extern tree build_string_literal (int, const char *);
extern unsigned char validate_arglist (const_tree, ...);
extern rtx builtin_memset_read_str (void *, long long, enum machine_mode);
extern unsigned char can_trust_pointer_alignment (void);
extern unsigned int get_pointer_alignment (tree, unsigned int);
extern unsigned char is_builtin_name (const char *);
extern unsigned char is_builtin_fn (tree);
extern unsigned int get_object_alignment (tree, unsigned int);
extern tree fold_call_stmt (gimple, unsigned char);
extern tree gimple_fold_builtin_snprintf_chk (gimple, tree, enum built_in_function);
extern tree make_range (tree, int *, tree *, tree *, unsigned char *);
extern tree build_range_check (location_t, tree, tree, int, tree, tree);
extern unsigned char merge_ranges (int *, tree *, tree *, int, tree, tree, int,
     tree, tree);
extern void set_builtin_user_assembler_name (tree decl, const char *asmspec);
extern unsigned char is_simple_builtin (tree);
extern unsigned char is_inexpensive_builtin (tree);


extern tree strip_float_extensions (tree);


extern int really_constant_p (const_tree);
extern unsigned char decl_address_invariant_p (const_tree);
extern unsigned char decl_address_ip_invariant_p (const_tree);
extern unsigned char int_fits_type_p (const_tree, const_tree);

extern void get_type_static_bounds (const_tree, mpz_t, mpz_t);

extern unsigned char variably_modified_type_p (tree, tree);
extern int tree_log2 (const_tree);
extern int tree_floor_log2 (const_tree);
extern int simple_cst_equal (const_tree, const_tree);
extern hashval_t iterative_hash_expr (const_tree, hashval_t);
extern hashval_t iterative_hash_exprs_commutative (const_tree,
                                                   const_tree, hashval_t);
extern hashval_t iterative_hash_host_wide_int (long long, hashval_t);
extern hashval_t iterative_hash_hashval_t (hashval_t, hashval_t);
extern hashval_t iterative_hash_host_wide_int (long long, hashval_t);
extern int compare_tree_int (const_tree, unsigned long long);
extern int type_list_equal (const_tree, const_tree);
extern int chain_member (const_tree, const_tree);
extern tree type_hash_lookup (unsigned int, tree);
extern void type_hash_add (unsigned int, tree);
extern int simple_cst_list_equal (const_tree, const_tree);
extern void dump_tree_statistics (void);
extern void recompute_tree_invariant_for_addr_expr (tree);
extern unsigned char needs_to_live_in_memory (const_tree);
extern tree reconstruct_complex_type (tree, tree);

extern int real_onep (const_tree);
extern int real_twop (const_tree);
extern int real_minus_onep (const_tree);
extern void init_ttree (void);
extern void build_common_tree_nodes (unsigned char);
extern void build_common_tree_nodes_2 (int);
extern void build_common_builtin_nodes (void);
extern tree build_nonstandard_integer_type (unsigned long long, int);
extern tree build_range_type (tree, tree, tree);
extern tree build_nonshared_range_type (tree, tree, tree);
extern unsigned char subrange_type_for_debug_p (const_tree, tree *, tree *);
extern long long int_cst_value (const_tree);
extern long long widest_int_cst_value (const_tree);

extern unsigned char fields_compatible_p (const_tree, const_tree);
extern tree find_compatible_field (tree, tree);

//extern tree *tree_block (tree);
extern location_t *block_nonartificial_location (tree);
extern location_t tree_nonartificial_location (tree);

extern tree block_ultimate_origin (const_tree);

extern tree get_binfo_at_offset (tree, long long, tree);


extern tree build_addr (tree, tree);


extern void expand_main_function (void);
extern void expand_function_end (void);
extern void expand_function_start (tree);
extern void stack_protect_prologue (void);
extern void stack_protect_epilogue (void);
extern void init_dummy_function_start (void);
extern void expand_dummy_function_end (void);
extern unsigned int init_function_for_compilation (void);
extern void allocate_struct_function (tree, unsigned char);
extern void push_struct_function (tree fndecl);
extern void init_function_start (tree);
extern unsigned char use_register_for_decl (const_tree);
extern void generate_setjmp_warnings (void);
extern void init_temp_slots (void);
extern void free_temp_slots (void);
extern void pop_temp_slots (void);
extern void push_temp_slots (void);
extern void preserve_temp_slots (rtx);
extern int aggregate_value_p (const_tree, const_tree);
extern void push_function_context (void);
extern void pop_function_context (void);
extern gimple_seq gimplify_parameters (void);



extern void print_rtl (FILE *, const_rtx);



extern void debug_tree (tree);
extern void debug_vec_tree (VEC_tree_gc *);

extern void dump_addr (FILE*, const char *, const void *);
extern void print_node (FILE *, const char *, tree, int);
extern void print_vec_tree (FILE *, const char *, VEC_tree_gc *, int);
extern void print_node_brief (FILE *, const char *, const_tree, int);
extern void indent_to (FILE *, int);



extern unsigned char debug_find_tree (tree, tree);


extern tree unsave_expr_now (tree);
extern tree build_duplicate_type (tree);
# 5311 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern int flags_from_decl_or_type (const_tree);
extern int call_expr_flags (const_tree);
# 5338 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern int setjmp_call_p (const_tree);
extern unsigned char gimple_alloca_call_p (const_gimple);
extern unsigned char alloca_call_p (const_tree);
extern unsigned char must_pass_in_stack_var_size (enum machine_mode, const_tree);
extern unsigned char must_pass_in_stack_var_size_or_pad (enum machine_mode, const_tree);



extern const struct attribute_spec *lookup_attribute_spec (const_tree);
# 5356 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern tree decl_attributes (tree *, tree, int);


extern void set_decl_abstract_flags (tree, int);
extern void set_decl_origin_self (tree);


extern void set_min_and_max_values_for_integral_type (tree, int, unsigned char);
extern void fixup_signed_type (tree);
extern void internal_reference_types (void);
extern unsigned int update_alignment_for_field (record_layout_info, tree,
                                                unsigned int);

extern tree tree_output_constant_def (tree);
extern void make_decl_rtl (tree);
extern rtx make_decl_rtl_for_debug (tree);
extern void make_decl_one_only (tree, tree);
extern int supports_one_only (void);
extern void resolve_unique_section (tree, int, int);
extern void mark_referenced (tree);
extern void mark_decl_referenced (tree);
extern void notice_global_symbol (tree);
extern void set_user_assembler_name (tree, const char *);
extern void process_pending_assemble_externals (void);
extern void finish_aliases_1 (void);
extern void finish_aliases_2 (void);
extern void remove_unreachable_alias_pairs (void);
extern unsigned char decl_replaceable_p (tree);
extern unsigned char decl_binds_to_current_def_p (tree);





typedef struct pointer_set_t symbol_alias_set_t;

extern void symbol_alias_set_destroy (symbol_alias_set_t *);
extern int symbol_alias_set_contains (const symbol_alias_set_t *, tree);
extern symbol_alias_set_t * propagate_aliases_backward (unsigned char (*)
        (tree, tree, void *),
       void *);


extern void expand_computed_goto (tree);
extern unsigned char parse_output_constraint (const char **, int, int, int,
         unsigned char *, unsigned char *, unsigned char *);
extern unsigned char parse_input_constraint (const char **, int, int, int, int,
        const char * const *, unsigned char *, unsigned char *);
extern void expand_asm_stmt (gimple);
extern tree resolve_asm_operand_names (tree, tree, tree, tree);
extern unsigned char expand_switch_using_bit_tests_p (tree, tree, unsigned int,
          unsigned int);
extern void expand_case (gimple);
extern void expand_decl (tree);
# 5421 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern char *dwarf2out_cfi_label (unsigned char);



extern void dwarf2out_def_cfa (const char *, unsigned, long long);



extern void dwarf2out_window_save (const char *);



extern void dwarf2out_reg_save (const char *, unsigned, long long);



extern void dwarf2out_return_save (const char *, long long);



extern void dwarf2out_return_reg (const char *, unsigned);



extern void dwarf2out_reg_save_reg (const char *, rtx, rtx);





struct pointer_set_t;



typedef tree (*walk_tree_fn) (tree *, int *, void *);



typedef tree (*walk_tree_lh) (tree *, int *, tree (*) (tree *, int *, void *),
         void *, struct pointer_set_t*);

extern tree walk_tree_1 (tree*, walk_tree_fn, void*, struct pointer_set_t*,
    walk_tree_lh);
extern tree walk_tree_without_duplicates_1 (tree*, walk_tree_fn, void*,
         walk_tree_lh);
# 5474 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
extern void set_decl_rtl (tree, rtx);
extern void set_decl_incoming_rtl (tree, rtx, unsigned char);



typedef enum
{
  d_kind,
  t_kind,
  b_kind,
  s_kind,
  r_kind,
  e_kind,
  c_kind,
  id_kind,
  vec_kind,
  binfo_kind,
  ssa_name_kind,
  constr_kind,
  x_kind,
  lang_decl,
  lang_type,
  omp_clause_kind,
  all_kinds
} tree_node_kind;

extern int tree_node_counts[];
extern int tree_node_sizes[];




extern unsigned char in_gimple_form;


extern tree get_base_address (tree t);
extern void mark_addressable (tree);



struct tree_map_base {
  tree from;
};

extern int tree_map_base_eq (const void *, const void *);
extern unsigned int tree_map_base_hash (const void *);
extern int tree_map_base_marked_p (const void *);
extern unsigned char list_equal_p (const_tree, const_tree);



struct tree_map {
  struct tree_map_base base;
  unsigned int hash;
  tree to;
};


extern unsigned int tree_map_hash (const void *);




struct tree_decl_map {
  struct tree_map_base base;
  tree to;
};


extern unsigned int tree_decl_map_hash (const void *);




struct tree_int_map {
  struct tree_map_base base;
  unsigned int to;
};







struct tree_priority_map {
  struct tree_map_base base;
  priority_type init;
  priority_type fini;
};







tree target_for_debug_bind (tree);


extern tree tree_mem_ref_addr (tree, tree);
extern void copy_mem_ref_info (tree, tree);


extern unsigned char ssa_name_nonnegative_p (const_tree);


extern void init_object_sizes (void);
extern void fini_object_sizes (void);
extern unsigned long long compute_builtin_object_size (tree, int);


extern unsigned long long highest_pow2_factor (const_tree);
extern tree build_personality_function (const char *);



void init_inline_once (void);




static int
tree_operand_length (const_tree node)
{
  if ((tree_code_type[(int) (((enum tree_code) (node)->base.code))] == tcc_vl_exp))
    return ((int)((((node)->exp.operands[0])->int_cst.int_cst).low));
  else
    return tree_code_length[(int) (((enum tree_code) (node)->base.code))];
}






typedef struct call_expr_arg_iterator_d {
  tree t;
  int n;
  int i;
} call_expr_arg_iterator;

typedef struct const_call_expr_arg_iterator_d {
  const_tree t;
  int n;
  int i;
} const_call_expr_arg_iterator;



static void
init_call_expr_arg_iterator (tree exp, call_expr_arg_iterator *iter)
{
  iter->t = exp;
  iter->n = (((int)((((exp)->exp.operands[0])->int_cst.int_cst).low)) - 3);
  iter->i = 0;
}

static void
init_const_call_expr_arg_iterator (const_tree exp, const_call_expr_arg_iterator *iter)
{
  iter->t = exp;
  iter->n = (((int)((((exp)->exp.operands[0])->int_cst.int_cst).low)) - 3);
  iter->i = 0;
}



static tree
next_call_expr_arg (call_expr_arg_iterator *iter)
{
  tree result;
  if (iter->i >= iter->n)
    return (tree) ((void *)0);
  result = (((iter->t))->exp.operands[(iter->i) + 3]);
  iter->i++;
  return result;
}

static const_tree
next_const_call_expr_arg (const_call_expr_arg_iterator *iter)
{
  const_tree result;
  if (iter->i >= iter->n)
    return (tree) ((void *)0);
  result = (((iter->t))->exp.operands[(iter->i) + 3]);
  iter->i++;
  return result;
}





static tree
first_call_expr_arg (tree exp, call_expr_arg_iterator *iter)
{
  init_call_expr_arg_iterator (exp, iter);
  return next_call_expr_arg (iter);
}

static const_tree
first_const_call_expr_arg (const_tree exp, const_call_expr_arg_iterator *iter)
{
  init_const_call_expr_arg_iterator (exp, iter);
  return next_const_call_expr_arg (iter);
}



static unsigned char
more_call_expr_args_p (const call_expr_arg_iterator *iter)
{
  return (iter->i < iter->n);
}

static unsigned char
more_const_call_expr_args_p (const const_call_expr_arg_iterator *iter)
{
  return (iter->i < iter->n);
}
# 5707 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h"
static unsigned char
is_lang_specific (tree t)
{
  return ((enum tree_code) (t)->base.code) == LANG_TYPE || ((enum tree_code) (t)->base.code) >= ((int) LAST_AND_UNUSED_TREE_CODE);
}


extern unsigned char block_may_fallthru (const_tree);
# 5 "plugin.c" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/plugin-version.h" 1
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/configargs.h" 1

static const char configuration_arguments[] = "../src/configure -v --with-pkgversion='Ubuntu/Linaro 4.6.1-9ubuntu3' --with-bugurl=file:///usr/share/doc/gcc-4.6/README.Bugs --enable-languages=c,c++,fortran,objc,obj-c++,go --prefix=/usr --program-suffix=-4.6 --enable-shared --enable-linker-build-id --with-system-zlib --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --with-gxx-include-dir=/usr/include/c++/4.6 --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --enable-plugin --enable-objc-gc --enable-targets=all --disable-werror --with-arch-32=i686 --with-tune=generic --enable-checking=release --build=i686-linux-gnu --host=i686-linux-gnu --target=i686-linux-gnu";
static const char thread_model[] = "posix";

struct configure_default_options_t {
  const char *name, *value;
} ;

static const struct configure_default_options_t configure_default_options[] = { 
  { "cpu_32", "generic" }, { "cpu_64", "generic" }, { "arch_32", "i686" }, { "arch_64", "x86-64" }, { "tune", "generic" } 
};
# 2 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/plugin-version.h" 2

static char basever[] = "4.6.1";
static char datestamp[] = "20110903";
static char devphase[] = "";
static char revision[] = "";




static struct plugin_gcc_version gcc_version = {basever, datestamp,
      devphase, revision,
      configuration_arguments};
# 6 "plugin.c" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h" 1
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ggc.h" 1
# 30 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ggc.h"
extern const char empty_string[];





typedef void (*gt_pointer_operator) (void *, void *);

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gtype-desc.h" 1
# 23 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gtype-desc.h"
enum gt_types_enum {
 gt_ggc_e_24lazy_hex_fp_value_struct,
 gt_ggc_e_15c_inline_static,
 gt_ggc_e_24VEC_c_goto_bindings_p_gc,
 gt_ggc_e_26VEC_c_goto_bindings_p_base,
 gt_ggc_e_15c_goto_bindings,
 gt_ggc_e_7c_scope,
 gt_ggc_e_9c_binding,
 gt_ggc_e_12c_label_vars,
 gt_ggc_e_15c_spot_bindings,
 gt_ggc_e_8c_parser,
 gt_ggc_e_7c_token,
 gt_ggc_e_20VEC_ivarref_entry_gc,
 gt_ggc_e_22VEC_ivarref_entry_base,
 gt_ggc_e_13ivarref_entry,
 gt_ggc_e_22VEC_prot_list_entry_gc,
 gt_ggc_e_24VEC_prot_list_entry_base,
 gt_ggc_e_15prot_list_entry,
 gt_ggc_e_19VEC_msgref_entry_gc,
 gt_ggc_e_21VEC_msgref_entry_base,
 gt_ggc_e_12msgref_entry,
 gt_ggc_e_23VEC_ident_data_tuple_gc,
 gt_ggc_e_25VEC_ident_data_tuple_base,
 gt_ggc_e_16ident_data_tuple,
 gt_ggc_e_15interface_tuple,
 gt_ggc_e_17string_descriptor,
 gt_ggc_e_9imp_entry,
 gt_ggc_e_16hashed_attribute,
 gt_ggc_e_12hashed_entry,
 gt_ggc_e_23VEC_ltrans_partition_gc,
 gt_ggc_e_25VEC_ltrans_partition_base,
 gt_ggc_e_20ltrans_partition_def,
 gt_ggc_e_14builtin_record,
 gt_ggc_e_14string_or_tree,
 gt_ggc_e_11cpool_entry,
 gt_ggc_e_19VEC_method_entry_gc,
 gt_ggc_e_21VEC_method_entry_base,
 gt_ggc_e_14method_entry_d,
 gt_ggc_e_13lang_decl_var,
 gt_ggc_e_14type_assertion,
 gt_ggc_e_14lang_decl_func,
 gt_ggc_e_18treetreehash_entry,
 gt_ggc_e_5CPool,
 gt_ggc_e_3JCF,
 gt_ggc_e_16gfc_powdecl_list,
 gt_ggc_e_16gfc_st_parameter,
 gt_ggc_e_22gfc_st_parameter_field,
 gt_ggc_e_19gfc_intrinsic_map_t,
 gt_ggc_e_17module_htab_entry,
 gt_ggc_e_13binding_level,
 gt_ggc_e_9opt_stack,
 gt_ggc_e_27VEC_pending_redefinition_gc,
 gt_ggc_e_29VEC_pending_redefinition_base,
 gt_ggc_e_22pending_redefinition_d,
 gt_ggc_e_19VEC_pending_weak_gc,
 gt_ggc_e_21VEC_pending_weak_base,
 gt_ggc_e_14pending_weak_d,
 gt_ggc_e_11align_stack,
 gt_ggc_e_18VEC_tree_gc_vec_gc,
 gt_ggc_e_20VEC_tree_gc_vec_base,
 gt_ggc_e_19VEC_const_char_p_gc,
 gt_ggc_e_21VEC_const_char_p_base,
 gt_ggc_e_21pending_abstract_type,
 gt_ggc_e_15VEC_tree_int_gc,
 gt_ggc_e_17VEC_tree_int_base,
 gt_ggc_e_8tree_int,
 gt_ggc_e_9cp_parser,
 gt_ggc_e_34VEC_cp_unparsed_functions_entry_gc,
 gt_ggc_e_36VEC_cp_unparsed_functions_entry_base,
 gt_ggc_e_29cp_unparsed_functions_entry_d,
 gt_ggc_e_27VEC_cp_default_arg_entry_gc,
 gt_ggc_e_29VEC_cp_default_arg_entry_base,
 gt_ggc_e_22cp_default_arg_entry_d,
 gt_ggc_e_17cp_parser_context,
 gt_ggc_e_8cp_lexer,
 gt_ggc_e_8cp_token,
 gt_ggc_e_14cp_token_value,
 gt_ggc_e_10tree_check,
 gt_ggc_e_14constexpr_call,
 gt_ggc_e_16constexpr_fundef,
 gt_ggc_e_22VEC_deferred_access_gc,
 gt_ggc_e_24VEC_deferred_access_base,
 gt_ggc_e_15deferred_access,
 gt_ggc_e_10spec_entry,
 gt_ggc_e_16pending_template,
 gt_ggc_e_21VEC_incomplete_var_gc,
 gt_ggc_e_23VEC_incomplete_var_base,
 gt_ggc_e_16incomplete_var_d,
 gt_ggc_e_21named_label_use_entry,
 gt_ggc_e_28VEC_deferred_access_check_gc,
 gt_ggc_e_30VEC_deferred_access_check_base,
 gt_ggc_e_21deferred_access_check,
 gt_ggc_e_20operator_name_info_t,
 gt_ggc_e_11lang_decl_u,
 gt_ggc_e_14lang_decl_parm,
 gt_ggc_e_12lang_decl_ns,
 gt_ggc_e_12lang_decl_fn,
 gt_ggc_e_12lang_decl_u3,
 gt_ggc_e_12lang_decl_u5,
 gt_ggc_e_13lang_decl_min,
 gt_ggc_e_12lang_decl_u2,
 gt_ggc_e_14lang_decl_base,
 gt_ggc_e_11lang_type_u,
 gt_ggc_e_16lang_type_ptrmem,
 gt_ggc_e_15lang_type_class,
 gt_ggc_e_18sorted_fields_type,
 gt_ggc_e_16lang_type_header,
 gt_ggc_e_18VEC_tree_pair_s_gc,
 gt_ggc_e_20VEC_tree_pair_s_base,
 gt_ggc_e_11tree_pair_s,
 gt_ggc_e_17named_label_entry,
 gt_ggc_e_19c_language_function,
 gt_ggc_e_11stmt_tree_s,
 gt_ggc_e_18tree_template_info,
 gt_ggc_e_32VEC_qualified_typedef_usage_t_gc,
 gt_ggc_e_34VEC_qualified_typedef_usage_t_base,
 gt_ggc_e_25qualified_typedef_usage_s,
 gt_ggc_e_16tree_lambda_expr,
 gt_ggc_e_15tree_trait_expr,
 gt_ggc_e_25tree_argument_pack_select,
 gt_ggc_e_18tree_static_assert,
 gt_ggc_e_16tree_default_arg,
 gt_ggc_e_14cp_token_cache,
 gt_ggc_e_13tree_baselink,
 gt_ggc_e_13tree_overload,
 gt_ggc_e_10ptrmem_cst,
 gt_ggc_e_21template_parm_index_s,
 gt_ggc_e_15lang_identifier,
 gt_ggc_e_19c_common_identifier,
 gt_ggc_e_11saved_scope,
 gt_ggc_e_16cxx_int_tree_map,
 gt_ggc_e_23VEC_cp_label_binding_gc,
 gt_ggc_e_25VEC_cp_label_binding_base,
 gt_ggc_e_16cp_label_binding,
 gt_ggc_e_23VEC_cp_class_binding_gc,
 gt_ggc_e_25VEC_cp_class_binding_base,
 gt_ggc_e_16cp_class_binding,
 gt_ggc_e_24VEC_cxx_saved_binding_gc,
 gt_ggc_e_26VEC_cxx_saved_binding_base,
 gt_ggc_e_17cxx_saved_binding,
 gt_ggc_e_16cp_binding_level,
 gt_ggc_e_11cxx_binding,
 gt_ggc_e_15binding_entry_s,
 gt_ggc_e_15binding_table_s,
 gt_ggc_e_11tinst_level,
 gt_ggc_e_7globals,
 gt_ggc_e_14VEC_tinfo_s_gc,
 gt_ggc_e_16VEC_tinfo_s_base,
 gt_ggc_e_7tinfo_s,
 gt_ggc_e_18gnat_binding_level,
 gt_ggc_e_9elab_info,
 gt_ggc_e_10stmt_group,
 gt_ggc_e_16VEC_parm_attr_gc,
 gt_ggc_e_18VEC_parm_attr_base,
 gt_ggc_e_11parm_attr_d,
 gt_ggc_e_18lto_tree_ref_table,
 gt_ggc_e_17lto_in_decl_state,
 gt_ggc_e_22VEC_ipa_edge_args_t_gc,
 gt_ggc_e_24VEC_ipa_edge_args_t_base,
 gt_ggc_e_15jump_func_value,
 gt_ggc_e_18ipa_member_ptr_cst,
 gt_ggc_e_20ipa_ancestor_jf_data,
 gt_ggc_e_21ipa_pass_through_data,
 gt_ggc_e_20lto_symtab_entry_def,
 gt_ggc_e_11heapvar_map,
 gt_ggc_e_20ssa_operand_memory_d,
 gt_ggc_e_13scev_info_str,
 gt_ggc_e_24VEC_mem_addr_template_gc,
 gt_ggc_e_26VEC_mem_addr_template_base,
 gt_ggc_e_17mem_addr_template,
 gt_ggc_e_12ssa_operands,
 gt_ggc_e_26gimple_type_leader_entry_s,
 gt_ggc_e_33gimple_statement_omp_atomic_store,
 gt_ggc_e_32gimple_statement_omp_atomic_load,
 gt_ggc_e_27gimple_statement_omp_single,
 gt_ggc_e_29gimple_statement_omp_continue,
 gt_ggc_e_29gimple_statement_omp_sections,
 gt_ggc_e_25gimple_statement_omp_task,
 gt_ggc_e_29gimple_statement_omp_parallel,
 gt_ggc_e_24gimple_statement_omp_for,
 gt_ggc_e_19gimple_omp_for_iter,
 gt_ggc_e_29gimple_statement_omp_critical,
 gt_ggc_e_20gimple_statement_asm,
 gt_ggc_e_20gimple_statement_wce,
 gt_ggc_e_20gimple_statement_try,
 gt_ggc_e_24gimple_statement_eh_ctrl,
 gt_ggc_e_20gimple_statement_phi,
 gt_ggc_e_23gimple_statement_eh_mnt,
 gt_ggc_e_26gimple_statement_eh_filter,
 gt_ggc_e_22gimple_statement_catch,
 gt_ggc_e_21gimple_statement_bind,
 gt_ggc_e_20gimple_statement_omp,
 gt_ggc_e_21gimple_statement_call,
 gt_ggc_e_11pt_solution,
 gt_ggc_e_32gimple_statement_with_memory_ops,
 gt_ggc_e_37gimple_statement_with_memory_ops_base,
 gt_ggc_e_25gimple_statement_with_ops,
 gt_ggc_e_30gimple_statement_with_ops_base,
 gt_ggc_e_21gimple_statement_base,
 gt_ggc_e_17gimple_seq_node_d,
 gt_ggc_e_9type_hash,
 gt_ggc_e_16string_pool_data,
 gt_ggc_e_18initial_value_pair,
 gt_ggc_e_23temp_slot_address_entry,
 gt_ggc_e_11eh_status_u,
 gt_ggc_e_15throw_stmt_node,
 gt_ggc_e_21VEC_eh_landing_pad_gc,
 gt_ggc_e_23VEC_eh_landing_pad_base,
 gt_ggc_e_16VEC_eh_region_gc,
 gt_ggc_e_18VEC_eh_region_base,
 gt_ggc_e_11eh_region_u,
 gt_ggc_e_26eh_region_u_must_not_throw,
 gt_ggc_e_19eh_region_u_allowed,
 gt_ggc_e_15eh_region_u_try,
 gt_ggc_e_10eh_catch_d,
 gt_ggc_e_16eh_landing_pad_d,
 gt_ggc_e_11eh_region_d,
 gt_ggc_e_10vcall_insn,
 gt_ggc_e_18VEC_vcall_entry_gc,
 gt_ggc_e_20VEC_vcall_entry_base,
 gt_ggc_e_12vcall_struct,
 gt_ggc_e_18VEC_dcall_entry_gc,
 gt_ggc_e_20VEC_dcall_entry_base,
 gt_ggc_e_12dcall_struct,
 gt_ggc_e_22cached_dw_loc_list_def,
 gt_ggc_e_16var_loc_list_def,
 gt_ggc_e_12var_loc_node,
 gt_ggc_e_20VEC_die_arg_entry_gc,
 gt_ggc_e_22VEC_die_arg_entry_base,
 gt_ggc_e_20die_arg_entry_struct,
 gt_ggc_e_16limbo_die_struct,
 gt_ggc_e_20VEC_macinfo_entry_gc,
 gt_ggc_e_22VEC_macinfo_entry_base,
 gt_ggc_e_14macinfo_struct,
 gt_ggc_e_20VEC_pubname_entry_gc,
 gt_ggc_e_22VEC_pubname_entry_base,
 gt_ggc_e_23die_symbol_or_type_node,
 gt_ggc_e_19VEC_dw_attr_node_gc,
 gt_ggc_e_21VEC_dw_attr_node_base,
 gt_ggc_e_18comdat_type_struct,
 gt_ggc_e_25dw_ranges_by_label_struct,
 gt_ggc_e_16dw_ranges_struct,
 gt_ggc_e_14pubname_struct,
 gt_ggc_e_28dw_separate_line_info_struct,
 gt_ggc_e_19dw_line_info_struct,
 gt_ggc_e_14dw_attr_struct,
 gt_ggc_e_19dw_val_struct_union,
 gt_ggc_e_22dw_val_vms_delta_union,
 gt_ggc_e_16dw_val_die_union,
 gt_ggc_e_13dw_vec_struct,
 gt_ggc_e_25VEC_deferred_locations_gc,
 gt_ggc_e_27VEC_deferred_locations_base,
 gt_ggc_e_25deferred_locations_struct,
 gt_ggc_e_18dw_loc_list_struct,
 gt_ggc_e_13dw_val_struct,
 gt_ggc_e_15dwarf_file_data,
 gt_ggc_e_17reg_saved_in_data,
 gt_ggc_e_15queued_reg_save,
 gt_ggc_e_20indirect_string_node,
 gt_ggc_e_19dw_loc_descr_struct,
 gt_ggc_e_19dw_cfi_oprnd_struct,
 gt_ggc_e_13dw_fde_struct,
 gt_ggc_e_13dw_cfi_struct,
 gt_ggc_e_8typeinfo,
 gt_ggc_e_13ipa_edge_args,
 gt_ggc_e_13ipa_jump_func,
 gt_ggc_e_22VEC_alias_set_entry_gc,
 gt_ggc_e_24VEC_alias_set_entry_base,
 gt_ggc_e_17alias_set_entry_d,
 gt_ggc_e_24constant_descriptor_tree,
 gt_ggc_e_15cgraph_asm_node,
 gt_ggc_e_25cgraph_indirect_call_info,
 gt_ggc_e_20varpool_node_set_def,
 gt_ggc_e_28varpool_node_set_element_def,
 gt_ggc_e_23VEC_varpool_node_ptr_gc,
 gt_ggc_e_25VEC_varpool_node_ptr_base,
 gt_ggc_e_19cgraph_node_set_def,
 gt_ggc_e_27cgraph_node_set_element_def,
 gt_ggc_e_22VEC_cgraph_node_ptr_gc,
 gt_ggc_e_24VEC_cgraph_node_ptr_base,
 gt_ggc_e_11cgraph_edge,
 gt_ggc_e_17cgraph_clone_info,
 gt_ggc_e_24VEC_ipa_replace_map_p_gc,
 gt_ggc_e_26VEC_ipa_replace_map_p_base,
 gt_ggc_e_15ipa_replace_map,
 gt_ggc_e_15cgraph_rtl_info,
 gt_ggc_e_18cgraph_global_info,
 gt_ggc_e_17cgraph_local_info,
 gt_ggc_e_17cgraph_thunk_info,
 gt_ggc_e_14inline_summary,
 gt_ggc_e_18lto_file_decl_data,
 gt_ggc_e_12ipa_ref_list,
 gt_ggc_e_16VEC_ipa_ref_t_gc,
 gt_ggc_e_18VEC_ipa_ref_t_base,
 gt_ggc_e_7ipa_ref,
 gt_ggc_e_13ipa_ref_ptr_u,
 gt_ggc_e_12varpool_node,
 gt_ggc_e_11cgraph_node,
 gt_ggc_e_18VEC_basic_block_gc,
 gt_ggc_e_20VEC_basic_block_base,
 gt_ggc_e_24basic_block_il_dependent,
 gt_ggc_e_14gimple_bb_info,
 gt_ggc_e_11rtl_bb_info,
 gt_ggc_e_11VEC_edge_gc,
 gt_ggc_e_13VEC_edge_base,
 gt_ggc_e_14edge_def_insns,
 gt_ggc_e_13VEC_loop_p_gc,
 gt_ggc_e_15VEC_loop_p_base,
 gt_ggc_e_4loop,
 gt_ggc_e_9loop_exit,
 gt_ggc_e_13nb_iter_bound,
 gt_ggc_e_12lpt_decision,
 gt_ggc_e_16noswitch_section,
 gt_ggc_e_15unnamed_section,
 gt_ggc_e_13named_section,
 gt_ggc_e_14section_common,
 gt_ggc_e_24types_used_by_vars_entry,
 gt_ggc_e_17language_function,
 gt_ggc_e_5loops,
 gt_ggc_e_18control_flow_graph,
 gt_ggc_e_9eh_status,
 gt_ggc_e_11stack_usage,
 gt_ggc_e_8rtl_data,
 gt_ggc_e_20initial_value_struct,
 gt_ggc_e_11frame_space,
 gt_ggc_e_20function_subsections,
 gt_ggc_e_13incoming_args,
 gt_ggc_e_13varasm_status,
 gt_ggc_e_17rtx_constant_pool,
 gt_ggc_e_18VEC_temp_slot_p_gc,
 gt_ggc_e_20VEC_temp_slot_p_base,
 gt_ggc_e_9temp_slot,
 gt_ggc_e_9gimple_df,
 gt_ggc_e_6rtl_eh,
 gt_ggc_e_23VEC_call_site_record_gc,
 gt_ggc_e_25VEC_call_site_record_base,
 gt_ggc_e_18call_site_record_d,
 gt_ggc_e_11expr_status,
 gt_ggc_e_11emit_status,
 gt_ggc_e_14sequence_stack,
 gt_ggc_e_15target_libfuncs,
 gt_ggc_e_13libfunc_entry,
 gt_ggc_e_17tree_priority_map,
 gt_ggc_e_12tree_int_map,
 gt_ggc_e_13tree_decl_map,
 gt_ggc_e_8tree_map,
 gt_ggc_e_13tree_map_base,
 gt_ggc_e_14lang_tree_node,
 gt_ggc_e_18tree_target_option,
 gt_ggc_e_24tree_optimization_option,
 gt_ggc_e_19tree_statement_list,
 gt_ggc_e_24tree_statement_list_node,
 gt_ggc_e_14tree_type_decl,
 gt_ggc_e_26tree_translation_unit_decl,
 gt_ggc_e_18tree_function_decl,
 gt_ggc_e_20tree_decl_non_common,
 gt_ggc_e_13tree_var_decl,
 gt_ggc_e_18tree_decl_with_vis,
 gt_ggc_e_14tree_parm_decl,
 gt_ggc_e_15tree_const_decl,
 gt_ggc_e_16tree_result_decl,
 gt_ggc_e_9var_ann_d,
 gt_ggc_e_15tree_label_decl,
 gt_ggc_e_15tree_field_decl,
 gt_ggc_e_18tree_decl_with_rtl,
 gt_ggc_e_16tree_decl_common,
 gt_ggc_e_9lang_decl,
 gt_ggc_e_17tree_decl_minimal,
 gt_ggc_e_10tree_binfo,
 gt_ggc_e_9tree_type,
 gt_ggc_e_9lang_type,
 gt_ggc_e_16tree_type_symtab,
 gt_ggc_e_10die_struct,
 gt_ggc_e_10tree_block,
 gt_ggc_e_15tree_omp_clause,
 gt_ggc_e_9phi_arg_d,
 gt_ggc_e_13tree_ssa_name,
 gt_ggc_e_17ssa_use_operand_d,
 gt_ggc_e_12ptr_info_def,
 gt_ggc_e_8tree_exp,
 gt_ggc_e_17tree_exp_subunion,
 gt_ggc_e_16tree_constructor,
 gt_ggc_e_22VEC_constructor_elt_gc,
 gt_ggc_e_24VEC_constructor_elt_base,
 gt_ggc_e_17constructor_elt_d,
 gt_ggc_e_8tree_vec,
 gt_ggc_e_9tree_list,
 gt_ggc_e_15tree_identifier,
 gt_ggc_e_11tree_vector,
 gt_ggc_e_12tree_complex,
 gt_ggc_e_11tree_string,
 gt_ggc_e_14tree_fixed_cst,
 gt_ggc_e_13tree_real_cst,
 gt_ggc_e_12tree_int_cst,
 gt_ggc_e_11tree_common,
 gt_ggc_e_9tree_base,
 gt_ggc_e_17VEC_alias_pair_gc,
 gt_ggc_e_19VEC_alias_pair_base,
 gt_ggc_e_10alias_pair,
 gt_ggc_e_10target_rtl,
 gt_ggc_e_8function,
 gt_ggc_e_16rtx_def_subunion,
 gt_ggc_e_26rtx_def_debug_implicit_ptr,
 gt_ggc_e_20rtx_def_var_location,
 gt_ggc_e_11rtx_def_fma,
 gt_ggc_e_19rtx_def_us_truncate,
 gt_ggc_e_19rtx_def_ss_truncate,
 gt_ggc_e_16rtx_def_us_minus,
 gt_ggc_e_17rtx_def_us_ashift,
 gt_ggc_e_17rtx_def_ss_ashift,
 gt_ggc_e_14rtx_def_ss_abs,
 gt_ggc_e_14rtx_def_us_neg,
 gt_ggc_e_14rtx_def_ss_neg,
 gt_ggc_e_16rtx_def_ss_minus,
 gt_ggc_e_15rtx_def_us_plus,
 gt_ggc_e_15rtx_def_ss_plus,
 gt_ggc_e_21rtx_def_vec_duplicate,
 gt_ggc_e_18rtx_def_vec_concat,
 gt_ggc_e_18rtx_def_vec_select,
 gt_ggc_e_17rtx_def_vec_merge,
 gt_ggc_e_14rtx_def_lo_sum,
 gt_ggc_e_12rtx_def_high,
 gt_ggc_e_20rtx_def_zero_extract,
 gt_ggc_e_20rtx_def_sign_extract,
 gt_ggc_e_14rtx_def_parity,
 gt_ggc_e_16rtx_def_popcount,
 gt_ggc_e_11rtx_def_ctz,
 gt_ggc_e_11rtx_def_clz,
 gt_ggc_e_11rtx_def_ffs,
 gt_ggc_e_13rtx_def_bswap,
 gt_ggc_e_12rtx_def_sqrt,
 gt_ggc_e_11rtx_def_abs,
 gt_ggc_e_26rtx_def_unsigned_sat_fract,
 gt_ggc_e_17rtx_def_sat_fract,
 gt_ggc_e_30rtx_def_unsigned_fract_convert,
 gt_ggc_e_21rtx_def_fract_convert,
 gt_ggc_e_20rtx_def_unsigned_fix,
 gt_ggc_e_22rtx_def_unsigned_float,
 gt_ggc_e_11rtx_def_fix,
 gt_ggc_e_13rtx_def_float,
 gt_ggc_e_22rtx_def_float_truncate,
 gt_ggc_e_20rtx_def_float_extend,
 gt_ggc_e_16rtx_def_truncate,
 gt_ggc_e_19rtx_def_zero_extend,
 gt_ggc_e_19rtx_def_sign_extend,
 gt_ggc_e_12rtx_def_ltgt,
 gt_ggc_e_12rtx_def_unlt,
 gt_ggc_e_12rtx_def_unle,
 gt_ggc_e_12rtx_def_ungt,
 gt_ggc_e_12rtx_def_unge,
 gt_ggc_e_12rtx_def_uneq,
 gt_ggc_e_15rtx_def_ordered,
 gt_ggc_e_17rtx_def_unordered,
 gt_ggc_e_11rtx_def_ltu,
 gt_ggc_e_11rtx_def_leu,
 gt_ggc_e_11rtx_def_gtu,
 gt_ggc_e_11rtx_def_geu,
 gt_ggc_e_10rtx_def_lt,
 gt_ggc_e_10rtx_def_le,
 gt_ggc_e_10rtx_def_gt,
 gt_ggc_e_10rtx_def_ge,
 gt_ggc_e_10rtx_def_eq,
 gt_ggc_e_10rtx_def_ne,
 gt_ggc_e_19rtx_def_post_modify,
 gt_ggc_e_18rtx_def_pre_modify,
 gt_ggc_e_16rtx_def_post_inc,
 gt_ggc_e_16rtx_def_post_dec,
 gt_ggc_e_15rtx_def_pre_inc,
 gt_ggc_e_15rtx_def_pre_dec,
 gt_ggc_e_12rtx_def_umax,
 gt_ggc_e_12rtx_def_umin,
 gt_ggc_e_12rtx_def_smax,
 gt_ggc_e_12rtx_def_smin,
 gt_ggc_e_16rtx_def_rotatert,
 gt_ggc_e_16rtx_def_lshiftrt,
 gt_ggc_e_16rtx_def_ashiftrt,
 gt_ggc_e_14rtx_def_rotate,
 gt_ggc_e_14rtx_def_ashift,
 gt_ggc_e_11rtx_def_not,
 gt_ggc_e_11rtx_def_xor,
 gt_ggc_e_11rtx_def_ior,
 gt_ggc_e_11rtx_def_and,
 gt_ggc_e_12rtx_def_umod,
 gt_ggc_e_12rtx_def_udiv,
 gt_ggc_e_11rtx_def_mod,
 gt_ggc_e_14rtx_def_us_div,
 gt_ggc_e_14rtx_def_ss_div,
 gt_ggc_e_11rtx_def_div,
 gt_ggc_e_15rtx_def_us_mult,
 gt_ggc_e_15rtx_def_ss_mult,
 gt_ggc_e_12rtx_def_mult,
 gt_ggc_e_11rtx_def_neg,
 gt_ggc_e_13rtx_def_minus,
 gt_ggc_e_12rtx_def_plus,
 gt_ggc_e_15rtx_def_compare,
 gt_ggc_e_20rtx_def_if_then_else,
 gt_ggc_e_11rtx_def_cc0,
 gt_ggc_e_18rtx_def_symbol_ref,
 gt_ggc_e_12fake_union_1,
 gt_ggc_e_17rtx_def_label_ref,
 gt_ggc_e_11rtx_def_mem,
 gt_ggc_e_15rtx_def_concatn,
 gt_ggc_e_14rtx_def_concat,
 gt_ggc_e_23rtx_def_strict_low_part,
 gt_ggc_e_14rtx_def_subreg,
 gt_ggc_e_15rtx_def_scratch,
 gt_ggc_e_11rtx_def_reg,
 gt_ggc_e_10rtx_def_pc,
 gt_ggc_e_13rtx_def_const,
 gt_ggc_e_20rtx_def_const_string,
 gt_ggc_e_20rtx_def_const_vector,
 gt_ggc_e_20rtx_def_const_double,
 gt_ggc_e_19rtx_def_const_fixed,
 gt_ggc_e_17rtx_def_const_int,
 gt_ggc_e_15rtx_def_trap_if,
 gt_ggc_e_17rtx_def_eh_return,
 gt_ggc_e_14rtx_def_return,
 gt_ggc_e_12rtx_def_call,
 gt_ggc_e_15rtx_def_clobber,
 gt_ggc_e_11rtx_def_use,
 gt_ggc_e_11rtx_def_set,
 gt_ggc_e_16rtx_def_prefetch,
 gt_ggc_e_21rtx_def_addr_diff_vec,
 gt_ggc_e_16rtx_def_addr_vec,
 gt_ggc_e_23rtx_def_unspec_volatile,
 gt_ggc_e_14rtx_def_unspec,
 gt_ggc_e_20rtx_def_asm_operands,
 gt_ggc_e_17rtx_def_asm_input,
 gt_ggc_e_16rtx_def_parallel,
 gt_ggc_e_17rtx_def_cond_exec,
 gt_ggc_e_12rtx_def_note,
 gt_ggc_e_18rtx_def_code_label,
 gt_ggc_e_15rtx_def_barrier,
 gt_ggc_e_17rtx_def_call_insn,
 gt_ggc_e_17rtx_def_jump_insn,
 gt_ggc_e_12rtx_def_insn,
 gt_ggc_e_18rtx_def_debug_insn,
 gt_ggc_e_15rtx_def_address,
 gt_ggc_e_16rtx_def_sequence,
 gt_ggc_e_17rtx_def_insn_list,
 gt_ggc_e_17rtx_def_expr_list,
 gt_ggc_e_18rtx_def_debug_expr,
 gt_ggc_e_13rtx_def_value,
 gt_ggc_e_15rtx_def_UnKnown,
 gt_ggc_e_23rtx_def_symbol_subunion,
 gt_ggc_e_21rtx_def_note_subunion,
 gt_ggc_e_23constant_descriptor_rtx,
 gt_ggc_e_11fixed_value,
 gt_ggc_e_10real_value,
 gt_ggc_e_12block_symbol,
 gt_ggc_e_12object_block,
 gt_ggc_e_9reg_attrs,
 gt_ggc_e_9mem_attrs,
 gt_ggc_e_14bitmap_obstack,
 gt_ggc_e_18bitmap_element_def,
 gt_ggc_e_12splay_tree_s,
 gt_ggc_e_17splay_tree_node_s,
 gt_ggc_e_4htab,
 gt_ggc_e_16machine_function,
 gt_ggc_e_17stack_local_entry,
 gt_ggc_e_19machine_frame_state,
 gt_ggc_e_10VEC_rtx_gc,
 gt_ggc_e_12VEC_rtx_base,
 gt_ggc_e_13VEC_gimple_gc,
 gt_ggc_e_15VEC_gimple_base,
 gt_ggc_e_11VEC_tree_gc,
 gt_ggc_e_13VEC_tree_none,
 gt_ggc_e_13VEC_tree_base,
 gt_ggc_e_12VEC_uchar_gc,
 gt_ggc_e_14VEC_uchar_base,
 gt_ggc_e_15basic_block_def,
 gt_ggc_e_8edge_def,
 gt_ggc_e_12gimple_seq_d,
 gt_ggc_e_15cl_optimization,
 gt_ggc_e_16cl_target_option,
 gt_ggc_e_7section,
 gt_ggc_e_18gimple_statement_d,
 gt_ggc_e_9rtvec_def,
 gt_ggc_e_7rtx_def,
 gt_ggc_e_15bitmap_head_def,
 gt_ggc_e_11cpp_macro_u,
 gt_ggc_e_13ht_identifier,
 gt_ggc_e_19_cpp_hashnode_value,
 gt_ggc_e_11cpp_token_u,
 gt_ggc_e_14cpp_identifier,
 gt_ggc_e_9tree_node,
 gt_ggc_e_13cpp_macro_arg,
 gt_ggc_e_6answer,
 gt_ggc_e_9cpp_macro,
 gt_ggc_e_12cpp_hashnode,
 gt_ggc_e_10cpp_string,
 gt_ggc_e_9cpp_token,
 gt_ggc_e_9line_maps,
 gt_ggc_e_8line_map,
 gt_e_II17splay_tree_node_s,
 gt_e_SP9tree_node17splay_tree_node_s,
 gt_e_P9tree_nodeP9tree_node17splay_tree_node_s,
 gt_e_P15interface_tuple4htab,
 gt_e_P17string_descriptor4htab,
 gt_e_P14type_assertion4htab,
 gt_e_P18treetreehash_entry4htab,
 gt_e_P17module_htab_entry4htab,
 gt_e_P21pending_abstract_type4htab,
 gt_e_P14constexpr_call4htab,
 gt_e_P16constexpr_fundef4htab,
 gt_e_P10spec_entry4htab,
 gt_e_P16cxx_int_tree_map4htab,
 gt_e_P17named_label_entry4htab,
 gt_e_P17lto_in_decl_state4htab,
 gt_e_P20lto_symtab_entry_def4htab,
 gt_e_P11heapvar_map4htab,
 gt_e_P8tree_map4htab,
 gt_e_P9tree_nodeP9tree_node12splay_tree_s,
 gt_e_P12varpool_node4htab,
 gt_e_P13scev_info_str4htab,
 gt_e_P12tree_int_map4htab,
 gt_e_P23constant_descriptor_rtx4htab,
 gt_e_P24constant_descriptor_tree4htab,
 gt_e_P12object_block4htab,
 gt_e_P7section4htab,
 gt_e_P17tree_priority_map4htab,
 gt_e_P13tree_decl_map4htab,
 gt_e_P9type_hash4htab,
 gt_e_P23temp_slot_address_entry4htab,
 gt_e_P15throw_stmt_node4htab,
 gt_e_P9reg_attrs4htab,
 gt_e_P9mem_attrs4htab,
 gt_e_P7rtx_def4htab,
 gt_e_SP9tree_node12splay_tree_s,
 gt_e_P10vcall_insn4htab,
 gt_e_P22cached_dw_loc_list_def4htab,
 gt_e_P16var_loc_list_def4htab,
 gt_e_P10die_struct4htab,
 gt_e_P15dwarf_file_data4htab,
 gt_e_P20indirect_string_node4htab,
 gt_e_P11cgraph_node4htab,
 gt_e_II12splay_tree_s,
 gt_e_P28varpool_node_set_element_def4htab,
 gt_e_P27cgraph_node_set_element_def4htab,
 gt_e_P11cgraph_edge4htab,
 gt_e_P9loop_exit4htab,
 gt_e_P24types_used_by_vars_entry4htab,
 gt_e_P9tree_node4htab,
 gt_e_P13libfunc_entry4htab,
 gt_types_enum_last
};
# 6257 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gtype-desc.h"
extern void gt_ggc_mx_c_inline_static (void *);



extern void gt_ggc_mx_VEC_c_goto_bindings_p_gc (void *);



extern void gt_ggc_mx_c_goto_bindings (void *);



extern void gt_ggc_mx_c_scope (void *);



extern void gt_ggc_mx_c_binding (void *);



extern void gt_ggc_mx_c_label_vars (void *);



extern void gt_ggc_mx_c_parser (void *);



extern void gt_ggc_mx_VEC_ivarref_entry_gc (void *);



extern void gt_ggc_mx_VEC_prot_list_entry_gc (void *);



extern void gt_ggc_mx_VEC_msgref_entry_gc (void *);



extern void gt_ggc_mx_VEC_ident_data_tuple_gc (void *);



extern void gt_ggc_mx_interface_tuple (void *);



extern void gt_ggc_mx_string_descriptor (void *);



extern void gt_ggc_mx_imp_entry (void *);



extern void gt_ggc_mx_hashed_attribute (void *);



extern void gt_ggc_mx_hashed_entry (void *);



extern void gt_ggc_mx_VEC_ltrans_partition_gc (void *);



extern void gt_ggc_mx_ltrans_partition_def (void *);



extern void gt_ggc_mx_VEC_method_entry_gc (void *);



extern void gt_ggc_mx_type_assertion (void *);



extern void gt_ggc_mx_treetreehash_entry (void *);



extern void gt_ggc_mx_CPool (void *);



extern void gt_ggc_mx_JCF (void *);



extern void gt_ggc_mx_module_htab_entry (void *);



extern void gt_ggc_mx_binding_level (void *);



extern void gt_ggc_mx_opt_stack (void *);



extern void gt_ggc_mx_VEC_pending_redefinition_gc (void *);



extern void gt_ggc_mx_VEC_pending_weak_gc (void *);



extern void gt_ggc_mx_align_stack (void *);



extern void gt_ggc_mx_VEC_tree_gc_vec_gc (void *);



extern void gt_ggc_mx_VEC_const_char_p_gc (void *);



extern void gt_ggc_mx_pending_abstract_type (void *);



extern void gt_ggc_mx_VEC_tree_int_gc (void *);



extern void gt_ggc_mx_cp_parser (void *);



extern void gt_ggc_mx_VEC_cp_unparsed_functions_entry_gc (void *);



extern void gt_ggc_mx_VEC_cp_default_arg_entry_gc (void *);



extern void gt_ggc_mx_cp_parser_context (void *);



extern void gt_ggc_mx_cp_lexer (void *);



extern void gt_ggc_mx_tree_check (void *);



extern void gt_ggc_mx_constexpr_call (void *);



extern void gt_ggc_mx_constexpr_fundef (void *);



extern void gt_ggc_mx_VEC_deferred_access_gc (void *);



extern void gt_ggc_mx_spec_entry (void *);



extern void gt_ggc_mx_pending_template (void *);



extern void gt_ggc_mx_VEC_incomplete_var_gc (void *);



extern void gt_ggc_mx_named_label_use_entry (void *);



extern void gt_ggc_mx_VEC_deferred_access_check_gc (void *);



extern void gt_ggc_mx_sorted_fields_type (void *);



extern void gt_ggc_mx_VEC_tree_pair_s_gc (void *);



extern void gt_ggc_mx_named_label_entry (void *);



extern void gt_ggc_mx_VEC_qualified_typedef_usage_t_gc (void *);



extern void gt_ggc_mx_cp_token_cache (void *);



extern void gt_ggc_mx_saved_scope (void *);



extern void gt_ggc_mx_cxx_int_tree_map (void *);



extern void gt_ggc_mx_VEC_cp_label_binding_gc (void *);



extern void gt_ggc_mx_VEC_cp_class_binding_gc (void *);



extern void gt_ggc_mx_VEC_cxx_saved_binding_gc (void *);



extern void gt_ggc_mx_cp_binding_level (void *);



extern void gt_ggc_mx_cxx_binding (void *);



extern void gt_ggc_mx_binding_entry_s (void *);



extern void gt_ggc_mx_binding_table_s (void *);



extern void gt_ggc_mx_tinst_level (void *);



extern void gt_ggc_mx_VEC_tinfo_s_gc (void *);



extern void gt_ggc_mx_gnat_binding_level (void *);



extern void gt_ggc_mx_elab_info (void *);



extern void gt_ggc_mx_stmt_group (void *);



extern void gt_ggc_mx_VEC_parm_attr_gc (void *);



extern void gt_ggc_mx_parm_attr_d (void *);



extern void gt_ggc_mx_lto_in_decl_state (void *);



extern void gt_ggc_mx_VEC_ipa_edge_args_t_gc (void *);



extern void gt_ggc_mx_lto_symtab_entry_def (void *);



extern void gt_ggc_mx_heapvar_map (void *);



extern void gt_ggc_mx_ssa_operand_memory_d (void *);



extern void gt_ggc_mx_scev_info_str (void *);



extern void gt_ggc_mx_VEC_mem_addr_template_gc (void *);



extern void gt_ggc_mx_gimple_type_leader_entry_s (void *);



extern void gt_ggc_mx_gimple_seq_node_d (void *);



extern void gt_ggc_mx_type_hash (void *);



extern void gt_ggc_mx_string_pool_data (void *);



extern void gt_ggc_mx_temp_slot_address_entry (void *);



extern void gt_ggc_mx_throw_stmt_node (void *);



extern void gt_ggc_mx_VEC_eh_landing_pad_gc (void *);



extern void gt_ggc_mx_VEC_eh_region_gc (void *);



extern void gt_ggc_mx_eh_catch_d (void *);



extern void gt_ggc_mx_eh_landing_pad_d (void *);



extern void gt_ggc_mx_eh_region_d (void *);



extern void gt_ggc_mx_vcall_insn (void *);



extern void gt_ggc_mx_VEC_vcall_entry_gc (void *);



extern void gt_ggc_mx_VEC_dcall_entry_gc (void *);



extern void gt_ggc_mx_cached_dw_loc_list_def (void *);



extern void gt_ggc_mx_var_loc_list_def (void *);



extern void gt_ggc_mx_var_loc_node (void *);



extern void gt_ggc_mx_VEC_die_arg_entry_gc (void *);



extern void gt_ggc_mx_limbo_die_struct (void *);



extern void gt_ggc_mx_VEC_macinfo_entry_gc (void *);



extern void gt_ggc_mx_VEC_pubname_entry_gc (void *);



extern void gt_ggc_mx_VEC_dw_attr_node_gc (void *);



extern void gt_ggc_mx_comdat_type_struct (void *);



extern void gt_ggc_mx_dw_ranges_by_label_struct (void *);



extern void gt_ggc_mx_dw_ranges_struct (void *);



extern void gt_ggc_mx_dw_separate_line_info_struct (void *);



extern void gt_ggc_mx_dw_line_info_struct (void *);



extern void gt_ggc_mx_VEC_deferred_locations_gc (void *);



extern void gt_ggc_mx_dw_loc_list_struct (void *);



extern void gt_ggc_mx_dwarf_file_data (void *);



extern void gt_ggc_mx_queued_reg_save (void *);



extern void gt_ggc_mx_indirect_string_node (void *);



extern void gt_ggc_mx_dw_loc_descr_struct (void *);



extern void gt_ggc_mx_dw_fde_struct (void *);



extern void gt_ggc_mx_dw_cfi_struct (void *);



extern void gt_ggc_mx_typeinfo (void *);



extern void gt_ggc_mx_VEC_alias_set_entry_gc (void *);



extern void gt_ggc_mx_alias_set_entry_d (void *);



extern void gt_ggc_mx_constant_descriptor_tree (void *);



extern void gt_ggc_mx_cgraph_asm_node (void *);



extern void gt_ggc_mx_cgraph_indirect_call_info (void *);



extern void gt_ggc_mx_varpool_node_set_def (void *);



extern void gt_ggc_mx_varpool_node_set_element_def (void *);



extern void gt_ggc_mx_VEC_varpool_node_ptr_gc (void *);



extern void gt_ggc_mx_cgraph_node_set_def (void *);



extern void gt_ggc_mx_cgraph_node_set_element_def (void *);



extern void gt_ggc_mx_VEC_cgraph_node_ptr_gc (void *);



extern void gt_ggc_mx_cgraph_edge (void *);



extern void gt_ggc_mx_VEC_ipa_replace_map_p_gc (void *);



extern void gt_ggc_mx_ipa_replace_map (void *);



extern void gt_ggc_mx_lto_file_decl_data (void *);



extern void gt_ggc_mx_VEC_ipa_ref_t_gc (void *);



extern void gt_ggc_mx_varpool_node (void *);



extern void gt_ggc_mx_cgraph_node (void *);



extern void gt_ggc_mx_VEC_basic_block_gc (void *);



extern void gt_ggc_mx_gimple_bb_info (void *);



extern void gt_ggc_mx_rtl_bb_info (void *);



extern void gt_ggc_mx_VEC_edge_gc (void *);



extern void gt_ggc_mx_VEC_loop_p_gc (void *);



extern void gt_ggc_mx_loop (void *);



extern void gt_ggc_mx_loop_exit (void *);



extern void gt_ggc_mx_nb_iter_bound (void *);



extern void gt_ggc_mx_types_used_by_vars_entry (void *);



extern void gt_ggc_mx_language_function (void *);



extern void gt_ggc_mx_loops (void *);



extern void gt_ggc_mx_control_flow_graph (void *);



extern void gt_ggc_mx_eh_status (void *);



extern void gt_ggc_mx_stack_usage (void *);



extern void gt_ggc_mx_initial_value_struct (void *);



extern void gt_ggc_mx_frame_space (void *);



extern void gt_ggc_mx_rtx_constant_pool (void *);



extern void gt_ggc_mx_VEC_temp_slot_p_gc (void *);



extern void gt_ggc_mx_temp_slot (void *);



extern void gt_ggc_mx_gimple_df (void *);



extern void gt_ggc_mx_VEC_call_site_record_gc (void *);



extern void gt_ggc_mx_call_site_record_d (void *);



extern void gt_ggc_mx_sequence_stack (void *);



extern void gt_ggc_mx_libfunc_entry (void *);



extern void gt_ggc_mx_tree_priority_map (void *);



extern void gt_ggc_mx_tree_int_map (void *);



extern void gt_ggc_mx_tree_decl_map (void *);



extern void gt_ggc_mx_tree_map (void *);



extern void gt_ggc_mx_lang_tree_node (void *);



extern void gt_ggc_mx_tree_statement_list_node (void *);



extern void gt_ggc_mx_var_ann_d (void *);



extern void gt_ggc_mx_lang_decl (void *);



extern void gt_ggc_mx_lang_type (void *);



extern void gt_ggc_mx_die_struct (void *);



extern void gt_ggc_mx_ptr_info_def (void *);



extern void gt_ggc_mx_VEC_constructor_elt_gc (void *);



extern void gt_ggc_mx_VEC_alias_pair_gc (void *);



extern void gt_ggc_mx_function (void *);



extern void gt_ggc_mx_constant_descriptor_rtx (void *);



extern void gt_ggc_mx_fixed_value (void *);



extern void gt_ggc_mx_real_value (void *);



extern void gt_ggc_mx_object_block (void *);



extern void gt_ggc_mx_reg_attrs (void *);



extern void gt_ggc_mx_mem_attrs (void *);



extern void gt_ggc_mx_bitmap_obstack (void *);



extern void gt_ggc_mx_bitmap_element_def (void *);



extern void gt_ggc_mx_machine_function (void *);



extern void gt_ggc_mx_stack_local_entry (void *);



extern void gt_ggc_mx_VEC_rtx_gc (void *);



extern void gt_ggc_mx_VEC_gimple_gc (void *);



extern void gt_ggc_mx_VEC_tree_gc (void *);



extern void gt_ggc_mx_VEC_uchar_gc (void *);



extern void gt_ggc_mx_basic_block_def (void *);



extern void gt_ggc_mx_edge_def (void *);



extern void gt_ggc_mx_gimple_seq_d (void *);



extern void gt_ggc_mx_section (void *);



extern void gt_ggc_mx_gimple_statement_d (void *);



extern void gt_ggc_mx_rtvec_def (void *);



extern void gt_ggc_mx_rtx_def (void *);



extern void gt_ggc_mx_bitmap_head_def (void *);







extern void gt_ggc_mx_answer (void *);



extern void gt_ggc_mx_cpp_macro (void *);



extern void gt_ggc_mx_cpp_token (void *);



extern void gt_ggc_mx_line_maps (void *);
extern void gt_ggc_m_II17splay_tree_node_s (void *);
extern void gt_ggc_m_SP9tree_node17splay_tree_node_s (void *);
extern void gt_ggc_m_P9tree_nodeP9tree_node17splay_tree_node_s (void *);
extern void gt_ggc_m_P15interface_tuple4htab (void *);
extern void gt_ggc_m_P17string_descriptor4htab (void *);
extern void gt_ggc_m_P14type_assertion4htab (void *);
extern void gt_ggc_m_P18treetreehash_entry4htab (void *);
extern void gt_ggc_m_P17module_htab_entry4htab (void *);
extern void gt_ggc_m_P21pending_abstract_type4htab (void *);
extern void gt_ggc_m_P14constexpr_call4htab (void *);
extern void gt_ggc_m_P16constexpr_fundef4htab (void *);
extern void gt_ggc_m_P10spec_entry4htab (void *);
extern void gt_ggc_m_P16cxx_int_tree_map4htab (void *);
extern void gt_ggc_m_P17named_label_entry4htab (void *);
extern void gt_ggc_m_P17lto_in_decl_state4htab (void *);
extern void gt_ggc_m_P20lto_symtab_entry_def4htab (void *);
extern void gt_ggc_m_P11heapvar_map4htab (void *);
extern void gt_ggc_m_P8tree_map4htab (void *);
extern void gt_ggc_m_P9tree_nodeP9tree_node12splay_tree_s (void *);
extern void gt_ggc_m_P12varpool_node4htab (void *);
extern void gt_ggc_m_P13scev_info_str4htab (void *);
extern void gt_ggc_m_P12tree_int_map4htab (void *);
extern void gt_ggc_m_P23constant_descriptor_rtx4htab (void *);
extern void gt_ggc_m_P24constant_descriptor_tree4htab (void *);
extern void gt_ggc_m_P12object_block4htab (void *);
extern void gt_ggc_m_P7section4htab (void *);
extern void gt_ggc_m_P17tree_priority_map4htab (void *);
extern void gt_ggc_m_P13tree_decl_map4htab (void *);
extern void gt_ggc_m_P9type_hash4htab (void *);
extern void gt_ggc_m_P23temp_slot_address_entry4htab (void *);
extern void gt_ggc_m_P15throw_stmt_node4htab (void *);
extern void gt_ggc_m_P9reg_attrs4htab (void *);
extern void gt_ggc_m_P9mem_attrs4htab (void *);
extern void gt_ggc_m_P7rtx_def4htab (void *);
extern void gt_ggc_m_SP9tree_node12splay_tree_s (void *);
extern void gt_ggc_m_P10vcall_insn4htab (void *);
extern void gt_ggc_m_P22cached_dw_loc_list_def4htab (void *);
extern void gt_ggc_m_P16var_loc_list_def4htab (void *);
extern void gt_ggc_m_P10die_struct4htab (void *);
extern void gt_ggc_m_P15dwarf_file_data4htab (void *);
extern void gt_ggc_m_P20indirect_string_node4htab (void *);
extern void gt_ggc_m_P11cgraph_node4htab (void *);
extern void gt_ggc_m_II12splay_tree_s (void *);
extern void gt_ggc_m_P28varpool_node_set_element_def4htab (void *);
extern void gt_ggc_m_P27cgraph_node_set_element_def4htab (void *);
extern void gt_ggc_m_P11cgraph_edge4htab (void *);
extern void gt_ggc_m_P9loop_exit4htab (void *);
extern void gt_ggc_m_P24types_used_by_vars_entry4htab (void *);
extern void gt_ggc_m_P9tree_node4htab (void *);
extern void gt_ggc_m_P13libfunc_entry4htab (void *);
# 7088 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gtype-desc.h"
extern void gt_pch_nx_c_inline_static (void *);



extern void gt_pch_nx_VEC_c_goto_bindings_p_gc (void *);



extern void gt_pch_nx_c_goto_bindings (void *);



extern void gt_pch_nx_c_scope (void *);



extern void gt_pch_nx_c_binding (void *);



extern void gt_pch_nx_c_label_vars (void *);



extern void gt_pch_nx_c_parser (void *);



extern void gt_pch_nx_VEC_ivarref_entry_gc (void *);



extern void gt_pch_nx_VEC_prot_list_entry_gc (void *);



extern void gt_pch_nx_VEC_msgref_entry_gc (void *);



extern void gt_pch_nx_VEC_ident_data_tuple_gc (void *);



extern void gt_pch_nx_interface_tuple (void *);



extern void gt_pch_nx_string_descriptor (void *);



extern void gt_pch_nx_imp_entry (void *);



extern void gt_pch_nx_hashed_attribute (void *);



extern void gt_pch_nx_hashed_entry (void *);



extern void gt_pch_nx_VEC_ltrans_partition_gc (void *);



extern void gt_pch_nx_ltrans_partition_def (void *);



extern void gt_pch_nx_VEC_method_entry_gc (void *);



extern void gt_pch_nx_type_assertion (void *);



extern void gt_pch_nx_treetreehash_entry (void *);



extern void gt_pch_nx_CPool (void *);



extern void gt_pch_nx_JCF (void *);



extern void gt_pch_nx_module_htab_entry (void *);



extern void gt_pch_nx_binding_level (void *);



extern void gt_pch_nx_opt_stack (void *);



extern void gt_pch_nx_VEC_pending_redefinition_gc (void *);



extern void gt_pch_nx_VEC_pending_weak_gc (void *);



extern void gt_pch_nx_align_stack (void *);



extern void gt_pch_nx_VEC_tree_gc_vec_gc (void *);



extern void gt_pch_nx_VEC_const_char_p_gc (void *);



extern void gt_pch_nx_pending_abstract_type (void *);



extern void gt_pch_nx_VEC_tree_int_gc (void *);



extern void gt_pch_nx_cp_parser (void *);



extern void gt_pch_nx_VEC_cp_unparsed_functions_entry_gc (void *);



extern void gt_pch_nx_VEC_cp_default_arg_entry_gc (void *);



extern void gt_pch_nx_cp_parser_context (void *);



extern void gt_pch_nx_cp_lexer (void *);



extern void gt_pch_nx_tree_check (void *);



extern void gt_pch_nx_constexpr_call (void *);



extern void gt_pch_nx_constexpr_fundef (void *);



extern void gt_pch_nx_VEC_deferred_access_gc (void *);



extern void gt_pch_nx_spec_entry (void *);



extern void gt_pch_nx_pending_template (void *);



extern void gt_pch_nx_VEC_incomplete_var_gc (void *);



extern void gt_pch_nx_named_label_use_entry (void *);



extern void gt_pch_nx_VEC_deferred_access_check_gc (void *);



extern void gt_pch_nx_sorted_fields_type (void *);



extern void gt_pch_nx_VEC_tree_pair_s_gc (void *);



extern void gt_pch_nx_named_label_entry (void *);



extern void gt_pch_nx_VEC_qualified_typedef_usage_t_gc (void *);



extern void gt_pch_nx_cp_token_cache (void *);



extern void gt_pch_nx_saved_scope (void *);



extern void gt_pch_nx_cxx_int_tree_map (void *);



extern void gt_pch_nx_VEC_cp_label_binding_gc (void *);



extern void gt_pch_nx_VEC_cp_class_binding_gc (void *);



extern void gt_pch_nx_VEC_cxx_saved_binding_gc (void *);



extern void gt_pch_nx_cp_binding_level (void *);



extern void gt_pch_nx_cxx_binding (void *);



extern void gt_pch_nx_binding_entry_s (void *);



extern void gt_pch_nx_binding_table_s (void *);



extern void gt_pch_nx_tinst_level (void *);



extern void gt_pch_nx_VEC_tinfo_s_gc (void *);



extern void gt_pch_nx_gnat_binding_level (void *);



extern void gt_pch_nx_elab_info (void *);



extern void gt_pch_nx_stmt_group (void *);



extern void gt_pch_nx_VEC_parm_attr_gc (void *);



extern void gt_pch_nx_parm_attr_d (void *);



extern void gt_pch_nx_lto_in_decl_state (void *);



extern void gt_pch_nx_VEC_ipa_edge_args_t_gc (void *);



extern void gt_pch_nx_lto_symtab_entry_def (void *);



extern void gt_pch_nx_heapvar_map (void *);



extern void gt_pch_nx_ssa_operand_memory_d (void *);



extern void gt_pch_nx_scev_info_str (void *);



extern void gt_pch_nx_VEC_mem_addr_template_gc (void *);



extern void gt_pch_nx_gimple_type_leader_entry_s (void *);



extern void gt_pch_nx_gimple_seq_node_d (void *);



extern void gt_pch_nx_type_hash (void *);



extern void gt_pch_nx_string_pool_data (void *);



extern void gt_pch_nx_temp_slot_address_entry (void *);



extern void gt_pch_nx_throw_stmt_node (void *);



extern void gt_pch_nx_VEC_eh_landing_pad_gc (void *);



extern void gt_pch_nx_VEC_eh_region_gc (void *);



extern void gt_pch_nx_eh_catch_d (void *);



extern void gt_pch_nx_eh_landing_pad_d (void *);



extern void gt_pch_nx_eh_region_d (void *);



extern void gt_pch_nx_vcall_insn (void *);



extern void gt_pch_nx_VEC_vcall_entry_gc (void *);



extern void gt_pch_nx_VEC_dcall_entry_gc (void *);



extern void gt_pch_nx_cached_dw_loc_list_def (void *);



extern void gt_pch_nx_var_loc_list_def (void *);



extern void gt_pch_nx_var_loc_node (void *);



extern void gt_pch_nx_VEC_die_arg_entry_gc (void *);



extern void gt_pch_nx_limbo_die_struct (void *);



extern void gt_pch_nx_VEC_macinfo_entry_gc (void *);



extern void gt_pch_nx_VEC_pubname_entry_gc (void *);



extern void gt_pch_nx_VEC_dw_attr_node_gc (void *);



extern void gt_pch_nx_comdat_type_struct (void *);



extern void gt_pch_nx_dw_ranges_by_label_struct (void *);



extern void gt_pch_nx_dw_ranges_struct (void *);



extern void gt_pch_nx_dw_separate_line_info_struct (void *);



extern void gt_pch_nx_dw_line_info_struct (void *);



extern void gt_pch_nx_VEC_deferred_locations_gc (void *);



extern void gt_pch_nx_dw_loc_list_struct (void *);



extern void gt_pch_nx_dwarf_file_data (void *);



extern void gt_pch_nx_queued_reg_save (void *);



extern void gt_pch_nx_indirect_string_node (void *);



extern void gt_pch_nx_dw_loc_descr_struct (void *);



extern void gt_pch_nx_dw_fde_struct (void *);



extern void gt_pch_nx_dw_cfi_struct (void *);



extern void gt_pch_nx_typeinfo (void *);



extern void gt_pch_nx_VEC_alias_set_entry_gc (void *);



extern void gt_pch_nx_alias_set_entry_d (void *);



extern void gt_pch_nx_constant_descriptor_tree (void *);



extern void gt_pch_nx_cgraph_asm_node (void *);



extern void gt_pch_nx_cgraph_indirect_call_info (void *);



extern void gt_pch_nx_varpool_node_set_def (void *);



extern void gt_pch_nx_varpool_node_set_element_def (void *);



extern void gt_pch_nx_VEC_varpool_node_ptr_gc (void *);



extern void gt_pch_nx_cgraph_node_set_def (void *);



extern void gt_pch_nx_cgraph_node_set_element_def (void *);



extern void gt_pch_nx_VEC_cgraph_node_ptr_gc (void *);



extern void gt_pch_nx_cgraph_edge (void *);



extern void gt_pch_nx_VEC_ipa_replace_map_p_gc (void *);



extern void gt_pch_nx_ipa_replace_map (void *);



extern void gt_pch_nx_lto_file_decl_data (void *);



extern void gt_pch_nx_VEC_ipa_ref_t_gc (void *);



extern void gt_pch_nx_varpool_node (void *);



extern void gt_pch_nx_cgraph_node (void *);



extern void gt_pch_nx_VEC_basic_block_gc (void *);



extern void gt_pch_nx_gimple_bb_info (void *);



extern void gt_pch_nx_rtl_bb_info (void *);



extern void gt_pch_nx_VEC_edge_gc (void *);



extern void gt_pch_nx_VEC_loop_p_gc (void *);



extern void gt_pch_nx_loop (void *);



extern void gt_pch_nx_loop_exit (void *);



extern void gt_pch_nx_nb_iter_bound (void *);



extern void gt_pch_nx_types_used_by_vars_entry (void *);



extern void gt_pch_nx_language_function (void *);



extern void gt_pch_nx_loops (void *);



extern void gt_pch_nx_control_flow_graph (void *);



extern void gt_pch_nx_eh_status (void *);



extern void gt_pch_nx_stack_usage (void *);



extern void gt_pch_nx_initial_value_struct (void *);



extern void gt_pch_nx_frame_space (void *);



extern void gt_pch_nx_rtx_constant_pool (void *);



extern void gt_pch_nx_VEC_temp_slot_p_gc (void *);



extern void gt_pch_nx_temp_slot (void *);



extern void gt_pch_nx_gimple_df (void *);



extern void gt_pch_nx_VEC_call_site_record_gc (void *);



extern void gt_pch_nx_call_site_record_d (void *);



extern void gt_pch_nx_sequence_stack (void *);



extern void gt_pch_nx_libfunc_entry (void *);



extern void gt_pch_nx_tree_priority_map (void *);



extern void gt_pch_nx_tree_int_map (void *);



extern void gt_pch_nx_tree_decl_map (void *);



extern void gt_pch_nx_tree_map (void *);



extern void gt_pch_nx_lang_tree_node (void *);



extern void gt_pch_nx_tree_statement_list_node (void *);



extern void gt_pch_nx_var_ann_d (void *);



extern void gt_pch_nx_lang_decl (void *);



extern void gt_pch_nx_lang_type (void *);



extern void gt_pch_nx_die_struct (void *);



extern void gt_pch_nx_ptr_info_def (void *);



extern void gt_pch_nx_VEC_constructor_elt_gc (void *);



extern void gt_pch_nx_VEC_alias_pair_gc (void *);



extern void gt_pch_nx_function (void *);



extern void gt_pch_nx_constant_descriptor_rtx (void *);



extern void gt_pch_nx_fixed_value (void *);



extern void gt_pch_nx_real_value (void *);



extern void gt_pch_nx_object_block (void *);



extern void gt_pch_nx_reg_attrs (void *);



extern void gt_pch_nx_mem_attrs (void *);



extern void gt_pch_nx_bitmap_obstack (void *);



extern void gt_pch_nx_bitmap_element_def (void *);



extern void gt_pch_nx_machine_function (void *);



extern void gt_pch_nx_stack_local_entry (void *);



extern void gt_pch_nx_VEC_rtx_gc (void *);



extern void gt_pch_nx_VEC_gimple_gc (void *);



extern void gt_pch_nx_VEC_tree_gc (void *);



extern void gt_pch_nx_VEC_uchar_gc (void *);



extern void gt_pch_nx_basic_block_def (void *);



extern void gt_pch_nx_edge_def (void *);



extern void gt_pch_nx_gimple_seq_d (void *);



extern void gt_pch_nx_section (void *);



extern void gt_pch_nx_gimple_statement_d (void *);



extern void gt_pch_nx_rtvec_def (void *);



extern void gt_pch_nx_rtx_def (void *);



extern void gt_pch_nx_bitmap_head_def (void *);







extern void gt_pch_nx_answer (void *);



extern void gt_pch_nx_cpp_macro (void *);



extern void gt_pch_nx_cpp_token (void *);



extern void gt_pch_nx_line_maps (void *);
extern void gt_pch_n_II17splay_tree_node_s (void *);
extern void gt_pch_n_SP9tree_node17splay_tree_node_s (void *);
extern void gt_pch_n_P9tree_nodeP9tree_node17splay_tree_node_s (void *);
extern void gt_pch_n_P15interface_tuple4htab (void *);
extern void gt_pch_n_P17string_descriptor4htab (void *);
extern void gt_pch_n_P14type_assertion4htab (void *);
extern void gt_pch_n_P18treetreehash_entry4htab (void *);
extern void gt_pch_n_P17module_htab_entry4htab (void *);
extern void gt_pch_n_P21pending_abstract_type4htab (void *);
extern void gt_pch_n_P14constexpr_call4htab (void *);
extern void gt_pch_n_P16constexpr_fundef4htab (void *);
extern void gt_pch_n_P10spec_entry4htab (void *);
extern void gt_pch_n_P16cxx_int_tree_map4htab (void *);
extern void gt_pch_n_P17named_label_entry4htab (void *);
extern void gt_pch_n_P17lto_in_decl_state4htab (void *);
extern void gt_pch_n_P20lto_symtab_entry_def4htab (void *);
extern void gt_pch_n_P11heapvar_map4htab (void *);
extern void gt_pch_n_P8tree_map4htab (void *);
extern void gt_pch_n_P9tree_nodeP9tree_node12splay_tree_s (void *);
extern void gt_pch_n_P12varpool_node4htab (void *);
extern void gt_pch_n_P13scev_info_str4htab (void *);
extern void gt_pch_n_P12tree_int_map4htab (void *);
extern void gt_pch_n_P23constant_descriptor_rtx4htab (void *);
extern void gt_pch_n_P24constant_descriptor_tree4htab (void *);
extern void gt_pch_n_P12object_block4htab (void *);
extern void gt_pch_n_P7section4htab (void *);
extern void gt_pch_n_P17tree_priority_map4htab (void *);
extern void gt_pch_n_P13tree_decl_map4htab (void *);
extern void gt_pch_n_P9type_hash4htab (void *);
extern void gt_pch_n_P23temp_slot_address_entry4htab (void *);
extern void gt_pch_n_P15throw_stmt_node4htab (void *);
extern void gt_pch_n_P9reg_attrs4htab (void *);
extern void gt_pch_n_P9mem_attrs4htab (void *);
extern void gt_pch_n_P7rtx_def4htab (void *);
extern void gt_pch_n_SP9tree_node12splay_tree_s (void *);
extern void gt_pch_n_P10vcall_insn4htab (void *);
extern void gt_pch_n_P22cached_dw_loc_list_def4htab (void *);
extern void gt_pch_n_P16var_loc_list_def4htab (void *);
extern void gt_pch_n_P10die_struct4htab (void *);
extern void gt_pch_n_P15dwarf_file_data4htab (void *);
extern void gt_pch_n_P20indirect_string_node4htab (void *);
extern void gt_pch_n_P11cgraph_node4htab (void *);
extern void gt_pch_n_II12splay_tree_s (void *);
extern void gt_pch_n_P28varpool_node_set_element_def4htab (void *);
extern void gt_pch_n_P27cgraph_node_set_element_def4htab (void *);
extern void gt_pch_n_P11cgraph_edge4htab (void *);
extern void gt_pch_n_P9loop_exit4htab (void *);
extern void gt_pch_n_P24types_used_by_vars_entry4htab (void *);
extern void gt_pch_n_P9tree_node4htab (void *);
extern void gt_pch_n_P13libfunc_entry4htab (void *);




extern void gt_pch_p_15c_inline_static
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_24VEC_c_goto_bindings_p_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15c_goto_bindings
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_7c_scope
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9c_binding
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_12c_label_vars
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_8c_parser
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_20VEC_ivarref_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_22VEC_prot_list_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_19VEC_msgref_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_23VEC_ident_data_tuple_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15interface_tuple
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17string_descriptor
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9imp_entry
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16hashed_attribute
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_12hashed_entry
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_23VEC_ltrans_partition_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_20ltrans_partition_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_19VEC_method_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_14type_assertion
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18treetreehash_entry
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_5CPool
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_3JCF
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17module_htab_entry
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_13binding_level
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9opt_stack
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_27VEC_pending_redefinition_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_19VEC_pending_weak_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11align_stack
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18VEC_tree_gc_vec_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_19VEC_const_char_p_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_21pending_abstract_type
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15VEC_tree_int_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9cp_parser
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_34VEC_cp_unparsed_functions_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_27VEC_cp_default_arg_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17cp_parser_context
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_8cp_lexer
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_10tree_check
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_14constexpr_call
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16constexpr_fundef
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_22VEC_deferred_access_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_10spec_entry
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16pending_template
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_21VEC_incomplete_var_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_21named_label_use_entry
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_28VEC_deferred_access_check_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18sorted_fields_type
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18VEC_tree_pair_s_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17named_label_entry
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_32VEC_qualified_typedef_usage_t_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_14cp_token_cache
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11saved_scope
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16cxx_int_tree_map
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_23VEC_cp_label_binding_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_23VEC_cp_class_binding_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_24VEC_cxx_saved_binding_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16cp_binding_level
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11cxx_binding
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15binding_entry_s
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15binding_table_s
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11tinst_level
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_14VEC_tinfo_s_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18gnat_binding_level
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9elab_info
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_10stmt_group
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16VEC_parm_attr_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11parm_attr_d
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17lto_in_decl_state
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_22VEC_ipa_edge_args_t_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_20lto_symtab_entry_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11heapvar_map
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_20ssa_operand_memory_d
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_13scev_info_str
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_24VEC_mem_addr_template_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_26gimple_type_leader_entry_s
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17gimple_seq_node_d
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9type_hash
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16string_pool_data
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_23temp_slot_address_entry
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15throw_stmt_node
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_21VEC_eh_landing_pad_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16VEC_eh_region_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_10eh_catch_d
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16eh_landing_pad_d
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11eh_region_d
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_10vcall_insn
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18VEC_vcall_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18VEC_dcall_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_22cached_dw_loc_list_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16var_loc_list_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_12var_loc_node
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_20VEC_die_arg_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16limbo_die_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_20VEC_macinfo_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_20VEC_pubname_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_19VEC_dw_attr_node_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18comdat_type_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_25dw_ranges_by_label_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16dw_ranges_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_28dw_separate_line_info_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_19dw_line_info_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_25VEC_deferred_locations_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18dw_loc_list_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15dwarf_file_data
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15queued_reg_save
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_20indirect_string_node
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_19dw_loc_descr_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_13dw_fde_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_13dw_cfi_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_8typeinfo
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_22VEC_alias_set_entry_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17alias_set_entry_d
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_24constant_descriptor_tree
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15cgraph_asm_node
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_25cgraph_indirect_call_info
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_20varpool_node_set_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_28varpool_node_set_element_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_23VEC_varpool_node_ptr_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_19cgraph_node_set_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_27cgraph_node_set_element_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_22VEC_cgraph_node_ptr_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11cgraph_edge
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_24VEC_ipa_replace_map_p_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15ipa_replace_map
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18lto_file_decl_data
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16VEC_ipa_ref_t_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_12varpool_node
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11cgraph_node
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18VEC_basic_block_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_14gimple_bb_info
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11rtl_bb_info
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11VEC_edge_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_13VEC_loop_p_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_4loop
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9loop_exit
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_13nb_iter_bound
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_24types_used_by_vars_entry
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17language_function
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_5loops
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18control_flow_graph
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9eh_status
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11stack_usage
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_20initial_value_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11frame_space
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17rtx_constant_pool
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18VEC_temp_slot_p_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9temp_slot
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9gimple_df
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_23VEC_call_site_record_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18call_site_record_d
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_14sequence_stack
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_13libfunc_entry
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17tree_priority_map
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_12tree_int_map
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_13tree_decl_map
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_8tree_map
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_14lang_tree_node
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_24tree_statement_list_node
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9var_ann_d
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9lang_decl
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9lang_type
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_10die_struct
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_12ptr_info_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_22VEC_constructor_elt_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17VEC_alias_pair_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_8function
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_23constant_descriptor_rtx
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11fixed_value
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_10real_value
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_12object_block
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9reg_attrs
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9mem_attrs
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_14bitmap_obstack
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18bitmap_element_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_16machine_function
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_17stack_local_entry
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_10VEC_rtx_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_13VEC_gimple_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_11VEC_tree_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_12VEC_uchar_gc
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15basic_block_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_8edge_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_12gimple_seq_d
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_7section
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_18gimple_statement_d
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9rtvec_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_7rtx_def
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_15bitmap_head_def
    (void *, void *, gt_pointer_operator, void *);

extern void gt_pch_p_6answer
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9cpp_macro
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9cpp_token
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_9line_maps
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_II17splay_tree_node_s
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_SP9tree_node17splay_tree_node_s
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P9tree_nodeP9tree_node17splay_tree_node_s
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P15interface_tuple4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P17string_descriptor4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P14type_assertion4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P18treetreehash_entry4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P17module_htab_entry4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P21pending_abstract_type4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P14constexpr_call4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P16constexpr_fundef4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P10spec_entry4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P16cxx_int_tree_map4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P17named_label_entry4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P17lto_in_decl_state4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P20lto_symtab_entry_def4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P11heapvar_map4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P8tree_map4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P9tree_nodeP9tree_node12splay_tree_s
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P12varpool_node4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P13scev_info_str4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P12tree_int_map4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P23constant_descriptor_rtx4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P24constant_descriptor_tree4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P12object_block4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P7section4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P17tree_priority_map4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P13tree_decl_map4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P9type_hash4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P23temp_slot_address_entry4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P15throw_stmt_node4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P9reg_attrs4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P9mem_attrs4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P7rtx_def4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_SP9tree_node12splay_tree_s
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P10vcall_insn4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P22cached_dw_loc_list_def4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P16var_loc_list_def4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P10die_struct4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P15dwarf_file_data4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P20indirect_string_node4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P11cgraph_node4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_II12splay_tree_s
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P28varpool_node_set_element_def4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P27cgraph_node_set_element_def4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P11cgraph_edge4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P9loop_exit4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P24types_used_by_vars_entry4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P9tree_node4htab
    (void *, void *, gt_pointer_operator, void *);
extern void gt_pch_p_P13libfunc_entry4htab
    (void *, void *, gt_pointer_operator, void *);


extern void * ggc_alloc_splay_tree_scalar_scalar_splay_tree_node_s (int, void *);
extern void * ggc_alloc_splay_tree_str_tree_node_splay_tree_node_s (int, void *);
extern void * ggc_alloc_splay_tree_tree_node_tree_node_splay_tree_node_s (int, void *);
extern void * ggc_alloc_splay_tree_interface_tuple_htab (int, void *);
extern void * ggc_alloc_splay_tree_string_descriptor_htab (int, void *);
extern void * ggc_alloc_splay_tree_type_assertion_htab (int, void *);
extern void * ggc_alloc_splay_tree_treetreehash_entry_htab (int, void *);
extern void * ggc_alloc_splay_tree_module_htab_entry_htab (int, void *);
extern void * ggc_alloc_splay_tree_pending_abstract_type_htab (int, void *);
extern void * ggc_alloc_splay_tree_constexpr_call_htab (int, void *);
extern void * ggc_alloc_splay_tree_constexpr_fundef_htab (int, void *);
extern void * ggc_alloc_splay_tree_spec_entry_htab (int, void *);
extern void * ggc_alloc_splay_tree_cxx_int_tree_map_htab (int, void *);
extern void * ggc_alloc_splay_tree_named_label_entry_htab (int, void *);
extern void * ggc_alloc_splay_tree_lto_in_decl_state_htab (int, void *);
extern void * ggc_alloc_splay_tree_lto_symtab_entry_def_htab (int, void *);
extern void * ggc_alloc_splay_tree_heapvar_map_htab (int, void *);
extern void * ggc_alloc_splay_tree_tree_map_htab (int, void *);
extern void * ggc_alloc_splay_tree_tree_node_tree_node_splay_tree_s (int, void *);
extern void * ggc_alloc_splay_tree_varpool_node_htab (int, void *);
extern void * ggc_alloc_splay_tree_scev_info_str_htab (int, void *);
extern void * ggc_alloc_splay_tree_tree_int_map_htab (int, void *);
extern void * ggc_alloc_splay_tree_constant_descriptor_rtx_htab (int, void *);
extern void * ggc_alloc_splay_tree_constant_descriptor_tree_htab (int, void *);
extern void * ggc_alloc_splay_tree_object_block_htab (int, void *);
extern void * ggc_alloc_splay_tree_section_htab (int, void *);
extern void * ggc_alloc_splay_tree_tree_priority_map_htab (int, void *);
extern void * ggc_alloc_splay_tree_tree_decl_map_htab (int, void *);
extern void * ggc_alloc_splay_tree_type_hash_htab (int, void *);
extern void * ggc_alloc_splay_tree_temp_slot_address_entry_htab (int, void *);
extern void * ggc_alloc_splay_tree_throw_stmt_node_htab (int, void *);
extern void * ggc_alloc_splay_tree_reg_attrs_htab (int, void *);
extern void * ggc_alloc_splay_tree_mem_attrs_htab (int, void *);
extern void * ggc_alloc_splay_tree_rtx_def_htab (int, void *);
extern void * ggc_alloc_splay_tree_str_tree_node_splay_tree_s (int, void *);
extern void * ggc_alloc_splay_tree_vcall_insn_htab (int, void *);
extern void * ggc_alloc_splay_tree_cached_dw_loc_list_def_htab (int, void *);
extern void * ggc_alloc_splay_tree_var_loc_list_def_htab (int, void *);
extern void * ggc_alloc_splay_tree_die_struct_htab (int, void *);
extern void * ggc_alloc_splay_tree_dwarf_file_data_htab (int, void *);
extern void * ggc_alloc_splay_tree_indirect_string_node_htab (int, void *);
extern void * ggc_alloc_splay_tree_cgraph_node_htab (int, void *);
extern void * ggc_alloc_splay_tree_scalar_scalar_splay_tree_s (int, void *);
extern void * ggc_alloc_splay_tree_varpool_node_set_element_def_htab (int, void *);
extern void * ggc_alloc_splay_tree_cgraph_node_set_element_def_htab (int, void *);
extern void * ggc_alloc_splay_tree_cgraph_edge_htab (int, void *);
extern void * ggc_alloc_splay_tree_loop_exit_htab (int, void *);
extern void * ggc_alloc_splay_tree_types_used_by_vars_entry_htab (int, void *);
extern void * ggc_alloc_splay_tree_tree_node_htab (int, void *);
extern void * ggc_alloc_splay_tree_libfunc_entry_htab (int, void *);
# 39 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ggc.h" 2




typedef void (*gt_note_pointers) (void *, void *, gt_pointer_operator,
      void *);






typedef void (*gt_handle_reorder) (void *, void *, gt_pointer_operator,
       void *);


extern int gt_pch_note_object (void *, void *, gt_note_pointers,
          enum gt_types_enum);



extern void gt_pch_note_reorder (void *, void *, gt_handle_reorder);


typedef void (*gt_pointer_walker) (void *);



struct ggc_root_tab {
  void *base;
  size_t nelt;
  size_t stride;
  gt_pointer_walker cb;
  gt_pointer_walker pchw;
};


extern const struct ggc_root_tab * const gt_ggc_rtab[];
extern const struct ggc_root_tab * const gt_ggc_deletable_rtab[];
extern const struct ggc_root_tab * const gt_pch_cache_rtab[];
extern const struct ggc_root_tab * const gt_pch_scalar_rtab[];


struct htab;
struct ggc_cache_tab {
  struct htab * *base;
  size_t nelt;
  size_t stride;
  gt_pointer_walker cb;
  gt_pointer_walker pchw;
  int (*marked_p) (const void *);
};


extern const struct ggc_cache_tab * const gt_ggc_cache_rtab[];
# 112 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ggc.h"
extern int ggc_set_mark (const void *);




extern int ggc_marked_p (const void *);


extern void gt_pch_n_S (const void *);
extern void gt_ggc_m_S (const void *);



struct alloc_zone;


extern void init_stringpool (void);


extern void init_ggc (void);





extern unsigned char ggc_protect_identifiers;


extern void gt_pch_save (FILE *f);





extern void *ggc_internal_alloc_stat (size_t );




extern void *ggc_alloc_typed_stat (enum gt_types_enum, size_t );




extern void *ggc_internal_cleared_alloc_stat (size_t );


extern void *ggc_realloc_stat (void *, size_t );


extern void ggc_free (void *);

extern void ggc_record_overhead (size_t, size_t, void * );
extern void ggc_free_overhead (void *);
extern void ggc_prune_overhead_list (void);

extern void dump_ggc_loc_statistics (unsigned char);
# 177 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ggc.h"
static void *
ggc_internal_vec_alloc_stat (size_t s, size_t c )
{
    return ggc_internal_alloc_stat (c * s );
}

static void *
ggc_internal_cleared_vec_alloc_stat (size_t s, size_t c )
{
    return ggc_internal_cleared_alloc_stat (c * s );
}




static void *
ggc_alloc_atomic_stat (size_t s )
{
    return ggc_internal_alloc_stat (s );
}






extern void * ggc_cleared_alloc_htab_ignore_args (size_t, size_t);

extern void * ggc_cleared_alloc_ptr_array_two_args (size_t, size_t);
# 217 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ggc.h"
extern void *ggc_splay_alloc (enum gt_types_enum, int, void *);

extern void ggc_splay_dont_free (void *, void *);




extern const char *ggc_alloc_string_stat (const char *contents, int length
                                          );
# 234 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ggc.h"
extern void ggc_collect (void);



extern void ggc_register_root_tab (const struct ggc_root_tab *);



extern void ggc_register_cache_tab (const struct ggc_cache_tab *);


extern void gt_pch_restore (FILE *f);




extern void ggc_print_statistics (void);

extern void stringpool_statistics (void);


extern void init_ggc_heuristics (void);




extern struct alloc_zone rtl_zone;


extern struct alloc_zone tree_zone;


extern struct alloc_zone tree_id_zone;
# 306 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ggc.h"
static void *
ggc_internal_zone_alloc_stat (struct alloc_zone * z ,
                              size_t s );

static void *
ggc_internal_zone_cleared_alloc_stat (struct alloc_zone * z 
				      ,
                                      size_t s );


static void *
ggc_internal_zone_vec_alloc_stat (struct alloc_zone * z ,
                                  size_t s, size_t n )
{
    return ggc_internal_vec_alloc_stat (s, n );
}





static struct rtx_def *
ggc_alloc_zone_rtx_def_stat (struct alloc_zone * z, size_t s )
{
  return (struct rtx_def *) ggc_internal_zone_alloc_stat (z, s );
}

static union tree_node *
ggc_alloc_zone_tree_node_stat (struct alloc_zone * z, size_t s )
{
  return (union tree_node *) ggc_internal_zone_alloc_stat (z, s );
}

static union tree_node *
ggc_alloc_zone_cleared_tree_node_stat (struct alloc_zone * z, size_t s
                                       )
{
  return (union tree_node *)
    ggc_internal_zone_cleared_alloc_stat (z, s );
}

static union gimple_statement_d *
ggc_alloc_cleared_gimple_statement_d_stat (size_t s )
{
  return (union gimple_statement_d *)
    ggc_internal_cleared_alloc_stat (s );
}
# 27 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.h" 1
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h" 2

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/vecprim.h" 1
# 23 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/vecprim.h"
static void VEC_char_must_be_integral_type (void) { (void)~(char)0; } typedef struct VEC_char_base { unsigned num; unsigned alloc; char vec[1]; } VEC_char_base; typedef struct VEC_char_none { VEC_char_base base; } VEC_char_none; static unsigned VEC_char_base_length (const VEC_char_base *vec_) { return vec_ ? vec_->num : 0; } static char VEC_char_base_last (const VEC_char_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static char VEC_char_base_index (const VEC_char_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_char_base_iterate (const VEC_char_base *vec_, unsigned ix_, char *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (char) 0; return 0; } } static size_t VEC_char_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_char_base, vec) + alloc_ * sizeof(char); } static void VEC_char_base_embedded_init (VEC_char_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_char_base_space (VEC_char_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_char_base_splice (VEC_char_base *dst_, VEC_char_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (char)); dst_->num += len_; } } static char *VEC_char_base_quick_push (VEC_char_base *vec_, char obj_ ) { char *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static char VEC_char_base_pop (VEC_char_base *vec_ ) { char obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_char_base_truncate (VEC_char_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static char VEC_char_base_replace (VEC_char_base *vec_, unsigned ix_, char obj_ ) { char old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static char *VEC_char_base_quick_insert (VEC_char_base *vec_, unsigned ix_, char obj_ ) { char *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (char)); *slot_ = obj_; return slot_; } static char VEC_char_base_ordered_remove (VEC_char_base *vec_, unsigned ix_ ) { char *slot_; char obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (char)); return obj_; } static char VEC_char_base_unordered_remove (VEC_char_base *vec_, unsigned ix_ ) { char *slot_; char obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_char_base_block_remove (VEC_char_base *vec_, unsigned ix_, unsigned len_ ) { char *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (char)); } static char *VEC_char_base_address (VEC_char_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_char_base_lower_bound (VEC_char_base *vec_, const char obj_, unsigned char (*lessthan_)(const char, const char) ) { unsigned int len_ = VEC_char_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { char middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_char_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_char_heap { VEC_char_base base; } VEC_char_heap; static VEC_char_heap *VEC_char_heap_alloc (int alloc_ ) { return (VEC_char_heap *) vec_heap_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_char_heap, base.vec), sizeof (char) ); } static VEC_char_heap *VEC_char_heap_copy (VEC_char_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_char_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_char_heap *)(vec_heap_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_char_heap, base.vec), sizeof (char) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (char) * len_); } return new_vec_; } static void VEC_char_heap_free (VEC_char_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static int VEC_char_heap_reserve (VEC_char_heap **vec_, int alloc_ ) { int extend = !VEC_char_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_char_heap *) vec_heap_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_char_heap, base.vec), sizeof (char) ); return extend; } static int VEC_char_heap_reserve_exact (VEC_char_heap **vec_, int alloc_ ) { int extend = !VEC_char_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_char_heap *) vec_heap_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_char_heap, base.vec), sizeof (char) ); return extend; } static void VEC_char_heap_safe_grow (VEC_char_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_char_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_char_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_char_heap_safe_grow_cleared (VEC_char_heap **vec_, int size_ ) { int oldsize = VEC_char_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_char_heap_safe_grow (vec_, size_ ); memset (&(VEC_char_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (char) * (size_ - oldsize)); } static void VEC_char_heap_safe_splice (VEC_char_heap **dst_, VEC_char_base *src_ ) { if (src_) { VEC_char_heap_reserve_exact (dst_, src_->num ); VEC_char_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static char *VEC_char_heap_safe_push (VEC_char_heap **vec_, const char obj_ ) { VEC_char_heap_reserve (vec_, 1 ); return VEC_char_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static char *VEC_char_heap_safe_insert (VEC_char_heap **vec_, unsigned ix_, const char obj_ ) { VEC_char_heap_reserve (vec_, 1 ); return VEC_char_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

typedef unsigned char uchar;
static void VEC_uchar_must_be_integral_type (void) { (void)~(uchar)0; } typedef struct VEC_uchar_base { unsigned num; unsigned alloc; uchar vec[1]; } VEC_uchar_base; typedef struct VEC_uchar_none { VEC_uchar_base base; } VEC_uchar_none; static unsigned VEC_uchar_base_length (const VEC_uchar_base *vec_) { return vec_ ? vec_->num : 0; } static uchar VEC_uchar_base_last (const VEC_uchar_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static uchar VEC_uchar_base_index (const VEC_uchar_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_uchar_base_iterate (const VEC_uchar_base *vec_, unsigned ix_, uchar *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (uchar) 0; return 0; } } static size_t VEC_uchar_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_uchar_base, vec) + alloc_ * sizeof(uchar); } static void VEC_uchar_base_embedded_init (VEC_uchar_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_uchar_base_space (VEC_uchar_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_uchar_base_splice (VEC_uchar_base *dst_, VEC_uchar_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (uchar)); dst_->num += len_; } } static uchar *VEC_uchar_base_quick_push (VEC_uchar_base *vec_, uchar obj_ ) { uchar *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static uchar VEC_uchar_base_pop (VEC_uchar_base *vec_ ) { uchar obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_uchar_base_truncate (VEC_uchar_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static uchar VEC_uchar_base_replace (VEC_uchar_base *vec_, unsigned ix_, uchar obj_ ) { uchar old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static uchar *VEC_uchar_base_quick_insert (VEC_uchar_base *vec_, unsigned ix_, uchar obj_ ) { uchar *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (uchar)); *slot_ = obj_; return slot_; } static uchar VEC_uchar_base_ordered_remove (VEC_uchar_base *vec_, unsigned ix_ ) { uchar *slot_; uchar obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (uchar)); return obj_; } static uchar VEC_uchar_base_unordered_remove (VEC_uchar_base *vec_, unsigned ix_ ) { uchar *slot_; uchar obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_uchar_base_block_remove (VEC_uchar_base *vec_, unsigned ix_, unsigned len_ ) { uchar *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (uchar)); } static uchar *VEC_uchar_base_address (VEC_uchar_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_uchar_base_lower_bound (VEC_uchar_base *vec_, const uchar obj_, unsigned char (*lessthan_)(const uchar, const uchar) ) { unsigned int len_ = VEC_uchar_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { uchar middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_uchar_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_uchar_heap { VEC_uchar_base base; } VEC_uchar_heap; static VEC_uchar_heap *VEC_uchar_heap_alloc (int alloc_ ) { return (VEC_uchar_heap *) vec_heap_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_uchar_heap, base.vec), sizeof (uchar) ); } static VEC_uchar_heap *VEC_uchar_heap_copy (VEC_uchar_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_uchar_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_uchar_heap *)(vec_heap_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_uchar_heap, base.vec), sizeof (uchar) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (uchar) * len_); } return new_vec_; } static void VEC_uchar_heap_free (VEC_uchar_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static int VEC_uchar_heap_reserve (VEC_uchar_heap **vec_, int alloc_ ) { int extend = !VEC_uchar_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_uchar_heap *) vec_heap_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_uchar_heap, base.vec), sizeof (uchar) ); return extend; } static int VEC_uchar_heap_reserve_exact (VEC_uchar_heap **vec_, int alloc_ ) { int extend = !VEC_uchar_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_uchar_heap *) vec_heap_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_uchar_heap, base.vec), sizeof (uchar) ); return extend; } static void VEC_uchar_heap_safe_grow (VEC_uchar_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_uchar_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_uchar_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_uchar_heap_safe_grow_cleared (VEC_uchar_heap **vec_, int size_ ) { int oldsize = VEC_uchar_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_uchar_heap_safe_grow (vec_, size_ ); memset (&(VEC_uchar_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (uchar) * (size_ - oldsize)); } static void VEC_uchar_heap_safe_splice (VEC_uchar_heap **dst_, VEC_uchar_base *src_ ) { if (src_) { VEC_uchar_heap_reserve_exact (dst_, src_->num ); VEC_uchar_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static uchar *VEC_uchar_heap_safe_push (VEC_uchar_heap **vec_, const uchar obj_ ) { VEC_uchar_heap_reserve (vec_, 1 ); return VEC_uchar_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static uchar *VEC_uchar_heap_safe_insert (VEC_uchar_heap **vec_, unsigned ix_, const uchar obj_ ) { VEC_uchar_heap_reserve (vec_, 1 ); return VEC_uchar_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
typedef struct VEC_uchar_gc { VEC_uchar_base base; } VEC_uchar_gc; static VEC_uchar_gc *VEC_uchar_gc_alloc (int alloc_ ) { return (VEC_uchar_gc *) vec_gc_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_uchar_gc, base.vec), sizeof (uchar) ); } static VEC_uchar_gc *VEC_uchar_gc_copy (VEC_uchar_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_uchar_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_uchar_gc *)(vec_gc_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_uchar_gc, base.vec), sizeof (uchar) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (uchar) * len_); } return new_vec_; } static void VEC_uchar_gc_free (VEC_uchar_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static int VEC_uchar_gc_reserve (VEC_uchar_gc **vec_, int alloc_ ) { int extend = !VEC_uchar_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_uchar_gc *) vec_gc_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_uchar_gc, base.vec), sizeof (uchar) ); return extend; } static int VEC_uchar_gc_reserve_exact (VEC_uchar_gc **vec_, int alloc_ ) { int extend = !VEC_uchar_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_uchar_gc *) vec_gc_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_uchar_gc, base.vec), sizeof (uchar) ); return extend; } static void VEC_uchar_gc_safe_grow (VEC_uchar_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_uchar_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_uchar_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_uchar_gc_safe_grow_cleared (VEC_uchar_gc **vec_, int size_ ) { int oldsize = VEC_uchar_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_uchar_gc_safe_grow (vec_, size_ ); memset (&(VEC_uchar_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (uchar) * (size_ - oldsize)); } static void VEC_uchar_gc_safe_splice (VEC_uchar_gc **dst_, VEC_uchar_base *src_ ) { if (src_) { VEC_uchar_gc_reserve_exact (dst_, src_->num ); VEC_uchar_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static uchar *VEC_uchar_gc_safe_push (VEC_uchar_gc **vec_, const uchar obj_ ) { VEC_uchar_gc_reserve (vec_, 1 ); return VEC_uchar_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static uchar *VEC_uchar_gc_safe_insert (VEC_uchar_gc **vec_, unsigned ix_, const uchar obj_ ) { VEC_uchar_gc_reserve (vec_, 1 ); return VEC_uchar_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

static void VEC_int_must_be_integral_type (void) { (void)~(int)0; } typedef struct VEC_int_base { unsigned num; unsigned alloc; int vec[1]; } VEC_int_base; typedef struct VEC_int_none { VEC_int_base base; } VEC_int_none; static unsigned VEC_int_base_length (const VEC_int_base *vec_) { return vec_ ? vec_->num : 0; } static int VEC_int_base_last (const VEC_int_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static int VEC_int_base_index (const VEC_int_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_int_base_iterate (const VEC_int_base *vec_, unsigned ix_, int *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (int) 0; return 0; } } static size_t VEC_int_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_int_base, vec) + alloc_ * sizeof(int); } static void VEC_int_base_embedded_init (VEC_int_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_int_base_space (VEC_int_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_int_base_splice (VEC_int_base *dst_, VEC_int_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (int)); dst_->num += len_; } } static int *VEC_int_base_quick_push (VEC_int_base *vec_, int obj_ ) { int *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static int VEC_int_base_pop (VEC_int_base *vec_ ) { int obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_int_base_truncate (VEC_int_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static int VEC_int_base_replace (VEC_int_base *vec_, unsigned ix_, int obj_ ) { int old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static int *VEC_int_base_quick_insert (VEC_int_base *vec_, unsigned ix_, int obj_ ) { int *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (int)); *slot_ = obj_; return slot_; } static int VEC_int_base_ordered_remove (VEC_int_base *vec_, unsigned ix_ ) { int *slot_; int obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (int)); return obj_; } static int VEC_int_base_unordered_remove (VEC_int_base *vec_, unsigned ix_ ) { int *slot_; int obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_int_base_block_remove (VEC_int_base *vec_, unsigned ix_, unsigned len_ ) { int *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (int)); } static int *VEC_int_base_address (VEC_int_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_int_base_lower_bound (VEC_int_base *vec_, const int obj_, unsigned char (*lessthan_)(const int, const int) ) { unsigned int len_ = VEC_int_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { int middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_int_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_int_heap { VEC_int_base base; } VEC_int_heap; static VEC_int_heap *VEC_int_heap_alloc (int alloc_ ) { return (VEC_int_heap *) vec_heap_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_int_heap, base.vec), sizeof (int) ); } static VEC_int_heap *VEC_int_heap_copy (VEC_int_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_int_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_int_heap *)(vec_heap_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_int_heap, base.vec), sizeof (int) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (int) * len_); } return new_vec_; } static void VEC_int_heap_free (VEC_int_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static int VEC_int_heap_reserve (VEC_int_heap **vec_, int alloc_ ) { int extend = !VEC_int_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_int_heap *) vec_heap_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_int_heap, base.vec), sizeof (int) ); return extend; } static int VEC_int_heap_reserve_exact (VEC_int_heap **vec_, int alloc_ ) { int extend = !VEC_int_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_int_heap *) vec_heap_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_int_heap, base.vec), sizeof (int) ); return extend; } static void VEC_int_heap_safe_grow (VEC_int_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_int_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_int_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_int_heap_safe_grow_cleared (VEC_int_heap **vec_, int size_ ) { int oldsize = VEC_int_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_int_heap_safe_grow (vec_, size_ ); memset (&(VEC_int_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (int) * (size_ - oldsize)); } static void VEC_int_heap_safe_splice (VEC_int_heap **dst_, VEC_int_base *src_ ) { if (src_) { VEC_int_heap_reserve_exact (dst_, src_->num ); VEC_int_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static int *VEC_int_heap_safe_push (VEC_int_heap **vec_, const int obj_ ) { VEC_int_heap_reserve (vec_, 1 ); return VEC_int_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static int *VEC_int_heap_safe_insert (VEC_int_heap **vec_, unsigned ix_, const int obj_ ) { VEC_int_heap_reserve (vec_, 1 ); return VEC_int_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

static void VEC_unsigned_must_be_integral_type (void) { (void)~(unsigned)0; } typedef struct VEC_unsigned_base { unsigned num; unsigned alloc; unsigned vec[1]; } VEC_unsigned_base; typedef struct VEC_unsigned_none { VEC_unsigned_base base; } VEC_unsigned_none; static unsigned VEC_unsigned_base_length (const VEC_unsigned_base *vec_) { return vec_ ? vec_->num : 0; } static unsigned VEC_unsigned_base_last (const VEC_unsigned_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static unsigned VEC_unsigned_base_index (const VEC_unsigned_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_unsigned_base_iterate (const VEC_unsigned_base *vec_, unsigned ix_, unsigned *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (unsigned) 0; return 0; } } static size_t VEC_unsigned_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_unsigned_base, vec) + alloc_ * sizeof(unsigned); } static void VEC_unsigned_base_embedded_init (VEC_unsigned_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_unsigned_base_space (VEC_unsigned_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_unsigned_base_splice (VEC_unsigned_base *dst_, VEC_unsigned_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (unsigned)); dst_->num += len_; } } static unsigned *VEC_unsigned_base_quick_push (VEC_unsigned_base *vec_, unsigned obj_ ) { unsigned *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static unsigned VEC_unsigned_base_pop (VEC_unsigned_base *vec_ ) { unsigned obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_unsigned_base_truncate (VEC_unsigned_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static unsigned VEC_unsigned_base_replace (VEC_unsigned_base *vec_, unsigned ix_, unsigned obj_ ) { unsigned old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static unsigned *VEC_unsigned_base_quick_insert (VEC_unsigned_base *vec_, unsigned ix_, unsigned obj_ ) { unsigned *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (unsigned)); *slot_ = obj_; return slot_; } static unsigned VEC_unsigned_base_ordered_remove (VEC_unsigned_base *vec_, unsigned ix_ ) { unsigned *slot_; unsigned obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (unsigned)); return obj_; } static unsigned VEC_unsigned_base_unordered_remove (VEC_unsigned_base *vec_, unsigned ix_ ) { unsigned *slot_; unsigned obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_unsigned_base_block_remove (VEC_unsigned_base *vec_, unsigned ix_, unsigned len_ ) { unsigned *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (unsigned)); } static unsigned *VEC_unsigned_base_address (VEC_unsigned_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_unsigned_base_lower_bound (VEC_unsigned_base *vec_, const unsigned obj_, unsigned char (*lessthan_)(const unsigned, const unsigned) ) { unsigned int len_ = VEC_unsigned_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { unsigned middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_unsigned_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_unsigned_heap { VEC_unsigned_base base; } VEC_unsigned_heap; static VEC_unsigned_heap *VEC_unsigned_heap_alloc (int alloc_ ) { return (VEC_unsigned_heap *) vec_heap_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_unsigned_heap, base.vec), sizeof (unsigned) ); } static VEC_unsigned_heap *VEC_unsigned_heap_copy (VEC_unsigned_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_unsigned_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_unsigned_heap *)(vec_heap_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_unsigned_heap, base.vec), sizeof (unsigned) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (unsigned) * len_); } return new_vec_; } static void VEC_unsigned_heap_free (VEC_unsigned_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static int VEC_unsigned_heap_reserve (VEC_unsigned_heap **vec_, int alloc_ ) { int extend = !VEC_unsigned_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_unsigned_heap *) vec_heap_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_unsigned_heap, base.vec), sizeof (unsigned) ); return extend; } static int VEC_unsigned_heap_reserve_exact (VEC_unsigned_heap **vec_, int alloc_ ) { int extend = !VEC_unsigned_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_unsigned_heap *) vec_heap_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_unsigned_heap, base.vec), sizeof (unsigned) ); return extend; } static void VEC_unsigned_heap_safe_grow (VEC_unsigned_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_unsigned_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_unsigned_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_unsigned_heap_safe_grow_cleared (VEC_unsigned_heap **vec_, int size_ ) { int oldsize = VEC_unsigned_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_unsigned_heap_safe_grow (vec_, size_ ); memset (&(VEC_unsigned_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (unsigned) * (size_ - oldsize)); } static void VEC_unsigned_heap_safe_splice (VEC_unsigned_heap **dst_, VEC_unsigned_base *src_ ) { if (src_) { VEC_unsigned_heap_reserve_exact (dst_, src_->num ); VEC_unsigned_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static unsigned *VEC_unsigned_heap_safe_push (VEC_unsigned_heap **vec_, const unsigned obj_ ) { VEC_unsigned_heap_reserve (vec_, 1 ); return VEC_unsigned_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static unsigned *VEC_unsigned_heap_safe_insert (VEC_unsigned_heap **vec_, unsigned ix_, const unsigned obj_ ) { VEC_unsigned_heap_reserve (vec_, 1 ); return VEC_unsigned_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 1
# 23 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/insn-constants.h" 1
# 73 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/insn-constants.h"
enum unspec {
  UNSPEC_GOT = 0,
  UNSPEC_GOTOFF = 1,
  UNSPEC_GOTPCREL = 2,
  UNSPEC_GOTTPOFF = 3,
  UNSPEC_TPOFF = 4,
  UNSPEC_NTPOFF = 5,
  UNSPEC_DTPOFF = 6,
  UNSPEC_GOTNTPOFF = 7,
  UNSPEC_INDNTPOFF = 8,
  UNSPEC_PLTOFF = 9,
  UNSPEC_MACHOPIC_OFFSET = 10,
  UNSPEC_PCREL = 11,
  UNSPEC_STACK_ALLOC = 12,
  UNSPEC_SET_GOT = 13,
  UNSPEC_REG_SAVE = 14,
  UNSPEC_DEF_CFA = 15,
  UNSPEC_SET_RIP = 16,
  UNSPEC_SET_GOT_OFFSET = 17,
  UNSPEC_MEMORY_BLOCKAGE = 18,
  UNSPEC_STACK_CHECK = 19,
  UNSPEC_TP = 20,
  UNSPEC_TLS_GD = 21,
  UNSPEC_TLS_LD_BASE = 22,
  UNSPEC_TLSDESC = 23,
  UNSPEC_TLS_IE_SUN = 24,
  UNSPEC_SCAS = 25,
  UNSPEC_FNSTSW = 26,
  UNSPEC_SAHF = 27,
  UNSPEC_PARITY = 28,
  UNSPEC_FSTCW = 29,
  UNSPEC_ADD_CARRY = 30,
  UNSPEC_FLDCW = 31,
  UNSPEC_REP = 32,
  UNSPEC_LD_MPIC = 33,
  UNSPEC_TRUNC_NOOP = 34,
  UNSPEC_DIV_ALREADY_SPLIT = 35,
  UNSPEC_CALL_NEEDS_VZEROUPPER = 36,
  UNSPEC_FIX_NOTRUNC = 37,
  UNSPEC_MASKMOV = 38,
  UNSPEC_MOVMSK = 39,
  UNSPEC_MOVNT = 40,
  UNSPEC_MOVU = 41,
  UNSPEC_RCP = 42,
  UNSPEC_RSQRT = 43,
  UNSPEC_SFENCE = 44,
  UNSPEC_PFRCP = 45,
  UNSPEC_PFRCPIT1 = 46,
  UNSPEC_PFRCPIT2 = 47,
  UNSPEC_PFRSQRT = 48,
  UNSPEC_PFRSQIT1 = 49,
  UNSPEC_MFENCE = 50,
  UNSPEC_LFENCE = 51,
  UNSPEC_PSADBW = 52,
  UNSPEC_LDDQU = 53,
  UNSPEC_MS_TO_SYSV_CALL = 54,
  UNSPEC_COPYSIGN = 55,
  UNSPEC_IEEE_MIN = 56,
  UNSPEC_IEEE_MAX = 57,
  UNSPEC_SIN = 58,
  UNSPEC_COS = 59,
  UNSPEC_FPATAN = 60,
  UNSPEC_FYL2X = 61,
  UNSPEC_FYL2XP1 = 62,
  UNSPEC_FRNDINT = 63,
  UNSPEC_FIST = 64,
  UNSPEC_F2XM1 = 65,
  UNSPEC_TAN = 66,
  UNSPEC_FXAM = 67,
  UNSPEC_FRNDINT_FLOOR = 68,
  UNSPEC_FRNDINT_CEIL = 69,
  UNSPEC_FRNDINT_TRUNC = 70,
  UNSPEC_FRNDINT_MASK_PM = 71,
  UNSPEC_FIST_FLOOR = 72,
  UNSPEC_FIST_CEIL = 73,
  UNSPEC_SINCOS_COS = 74,
  UNSPEC_SINCOS_SIN = 75,
  UNSPEC_XTRACT_FRACT = 76,
  UNSPEC_XTRACT_EXP = 77,
  UNSPEC_FSCALE_FRACT = 78,
  UNSPEC_FSCALE_EXP = 79,
  UNSPEC_FPREM_F = 80,
  UNSPEC_FPREM_U = 81,
  UNSPEC_FPREM1_F = 82,
  UNSPEC_FPREM1_U = 83,
  UNSPEC_C2_FLAG = 84,
  UNSPEC_FXAM_MEM = 85,
  UNSPEC_SP_SET = 86,
  UNSPEC_SP_TEST = 87,
  UNSPEC_SP_TLS_SET = 88,
  UNSPEC_SP_TLS_TEST = 89,
  UNSPEC_PSHUFB = 90,
  UNSPEC_PSIGN = 91,
  UNSPEC_PALIGNR = 92,
  UNSPEC_EXTRQI = 93,
  UNSPEC_EXTRQ = 94,
  UNSPEC_INSERTQI = 95,
  UNSPEC_INSERTQ = 96,
  UNSPEC_BLENDV = 97,
  UNSPEC_INSERTPS = 98,
  UNSPEC_DP = 99,
  UNSPEC_MOVNTDQA = 100,
  UNSPEC_MPSADBW = 101,
  UNSPEC_PHMINPOSUW = 102,
  UNSPEC_PTEST = 103,
  UNSPEC_ROUND = 104,
  UNSPEC_CRC32 = 105,
  UNSPEC_PCMPESTR = 106,
  UNSPEC_PCMPISTR = 107,
  UNSPEC_FMADDSUB = 108,
  UNSPEC_XOP_UNSIGNED_CMP = 109,
  UNSPEC_XOP_TRUEFALSE = 110,
  UNSPEC_XOP_PERMUTE = 111,
  UNSPEC_FRCZ = 112,
  UNSPEC_AESENC = 113,
  UNSPEC_AESENCLAST = 114,
  UNSPEC_AESDEC = 115,
  UNSPEC_AESDECLAST = 116,
  UNSPEC_AESIMC = 117,
  UNSPEC_AESKEYGENASSIST = 118,
  UNSPEC_PCLMUL = 119,
  UNSPEC_PCMP = 120,
  UNSPEC_VPERMIL = 121,
  UNSPEC_VPERMIL2 = 122,
  UNSPEC_VPERMIL2F128 = 123,
  UNSPEC_MASKLOAD = 124,
  UNSPEC_MASKSTORE = 125,
  UNSPEC_CAST = 126,
  UNSPEC_VTESTP = 127,
  UNSPEC_VCVTPH2PS = 128,
  UNSPEC_VCVTPS2PH = 129,
  UNSPEC_BEXTR = 130,
  UNSPEC_RDRAND = 131
};

extern const char *const unspec_strings[];

enum unspecv {
  UNSPECV_BLOCKAGE = 0,
  UNSPECV_STACK_PROBE = 1,
  UNSPECV_PROBE_STACK_RANGE = 2,
  UNSPECV_EMMS = 3,
  UNSPECV_LDMXCSR = 4,
  UNSPECV_STMXCSR = 5,
  UNSPECV_FEMMS = 6,
  UNSPECV_CLFLUSH = 7,
  UNSPECV_ALIGN = 8,
  UNSPECV_MONITOR = 9,
  UNSPECV_MWAIT = 10,
  UNSPECV_CMPXCHG = 11,
  UNSPECV_XCHG = 12,
  UNSPECV_LOCK = 13,
  UNSPECV_PROLOGUE_USE = 14,
  UNSPECV_CLD = 15,
  UNSPECV_NOPS = 16,
  UNSPECV_VZEROALL = 17,
  UNSPECV_VZEROUPPER = 18,
  UNSPECV_RDTSC = 19,
  UNSPECV_RDTSCP = 20,
  UNSPECV_RDPMC = 21,
  UNSPECV_LLWP_INTRINSIC = 22,
  UNSPECV_SLWP_INTRINSIC = 23,
  UNSPECV_LWPVAL_INTRINSIC = 24,
  UNSPECV_LWPINS_INTRINSIC = 25,
  UNSPECV_RDFSBASE = 26,
  UNSPECV_RDGSBASE = 27,
  UNSPECV_WRFSBASE = 28,
  UNSPECV_WRGSBASE = 29,
  UNSPECV_SPLIT_STACK_RETURN = 30
};

extern const char *const unspecv_strings[];
# 24 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/vxworks-dummy.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h" 1
# 80 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/vxworks-dummy.h" 1
# 81 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h" 2


enum stringop_alg
{
   no_stringop,
   libcall,
   rep_prefix_1_byte,
   rep_prefix_4_byte,
   rep_prefix_8_byte,
   loop_1_byte,
   loop,
   unrolled_loop
};
# 106 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"

struct stringop_strategy_t {
  const int max;
  const enum stringop_alg alg;
};

struct stringop_algs
{
  const enum stringop_alg unknown_size;
  const struct stringop_strategy_t size [4];
};



struct processor_costs {
  const int add;
  const int lea;
  const int shift_var;
  const int shift_const;
  const int mult_init[5];

  const int mult_bit;
  const int divide[5];

  int movsx;
  int movzx;
  const int large_insn;
  const int move_ratio;

  const int movzbl_load;
  const int int_load[3];


  const int int_store[3];

  const int fp_move;
  const int fp_load[3];

  const int fp_store[3];

  const int mmx_move;
  const int mmx_load[2];

  const int mmx_store[2];

  const int sse_move;
  const int sse_load[3];

  const int sse_store[3];

  const int mmxsse_to_integer;

  const int l1_cache_size;
  const int l2_cache_size;
  const int prefetch_block;
  const int simultaneous_prefetches;

  const int branch_cost;
  const int fadd;
  const int fmul;
  const int fdiv;
  const int fabs;
  const int fchs;
  const int fsqrt;


  struct stringop_algs memcpy[2], memset[2];
  const int scalar_stmt_cost;

  const int scalar_load_cost;
  const int scalar_store_cost;
  const int vec_stmt_cost;


  const int vec_to_scalar_cost;
  const int scalar_to_vec_cost;
  const int vec_align_load_cost;
  const int vec_unalign_load_cost;
  const int vec_store_cost;
  const int cond_taken_branch_cost;

  const int cond_not_taken_branch_cost;

};

extern const struct processor_costs *ix86_cost;
extern const struct processor_costs ix86_size_cost;
# 258 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
enum ix86_tune_indices {
  X86_TUNE_USE_LEAVE,
  X86_TUNE_PUSH_MEMORY,
  X86_TUNE_ZERO_EXTEND_WITH_AND,
  X86_TUNE_UNROLL_STRLEN,
  X86_TUNE_DEEP_BRANCH_PREDICTION,
  X86_TUNE_BRANCH_PREDICTION_HINTS,
  X86_TUNE_DOUBLE_WITH_ADD,
  X86_TUNE_USE_SAHF,
  X86_TUNE_MOVX,
  X86_TUNE_PARTIAL_REG_STALL,
  X86_TUNE_PARTIAL_FLAG_REG_STALL,
  X86_TUNE_USE_HIMODE_FIOP,
  X86_TUNE_USE_SIMODE_FIOP,
  X86_TUNE_USE_MOV0,
  X86_TUNE_USE_CLTD,
  X86_TUNE_USE_XCHGB,
  X86_TUNE_SPLIT_LONG_MOVES,
  X86_TUNE_READ_MODIFY_WRITE,
  X86_TUNE_READ_MODIFY,
  X86_TUNE_PROMOTE_QIMODE,
  X86_TUNE_FAST_PREFIX,
  X86_TUNE_SINGLE_STRINGOP,
  X86_TUNE_QIMODE_MATH,
  X86_TUNE_HIMODE_MATH,
  X86_TUNE_PROMOTE_QI_REGS,
  X86_TUNE_PROMOTE_HI_REGS,
  X86_TUNE_SINGLE_POP,
  X86_TUNE_DOUBLE_POP,
  X86_TUNE_SINGLE_PUSH,
  X86_TUNE_DOUBLE_PUSH,
  X86_TUNE_INTEGER_DFMODE_MOVES,
  X86_TUNE_PARTIAL_REG_DEPENDENCY,
  X86_TUNE_SSE_PARTIAL_REG_DEPENDENCY,
  X86_TUNE_SSE_UNALIGNED_LOAD_OPTIMAL,
  X86_TUNE_SSE_UNALIGNED_STORE_OPTIMAL,
  X86_TUNE_SSE_PACKED_SINGLE_INSN_OPTIMAL,
  X86_TUNE_SSE_SPLIT_REGS,
  X86_TUNE_SSE_TYPELESS_STORES,
  X86_TUNE_SSE_LOAD0_BY_PXOR,
  X86_TUNE_MEMORY_MISMATCH_STALL,
  X86_TUNE_PROLOGUE_USING_MOVE,
  X86_TUNE_EPILOGUE_USING_MOVE,
  X86_TUNE_SHIFT1,
  X86_TUNE_USE_FFREEP,
  X86_TUNE_INTER_UNIT_MOVES,
  X86_TUNE_INTER_UNIT_CONVERSIONS,
  X86_TUNE_FOUR_JUMP_LIMIT,
  X86_TUNE_SCHEDULE,
  X86_TUNE_USE_BT,
  X86_TUNE_USE_INCDEC,
  X86_TUNE_PAD_RETURNS,
  X86_TUNE_PAD_SHORT_FUNCTION,
  X86_TUNE_EXT_80387_CONSTANTS,
  X86_TUNE_SHORTEN_X87_SSE,
  X86_TUNE_AVOID_VECTOR_DECODE,
  X86_TUNE_PROMOTE_HIMODE_IMUL,
  X86_TUNE_SLOW_IMUL_IMM32_MEM,
  X86_TUNE_SLOW_IMUL_IMM8,
  X86_TUNE_MOVE_M1_VIA_OR,
  X86_TUNE_NOT_UNPAIRABLE,
  X86_TUNE_NOT_VECTORMODE,
  X86_TUNE_USE_VECTOR_FP_CONVERTS,
  X86_TUNE_USE_VECTOR_CONVERTS,
  X86_TUNE_FUSE_CMP_AND_BRANCH,
  X86_TUNE_OPT_AGU,
  X86_TUNE_VECTORIZE_DOUBLE,
  X86_TUNE_AVX128_OPTIMAL,

  X86_TUNE_LAST
};

extern unsigned char ix86_tune_features[X86_TUNE_LAST];
# 426 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
enum ix86_arch_indices {
  X86_ARCH_CMOVE,
  X86_ARCH_CMPXCHG,
  X86_ARCH_CMPXCHG8B,
  X86_ARCH_XADD,
  X86_ARCH_BSWAP,

  X86_ARCH_LAST
};

extern unsigned char ix86_arch_features[X86_ARCH_LAST];
# 446 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
extern int x86_prefetch_sse;
# 470 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
extern tree x86_mfence;
# 507 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
enum calling_abi
{
  SYSV_ABI = 0,
  MS_ABI = 1
};


extern enum calling_abi ix86_abi;
# 528 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
extern const char *host_detect_local_cpu (int argc, const char **argv);
# 577 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
enum target_cpu_default
{
  TARGET_CPU_DEFAULT_generic = 0,

  TARGET_CPU_DEFAULT_i386,
  TARGET_CPU_DEFAULT_i486,
  TARGET_CPU_DEFAULT_pentium,
  TARGET_CPU_DEFAULT_pentium_mmx,
  TARGET_CPU_DEFAULT_pentiumpro,
  TARGET_CPU_DEFAULT_pentium2,
  TARGET_CPU_DEFAULT_pentium3,
  TARGET_CPU_DEFAULT_pentium4,
  TARGET_CPU_DEFAULT_pentium_m,
  TARGET_CPU_DEFAULT_prescott,
  TARGET_CPU_DEFAULT_nocona,
  TARGET_CPU_DEFAULT_core2,
  TARGET_CPU_DEFAULT_corei7,
  TARGET_CPU_DEFAULT_atom,

  TARGET_CPU_DEFAULT_geode,
  TARGET_CPU_DEFAULT_k6,
  TARGET_CPU_DEFAULT_k6_2,
  TARGET_CPU_DEFAULT_k6_3,
  TARGET_CPU_DEFAULT_athlon,
  TARGET_CPU_DEFAULT_athlon_sse,
  TARGET_CPU_DEFAULT_k8,
  TARGET_CPU_DEFAULT_amdfam10,
  TARGET_CPU_DEFAULT_bdver1,
  TARGET_CPU_DEFAULT_btver1,

  TARGET_CPU_DEFAULT_max
};
# 1179 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
enum reg_class
{
  NO_REGS,
  AREG, DREG, CREG, BREG, SIREG, DIREG,
  AD_REGS,
  CLOBBERED_REGS,
  Q_REGS,
  NON_Q_REGS,
  INDEX_REGS,
  LEGACY_REGS,
  GENERAL_REGS,

  FP_TOP_REG, FP_SECOND_REG,
  FLOAT_REGS,
  SSE_FIRST_REG,
  SSE_REGS,
  MMX_REGS,
  FP_TOP_SSE_REGS,
  FP_SECOND_SSE_REGS,
  FLOAT_SSE_REGS,
  FLOAT_INT_REGS,
  INT_SSE_REGS,
  FLOAT_INT_SSE_REGS,
  ALL_REGS, LIM_REG_CLASSES
};
# 1498 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
typedef struct ix86_args {
  int words;
  int nregs;
  int regno;
  int fastcall;

  int sse_words;
  int sse_nregs;
  int warn_avx;
  int warn_sse;
  int warn_mmx;
  int sse_regno;
  int mmx_words;
  int mmx_nregs;
  int mmx_regno;
  int maybe_vaarg;
  int caller;
  int float_in_sse;


  enum calling_abi call_abi;

} CUMULATIVE_ARGS;
# 1915 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
extern int const dbx_register_map[53];
extern int const dbx64_register_map[53];
extern int const svr4_dbx_register_map[53];
# 2046 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
enum processor_type
{
  PROCESSOR_I386 = 0,
  PROCESSOR_I486,
  PROCESSOR_PENTIUM,
  PROCESSOR_PENTIUMPRO,
  PROCESSOR_GEODE,
  PROCESSOR_K6,
  PROCESSOR_ATHLON,
  PROCESSOR_PENTIUM4,
  PROCESSOR_K8,
  PROCESSOR_NOCONA,
  PROCESSOR_CORE2_32,
  PROCESSOR_CORE2_64,
  PROCESSOR_COREI7_32,
  PROCESSOR_COREI7_64,
  PROCESSOR_GENERIC32,
  PROCESSOR_GENERIC64,
  PROCESSOR_AMDFAM10,
  PROCESSOR_BDVER1,
  PROCESSOR_BTVER1,
  PROCESSOR_ATOM,
  PROCESSOR_max
};

extern enum processor_type ix86_tune;
extern enum processor_type ix86_arch;

enum fpmath_unit
{
  FPMATH_387 = 1,
  FPMATH_SSE = 2
};

extern enum fpmath_unit ix86_fpmath;

enum tls_dialect
{
  TLS_DIALECT_GNU,
  TLS_DIALECT_GNU2,
  TLS_DIALECT_SUN
};

extern enum tls_dialect ix86_tls_dialect;

enum cmodel {
  CM_32,
  CM_SMALL,
  CM_KERNEL,
  CM_MEDIUM,
  CM_LARGE,
  CM_SMALL_PIC,
  CM_MEDIUM_PIC,
  CM_LARGE_PIC
};

extern enum cmodel ix86_cmodel;






enum asm_dialect {
  ASM_ATT,
  ASM_INTEL
};

extern enum asm_dialect ix86_asm_dialect;
extern unsigned int ix86_preferred_stack_boundary;
extern unsigned int ix86_incoming_stack_boundary;
extern int ix86_branch_cost, ix86_section_threshold;


extern enum reg_class const regclass_map[53];

enum ix86_fpcmp_strategy {
  IX86_FPCMP_SAHF,
  IX86_FPCMP_COMI,
  IX86_FPCMP_ARITH
};
# 2143 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
enum ix86_entity
{
  I387_TRUNC = 0,
  I387_FLOOR,
  I387_CEIL,
  I387_MASK_PM,
  MAX_386_ENTITIES
};

enum ix86_stack_slot
{
  SLOT_VIRTUAL = 0,
  SLOT_TEMP,
  SLOT_CW_STORED,
  SLOT_CW_TRUNC,
  SLOT_CW_FLOOR,
  SLOT_CW_CEIL,
  SLOT_CW_MASK_PM,
  MAX_386_STACK_LOCALS
};
# 2219 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
struct machine_frame_state
{



  rtx cfa_reg;
  long long cfa_offset;





  long long sp_offset;
  long long fp_offset;





  int red_zone_offset;





  unsigned int sp_valid : 1;
  unsigned int fp_valid : 1;
  unsigned int drap_valid : 1;




  unsigned int realigned : 1;
};


struct seh_frame_state;

struct machine_function {
  struct stack_local_entry *stack_locals;
  const char *some_ld_name;
  int varargs_gpr_size;
  int varargs_fpr_size;
  int optimize_mode_switching[MAX_386_ENTITIES];



  int use_fast_prologue_epilogue_nregs;






  rtx split_stack_varargs_pointer;



enum calling_abi call_abi : 8;


  unsigned int accesses_prev_frame : 1;


  unsigned int needs_cld : 1;



  unsigned int use_fast_prologue_epilogue : 1;
# 2298 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
  unsigned int tls_descriptor_call_expanded_p : 1;



  unsigned int static_chain_on_stack : 1;


  unsigned int caller_pass_avx256_p : 1;


  unsigned int caller_return_avx256_p : 1;


  unsigned int callee_pass_avx256_p : 1;


  unsigned int callee_return_avx256_p : 1;


  unsigned int rescan_vzeroupper_p : 1;



  struct machine_frame_state fs;


  struct seh_frame_state * seh;
};
# 2363 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/i386.h"
extern void debug_ready_dispatch (void);
extern void debug_dispatch_window (int);
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/linux-android.h" 1
# 27 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/unix.h" 1
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/att.h" 1
# 29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/dbxelf.h" 1
# 30 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/elfos.h" 1
# 31 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/gnu-user.h" 1
# 32 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/linux.h" 1
# 33 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/glibc-stdint.h" 1
# 34 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/x86-64.h" 1
# 35 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config/i386/linux64.h" 1
# 36 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2


# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/insn-flags.h" 1
# 2038 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/insn-flags.h"
extern rtx gen_x86_fnstsw_1 (rtx);
extern rtx gen_x86_sahf_1 (rtx);
extern rtx gen_swapxf (rtx, rtx);
extern rtx gen_zero_extendsidi2_1 (rtx, rtx);
extern rtx gen_zero_extendqidi2 (rtx, rtx);
extern rtx gen_zero_extendhidi2 (rtx, rtx);
extern rtx gen_zero_extendhisi2_and (rtx, rtx);
extern rtx gen_extendsidi2_1 (rtx, rtx);
extern rtx gen_extendqidi2 (rtx, rtx);
extern rtx gen_extendhidi2 (rtx, rtx);
extern rtx gen_extendhisi2 (rtx, rtx);
extern rtx gen_extendqisi2 (rtx, rtx);
extern rtx gen_extendqihi2 (rtx, rtx);
extern rtx gen_truncxfsf2_i387_noop (rtx, rtx);
extern rtx gen_truncxfdf2_i387_noop (rtx, rtx);
extern rtx gen_fix_truncsfdi_sse (rtx, rtx);
extern rtx gen_fix_truncdfdi_sse (rtx, rtx);
extern rtx gen_fix_truncsfsi_sse (rtx, rtx);
extern rtx gen_fix_truncdfsi_sse (rtx, rtx);
extern rtx gen_fix_trunchi_fisttp_i387_1 (rtx, rtx);
extern rtx gen_fix_truncsi_fisttp_i387_1 (rtx, rtx);
extern rtx gen_fix_truncdi_fisttp_i387_1 (rtx, rtx);
extern rtx gen_fix_trunchi_i387_fisttp (rtx, rtx);
extern rtx gen_fix_truncsi_i387_fisttp (rtx, rtx);
extern rtx gen_fix_truncdi_i387_fisttp (rtx, rtx);
extern rtx gen_fix_trunchi_i387_fisttp_with_temp (rtx, rtx, rtx);
extern rtx gen_fix_truncsi_i387_fisttp_with_temp (rtx, rtx, rtx);
extern rtx gen_fix_truncdi_i387_fisttp_with_temp (rtx, rtx, rtx);
extern rtx gen_fix_truncdi_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_fix_truncdi_i387_with_temp (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_fix_trunchi_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_fix_truncsi_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_fix_trunchi_i387_with_temp (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_fix_truncsi_i387_with_temp (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_x86_fnstcw_1 (rtx);
extern rtx gen_x86_fldcw_1 (rtx);
extern rtx gen_floatdisf2_i387_with_xmm (rtx, rtx, rtx);
extern rtx gen_floatdidf2_i387_with_xmm (rtx, rtx, rtx);
extern rtx gen_floatdixf2_i387_with_xmm (rtx, rtx, rtx);
extern rtx gen_addqi3_cc (rtx, rtx, rtx);
extern rtx gen_addqi_ext_1 (rtx, rtx, rtx);
extern rtx gen_divmodsi4_1 (rtx, rtx, rtx, rtx);
extern rtx gen_divmoddi4_1 (rtx, rtx, rtx, rtx);
extern rtx gen_divmodhiqi3 (rtx, rtx, rtx);
extern rtx gen_udivmodsi4_1 (rtx, rtx, rtx, rtx);
extern rtx gen_udivmoddi4_1 (rtx, rtx, rtx, rtx);
extern rtx gen_udivmodhiqi3 (rtx, rtx, rtx);
extern rtx gen_andqi_ext_0 (rtx, rtx, rtx);
extern rtx gen_copysignsf3_const (rtx, rtx, rtx, rtx);
extern rtx gen_copysigndf3_const (rtx, rtx, rtx, rtx);
extern rtx gen_copysigntf3_const (rtx, rtx, rtx, rtx);
extern rtx gen_copysignsf3_var (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_copysigndf3_var (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_copysigntf3_var (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_x86_64_shld (rtx, rtx, rtx);
extern rtx gen_x86_shld (rtx, rtx, rtx);
extern rtx gen_x86_64_shrd (rtx, rtx, rtx);
extern rtx gen_x86_shrd (rtx, rtx, rtx);
extern rtx gen_ashrdi3_cvt (rtx, rtx, rtx);
extern rtx gen_ashrsi3_cvt (rtx, rtx, rtx);
extern rtx gen_ix86_rotldi3_doubleword (rtx, rtx, rtx);
extern rtx gen_ix86_rotlti3_doubleword (rtx, rtx, rtx);
extern rtx gen_ix86_rotrdi3_doubleword (rtx, rtx, rtx);
extern rtx gen_ix86_rotrti3_doubleword (rtx, rtx, rtx);
extern rtx gen_jump (rtx);
extern rtx gen_blockage (void);
extern rtx gen_prologue_use (rtx);
extern rtx gen_return_internal (void);
extern rtx gen_return_internal_long (void);
extern rtx gen_return_pop_internal (rtx);
extern rtx gen_return_indirect_internal (rtx);
extern rtx gen_nop (void);
extern rtx gen_nops (rtx);
extern rtx gen_pad (rtx);
extern rtx gen_set_got (rtx);
extern rtx gen_set_got_labelled (rtx, rtx);
extern rtx gen_set_got_rex64 (rtx);
extern rtx gen_set_rip_rex64 (rtx, rtx);
extern rtx gen_set_got_offset_rex64 (rtx, rtx);
extern rtx gen_eh_return_internal (void);
extern rtx gen_leave (void);
extern rtx gen_leave_rex64 (void);
extern rtx gen_split_stack_return (rtx);
extern rtx gen_ffssi2_no_cmove (rtx, rtx);
extern rtx gen_ctzhi2 (rtx, rtx);
extern rtx gen_ctzsi2 (rtx, rtx);
extern rtx gen_ctzdi2 (rtx, rtx);
extern rtx gen_clzhi2_abm (rtx, rtx);
extern rtx gen_clzsi2_abm (rtx, rtx);
extern rtx gen_clzdi2_abm (rtx, rtx);
extern rtx gen_bmi_bextr_si (rtx, rtx, rtx);
extern rtx gen_bmi_bextr_di (rtx, rtx, rtx);
extern rtx gen_tbm_bextri_si (rtx, rtx, rtx, rtx);
extern rtx gen_tbm_bextri_di (rtx, rtx, rtx, rtx);
extern rtx gen_bsr_rex64 (rtx, rtx);
extern rtx gen_bsr (rtx, rtx);
extern rtx gen_popcounthi2 (rtx, rtx);
extern rtx gen_popcountsi2 (rtx, rtx);
extern rtx gen_popcountdi2 (rtx, rtx);
extern rtx gen_bswaphi_lowpart (rtx);
extern rtx gen_paritydi2_cmp (rtx, rtx, rtx, rtx);
extern rtx gen_paritysi2_cmp (rtx, rtx, rtx);
static rtx gen_tls_initial_exec_64_sun (rtx, rtx);
static rtx
gen_tls_initial_exec_64_sun(rtx a , rtx b )
{
  return 0;
}
extern rtx gen_truncxfsf2_i387_noop_unspec (rtx, rtx);
extern rtx gen_truncxfdf2_i387_noop_unspec (rtx, rtx);
extern rtx gen_sqrtxf2 (rtx, rtx);
extern rtx gen_sqrt_extendsfxf2_i387 (rtx, rtx);
extern rtx gen_sqrt_extenddfxf2_i387 (rtx, rtx);
extern rtx gen_fpremxf4_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_fprem1xf4_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_sincosxf3 (rtx, rtx, rtx);
extern rtx gen_sincos_extendsfxf3_i387 (rtx, rtx, rtx);
extern rtx gen_sincos_extenddfxf3_i387 (rtx, rtx, rtx);
extern rtx gen_fptanxf4_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_fptan_extendsfxf4_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_fptan_extenddfxf4_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_fpatan_extendsfxf3_i387 (rtx, rtx, rtx);
extern rtx gen_fpatan_extenddfxf3_i387 (rtx, rtx, rtx);
extern rtx gen_fyl2xxf3_i387 (rtx, rtx, rtx);
extern rtx gen_fyl2x_extendsfxf3_i387 (rtx, rtx, rtx);
extern rtx gen_fyl2x_extenddfxf3_i387 (rtx, rtx, rtx);
extern rtx gen_fyl2xp1xf3_i387 (rtx, rtx, rtx);
extern rtx gen_fyl2xp1_extendsfxf3_i387 (rtx, rtx, rtx);
extern rtx gen_fyl2xp1_extenddfxf3_i387 (rtx, rtx, rtx);
extern rtx gen_fxtractxf3_i387 (rtx, rtx, rtx);
extern rtx gen_fxtract_extendsfxf3_i387 (rtx, rtx, rtx);
extern rtx gen_fxtract_extenddfxf3_i387 (rtx, rtx, rtx);
extern rtx gen_sse4_1_roundsf2 (rtx, rtx, rtx);
extern rtx gen_sse4_1_rounddf2 (rtx, rtx, rtx);
extern rtx gen_rintxf2 (rtx, rtx);
extern rtx gen_fistdi2 (rtx, rtx);
extern rtx gen_fistdi2_with_temp (rtx, rtx, rtx);
extern rtx gen_fisthi2 (rtx, rtx);
extern rtx gen_fistsi2 (rtx, rtx);
extern rtx gen_fisthi2_with_temp (rtx, rtx, rtx);
extern rtx gen_fistsi2_with_temp (rtx, rtx, rtx);
extern rtx gen_frndintxf2_floor (rtx, rtx);
extern rtx gen_frndintxf2_floor_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_fistdi2_floor (rtx, rtx, rtx, rtx);
extern rtx gen_fistdi2_floor_with_temp (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_fisthi2_floor (rtx, rtx, rtx, rtx);
extern rtx gen_fistsi2_floor (rtx, rtx, rtx, rtx);
extern rtx gen_fisthi2_floor_with_temp (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_fistsi2_floor_with_temp (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_frndintxf2_ceil (rtx, rtx);
extern rtx gen_frndintxf2_ceil_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_fistdi2_ceil (rtx, rtx, rtx, rtx);
extern rtx gen_fistdi2_ceil_with_temp (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_fisthi2_ceil (rtx, rtx, rtx, rtx);
extern rtx gen_fistsi2_ceil (rtx, rtx, rtx, rtx);
extern rtx gen_fisthi2_ceil_with_temp (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_fistsi2_ceil_with_temp (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_frndintxf2_trunc (rtx, rtx);
extern rtx gen_frndintxf2_trunc_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_frndintxf2_mask_pm (rtx, rtx);
extern rtx gen_frndintxf2_mask_pm_i387 (rtx, rtx, rtx, rtx);
extern rtx gen_fxamsf2_i387 (rtx, rtx);
extern rtx gen_fxamdf2_i387 (rtx, rtx);
extern rtx gen_fxamxf2_i387 (rtx, rtx);
extern rtx gen_fxamsf2_i387_with_temp (rtx, rtx);
extern rtx gen_fxamdf2_i387_with_temp (rtx, rtx);
extern rtx gen_movmsk_df (rtx, rtx);
extern rtx gen_cld (void);
extern rtx gen_smaxsf3 (rtx, rtx, rtx);
extern rtx gen_sminsf3 (rtx, rtx, rtx);
extern rtx gen_smaxdf3 (rtx, rtx, rtx);
extern rtx gen_smindf3 (rtx, rtx, rtx);
extern rtx gen_pro_epilogue_adjust_stack_si_add (rtx, rtx, rtx);
extern rtx gen_pro_epilogue_adjust_stack_di_add (rtx, rtx, rtx);
extern rtx gen_pro_epilogue_adjust_stack_si_sub (rtx, rtx, rtx);
extern rtx gen_pro_epilogue_adjust_stack_di_sub (rtx, rtx, rtx);
extern rtx gen_allocate_stack_worker_probe_si (rtx, rtx);
extern rtx gen_allocate_stack_worker_probe_di (rtx, rtx);
extern rtx gen_adjust_stack_and_probesi (rtx, rtx, rtx);
extern rtx gen_adjust_stack_and_probedi (rtx, rtx, rtx);
extern rtx gen_probe_stack_rangesi (rtx, rtx, rtx);
extern rtx gen_probe_stack_rangedi (rtx, rtx, rtx);
extern rtx gen_trap (void);
extern rtx gen_stack_protect_set_si (rtx, rtx);
extern rtx gen_stack_protect_set_di (rtx, rtx);
extern rtx gen_stack_tls_protect_set_si (rtx, rtx);
extern rtx gen_stack_tls_protect_set_di (rtx, rtx);
extern rtx gen_stack_protect_test_si (rtx, rtx, rtx);
extern rtx gen_stack_protect_test_di (rtx, rtx, rtx);
extern rtx gen_stack_tls_protect_test_si (rtx, rtx, rtx);
extern rtx gen_stack_tls_protect_test_di (rtx, rtx, rtx);
extern rtx gen_sse4_2_crc32qi (rtx, rtx, rtx);
extern rtx gen_sse4_2_crc32hi (rtx, rtx, rtx);
extern rtx gen_sse4_2_crc32si (rtx, rtx, rtx);
extern rtx gen_sse4_2_crc32di (rtx, rtx, rtx);
extern rtx gen_lwp_slwpcbsi (rtx);
extern rtx gen_lwp_slwpcbdi (rtx);
extern rtx gen_rdfsbasesi (rtx);
extern rtx gen_rdfsbasedi (rtx);
extern rtx gen_rdgsbasesi (rtx);
extern rtx gen_rdgsbasedi (rtx);
extern rtx gen_wrfsbasesi (rtx);
extern rtx gen_wrfsbasedi (rtx);
extern rtx gen_wrgsbasesi (rtx);
extern rtx gen_wrgsbasedi (rtx);
extern rtx gen_rdrandhi_1 (rtx);
extern rtx gen_rdrandsi_1 (rtx);
extern rtx gen_rdranddi_1 (rtx);
extern rtx gen_sse_movntdi (rtx, rtx);
extern rtx gen_mmx_rcpv2sf2 (rtx, rtx);
extern rtx gen_mmx_rcpit1v2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_rcpit2v2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_rsqrtv2sf2 (rtx, rtx);
extern rtx gen_mmx_rsqit1v2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_haddv2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_hsubv2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_addsubv2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_gtv2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_gev2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_pf2id (rtx, rtx);
extern rtx gen_mmx_pf2iw (rtx, rtx);
extern rtx gen_mmx_pi2fw (rtx, rtx);
extern rtx gen_mmx_floatv2si2 (rtx, rtx);
extern rtx gen_mmx_pswapdv2sf2 (rtx, rtx);
extern rtx gen_mmx_ashrv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_ashrv2si3 (rtx, rtx, rtx);
extern rtx gen_mmx_lshrv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_lshrv2si3 (rtx, rtx, rtx);
extern rtx gen_mmx_lshrv1di3 (rtx, rtx, rtx);
extern rtx gen_mmx_ashlv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_ashlv2si3 (rtx, rtx, rtx);
extern rtx gen_mmx_ashlv1di3 (rtx, rtx, rtx);
extern rtx gen_mmx_gtv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_gtv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_gtv2si3 (rtx, rtx, rtx);
extern rtx gen_mmx_andnotv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_andnotv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_andnotv2si3 (rtx, rtx, rtx);
extern rtx gen_mmx_packsswb (rtx, rtx, rtx);
extern rtx gen_mmx_packssdw (rtx, rtx, rtx);
extern rtx gen_mmx_packuswb (rtx, rtx, rtx);
extern rtx gen_mmx_punpckhbw (rtx, rtx, rtx);
extern rtx gen_mmx_punpcklbw (rtx, rtx, rtx);
extern rtx gen_mmx_punpckhwd (rtx, rtx, rtx);
extern rtx gen_mmx_punpcklwd (rtx, rtx, rtx);
extern rtx gen_mmx_punpckhdq (rtx, rtx, rtx);
extern rtx gen_mmx_punpckldq (rtx, rtx, rtx);
extern rtx gen_mmx_pextrw (rtx, rtx, rtx);
extern rtx gen_mmx_pshufw_1 (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_mmx_pswapdv2si2 (rtx, rtx);
extern rtx gen_mmx_psadbw (rtx, rtx, rtx);
extern rtx gen_mmx_pmovmskb (rtx, rtx);
extern rtx gen_movdi_to_sse (rtx, rtx);
extern rtx gen_sse2_movq128 (rtx, rtx);
extern rtx gen_avx_movntv4sf (rtx, rtx);
extern rtx gen_avx_movntv2df (rtx, rtx);
extern rtx gen_avx_movntv8sf (rtx, rtx);
extern rtx gen_avx_movntv4df (rtx, rtx);
extern rtx gen_sse_movntv4sf (rtx, rtx);
extern rtx gen_sse2_movntv2df (rtx, rtx);
extern rtx gen_avx_movntv4di (rtx, rtx);
extern rtx gen_avx_movntv2di (rtx, rtx);
extern rtx gen_sse2_movntv2di (rtx, rtx);
extern rtx gen_sse2_movntsi (rtx, rtx);
extern rtx gen_avx_lddqu256 (rtx, rtx);
extern rtx gen_avx_lddqu (rtx, rtx);
extern rtx gen_sse3_lddqu (rtx, rtx);
extern rtx gen_sse_vmaddv4sf3 (rtx, rtx, rtx);
extern rtx gen_sse_vmsubv4sf3 (rtx, rtx, rtx);
extern rtx gen_sse2_vmaddv2df3 (rtx, rtx, rtx);
extern rtx gen_sse2_vmsubv2df3 (rtx, rtx, rtx);
extern rtx gen_sse_vmmulv4sf3 (rtx, rtx, rtx);
extern rtx gen_sse2_vmmulv2df3 (rtx, rtx, rtx);
extern rtx gen_avx_divv4sf3 (rtx, rtx, rtx);
extern rtx gen_avx_divv2df3 (rtx, rtx, rtx);
extern rtx gen_avx_divv8sf3 (rtx, rtx, rtx);
extern rtx gen_avx_divv4df3 (rtx, rtx, rtx);
extern rtx gen_sse_divv4sf3 (rtx, rtx, rtx);
extern rtx gen_sse2_divv2df3 (rtx, rtx, rtx);
extern rtx gen_sse_vmdivv4sf3 (rtx, rtx, rtx);
extern rtx gen_sse2_vmdivv2df3 (rtx, rtx, rtx);
extern rtx gen_avx_rcpv8sf2 (rtx, rtx);
extern rtx gen_sse_rcpv4sf2 (rtx, rtx);
extern rtx gen_sse_vmrcpv4sf2 (rtx, rtx, rtx);
extern rtx gen_avx_sqrtv8sf2 (rtx, rtx);
extern rtx gen_sse_sqrtv4sf2 (rtx, rtx);
extern rtx gen_sqrtv4df2 (rtx, rtx);
extern rtx gen_sqrtv2df2 (rtx, rtx);
extern rtx gen_sse_vmsqrtv4sf2 (rtx, rtx, rtx);
extern rtx gen_sse2_vmsqrtv2df2 (rtx, rtx, rtx);
extern rtx gen_avx_rsqrtv8sf2 (rtx, rtx);
extern rtx gen_sse_rsqrtv4sf2 (rtx, rtx);
extern rtx gen_sse_vmrsqrtv4sf2 (rtx, rtx, rtx);
extern rtx gen_sse_vmsmaxv4sf3 (rtx, rtx, rtx);
extern rtx gen_sse_vmsminv4sf3 (rtx, rtx, rtx);
extern rtx gen_sse2_vmsmaxv2df3 (rtx, rtx, rtx);
extern rtx gen_sse2_vmsminv2df3 (rtx, rtx, rtx);
extern rtx gen_avx_addsubv8sf3 (rtx, rtx, rtx);
extern rtx gen_avx_addsubv4df3 (rtx, rtx, rtx);
extern rtx gen_sse3_addsubv4sf3 (rtx, rtx, rtx);
extern rtx gen_sse3_addsubv2df3 (rtx, rtx, rtx);
extern rtx gen_avx_haddv4df3 (rtx, rtx, rtx);
extern rtx gen_avx_hsubv4df3 (rtx, rtx, rtx);
extern rtx gen_avx_haddv8sf3 (rtx, rtx, rtx);
extern rtx gen_avx_hsubv8sf3 (rtx, rtx, rtx);
extern rtx gen_sse3_haddv4sf3 (rtx, rtx, rtx);
extern rtx gen_sse3_hsubv4sf3 (rtx, rtx, rtx);
extern rtx gen_sse3_haddv2df3 (rtx, rtx, rtx);
extern rtx gen_sse3_hsubv2df3 (rtx, rtx, rtx);
extern rtx gen_avx_cmppsv4sf3 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_cmppdv2df3 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_cmppsv8sf3 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_cmppdv4df3 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_cmpssv4sf3 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_cmpsdv2df3 (rtx, rtx, rtx, rtx);
extern rtx gen_sse_maskcmpsf3 (rtx, rtx, rtx, rtx);
extern rtx gen_sse2_maskcmpdf3 (rtx, rtx, rtx, rtx);
extern rtx gen_sse_maskcmpv4sf3 (rtx, rtx, rtx, rtx);
extern rtx gen_sse2_maskcmpv2df3 (rtx, rtx, rtx, rtx);
extern rtx gen_sse_vmmaskcmpv4sf3 (rtx, rtx, rtx, rtx);
extern rtx gen_sse2_vmmaskcmpv2df3 (rtx, rtx, rtx, rtx);
extern rtx gen_sse_comi (rtx, rtx);
extern rtx gen_sse2_comi (rtx, rtx);
extern rtx gen_sse_ucomi (rtx, rtx);
extern rtx gen_sse2_ucomi (rtx, rtx);
extern rtx gen_avx_andnotv4sf3 (rtx, rtx, rtx);
extern rtx gen_avx_andnotv2df3 (rtx, rtx, rtx);
extern rtx gen_avx_andnotv8sf3 (rtx, rtx, rtx);
extern rtx gen_avx_andnotv4df3 (rtx, rtx, rtx);
extern rtx gen_sse_andnotv4sf3 (rtx, rtx, rtx);
extern rtx gen_sse2_andnotv2df3 (rtx, rtx, rtx);
extern rtx gen_sse_cvtpi2ps (rtx, rtx, rtx);
extern rtx gen_sse_cvtps2pi (rtx, rtx);
extern rtx gen_sse_cvttps2pi (rtx, rtx);
extern rtx gen_sse_cvtsi2ss (rtx, rtx, rtx);
extern rtx gen_sse_cvtsi2ssq (rtx, rtx, rtx);
extern rtx gen_sse_cvtss2si (rtx, rtx);
extern rtx gen_sse_cvtss2si_2 (rtx, rtx);
extern rtx gen_sse_cvtss2siq (rtx, rtx);
extern rtx gen_sse_cvtss2siq_2 (rtx, rtx);
extern rtx gen_sse_cvttss2si (rtx, rtx);
extern rtx gen_sse_cvttss2siq (rtx, rtx);
extern rtx gen_avx_cvtdq2ps (rtx, rtx);
extern rtx gen_avx_cvtdq2ps256 (rtx, rtx);
extern rtx gen_sse2_cvtdq2ps (rtx, rtx);
extern rtx gen_avx_cvtps2dq (rtx, rtx);
extern rtx gen_avx_cvtps2dq256 (rtx, rtx);
extern rtx gen_sse2_cvtps2dq (rtx, rtx);
extern rtx gen_avx_cvttps2dq (rtx, rtx);
extern rtx gen_avx_cvttps2dq256 (rtx, rtx);
extern rtx gen_sse2_cvttps2dq (rtx, rtx);
extern rtx gen_sse2_cvtpi2pd (rtx, rtx);
extern rtx gen_sse2_cvtpd2pi (rtx, rtx);
extern rtx gen_sse2_cvttpd2pi (rtx, rtx);
extern rtx gen_sse2_cvtsi2sd (rtx, rtx, rtx);
extern rtx gen_sse2_cvtsi2sdq (rtx, rtx, rtx);
extern rtx gen_sse2_cvtsd2si (rtx, rtx);
extern rtx gen_sse2_cvtsd2si_2 (rtx, rtx);
extern rtx gen_sse2_cvtsd2siq (rtx, rtx);
extern rtx gen_sse2_cvtsd2siq_2 (rtx, rtx);
extern rtx gen_sse2_cvttsd2si (rtx, rtx);
extern rtx gen_sse2_cvttsd2siq (rtx, rtx);
extern rtx gen_avx_cvtdq2pd256 (rtx, rtx);
extern rtx gen_sse2_cvtdq2pd (rtx, rtx);
extern rtx gen_avx_cvtpd2dq256 (rtx, rtx);
extern rtx gen_avx_cvttpd2dq256 (rtx, rtx);
extern rtx gen_sse2_cvtsd2ss (rtx, rtx, rtx);
extern rtx gen_sse2_cvtss2sd (rtx, rtx, rtx);
extern rtx gen_avx_cvtpd2ps256 (rtx, rtx);
extern rtx gen_avx_cvtps2pd256 (rtx, rtx);
extern rtx gen_sse2_cvtps2pd (rtx, rtx);
extern rtx gen_sse_movhlps (rtx, rtx, rtx);
extern rtx gen_sse_movlhps (rtx, rtx, rtx);
extern rtx gen_avx_unpckhps256 (rtx, rtx, rtx);
extern rtx gen_vec_interleave_highv4sf (rtx, rtx, rtx);
extern rtx gen_avx_unpcklps256 (rtx, rtx, rtx);
extern rtx gen_vec_interleave_lowv4sf (rtx, rtx, rtx);
extern rtx gen_avx_movshdup256 (rtx, rtx);
extern rtx gen_sse3_movshdup (rtx, rtx);
extern rtx gen_avx_movsldup256 (rtx, rtx);
extern rtx gen_sse3_movsldup (rtx, rtx);
extern rtx gen_avx_shufps256_1 (rtx, rtx, rtx, rtx, rtx, rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse_shufps_v4sf (rtx, rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse_shufps_v4si (rtx, rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse_storehps (rtx, rtx);
extern rtx gen_sse_loadhps (rtx, rtx, rtx);
extern rtx gen_sse_storelps (rtx, rtx);
extern rtx gen_sse_loadlps (rtx, rtx, rtx);
extern rtx gen_sse_movss (rtx, rtx, rtx);
extern rtx gen_vec_setv4sf_0 (rtx, rtx, rtx);
extern rtx gen_vec_setv4si_0 (rtx, rtx, rtx);
extern rtx gen_sse4_1_insertps (rtx, rtx, rtx, rtx);
extern rtx gen_vec_extract_lo_v4di (rtx, rtx);
extern rtx gen_vec_extract_lo_v4df (rtx, rtx);
extern rtx gen_vec_extract_hi_v4di (rtx, rtx);
extern rtx gen_vec_extract_hi_v4df (rtx, rtx);
extern rtx gen_vec_extract_lo_v8si (rtx, rtx);
extern rtx gen_vec_extract_lo_v8sf (rtx, rtx);
extern rtx gen_vec_extract_hi_v8si (rtx, rtx);
extern rtx gen_vec_extract_hi_v8sf (rtx, rtx);
extern rtx gen_vec_extract_lo_v16hi (rtx, rtx);
extern rtx gen_vec_extract_hi_v16hi (rtx, rtx);
extern rtx gen_vec_extract_lo_v32qi (rtx, rtx);
extern rtx gen_vec_extract_hi_v32qi (rtx, rtx);
extern rtx gen_avx_unpckhpd256 (rtx, rtx, rtx);
extern rtx gen_avx_shufpd256_1 (rtx, rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_vec_interleave_highv2di (rtx, rtx, rtx);
extern rtx gen_vec_interleave_lowv2di (rtx, rtx, rtx);
extern rtx gen_sse2_shufpd_v2df (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse2_shufpd_v2di (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse2_storehpd (rtx, rtx);
extern rtx gen_sse2_storelpd (rtx, rtx);
extern rtx gen_sse2_loadhpd (rtx, rtx, rtx);
extern rtx gen_sse2_loadlpd (rtx, rtx, rtx);
extern rtx gen_sse2_movsd (rtx, rtx, rtx);
extern rtx gen_mulv16qi3 (rtx, rtx, rtx);
extern rtx gen_mulv2di3 (rtx, rtx, rtx);
extern rtx gen_ashrv8hi3 (rtx, rtx, rtx);
extern rtx gen_ashrv4si3 (rtx, rtx, rtx);
extern rtx gen_sse2_lshrv1ti3 (rtx, rtx, rtx);
extern rtx gen_lshrv8hi3 (rtx, rtx, rtx);
extern rtx gen_lshrv4si3 (rtx, rtx, rtx);
extern rtx gen_lshrv2di3 (rtx, rtx, rtx);
extern rtx gen_sse2_ashlv1ti3 (rtx, rtx, rtx);
extern rtx gen_ashlv8hi3 (rtx, rtx, rtx);
extern rtx gen_ashlv4si3 (rtx, rtx, rtx);
extern rtx gen_ashlv2di3 (rtx, rtx, rtx);
extern rtx gen_sse2_gtv16qi3 (rtx, rtx, rtx);
extern rtx gen_sse2_gtv8hi3 (rtx, rtx, rtx);
extern rtx gen_sse2_gtv4si3 (rtx, rtx, rtx);
extern rtx gen_sse4_2_gtv2di3 (rtx, rtx, rtx);
extern rtx gen_sse2_andnotv16qi3 (rtx, rtx, rtx);
extern rtx gen_sse2_andnotv8hi3 (rtx, rtx, rtx);
extern rtx gen_sse2_andnotv4si3 (rtx, rtx, rtx);
extern rtx gen_sse2_andnotv2di3 (rtx, rtx, rtx);
extern rtx gen_sse2_packsswb (rtx, rtx, rtx);
extern rtx gen_sse2_packssdw (rtx, rtx, rtx);
extern rtx gen_sse2_packuswb (rtx, rtx, rtx);
extern rtx gen_vec_interleave_highv16qi (rtx, rtx, rtx);
extern rtx gen_vec_interleave_lowv16qi (rtx, rtx, rtx);
extern rtx gen_vec_interleave_highv8hi (rtx, rtx, rtx);
extern rtx gen_vec_interleave_lowv8hi (rtx, rtx, rtx);
extern rtx gen_vec_interleave_highv4si (rtx, rtx, rtx);
extern rtx gen_vec_interleave_lowv4si (rtx, rtx, rtx);
extern rtx gen_sse2_pshufd_1 (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse2_pshuflw_1 (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse2_pshufhw_1 (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse2_loadld (rtx, rtx, rtx);
extern rtx gen_sse2_stored (rtx, rtx);
extern rtx gen_vec_concatv2di (rtx, rtx, rtx);
extern rtx gen_sse2_psadbw (rtx, rtx, rtx);
extern rtx gen_avx_movmskps256 (rtx, rtx);
extern rtx gen_avx_movmskpd256 (rtx, rtx);
extern rtx gen_sse_movmskps (rtx, rtx);
extern rtx gen_sse2_movmskpd (rtx, rtx);
extern rtx gen_sse2_pmovmskb (rtx, rtx);
extern rtx gen_sse_ldmxcsr (rtx);
extern rtx gen_sse_stmxcsr (rtx);
extern rtx gen_sse2_clflush (rtx);
extern rtx gen_sse3_mwait (rtx, rtx);
extern rtx gen_sse3_monitor (rtx, rtx, rtx);
extern rtx gen_sse3_monitor64 (rtx, rtx, rtx);
extern rtx gen_ssse3_phaddwv8hi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_phaddwv4hi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_phadddv4si3 (rtx, rtx, rtx);
extern rtx gen_ssse3_phadddv2si3 (rtx, rtx, rtx);
extern rtx gen_ssse3_phaddswv8hi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_phaddswv4hi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_phsubwv8hi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_phsubwv4hi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_phsubdv4si3 (rtx, rtx, rtx);
extern rtx gen_ssse3_phsubdv2si3 (rtx, rtx, rtx);
extern rtx gen_ssse3_phsubswv8hi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_phsubswv4hi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_pmaddubsw128 (rtx, rtx, rtx);
extern rtx gen_ssse3_pmaddubsw (rtx, rtx, rtx);
extern rtx gen_ssse3_pshufbv16qi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_pshufbv8qi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_psignv16qi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_psignv8hi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_psignv4si3 (rtx, rtx, rtx);
extern rtx gen_ssse3_psignv8qi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_psignv4hi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_psignv2si3 (rtx, rtx, rtx);
extern rtx gen_ssse3_palignrti (rtx, rtx, rtx, rtx);
extern rtx gen_ssse3_palignrdi (rtx, rtx, rtx, rtx);
extern rtx gen_absv16qi2 (rtx, rtx);
extern rtx gen_absv8hi2 (rtx, rtx);
extern rtx gen_absv4si2 (rtx, rtx);
extern rtx gen_absv8qi2 (rtx, rtx);
extern rtx gen_absv4hi2 (rtx, rtx);
extern rtx gen_absv2si2 (rtx, rtx);
extern rtx gen_sse4a_movntsf (rtx, rtx);
extern rtx gen_sse4a_movntdf (rtx, rtx);
extern rtx gen_sse4a_vmmovntv4sf (rtx, rtx);
extern rtx gen_sse4a_vmmovntv2df (rtx, rtx);
extern rtx gen_sse4a_extrqi (rtx, rtx, rtx, rtx);
extern rtx gen_sse4a_extrq (rtx, rtx, rtx);
extern rtx gen_sse4a_insertqi (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse4a_insertq (rtx, rtx, rtx);
extern rtx gen_avx_blendps (rtx, rtx, rtx, rtx);
extern rtx gen_avx_blendpd (rtx, rtx, rtx, rtx);
extern rtx gen_avx_blendps256 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_blendpd256 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_blendvps (rtx, rtx, rtx, rtx);
extern rtx gen_avx_blendvpd (rtx, rtx, rtx, rtx);
extern rtx gen_avx_blendvps256 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_blendvpd256 (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_1_blendps (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_1_blendpd (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_1_blendvps (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_1_blendvpd (rtx, rtx, rtx, rtx);
extern rtx gen_avx_dpps (rtx, rtx, rtx, rtx);
extern rtx gen_avx_dppd (rtx, rtx, rtx, rtx);
extern rtx gen_avx_dpps256 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_dppd256 (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_1_dpps (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_1_dppd (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_1_movntdqa (rtx, rtx);
extern rtx gen_sse4_1_mpsadbw (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_1_packusdw (rtx, rtx, rtx);
extern rtx gen_sse4_1_pblendvb (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_1_pblendw (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_1_phminposuw (rtx, rtx);
extern rtx gen_sse4_1_sign_extendv8qiv8hi2 (rtx, rtx);
extern rtx gen_sse4_1_zero_extendv8qiv8hi2 (rtx, rtx);
extern rtx gen_sse4_1_sign_extendv4qiv4si2 (rtx, rtx);
extern rtx gen_sse4_1_zero_extendv4qiv4si2 (rtx, rtx);
extern rtx gen_sse4_1_sign_extendv4hiv4si2 (rtx, rtx);
extern rtx gen_sse4_1_zero_extendv4hiv4si2 (rtx, rtx);
extern rtx gen_sse4_1_sign_extendv2qiv2di2 (rtx, rtx);
extern rtx gen_sse4_1_zero_extendv2qiv2di2 (rtx, rtx);
extern rtx gen_sse4_1_sign_extendv2hiv2di2 (rtx, rtx);
extern rtx gen_sse4_1_zero_extendv2hiv2di2 (rtx, rtx);
extern rtx gen_sse4_1_sign_extendv2siv2di2 (rtx, rtx);
extern rtx gen_sse4_1_zero_extendv2siv2di2 (rtx, rtx);
extern rtx gen_avx_vtestps (rtx, rtx);
extern rtx gen_avx_vtestpd (rtx, rtx);
extern rtx gen_avx_vtestps256 (rtx, rtx);
extern rtx gen_avx_vtestpd256 (rtx, rtx);
extern rtx gen_avx_ptest256 (rtx, rtx);
extern rtx gen_sse4_1_ptest (rtx, rtx);
extern rtx gen_avx_roundps256 (rtx, rtx, rtx);
extern rtx gen_avx_roundpd256 (rtx, rtx, rtx);
extern rtx gen_sse4_1_roundps (rtx, rtx, rtx);
extern rtx gen_sse4_1_roundpd (rtx, rtx, rtx);
extern rtx gen_sse4_1_roundss (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_1_roundsd (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_2_pcmpestr (rtx, rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse4_2_pcmpestri (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse4_2_pcmpestrm (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse4_2_pcmpestr_cconly (rtx, rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse4_2_pcmpistr (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sse4_2_pcmpistri (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_2_pcmpistrm (rtx, rtx, rtx, rtx);
extern rtx gen_sse4_2_pcmpistr_cconly (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_xop_pmacsww (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pmacssww (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pmacsdd (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pmacssdd (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pmacssdql (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pmacssdqh (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pmacsdql (rtx, rtx, rtx, rtx);
extern rtx gen_xop_mulv2div2di3_low (rtx, rtx, rtx);
extern rtx gen_xop_pmacsdqh (rtx, rtx, rtx, rtx);
extern rtx gen_xop_mulv2div2di3_high (rtx, rtx, rtx);
extern rtx gen_xop_pmacsswd (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pmacswd (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pmadcsswd (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pmadcswd (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v16qi (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v8hi (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v4si (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v2di (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v4sf (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v2df (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v32qi256 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v16hi256 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v8si256 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v4di256 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v8sf256 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcmov_v4df256 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_phaddbw (rtx, rtx);
extern rtx gen_xop_phaddbd (rtx, rtx);
extern rtx gen_xop_phaddbq (rtx, rtx);
extern rtx gen_xop_phaddwd (rtx, rtx);
extern rtx gen_xop_phaddwq (rtx, rtx);
extern rtx gen_xop_phadddq (rtx, rtx);
extern rtx gen_xop_phaddubw (rtx, rtx);
extern rtx gen_xop_phaddubd (rtx, rtx);
extern rtx gen_xop_phaddubq (rtx, rtx);
extern rtx gen_xop_phadduwd (rtx, rtx);
extern rtx gen_xop_phadduwq (rtx, rtx);
extern rtx gen_xop_phaddudq (rtx, rtx);
extern rtx gen_xop_phsubbw (rtx, rtx);
extern rtx gen_xop_phsubwd (rtx, rtx);
extern rtx gen_xop_phsubdq (rtx, rtx);
extern rtx gen_xop_pperm (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pperm_pack_v2di_v4si (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pperm_pack_v4si_v8hi (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pperm_pack_v8hi_v16qi (rtx, rtx, rtx, rtx);
extern rtx gen_xop_rotlv16qi3 (rtx, rtx, rtx);
extern rtx gen_xop_rotlv8hi3 (rtx, rtx, rtx);
extern rtx gen_xop_rotlv4si3 (rtx, rtx, rtx);
extern rtx gen_xop_rotlv2di3 (rtx, rtx, rtx);
extern rtx gen_xop_rotrv16qi3 (rtx, rtx, rtx);
extern rtx gen_xop_rotrv8hi3 (rtx, rtx, rtx);
extern rtx gen_xop_rotrv4si3 (rtx, rtx, rtx);
extern rtx gen_xop_rotrv2di3 (rtx, rtx, rtx);
extern rtx gen_xop_vrotlv16qi3 (rtx, rtx, rtx);
extern rtx gen_xop_vrotlv8hi3 (rtx, rtx, rtx);
extern rtx gen_xop_vrotlv4si3 (rtx, rtx, rtx);
extern rtx gen_xop_vrotlv2di3 (rtx, rtx, rtx);
extern rtx gen_xop_ashlv16qi3 (rtx, rtx, rtx);
extern rtx gen_xop_ashlv8hi3 (rtx, rtx, rtx);
extern rtx gen_xop_ashlv4si3 (rtx, rtx, rtx);
extern rtx gen_xop_ashlv2di3 (rtx, rtx, rtx);
extern rtx gen_xop_lshlv16qi3 (rtx, rtx, rtx);
extern rtx gen_xop_lshlv8hi3 (rtx, rtx, rtx);
extern rtx gen_xop_lshlv4si3 (rtx, rtx, rtx);
extern rtx gen_xop_lshlv2di3 (rtx, rtx, rtx);
extern rtx gen_xop_frczsf2 (rtx, rtx);
extern rtx gen_xop_frczdf2 (rtx, rtx);
extern rtx gen_xop_frczv4sf2 (rtx, rtx);
extern rtx gen_xop_frczv2df2 (rtx, rtx);
extern rtx gen_xop_frczv8sf2 (rtx, rtx);
extern rtx gen_xop_frczv4df2 (rtx, rtx);
extern rtx gen_xop_maskcmpv16qi3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_maskcmpv8hi3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_maskcmpv4si3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_maskcmpv2di3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_maskcmp_unsv16qi3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_maskcmp_unsv8hi3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_maskcmp_unsv4si3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_maskcmp_unsv2di3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_maskcmp_uns2v16qi3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_maskcmp_uns2v8hi3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_maskcmp_uns2v4si3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_maskcmp_uns2v2di3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcom_tfv16qi3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcom_tfv8hi3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcom_tfv4si3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_pcom_tfv2di3 (rtx, rtx, rtx, rtx);
extern rtx gen_xop_vpermil2v4sf3 (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_xop_vpermil2v2df3 (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_xop_vpermil2v8sf3 (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_xop_vpermil2v4df3 (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_aesenc (rtx, rtx, rtx);
extern rtx gen_aesenclast (rtx, rtx, rtx);
extern rtx gen_aesdec (rtx, rtx, rtx);
extern rtx gen_aesdeclast (rtx, rtx, rtx);
extern rtx gen_aesimc (rtx, rtx);
extern rtx gen_aeskeygenassist (rtx, rtx, rtx);
extern rtx gen_pclmulqdq (rtx, rtx, rtx, rtx);
extern rtx gen_avx_vzeroupper (rtx);
extern rtx gen_vec_dupv8si (rtx, rtx);
extern rtx gen_vec_dupv8sf (rtx, rtx);
extern rtx gen_vec_dupv4di (rtx, rtx);
extern rtx gen_vec_dupv4df (rtx, rtx);
extern rtx gen_avx_vbroadcastf128_v32qi (rtx, rtx);
extern rtx gen_avx_vbroadcastf128_v16hi (rtx, rtx);
extern rtx gen_avx_vbroadcastf128_v8si (rtx, rtx);
extern rtx gen_avx_vbroadcastf128_v4di (rtx, rtx);
extern rtx gen_avx_vbroadcastf128_v8sf (rtx, rtx);
extern rtx gen_avx_vbroadcastf128_v4df (rtx, rtx);
extern rtx gen_avx_vpermilvarv4sf3 (rtx, rtx, rtx);
extern rtx gen_avx_vpermilvarv2df3 (rtx, rtx, rtx);
extern rtx gen_avx_vpermilvarv8sf3 (rtx, rtx, rtx);
extern rtx gen_avx_vpermilvarv4df3 (rtx, rtx, rtx);
extern rtx gen_vec_set_lo_v4di (rtx, rtx, rtx);
extern rtx gen_vec_set_lo_v4df (rtx, rtx, rtx);
extern rtx gen_vec_set_hi_v4di (rtx, rtx, rtx);
extern rtx gen_vec_set_hi_v4df (rtx, rtx, rtx);
extern rtx gen_vec_set_lo_v8si (rtx, rtx, rtx);
extern rtx gen_vec_set_lo_v8sf (rtx, rtx, rtx);
extern rtx gen_vec_set_hi_v8si (rtx, rtx, rtx);
extern rtx gen_vec_set_hi_v8sf (rtx, rtx, rtx);
extern rtx gen_vec_set_lo_v16hi (rtx, rtx, rtx);
extern rtx gen_vec_set_hi_v16hi (rtx, rtx, rtx);
extern rtx gen_vec_set_lo_v32qi (rtx, rtx, rtx);
extern rtx gen_vec_set_hi_v32qi (rtx, rtx, rtx);
extern rtx gen_avx_maskloadps (rtx, rtx, rtx);
extern rtx gen_avx_maskloadpd (rtx, rtx, rtx);
extern rtx gen_avx_maskloadps256 (rtx, rtx, rtx);
extern rtx gen_avx_maskloadpd256 (rtx, rtx, rtx);
extern rtx gen_avx_maskstoreps (rtx, rtx, rtx);
extern rtx gen_avx_maskstorepd (rtx, rtx, rtx);
extern rtx gen_avx_maskstoreps256 (rtx, rtx, rtx);
extern rtx gen_avx_maskstorepd256 (rtx, rtx, rtx);
extern rtx gen_avx_si256_si (rtx, rtx);
extern rtx gen_avx_ps256_ps (rtx, rtx);
extern rtx gen_avx_pd256_pd (rtx, rtx);
extern rtx gen_vcvtph2ps (rtx, rtx);
extern rtx gen_vcvtph2ps256 (rtx, rtx);
extern rtx gen_vcvtps2ph256 (rtx, rtx, rtx);
extern rtx gen_memory_barrier_nosse (rtx);
extern rtx gen_sync_double_compare_and_swapdi (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sync_double_compare_and_swapti (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_sync_old_addqi (rtx, rtx, rtx);
extern rtx gen_sync_old_addhi (rtx, rtx, rtx);
extern rtx gen_sync_old_addsi (rtx, rtx, rtx);
extern rtx gen_sync_old_adddi (rtx, rtx, rtx);
extern rtx gen_sync_lock_test_and_setqi (rtx, rtx, rtx);
extern rtx gen_sync_lock_test_and_sethi (rtx, rtx, rtx);
extern rtx gen_sync_lock_test_and_setsi (rtx, rtx, rtx);
extern rtx gen_sync_lock_test_and_setdi (rtx, rtx, rtx);
extern rtx gen_sync_addqi (rtx, rtx);
extern rtx gen_sync_addhi (rtx, rtx);
extern rtx gen_sync_addsi (rtx, rtx);
extern rtx gen_sync_adddi (rtx, rtx);
extern rtx gen_sync_subqi (rtx, rtx);
extern rtx gen_sync_subhi (rtx, rtx);
extern rtx gen_sync_subsi (rtx, rtx);
extern rtx gen_sync_subdi (rtx, rtx);
extern rtx gen_sync_andqi (rtx, rtx);
extern rtx gen_sync_iorqi (rtx, rtx);
extern rtx gen_sync_xorqi (rtx, rtx);
extern rtx gen_sync_andhi (rtx, rtx);
extern rtx gen_sync_iorhi (rtx, rtx);
extern rtx gen_sync_xorhi (rtx, rtx);
extern rtx gen_sync_andsi (rtx, rtx);
extern rtx gen_sync_iorsi (rtx, rtx);
extern rtx gen_sync_xorsi (rtx, rtx);
extern rtx gen_sync_anddi (rtx, rtx);
extern rtx gen_sync_iordi (rtx, rtx);
extern rtx gen_sync_xordi (rtx, rtx);
extern rtx gen_cbranchqi4 (rtx, rtx, rtx, rtx);
extern rtx gen_cbranchhi4 (rtx, rtx, rtx, rtx);
extern rtx gen_cbranchsi4 (rtx, rtx, rtx, rtx);
extern rtx gen_cbranchdi4 (rtx, rtx, rtx, rtx);
extern rtx gen_cbranchti4 (rtx, rtx, rtx, rtx);
extern rtx gen_cstoreqi4 (rtx, rtx, rtx, rtx);
extern rtx gen_cstorehi4 (rtx, rtx, rtx, rtx);
extern rtx gen_cstoresi4 (rtx, rtx, rtx, rtx);
extern rtx gen_cstoredi4 (rtx, rtx, rtx, rtx);
extern rtx gen_cmpsi_1 (rtx, rtx);
extern rtx gen_cmpdi_1 (rtx, rtx);
extern rtx gen_cmpqi_ext_3 (rtx, rtx);
extern rtx gen_cbranchxf4 (rtx, rtx, rtx, rtx);
extern rtx gen_cstorexf4 (rtx, rtx, rtx, rtx);
extern rtx gen_cbranchsf4 (rtx, rtx, rtx, rtx);
extern rtx gen_cbranchdf4 (rtx, rtx, rtx, rtx);
extern rtx gen_cstoresf4 (rtx, rtx, rtx, rtx);
extern rtx gen_cstoredf4 (rtx, rtx, rtx, rtx);
extern rtx gen_cbranchcc4 (rtx, rtx, rtx, rtx);
extern rtx gen_cstorecc4 (rtx, rtx, rtx, rtx);
extern rtx gen_movoi (rtx, rtx);
extern rtx gen_movti (rtx, rtx);
extern rtx gen_movcdi (rtx, rtx);
extern rtx gen_movqi (rtx, rtx);
extern rtx gen_movhi (rtx, rtx);
extern rtx gen_movsi (rtx, rtx);
extern rtx gen_movdi (rtx, rtx);
extern rtx gen_movstrictqi (rtx, rtx);
extern rtx gen_movstricthi (rtx, rtx);
extern rtx gen_movsi_insv_1 (rtx, rtx);
extern rtx gen_movdi_insv_1 (rtx, rtx);
extern rtx gen_movtf (rtx, rtx);
extern rtx gen_movsf (rtx, rtx);
extern rtx gen_movdf (rtx, rtx);
extern rtx gen_movxf (rtx, rtx);
extern rtx gen_zero_extendsidi2 (rtx, rtx);
extern rtx gen_zero_extendhisi2 (rtx, rtx);
extern rtx gen_zero_extendqihi2 (rtx, rtx);
extern rtx gen_zero_extendqisi2 (rtx, rtx);
extern rtx gen_extendsidi2 (rtx, rtx);
extern rtx gen_extendsfdf2 (rtx, rtx);
extern rtx gen_extendsfxf2 (rtx, rtx);
extern rtx gen_extenddfxf2 (rtx, rtx);
extern rtx gen_truncdfsf2 (rtx, rtx);
extern rtx gen_truncdfsf2_with_temp (rtx, rtx, rtx);
extern rtx gen_truncxfsf2 (rtx, rtx);
extern rtx gen_truncxfdf2 (rtx, rtx);
extern rtx gen_fix_truncxfdi2 (rtx, rtx);
extern rtx gen_fix_truncsfdi2 (rtx, rtx);
extern rtx gen_fix_truncdfdi2 (rtx, rtx);
extern rtx gen_fix_truncxfsi2 (rtx, rtx);
extern rtx gen_fix_truncsfsi2 (rtx, rtx);
extern rtx gen_fix_truncdfsi2 (rtx, rtx);
extern rtx gen_fix_truncsfhi2 (rtx, rtx);
extern rtx gen_fix_truncdfhi2 (rtx, rtx);
extern rtx gen_fix_truncxfhi2 (rtx, rtx);
extern rtx gen_fixuns_truncsfsi2 (rtx, rtx);
extern rtx gen_fixuns_truncdfsi2 (rtx, rtx);
extern rtx gen_fixuns_truncsfhi2 (rtx, rtx);
extern rtx gen_fixuns_truncdfhi2 (rtx, rtx);
extern rtx gen_floathisf2 (rtx, rtx);
extern rtx gen_floathidf2 (rtx, rtx);
extern rtx gen_floathixf2 (rtx, rtx);
extern rtx gen_floatsisf2 (rtx, rtx);
extern rtx gen_floatsidf2 (rtx, rtx);
extern rtx gen_floatsixf2 (rtx, rtx);
extern rtx gen_floatdisf2 (rtx, rtx);
extern rtx gen_floatdidf2 (rtx, rtx);
extern rtx gen_floatdixf2 (rtx, rtx);
extern rtx gen_floatunssisf2 (rtx, rtx);
extern rtx gen_floatunssidf2 (rtx, rtx);
extern rtx gen_floatunssixf2 (rtx, rtx);
extern rtx gen_floatunsdisf2 (rtx, rtx);
extern rtx gen_floatunsdidf2 (rtx, rtx);
extern rtx gen_addqi3 (rtx, rtx, rtx);
extern rtx gen_addhi3 (rtx, rtx, rtx);
extern rtx gen_addsi3 (rtx, rtx, rtx);
extern rtx gen_adddi3 (rtx, rtx, rtx);
extern rtx gen_addti3 (rtx, rtx, rtx);
extern rtx gen_subqi3 (rtx, rtx, rtx);
extern rtx gen_subhi3 (rtx, rtx, rtx);
extern rtx gen_subsi3 (rtx, rtx, rtx);
extern rtx gen_subdi3 (rtx, rtx, rtx);
extern rtx gen_subti3 (rtx, rtx, rtx);
extern rtx gen_addqi3_carry (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_subqi3_carry (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_addhi3_carry (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_subhi3_carry (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_addsi3_carry (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_subsi3_carry (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_adddi3_carry (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_subdi3_carry (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_addxf3 (rtx, rtx, rtx);
extern rtx gen_subxf3 (rtx, rtx, rtx);
extern rtx gen_addsf3 (rtx, rtx, rtx);
extern rtx gen_subsf3 (rtx, rtx, rtx);
extern rtx gen_adddf3 (rtx, rtx, rtx);
extern rtx gen_subdf3 (rtx, rtx, rtx);
extern rtx gen_mulhi3 (rtx, rtx, rtx);
extern rtx gen_mulsi3 (rtx, rtx, rtx);
extern rtx gen_muldi3 (rtx, rtx, rtx);
extern rtx gen_mulqi3 (rtx, rtx, rtx);
extern rtx gen_mulsidi3 (rtx, rtx, rtx);
extern rtx gen_umulsidi3 (rtx, rtx, rtx);
extern rtx gen_mulditi3 (rtx, rtx, rtx);
extern rtx gen_umulditi3 (rtx, rtx, rtx);
extern rtx gen_mulqihi3 (rtx, rtx, rtx);
extern rtx gen_umulqihi3 (rtx, rtx, rtx);
extern rtx gen_smulsi3_highpart (rtx, rtx, rtx);
extern rtx gen_umulsi3_highpart (rtx, rtx, rtx);
extern rtx gen_smuldi3_highpart (rtx, rtx, rtx);
extern rtx gen_umuldi3_highpart (rtx, rtx, rtx);
extern rtx gen_mulxf3 (rtx, rtx, rtx);
extern rtx gen_mulsf3 (rtx, rtx, rtx);
extern rtx gen_muldf3 (rtx, rtx, rtx);
extern rtx gen_divxf3 (rtx, rtx, rtx);
extern rtx gen_divdf3 (rtx, rtx, rtx);
extern rtx gen_divsf3 (rtx, rtx, rtx);
extern rtx gen_divmodhi4 (rtx, rtx, rtx, rtx);
extern rtx gen_divmodsi4 (rtx, rtx, rtx, rtx);
extern rtx gen_divmoddi4 (rtx, rtx, rtx, rtx);
extern rtx gen_divmodqi4 (rtx, rtx, rtx, rtx);
extern rtx gen_udivmodhi4 (rtx, rtx, rtx, rtx);
extern rtx gen_udivmodsi4 (rtx, rtx, rtx, rtx);
extern rtx gen_udivmoddi4 (rtx, rtx, rtx, rtx);
extern rtx gen_udivmodqi4 (rtx, rtx, rtx, rtx);
extern rtx gen_testsi_ccno_1 (rtx, rtx);
extern rtx gen_testqi_ccz_1 (rtx, rtx);
extern rtx gen_testdi_ccno_1 (rtx, rtx);
extern rtx gen_testqi_ext_ccno_0 (rtx, rtx);
extern rtx gen_andqi3 (rtx, rtx, rtx);
extern rtx gen_andhi3 (rtx, rtx, rtx);
extern rtx gen_andsi3 (rtx, rtx, rtx);
extern rtx gen_anddi3 (rtx, rtx, rtx);
extern rtx gen_iorqi3 (rtx, rtx, rtx);
extern rtx gen_xorqi3 (rtx, rtx, rtx);
extern rtx gen_iorhi3 (rtx, rtx, rtx);
extern rtx gen_xorhi3 (rtx, rtx, rtx);
extern rtx gen_iorsi3 (rtx, rtx, rtx);
extern rtx gen_xorsi3 (rtx, rtx, rtx);
extern rtx gen_iordi3 (rtx, rtx, rtx);
extern rtx gen_xordi3 (rtx, rtx, rtx);
extern rtx gen_xorqi_cc_ext_1 (rtx, rtx, rtx);
extern rtx gen_negqi2 (rtx, rtx);
extern rtx gen_neghi2 (rtx, rtx);
extern rtx gen_negsi2 (rtx, rtx);
extern rtx gen_negdi2 (rtx, rtx);
extern rtx gen_negti2 (rtx, rtx);
extern rtx gen_abssf2 (rtx, rtx);
extern rtx gen_negsf2 (rtx, rtx);
extern rtx gen_absdf2 (rtx, rtx);
extern rtx gen_negdf2 (rtx, rtx);
extern rtx gen_absxf2 (rtx, rtx);
extern rtx gen_negxf2 (rtx, rtx);
extern rtx gen_abstf2 (rtx, rtx);
extern rtx gen_negtf2 (rtx, rtx);
extern rtx gen_copysignsf3 (rtx, rtx, rtx);
extern rtx gen_copysigndf3 (rtx, rtx, rtx);
extern rtx gen_copysigntf3 (rtx, rtx, rtx);
extern rtx gen_one_cmplqi2 (rtx, rtx);
extern rtx gen_one_cmplhi2 (rtx, rtx);
extern rtx gen_one_cmplsi2 (rtx, rtx);
extern rtx gen_one_cmpldi2 (rtx, rtx);
extern rtx gen_ashlqi3 (rtx, rtx, rtx);
extern rtx gen_ashlhi3 (rtx, rtx, rtx);
extern rtx gen_ashlsi3 (rtx, rtx, rtx);
extern rtx gen_ashldi3 (rtx, rtx, rtx);
extern rtx gen_ashlti3 (rtx, rtx, rtx);
extern rtx gen_x86_shiftsi_adj_1 (rtx, rtx, rtx, rtx);
extern rtx gen_x86_shiftdi_adj_1 (rtx, rtx, rtx, rtx);
extern rtx gen_x86_shiftsi_adj_2 (rtx, rtx, rtx);
extern rtx gen_x86_shiftdi_adj_2 (rtx, rtx, rtx);
extern rtx gen_lshrqi3 (rtx, rtx, rtx);
extern rtx gen_ashrqi3 (rtx, rtx, rtx);
extern rtx gen_lshrhi3 (rtx, rtx, rtx);
extern rtx gen_ashrhi3 (rtx, rtx, rtx);
extern rtx gen_lshrsi3 (rtx, rtx, rtx);
extern rtx gen_ashrsi3 (rtx, rtx, rtx);
extern rtx gen_lshrdi3 (rtx, rtx, rtx);
extern rtx gen_ashrdi3 (rtx, rtx, rtx);
extern rtx gen_lshrti3 (rtx, rtx, rtx);
extern rtx gen_ashrti3 (rtx, rtx, rtx);
extern rtx gen_x86_shiftsi_adj_3 (rtx, rtx, rtx);
extern rtx gen_x86_shiftdi_adj_3 (rtx, rtx, rtx);
extern rtx gen_rotlti3 (rtx, rtx, rtx);
extern rtx gen_rotrti3 (rtx, rtx, rtx);
extern rtx gen_rotldi3 (rtx, rtx, rtx);
extern rtx gen_rotrdi3 (rtx, rtx, rtx);
extern rtx gen_rotlqi3 (rtx, rtx, rtx);
extern rtx gen_rotrqi3 (rtx, rtx, rtx);
extern rtx gen_rotlhi3 (rtx, rtx, rtx);
extern rtx gen_rotrhi3 (rtx, rtx, rtx);
extern rtx gen_rotlsi3 (rtx, rtx, rtx);
extern rtx gen_rotrsi3 (rtx, rtx, rtx);
extern rtx gen_extv (rtx, rtx, rtx, rtx);
extern rtx gen_extzv (rtx, rtx, rtx, rtx);
extern rtx gen_insv (rtx, rtx, rtx, rtx);
extern rtx gen_indirect_jump (rtx);
extern rtx gen_tablejump (rtx, rtx);

extern rtx gen_call_pop (rtx, rtx, rtx, rtx);

extern rtx gen_call (rtx, rtx, rtx);

extern rtx gen_sibcall (rtx, rtx, rtx);

extern rtx gen_call_value_pop (rtx, rtx, rtx, rtx, rtx);

extern rtx gen_call_value (rtx, rtx, rtx, rtx);

extern rtx gen_sibcall_value (rtx, rtx, rtx, rtx);
extern rtx gen_untyped_call (rtx, rtx, rtx);
extern rtx gen_memory_blockage (void);
extern rtx gen_return (void);
extern rtx gen_prologue (void);
extern rtx gen_epilogue (void);
extern rtx gen_sibcall_epilogue (void);
extern rtx gen_eh_return (rtx);
extern rtx gen_split_stack_prologue (void);
extern rtx gen_split_stack_space_check (rtx, rtx);
extern rtx gen_ffssi2 (rtx, rtx);
extern rtx gen_ffsdi2 (rtx, rtx);
extern rtx gen_clzhi2 (rtx, rtx);
extern rtx gen_clzsi2 (rtx, rtx);
extern rtx gen_clzdi2 (rtx, rtx);
extern rtx gen_bswapsi2 (rtx, rtx);
extern rtx gen_bswapdi2 (rtx, rtx);
extern rtx gen_paritydi2 (rtx, rtx);
extern rtx gen_paritysi2 (rtx, rtx);
extern rtx gen_tls_global_dynamic_32 (rtx, rtx);
extern rtx gen_tls_global_dynamic_64 (rtx, rtx);
extern rtx gen_tls_local_dynamic_base_32 (rtx);
extern rtx gen_tls_local_dynamic_base_64 (rtx);
extern rtx gen_tls_dynamic_gnu2_32 (rtx, rtx, rtx);
extern rtx gen_tls_dynamic_gnu2_64 (rtx, rtx);
extern rtx gen_rsqrtsf2 (rtx, rtx);
extern rtx gen_sqrtsf2 (rtx, rtx);
extern rtx gen_sqrtdf2 (rtx, rtx);
extern rtx gen_fmodxf3 (rtx, rtx, rtx);
extern rtx gen_fmodsf3 (rtx, rtx, rtx);
extern rtx gen_fmoddf3 (rtx, rtx, rtx);
extern rtx gen_remainderxf3 (rtx, rtx, rtx);
extern rtx gen_remaindersf3 (rtx, rtx, rtx);
extern rtx gen_remainderdf3 (rtx, rtx, rtx);
extern rtx gen_sincossf3 (rtx, rtx, rtx);
extern rtx gen_sincosdf3 (rtx, rtx, rtx);
extern rtx gen_tanxf2 (rtx, rtx);
extern rtx gen_tansf2 (rtx, rtx);
extern rtx gen_tandf2 (rtx, rtx);
extern rtx gen_atan2xf3 (rtx, rtx, rtx);
extern rtx gen_atan2sf3 (rtx, rtx, rtx);
extern rtx gen_atan2df3 (rtx, rtx, rtx);
extern rtx gen_atanxf2 (rtx, rtx);
extern rtx gen_atansf2 (rtx, rtx);
extern rtx gen_atandf2 (rtx, rtx);
extern rtx gen_asinxf2 (rtx, rtx);
extern rtx gen_asinsf2 (rtx, rtx);
extern rtx gen_asindf2 (rtx, rtx);
extern rtx gen_acosxf2 (rtx, rtx);
extern rtx gen_acossf2 (rtx, rtx);
extern rtx gen_acosdf2 (rtx, rtx);
extern rtx gen_logxf2 (rtx, rtx);
extern rtx gen_logsf2 (rtx, rtx);
extern rtx gen_logdf2 (rtx, rtx);
extern rtx gen_log10xf2 (rtx, rtx);
extern rtx gen_log10sf2 (rtx, rtx);
extern rtx gen_log10df2 (rtx, rtx);
extern rtx gen_log2xf2 (rtx, rtx);
extern rtx gen_log2sf2 (rtx, rtx);
extern rtx gen_log2df2 (rtx, rtx);
extern rtx gen_log1pxf2 (rtx, rtx);
extern rtx gen_log1psf2 (rtx, rtx);
extern rtx gen_log1pdf2 (rtx, rtx);
extern rtx gen_logbxf2 (rtx, rtx);
extern rtx gen_logbsf2 (rtx, rtx);
extern rtx gen_logbdf2 (rtx, rtx);
extern rtx gen_ilogbxf2 (rtx, rtx);
extern rtx gen_ilogbsf2 (rtx, rtx);
extern rtx gen_ilogbdf2 (rtx, rtx);
extern rtx gen_expNcorexf3 (rtx, rtx, rtx);
extern rtx gen_expxf2 (rtx, rtx);
extern rtx gen_expsf2 (rtx, rtx);
extern rtx gen_expdf2 (rtx, rtx);
extern rtx gen_exp10xf2 (rtx, rtx);
extern rtx gen_exp10sf2 (rtx, rtx);
extern rtx gen_exp10df2 (rtx, rtx);
extern rtx gen_exp2xf2 (rtx, rtx);
extern rtx gen_exp2sf2 (rtx, rtx);
extern rtx gen_exp2df2 (rtx, rtx);
extern rtx gen_expm1xf2 (rtx, rtx);
extern rtx gen_expm1sf2 (rtx, rtx);
extern rtx gen_expm1df2 (rtx, rtx);
extern rtx gen_ldexpxf3 (rtx, rtx, rtx);
extern rtx gen_ldexpsf3 (rtx, rtx, rtx);
extern rtx gen_ldexpdf3 (rtx, rtx, rtx);
extern rtx gen_scalbxf3 (rtx, rtx, rtx);
extern rtx gen_scalbsf3 (rtx, rtx, rtx);
extern rtx gen_scalbdf3 (rtx, rtx, rtx);
extern rtx gen_significandxf2 (rtx, rtx);
extern rtx gen_significandsf2 (rtx, rtx);
extern rtx gen_significanddf2 (rtx, rtx);
extern rtx gen_rintsf2 (rtx, rtx);
extern rtx gen_rintdf2 (rtx, rtx);
extern rtx gen_roundsf2 (rtx, rtx);
extern rtx gen_rounddf2 (rtx, rtx);
extern rtx gen_lrintxfhi2 (rtx, rtx);
extern rtx gen_lrintxfsi2 (rtx, rtx);
extern rtx gen_lrintxfdi2 (rtx, rtx);
extern rtx gen_lrintsfsi2 (rtx, rtx);
extern rtx gen_lrintdfsi2 (rtx, rtx);
extern rtx gen_lrintsfdi2 (rtx, rtx);
extern rtx gen_lrintdfdi2 (rtx, rtx);
extern rtx gen_lroundsfsi2 (rtx, rtx);
extern rtx gen_lrounddfsi2 (rtx, rtx);
extern rtx gen_lroundsfdi2 (rtx, rtx);
extern rtx gen_lrounddfdi2 (rtx, rtx);
extern rtx gen_floorxf2 (rtx, rtx);
extern rtx gen_floorsf2 (rtx, rtx);
extern rtx gen_floordf2 (rtx, rtx);
extern rtx gen_lfloorxfhi2 (rtx, rtx);
extern rtx gen_lfloorxfsi2 (rtx, rtx);
extern rtx gen_lfloorxfdi2 (rtx, rtx);
extern rtx gen_lfloorsfsi2 (rtx, rtx);
extern rtx gen_lfloordfsi2 (rtx, rtx);
extern rtx gen_lfloorsfdi2 (rtx, rtx);
extern rtx gen_lfloordfdi2 (rtx, rtx);
extern rtx gen_ceilxf2 (rtx, rtx);
extern rtx gen_ceilsf2 (rtx, rtx);
extern rtx gen_ceildf2 (rtx, rtx);
extern rtx gen_lceilxfhi2 (rtx, rtx);
extern rtx gen_lceilxfsi2 (rtx, rtx);
extern rtx gen_lceilxfdi2 (rtx, rtx);
extern rtx gen_lceilsfsi2 (rtx, rtx);
extern rtx gen_lceildfsi2 (rtx, rtx);
extern rtx gen_lceilsfdi2 (rtx, rtx);
extern rtx gen_lceildfdi2 (rtx, rtx);
extern rtx gen_btruncxf2 (rtx, rtx);
extern rtx gen_btruncsf2 (rtx, rtx);
extern rtx gen_btruncdf2 (rtx, rtx);
extern rtx gen_nearbyintxf2 (rtx, rtx);
extern rtx gen_nearbyintsf2 (rtx, rtx);
extern rtx gen_nearbyintdf2 (rtx, rtx);
extern rtx gen_isinfxf2 (rtx, rtx);
extern rtx gen_isinfsf2 (rtx, rtx);
extern rtx gen_isinfdf2 (rtx, rtx);
extern rtx gen_signbitxf2 (rtx, rtx);
extern rtx gen_signbitdf2 (rtx, rtx);
extern rtx gen_signbitsf2 (rtx, rtx);
extern rtx gen_movmemsi (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_movmemdi (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_strmov (rtx, rtx, rtx, rtx);
extern rtx gen_strmov_singleop (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_rep_mov (rtx, rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_setmemsi (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_setmemdi (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_strset (rtx, rtx, rtx);
extern rtx gen_strset_singleop (rtx, rtx, rtx, rtx);
extern rtx gen_rep_stos (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_cmpstrnsi (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_cmpintqi (rtx);
extern rtx gen_cmpstrnqi_nz_1 (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_cmpstrnqi_1 (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_strlensi (rtx, rtx, rtx, rtx);
extern rtx gen_strlendi (rtx, rtx, rtx, rtx);
extern rtx gen_strlenqi_1 (rtx, rtx, rtx);
extern rtx gen_movqicc (rtx, rtx, rtx, rtx);
extern rtx gen_movhicc (rtx, rtx, rtx, rtx);
extern rtx gen_movsicc (rtx, rtx, rtx, rtx);
extern rtx gen_movdicc (rtx, rtx, rtx, rtx);
extern rtx gen_x86_movsicc_0_m1 (rtx, rtx, rtx);
extern rtx gen_x86_movdicc_0_m1 (rtx, rtx, rtx);
extern rtx gen_movsfcc (rtx, rtx, rtx, rtx);
extern rtx gen_movdfcc (rtx, rtx, rtx, rtx);
extern rtx gen_movxfcc (rtx, rtx, rtx, rtx);
extern rtx gen_addqicc (rtx, rtx, rtx, rtx);
extern rtx gen_addhicc (rtx, rtx, rtx, rtx);
extern rtx gen_addsicc (rtx, rtx, rtx, rtx);
extern rtx gen_adddicc (rtx, rtx, rtx, rtx);
extern rtx gen_allocate_stack (rtx, rtx);
extern rtx gen_probe_stack (rtx);
extern rtx gen_builtin_setjmp_receiver (rtx);
extern rtx gen_prefetch (rtx, rtx, rtx);
extern rtx gen_stack_protect_set (rtx, rtx);
extern rtx gen_stack_protect_test (rtx, rtx, rtx);
extern rtx gen_rdpmc (rtx, rtx);
extern rtx gen_rdtsc (rtx);
extern rtx gen_rdtscp (rtx, rtx);
extern rtx gen_lwp_llwpcb (rtx);
extern rtx gen_lwp_slwpcb (rtx);
extern rtx gen_lwp_lwpvalsi3 (rtx, rtx, rtx, rtx);
extern rtx gen_lwp_lwpvaldi3 (rtx, rtx, rtx, rtx);
extern rtx gen_lwp_lwpinssi3 (rtx, rtx, rtx, rtx);
extern rtx gen_lwp_lwpinsdi3 (rtx, rtx, rtx, rtx);
extern rtx gen_movv8qi (rtx, rtx);
extern rtx gen_movv4hi (rtx, rtx);
extern rtx gen_movv2si (rtx, rtx);
extern rtx gen_movv1di (rtx, rtx);
extern rtx gen_movv2sf (rtx, rtx);
extern rtx gen_pushv8qi1 (rtx);
extern rtx gen_pushv4hi1 (rtx);
extern rtx gen_pushv2si1 (rtx);
extern rtx gen_pushv1di1 (rtx);
extern rtx gen_pushv2sf1 (rtx);
extern rtx gen_movmisalignv8qi (rtx, rtx);
extern rtx gen_movmisalignv4hi (rtx, rtx);
extern rtx gen_movmisalignv2si (rtx, rtx);
extern rtx gen_movmisalignv1di (rtx, rtx);
extern rtx gen_movmisalignv2sf (rtx, rtx);
extern rtx gen_mmx_addv2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_subv2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_subrv2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_mulv2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_smaxv2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_sminv2sf3 (rtx, rtx, rtx);
extern rtx gen_mmx_eqv2sf3 (rtx, rtx, rtx);
extern rtx gen_vec_setv2sf (rtx, rtx, rtx);
extern rtx gen_vec_extractv2sf (rtx, rtx, rtx);
extern rtx gen_vec_initv2sf (rtx, rtx);
extern rtx gen_mmx_addv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_subv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_addv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_subv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_addv2si3 (rtx, rtx, rtx);
extern rtx gen_mmx_subv2si3 (rtx, rtx, rtx);
extern rtx gen_mmx_addv1di3 (rtx, rtx, rtx);
extern rtx gen_mmx_subv1di3 (rtx, rtx, rtx);
extern rtx gen_mmx_ssaddv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_usaddv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_sssubv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_ussubv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_ssaddv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_usaddv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_sssubv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_ussubv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_mulv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_smulv4hi3_highpart (rtx, rtx, rtx);
extern rtx gen_mmx_umulv4hi3_highpart (rtx, rtx, rtx);
extern rtx gen_mmx_pmaddwd (rtx, rtx, rtx);
extern rtx gen_mmx_pmulhrwv4hi3 (rtx, rtx, rtx);
extern rtx gen_sse2_umulv1siv1di3 (rtx, rtx, rtx);
extern rtx gen_mmx_smaxv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_sminv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_umaxv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_uminv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_eqv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_eqv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_eqv2si3 (rtx, rtx, rtx);
extern rtx gen_mmx_andv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_iorv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_xorv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_andv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_iorv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_xorv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_andv2si3 (rtx, rtx, rtx);
extern rtx gen_mmx_iorv2si3 (rtx, rtx, rtx);
extern rtx gen_mmx_xorv2si3 (rtx, rtx, rtx);
extern rtx gen_mmx_pinsrw (rtx, rtx, rtx, rtx);
extern rtx gen_mmx_pshufw (rtx, rtx, rtx);
extern rtx gen_vec_setv2si (rtx, rtx, rtx);
extern rtx gen_vec_extractv2si (rtx, rtx, rtx);
extern rtx gen_vec_initv2si (rtx, rtx);
extern rtx gen_vec_setv4hi (rtx, rtx, rtx);
extern rtx gen_vec_extractv4hi (rtx, rtx, rtx);
extern rtx gen_vec_initv4hi (rtx, rtx);
extern rtx gen_vec_setv8qi (rtx, rtx, rtx);
extern rtx gen_vec_extractv8qi (rtx, rtx, rtx);
extern rtx gen_vec_initv8qi (rtx, rtx);
extern rtx gen_mmx_uavgv8qi3 (rtx, rtx, rtx);
extern rtx gen_mmx_uavgv4hi3 (rtx, rtx, rtx);
extern rtx gen_mmx_maskmovq (rtx, rtx, rtx);
extern rtx gen_mmx_emms (void);
extern rtx gen_mmx_femms (void);
extern rtx gen_movv32qi (rtx, rtx);
extern rtx gen_movv16hi (rtx, rtx);
extern rtx gen_movv8si (rtx, rtx);
extern rtx gen_movv4di (rtx, rtx);
extern rtx gen_movv8sf (rtx, rtx);
extern rtx gen_movv4df (rtx, rtx);
extern rtx gen_movv16qi (rtx, rtx);
extern rtx gen_movv8hi (rtx, rtx);
extern rtx gen_movv4si (rtx, rtx);
extern rtx gen_movv2di (rtx, rtx);
extern rtx gen_movv1ti (rtx, rtx);
extern rtx gen_movv4sf (rtx, rtx);
extern rtx gen_movv2df (rtx, rtx);
extern rtx gen_pushv32qi1 (rtx);
extern rtx gen_pushv16hi1 (rtx);
extern rtx gen_pushv8si1 (rtx);
extern rtx gen_pushv4di1 (rtx);
extern rtx gen_pushv8sf1 (rtx);
extern rtx gen_pushv4df1 (rtx);
extern rtx gen_pushv16qi1 (rtx);
extern rtx gen_pushv8hi1 (rtx);
extern rtx gen_pushv4si1 (rtx);
extern rtx gen_pushv2di1 (rtx);
extern rtx gen_pushv1ti1 (rtx);
extern rtx gen_pushv4sf1 (rtx);
extern rtx gen_pushv2df1 (rtx);
extern rtx gen_movmisalignv32qi (rtx, rtx);
extern rtx gen_movmisalignv16hi (rtx, rtx);
extern rtx gen_movmisalignv8si (rtx, rtx);
extern rtx gen_movmisalignv4di (rtx, rtx);
extern rtx gen_movmisalignv8sf (rtx, rtx);
extern rtx gen_movmisalignv4df (rtx, rtx);
extern rtx gen_movmisalignv16qi (rtx, rtx);
extern rtx gen_movmisalignv8hi (rtx, rtx);
extern rtx gen_movmisalignv4si (rtx, rtx);
extern rtx gen_movmisalignv2di (rtx, rtx);
extern rtx gen_movmisalignv1ti (rtx, rtx);
extern rtx gen_movmisalignv4sf (rtx, rtx);
extern rtx gen_movmisalignv2df (rtx, rtx);
extern rtx gen_avx_movups (rtx, rtx);
extern rtx gen_avx_movupd (rtx, rtx);
extern rtx gen_avx_movups256 (rtx, rtx);
extern rtx gen_avx_movupd256 (rtx, rtx);
extern rtx gen_sse_movups (rtx, rtx);
extern rtx gen_sse2_movupd (rtx, rtx);
extern rtx gen_avx_movdqu256 (rtx, rtx);
extern rtx gen_avx_movdqu (rtx, rtx);
extern rtx gen_sse2_movdqu (rtx, rtx);
extern rtx gen_storentsf (rtx, rtx);
extern rtx gen_storentdf (rtx, rtx);
extern rtx gen_storentsi (rtx, rtx);
extern rtx gen_storentv2di (rtx, rtx);
extern rtx gen_storentv2df (rtx, rtx);
extern rtx gen_storentv4sf (rtx, rtx);
extern rtx gen_storentv4df (rtx, rtx);
extern rtx gen_storentv8sf (rtx, rtx);
extern rtx gen_absv2df2 (rtx, rtx);
extern rtx gen_negv2df2 (rtx, rtx);
extern rtx gen_absv4sf2 (rtx, rtx);
extern rtx gen_negv4sf2 (rtx, rtx);
extern rtx gen_absv4df2 (rtx, rtx);
extern rtx gen_negv4df2 (rtx, rtx);
extern rtx gen_absv8sf2 (rtx, rtx);
extern rtx gen_negv8sf2 (rtx, rtx);
extern rtx gen_addv8sf3 (rtx, rtx, rtx);
extern rtx gen_subv8sf3 (rtx, rtx, rtx);
extern rtx gen_addv4df3 (rtx, rtx, rtx);
extern rtx gen_subv4df3 (rtx, rtx, rtx);
extern rtx gen_addv4sf3 (rtx, rtx, rtx);
extern rtx gen_subv4sf3 (rtx, rtx, rtx);
extern rtx gen_addv2df3 (rtx, rtx, rtx);
extern rtx gen_subv2df3 (rtx, rtx, rtx);
extern rtx gen_mulv8sf3 (rtx, rtx, rtx);
extern rtx gen_mulv4df3 (rtx, rtx, rtx);
extern rtx gen_mulv4sf3 (rtx, rtx, rtx);
extern rtx gen_mulv2df3 (rtx, rtx, rtx);
extern rtx gen_divv8sf3 (rtx, rtx, rtx);
extern rtx gen_divv4df3 (rtx, rtx, rtx);
extern rtx gen_divv4sf3 (rtx, rtx, rtx);
extern rtx gen_divv2df3 (rtx, rtx, rtx);
extern rtx gen_sqrtv8sf2 (rtx, rtx);
extern rtx gen_sqrtv4sf2 (rtx, rtx);
extern rtx gen_rsqrtv8sf2 (rtx, rtx);
extern rtx gen_rsqrtv4sf2 (rtx, rtx);
extern rtx gen_smaxv8sf3 (rtx, rtx, rtx);
extern rtx gen_sminv8sf3 (rtx, rtx, rtx);
extern rtx gen_smaxv4df3 (rtx, rtx, rtx);
extern rtx gen_sminv4df3 (rtx, rtx, rtx);
extern rtx gen_smaxv4sf3 (rtx, rtx, rtx);
extern rtx gen_sminv4sf3 (rtx, rtx, rtx);
extern rtx gen_smaxv2df3 (rtx, rtx, rtx);
extern rtx gen_sminv2df3 (rtx, rtx, rtx);
extern rtx gen_reduc_splus_v8sf (rtx, rtx);
extern rtx gen_reduc_splus_v4sf (rtx, rtx);
extern rtx gen_reduc_splus_v4df (rtx, rtx);
extern rtx gen_reduc_splus_v2df (rtx, rtx);
extern rtx gen_reduc_smax_v4sf (rtx, rtx);
extern rtx gen_reduc_smin_v4sf (rtx, rtx);
extern rtx gen_vcondv4sf (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_vcondv2df (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_vcondv8sf (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_vcondv4df (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_andv8sf3 (rtx, rtx, rtx);
extern rtx gen_iorv8sf3 (rtx, rtx, rtx);
extern rtx gen_xorv8sf3 (rtx, rtx, rtx);
extern rtx gen_andv4df3 (rtx, rtx, rtx);
extern rtx gen_iorv4df3 (rtx, rtx, rtx);
extern rtx gen_xorv4df3 (rtx, rtx, rtx);
extern rtx gen_andv4sf3 (rtx, rtx, rtx);
extern rtx gen_iorv4sf3 (rtx, rtx, rtx);
extern rtx gen_xorv4sf3 (rtx, rtx, rtx);
extern rtx gen_andv2df3 (rtx, rtx, rtx);
extern rtx gen_iorv2df3 (rtx, rtx, rtx);
extern rtx gen_xorv2df3 (rtx, rtx, rtx);
extern rtx gen_copysignv2df3 (rtx, rtx, rtx);
extern rtx gen_copysignv4sf3 (rtx, rtx, rtx);
extern rtx gen_copysignv4df3 (rtx, rtx, rtx);
extern rtx gen_copysignv8sf3 (rtx, rtx, rtx);
extern rtx gen_fmasf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fmadf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fmav4sf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fmav2df4 (rtx, rtx, rtx, rtx);
extern rtx gen_fmav8sf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fmav4df4 (rtx, rtx, rtx, rtx);
extern rtx gen_fmssf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fmsdf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fmsv4sf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fmsv2df4 (rtx, rtx, rtx, rtx);
extern rtx gen_fmsv8sf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fmsv4df4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmasf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmadf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmav4sf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmav2df4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmav8sf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmav4df4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmssf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmsdf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmsv4sf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmsv2df4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmsv8sf4 (rtx, rtx, rtx, rtx);
extern rtx gen_fnmsv4df4 (rtx, rtx, rtx, rtx);
extern rtx gen_fma4i_fmadd_sf (rtx, rtx, rtx, rtx);
extern rtx gen_fma4i_fmadd_df (rtx, rtx, rtx, rtx);
extern rtx gen_fma4i_fmadd_v4sf (rtx, rtx, rtx, rtx);
extern rtx gen_fma4i_fmadd_v2df (rtx, rtx, rtx, rtx);
extern rtx gen_fma4i_fmadd_v8sf (rtx, rtx, rtx, rtx);
extern rtx gen_fma4i_fmadd_v4df (rtx, rtx, rtx, rtx);
extern rtx gen_fma4i_vmfmadd_v4sf (rtx, rtx, rtx, rtx);
extern rtx gen_fma4i_vmfmadd_v2df (rtx, rtx, rtx, rtx);
extern rtx gen_fmaddsub_v4sf (rtx, rtx, rtx, rtx);
extern rtx gen_fmaddsub_v2df (rtx, rtx, rtx, rtx);
extern rtx gen_fmaddsub_v8sf (rtx, rtx, rtx, rtx);
extern rtx gen_fmaddsub_v4df (rtx, rtx, rtx, rtx);
extern rtx gen_sse2_cvtudq2ps (rtx, rtx);
extern rtx gen_sse2_cvtpd2dq (rtx, rtx);
extern rtx gen_sse2_cvttpd2dq (rtx, rtx);
extern rtx gen_sse2_cvtpd2ps (rtx, rtx);
extern rtx gen_vec_unpacks_hi_v4sf (rtx, rtx);
extern rtx gen_vec_unpacks_hi_v8sf (rtx, rtx);
extern rtx gen_vec_unpacks_lo_v4sf (rtx, rtx);
extern rtx gen_vec_unpacks_lo_v8sf (rtx, rtx);
extern rtx gen_vec_unpacks_float_hi_v8hi (rtx, rtx);
extern rtx gen_vec_unpacks_float_lo_v8hi (rtx, rtx);
extern rtx gen_vec_unpacku_float_hi_v8hi (rtx, rtx);
extern rtx gen_vec_unpacku_float_lo_v8hi (rtx, rtx);
extern rtx gen_vec_unpacks_float_hi_v4si (rtx, rtx);
extern rtx gen_vec_unpacks_float_lo_v4si (rtx, rtx);
extern rtx gen_vec_unpacks_float_hi_v8si (rtx, rtx);
extern rtx gen_vec_unpacks_float_lo_v8si (rtx, rtx);
extern rtx gen_vec_unpacku_float_hi_v4si (rtx, rtx);
extern rtx gen_vec_unpacku_float_lo_v4si (rtx, rtx);
extern rtx gen_vec_pack_trunc_v4df (rtx, rtx, rtx);
extern rtx gen_vec_pack_trunc_v2df (rtx, rtx, rtx);
extern rtx gen_vec_pack_sfix_trunc_v2df (rtx, rtx, rtx);
extern rtx gen_vec_pack_sfix_v2df (rtx, rtx, rtx);
extern rtx gen_sse_movhlps_exp (rtx, rtx, rtx);
extern rtx gen_sse_movlhps_exp (rtx, rtx, rtx);
extern rtx gen_vec_interleave_highv8sf (rtx, rtx, rtx);
extern rtx gen_vec_interleave_lowv8sf (rtx, rtx, rtx);
extern rtx gen_avx_shufps256 (rtx, rtx, rtx, rtx);
extern rtx gen_sse_shufps (rtx, rtx, rtx, rtx);
extern rtx gen_sse_loadhps_exp (rtx, rtx, rtx);
extern rtx gen_sse_loadlps_exp (rtx, rtx, rtx);
extern rtx gen_vec_dupv4sf (rtx, rtx);
extern rtx gen_vec_initv16qi (rtx, rtx);
extern rtx gen_vec_initv8hi (rtx, rtx);
extern rtx gen_vec_initv4si (rtx, rtx);
extern rtx gen_vec_initv2di (rtx, rtx);
extern rtx gen_vec_initv4sf (rtx, rtx);
extern rtx gen_vec_initv2df (rtx, rtx);
extern rtx gen_vec_setv16qi (rtx, rtx, rtx);
extern rtx gen_vec_setv8hi (rtx, rtx, rtx);
extern rtx gen_vec_setv4si (rtx, rtx, rtx);
extern rtx gen_vec_setv2di (rtx, rtx, rtx);
extern rtx gen_vec_setv4sf (rtx, rtx, rtx);
extern rtx gen_vec_setv2df (rtx, rtx, rtx);
extern rtx gen_avx_vextractf128v32qi (rtx, rtx, rtx);
extern rtx gen_avx_vextractf128v16hi (rtx, rtx, rtx);
extern rtx gen_avx_vextractf128v8si (rtx, rtx, rtx);
extern rtx gen_avx_vextractf128v4di (rtx, rtx, rtx);
extern rtx gen_avx_vextractf128v8sf (rtx, rtx, rtx);
extern rtx gen_avx_vextractf128v4df (rtx, rtx, rtx);
extern rtx gen_vec_extractv2di (rtx, rtx, rtx);
extern rtx gen_vec_extractv4si (rtx, rtx, rtx);
extern rtx gen_vec_extractv8hi (rtx, rtx, rtx);
extern rtx gen_vec_extractv16qi (rtx, rtx, rtx);
extern rtx gen_vec_extractv2df (rtx, rtx, rtx);
extern rtx gen_vec_extractv4sf (rtx, rtx, rtx);
extern rtx gen_vec_extractv4df (rtx, rtx, rtx);
extern rtx gen_vec_extractv8sf (rtx, rtx, rtx);
extern rtx gen_vec_interleave_highv4df (rtx, rtx, rtx);
extern rtx gen_vec_interleave_highv2df (rtx, rtx, rtx);
extern rtx gen_avx_movddup256 (rtx, rtx);
extern rtx gen_avx_unpcklpd256 (rtx, rtx, rtx);
extern rtx gen_vec_interleave_lowv4df (rtx, rtx, rtx);
extern rtx gen_vec_interleave_lowv2df (rtx, rtx, rtx);
extern rtx gen_avx_shufpd256 (rtx, rtx, rtx, rtx);
extern rtx gen_sse2_shufpd (rtx, rtx, rtx, rtx);
extern rtx gen_vec_extract_evenv4sf (rtx, rtx, rtx);
extern rtx gen_vec_extract_evenv2df (rtx, rtx, rtx);
extern rtx gen_vec_extract_evenv2di (rtx, rtx, rtx);
extern rtx gen_vec_extract_evenv4si (rtx, rtx, rtx);
extern rtx gen_vec_extract_evenv8hi (rtx, rtx, rtx);
extern rtx gen_vec_extract_evenv16qi (rtx, rtx, rtx);
extern rtx gen_vec_extract_evenv4df (rtx, rtx, rtx);
extern rtx gen_vec_extract_evenv8sf (rtx, rtx, rtx);
extern rtx gen_vec_extract_oddv4sf (rtx, rtx, rtx);
extern rtx gen_vec_extract_oddv2df (rtx, rtx, rtx);
extern rtx gen_vec_extract_oddv2di (rtx, rtx, rtx);
extern rtx gen_vec_extract_oddv4si (rtx, rtx, rtx);
extern rtx gen_vec_extract_oddv8hi (rtx, rtx, rtx);
extern rtx gen_vec_extract_oddv16qi (rtx, rtx, rtx);
extern rtx gen_vec_extract_oddv4df (rtx, rtx, rtx);
extern rtx gen_vec_extract_oddv8sf (rtx, rtx, rtx);
extern rtx gen_sse2_loadhpd_exp (rtx, rtx, rtx);
extern rtx gen_sse2_loadlpd_exp (rtx, rtx, rtx);
extern rtx gen_vec_dupv2df (rtx, rtx);
extern rtx gen_negv16qi2 (rtx, rtx);
extern rtx gen_negv8hi2 (rtx, rtx);
extern rtx gen_negv4si2 (rtx, rtx);
extern rtx gen_negv2di2 (rtx, rtx);
extern rtx gen_addv16qi3 (rtx, rtx, rtx);
extern rtx gen_subv16qi3 (rtx, rtx, rtx);
extern rtx gen_addv8hi3 (rtx, rtx, rtx);
extern rtx gen_subv8hi3 (rtx, rtx, rtx);
extern rtx gen_addv4si3 (rtx, rtx, rtx);
extern rtx gen_subv4si3 (rtx, rtx, rtx);
extern rtx gen_addv2di3 (rtx, rtx, rtx);
extern rtx gen_subv2di3 (rtx, rtx, rtx);
extern rtx gen_sse2_ssaddv16qi3 (rtx, rtx, rtx);
extern rtx gen_sse2_usaddv16qi3 (rtx, rtx, rtx);
extern rtx gen_sse2_sssubv16qi3 (rtx, rtx, rtx);
extern rtx gen_sse2_ussubv16qi3 (rtx, rtx, rtx);
extern rtx gen_sse2_ssaddv8hi3 (rtx, rtx, rtx);
extern rtx gen_sse2_usaddv8hi3 (rtx, rtx, rtx);
extern rtx gen_sse2_sssubv8hi3 (rtx, rtx, rtx);
extern rtx gen_sse2_ussubv8hi3 (rtx, rtx, rtx);
extern rtx gen_mulv8hi3 (rtx, rtx, rtx);
extern rtx gen_smulv8hi3_highpart (rtx, rtx, rtx);
extern rtx gen_umulv8hi3_highpart (rtx, rtx, rtx);
extern rtx gen_sse2_umulv2siv2di3 (rtx, rtx, rtx);
extern rtx gen_sse4_1_mulv2siv2di3 (rtx, rtx, rtx);
extern rtx gen_sse2_pmaddwd (rtx, rtx, rtx);
extern rtx gen_mulv4si3 (rtx, rtx, rtx);
extern rtx gen_vec_widen_smult_hi_v8hi (rtx, rtx, rtx);
extern rtx gen_vec_widen_smult_lo_v8hi (rtx, rtx, rtx);
extern rtx gen_vec_widen_umult_hi_v8hi (rtx, rtx, rtx);
extern rtx gen_vec_widen_umult_lo_v8hi (rtx, rtx, rtx);
extern rtx gen_vec_widen_smult_hi_v4si (rtx, rtx, rtx);
extern rtx gen_vec_widen_smult_lo_v4si (rtx, rtx, rtx);
extern rtx gen_vec_widen_umult_hi_v4si (rtx, rtx, rtx);
extern rtx gen_vec_widen_umult_lo_v4si (rtx, rtx, rtx);
extern rtx gen_sdot_prodv8hi (rtx, rtx, rtx, rtx);
extern rtx gen_udot_prodv4si (rtx, rtx, rtx, rtx);
extern rtx gen_vec_shl_v16qi (rtx, rtx, rtx);
extern rtx gen_vec_shl_v8hi (rtx, rtx, rtx);
extern rtx gen_vec_shl_v4si (rtx, rtx, rtx);
extern rtx gen_vec_shl_v2di (rtx, rtx, rtx);
extern rtx gen_vec_shr_v16qi (rtx, rtx, rtx);
extern rtx gen_vec_shr_v8hi (rtx, rtx, rtx);
extern rtx gen_vec_shr_v4si (rtx, rtx, rtx);
extern rtx gen_vec_shr_v2di (rtx, rtx, rtx);
extern rtx gen_umaxv16qi3 (rtx, rtx, rtx);
extern rtx gen_uminv16qi3 (rtx, rtx, rtx);
extern rtx gen_smaxv8hi3 (rtx, rtx, rtx);
extern rtx gen_sminv8hi3 (rtx, rtx, rtx);
extern rtx gen_umaxv8hi3 (rtx, rtx, rtx);
extern rtx gen_smaxv16qi3 (rtx, rtx, rtx);
extern rtx gen_smaxv4si3 (rtx, rtx, rtx);
extern rtx gen_smaxv2di3 (rtx, rtx, rtx);
extern rtx gen_umaxv4si3 (rtx, rtx, rtx);
extern rtx gen_umaxv2di3 (rtx, rtx, rtx);
extern rtx gen_sminv16qi3 (rtx, rtx, rtx);
extern rtx gen_sminv4si3 (rtx, rtx, rtx);
extern rtx gen_sminv2di3 (rtx, rtx, rtx);
extern rtx gen_uminv8hi3 (rtx, rtx, rtx);
extern rtx gen_uminv4si3 (rtx, rtx, rtx);
extern rtx gen_uminv2di3 (rtx, rtx, rtx);
extern rtx gen_sse2_eqv16qi3 (rtx, rtx, rtx);
extern rtx gen_sse2_eqv8hi3 (rtx, rtx, rtx);
extern rtx gen_sse2_eqv4si3 (rtx, rtx, rtx);
extern rtx gen_sse4_1_eqv2di3 (rtx, rtx, rtx);
extern rtx gen_vcondv16qi (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_vcondv8hi (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_vcondv4si (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_vcondv2di (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_vconduv16qi (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_vconduv8hi (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_vconduv4si (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_vconduv2di (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_one_cmplv16qi2 (rtx, rtx);
extern rtx gen_one_cmplv8hi2 (rtx, rtx);
extern rtx gen_one_cmplv4si2 (rtx, rtx);
extern rtx gen_one_cmplv2di2 (rtx, rtx);
extern rtx gen_andv16qi3 (rtx, rtx, rtx);
extern rtx gen_iorv16qi3 (rtx, rtx, rtx);
extern rtx gen_xorv16qi3 (rtx, rtx, rtx);
extern rtx gen_andv8hi3 (rtx, rtx, rtx);
extern rtx gen_iorv8hi3 (rtx, rtx, rtx);
extern rtx gen_xorv8hi3 (rtx, rtx, rtx);
extern rtx gen_andv4si3 (rtx, rtx, rtx);
extern rtx gen_iorv4si3 (rtx, rtx, rtx);
extern rtx gen_xorv4si3 (rtx, rtx, rtx);
extern rtx gen_andv2di3 (rtx, rtx, rtx);
extern rtx gen_iorv2di3 (rtx, rtx, rtx);
extern rtx gen_xorv2di3 (rtx, rtx, rtx);
extern rtx gen_andtf3 (rtx, rtx, rtx);
extern rtx gen_iortf3 (rtx, rtx, rtx);
extern rtx gen_xortf3 (rtx, rtx, rtx);
extern rtx gen_vec_pack_trunc_v8hi (rtx, rtx, rtx);
extern rtx gen_vec_pack_trunc_v4si (rtx, rtx, rtx);
extern rtx gen_vec_pack_trunc_v2di (rtx, rtx, rtx);
extern rtx gen_sse2_pshufd (rtx, rtx, rtx);
extern rtx gen_sse2_pshuflw (rtx, rtx, rtx);
extern rtx gen_sse2_pshufhw (rtx, rtx, rtx);
extern rtx gen_sse2_loadd (rtx, rtx);
extern rtx gen_sse_storeq (rtx, rtx);
extern rtx gen_vec_unpacku_hi_v16qi (rtx, rtx);
extern rtx gen_vec_unpacks_hi_v16qi (rtx, rtx);
extern rtx gen_vec_unpacku_lo_v16qi (rtx, rtx);
extern rtx gen_vec_unpacks_lo_v16qi (rtx, rtx);
extern rtx gen_vec_unpacku_hi_v8hi (rtx, rtx);
extern rtx gen_vec_unpacks_hi_v8hi (rtx, rtx);
extern rtx gen_vec_unpacku_lo_v8hi (rtx, rtx);
extern rtx gen_vec_unpacks_lo_v8hi (rtx, rtx);
extern rtx gen_vec_unpacku_hi_v4si (rtx, rtx);
extern rtx gen_vec_unpacks_hi_v4si (rtx, rtx);
extern rtx gen_vec_unpacku_lo_v4si (rtx, rtx);
extern rtx gen_vec_unpacks_lo_v4si (rtx, rtx);
extern rtx gen_sse2_uavgv16qi3 (rtx, rtx, rtx);
extern rtx gen_sse2_uavgv8hi3 (rtx, rtx, rtx);
extern rtx gen_sse2_maskmovdqu (rtx, rtx, rtx);
extern rtx gen_sse_sfence (void);
extern rtx gen_sse2_mfence (void);
extern rtx gen_sse2_lfence (void);
extern rtx gen_ssse3_pmulhrswv8hi3 (rtx, rtx, rtx);
extern rtx gen_ssse3_pmulhrswv4hi3 (rtx, rtx, rtx);
extern rtx gen_rotlv16qi3 (rtx, rtx, rtx);
extern rtx gen_rotlv8hi3 (rtx, rtx, rtx);
extern rtx gen_rotlv4si3 (rtx, rtx, rtx);
extern rtx gen_rotlv2di3 (rtx, rtx, rtx);
extern rtx gen_rotrv16qi3 (rtx, rtx, rtx);
extern rtx gen_rotrv8hi3 (rtx, rtx, rtx);
extern rtx gen_rotrv4si3 (rtx, rtx, rtx);
extern rtx gen_rotrv2di3 (rtx, rtx, rtx);
extern rtx gen_vrotrv16qi3 (rtx, rtx, rtx);
extern rtx gen_vrotrv8hi3 (rtx, rtx, rtx);
extern rtx gen_vrotrv4si3 (rtx, rtx, rtx);
extern rtx gen_vrotrv2di3 (rtx, rtx, rtx);
extern rtx gen_vrotlv16qi3 (rtx, rtx, rtx);
extern rtx gen_vrotlv8hi3 (rtx, rtx, rtx);
extern rtx gen_vrotlv4si3 (rtx, rtx, rtx);
extern rtx gen_vrotlv2di3 (rtx, rtx, rtx);
extern rtx gen_vlshrv16qi3 (rtx, rtx, rtx);
extern rtx gen_vlshrv8hi3 (rtx, rtx, rtx);
extern rtx gen_vlshrv4si3 (rtx, rtx, rtx);
extern rtx gen_vashrv16qi3 (rtx, rtx, rtx);
extern rtx gen_vashrv8hi3 (rtx, rtx, rtx);
extern rtx gen_vashrv4si3 (rtx, rtx, rtx);
extern rtx gen_vashlv16qi3 (rtx, rtx, rtx);
extern rtx gen_vashlv8hi3 (rtx, rtx, rtx);
extern rtx gen_vashlv4si3 (rtx, rtx, rtx);
extern rtx gen_ashlv16qi3 (rtx, rtx, rtx);
extern rtx gen_lshlv16qi3 (rtx, rtx, rtx);
extern rtx gen_ashrv16qi3 (rtx, rtx, rtx);
extern rtx gen_ashrv2di3 (rtx, rtx, rtx);
extern rtx gen_xop_vmfrczv4sf2 (rtx, rtx);
extern rtx gen_xop_vmfrczv2df2 (rtx, rtx);
extern rtx gen_avx_vzeroall (void);
extern rtx gen_avx_vpermilv2df (rtx, rtx, rtx);
extern rtx gen_avx_vpermilv4df (rtx, rtx, rtx);
extern rtx gen_avx_vpermilv4sf (rtx, rtx, rtx);
extern rtx gen_avx_vpermilv8sf (rtx, rtx, rtx);
extern rtx gen_avx_vperm2f128v8si3 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_vperm2f128v8sf3 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_vperm2f128v4df3 (rtx, rtx, rtx, rtx);
extern rtx gen_avx_vinsertf128v32qi (rtx, rtx, rtx, rtx);
extern rtx gen_avx_vinsertf128v16hi (rtx, rtx, rtx, rtx);
extern rtx gen_avx_vinsertf128v8si (rtx, rtx, rtx, rtx);
extern rtx gen_avx_vinsertf128v4di (rtx, rtx, rtx, rtx);
extern rtx gen_avx_vinsertf128v8sf (rtx, rtx, rtx, rtx);
extern rtx gen_avx_vinsertf128v4df (rtx, rtx, rtx, rtx);
extern rtx gen_vec_initv32qi (rtx, rtx);
extern rtx gen_vec_initv16hi (rtx, rtx);
extern rtx gen_vec_initv8si (rtx, rtx);
extern rtx gen_vec_initv4di (rtx, rtx);
extern rtx gen_vec_initv8sf (rtx, rtx);
extern rtx gen_vec_initv4df (rtx, rtx);
extern rtx gen_vcvtps2ph (rtx, rtx, rtx);
extern rtx gen_memory_barrier (void);
extern rtx gen_sync_compare_and_swapqi (rtx, rtx, rtx, rtx);
extern rtx gen_sync_compare_and_swaphi (rtx, rtx, rtx, rtx);
extern rtx gen_sync_compare_and_swapsi (rtx, rtx, rtx, rtx);
extern rtx gen_sync_compare_and_swapdi (rtx, rtx, rtx, rtx);
extern rtx gen_sync_compare_and_swapti (rtx, rtx, rtx, rtx);
# 39 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/defaults.h" 1
# 931 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/defaults.h"
       
# 41 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 2
# 29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/hard-reg-set.h" 1
# 42 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/hard-reg-set.h"
typedef unsigned long HARD_REG_ELT_TYPE;
# 53 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/hard-reg-set.h"
typedef HARD_REG_ELT_TYPE HARD_REG_SET[((53 + (8 * 4) - 1) / (8 * 4))];
# 193 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/hard-reg-set.h"
static unsigned char
hard_reg_set_subset_p (const HARD_REG_SET x, const HARD_REG_SET y)
{
  return (x[0] & ~y[0]) == 0 && (x[1] & ~y[1]) == 0;
}

static unsigned char
hard_reg_set_equal_p (const HARD_REG_SET x, const HARD_REG_SET y)
{
  return x[0] == y[0] && x[1] == y[1];
}

static unsigned char
hard_reg_set_intersect_p (const HARD_REG_SET x, const HARD_REG_SET y)
{
  return (x[0] & y[0]) != 0 || (x[1] & y[1]) != 0;
}

static unsigned char
hard_reg_set_empty_p (const HARD_REG_SET x)
{
  return x[0] == 0 && x[1] == 0;
}
# 484 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/hard-reg-set.h"
typedef struct
{

  HARD_REG_ELT_TYPE *pelt;


  unsigned short length;


  unsigned short word_no;




  HARD_REG_ELT_TYPE bits;
} hard_reg_set_iterator;





static void
hard_reg_set_iter_init (hard_reg_set_iterator *iter, HARD_REG_SET set,
                        unsigned min, unsigned *regno)
{

  iter->pelt = set;
  iter->length = ((53 + (8 * 4) - 1) / (8 * 4));




  iter->word_no = min / ((unsigned) (8 * 4));
  if (iter->word_no < iter->length)
    {
      iter->bits = iter->pelt[iter->word_no];
      iter->bits >>= min % ((unsigned) (8 * 4));


      min += !iter->bits;
    }
  *regno = min;
}

static unsigned char
hard_reg_set_iter_set (hard_reg_set_iterator *iter, unsigned *regno)
{
  while (1)
    {

      if (iter->word_no >= iter->length)
        return 0;

      if (iter->bits)
        {

          while (!(iter->bits & 1))
            {
              iter->bits >>= 1;
              *regno += 1;
            }
          return (*regno < 53);
        }


      *regno = (*regno + ((unsigned) (8 * 4)) - 1);
      *regno -= *regno % ((unsigned) (8 * 4));


      while (++iter->word_no < iter->length)
        {
          iter->bits = iter->pelt[iter->word_no];
          if (iter->bits)
            break;
          *regno += ((unsigned) (8 * 4));
        }
    }
}

static void
hard_reg_set_iter_next (hard_reg_set_iterator *iter, unsigned *regno)
{
  iter->bits >>= 1;
  *regno += 1;
}
# 583 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/hard-reg-set.h"
extern char global_regs[53];

struct target_hard_regs {




  char x_fixed_regs[53];


  HARD_REG_SET x_fixed_reg_set;





  char x_call_used_regs[53];

  char x_call_really_used_regs[53];


  HARD_REG_SET x_call_used_reg_set;





  HARD_REG_SET x_call_fixed_reg_set;







  HARD_REG_SET x_regs_invalidated_by_call;



  HARD_REG_SET x_no_caller_save_reg_set;


  int x_reg_alloc_order[53];


  int x_inv_reg_alloc_order[53];


  HARD_REG_SET x_reg_class_contents[((int) LIM_REG_CLASSES)];



  unsigned char x_class_only_fixed_regs[((int) LIM_REG_CLASSES)];


  unsigned int x_reg_class_size[((int) LIM_REG_CLASSES)];


  enum reg_class x_reg_class_subclasses[((int) LIM_REG_CLASSES)][((int) LIM_REG_CLASSES)];



  enum reg_class x_reg_class_subunion[((int) LIM_REG_CLASSES)][((int) LIM_REG_CLASSES)];



  enum reg_class x_reg_class_superunion[((int) LIM_REG_CLASSES)][((int) LIM_REG_CLASSES)];


  const char *x_reg_names[53];
};

extern struct target_hard_regs default_target_hard_regs;
# 699 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/hard-reg-set.h"
extern const char * reg_class_names[];
# 30 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h" 2






struct sequence_stack {

  rtx first;
  rtx last;
  struct sequence_stack *next;
};

struct emit_status {


  int x_reg_rtx_no;


  int x_first_label_num;






  rtx x_first_insn;
  rtx x_last_insn;





  struct sequence_stack *sequence_stack;



  int x_cur_insn_uid;



  int x_cur_debug_insn_uid;



  location_t x_last_location;





  int regno_pointer_align_length;




  unsigned char * regno_pointer_align;
};







extern rtx * regno_reg_rtx;







struct expr_status {


  int x_pending_stack_adjust;
# 123 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h"
  int x_inhibit_defer_pop;





  int x_stack_pointer_delta;




  rtx x_saveregs_value;


  rtx x_apply_args_value;


  rtx x_forced_labels;
};

typedef struct call_site_record_d *call_site_record;
static void VEC_call_site_record_must_be_pointer_type (void) { (void)((call_site_record)1 == (void *)1); } typedef struct VEC_call_site_record_base { unsigned num; unsigned alloc; call_site_record vec[1]; } VEC_call_site_record_base; typedef struct VEC_call_site_record_none { VEC_call_site_record_base base; } VEC_call_site_record_none; static unsigned VEC_call_site_record_base_length (const VEC_call_site_record_base *vec_) { return vec_ ? vec_->num : 0; } static call_site_record VEC_call_site_record_base_last (const VEC_call_site_record_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static call_site_record VEC_call_site_record_base_index (const VEC_call_site_record_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_call_site_record_base_iterate (const VEC_call_site_record_base *vec_, unsigned ix_, call_site_record *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (call_site_record) 0; return 0; } } static size_t VEC_call_site_record_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_call_site_record_base, vec) + alloc_ * sizeof(call_site_record); } static void VEC_call_site_record_base_embedded_init (VEC_call_site_record_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_call_site_record_base_space (VEC_call_site_record_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_call_site_record_base_splice (VEC_call_site_record_base *dst_, VEC_call_site_record_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (call_site_record)); dst_->num += len_; } } static call_site_record *VEC_call_site_record_base_quick_push (VEC_call_site_record_base *vec_, call_site_record obj_ ) { call_site_record *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static call_site_record VEC_call_site_record_base_pop (VEC_call_site_record_base *vec_ ) { call_site_record obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_call_site_record_base_truncate (VEC_call_site_record_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static call_site_record VEC_call_site_record_base_replace (VEC_call_site_record_base *vec_, unsigned ix_, call_site_record obj_ ) { call_site_record old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static call_site_record *VEC_call_site_record_base_quick_insert (VEC_call_site_record_base *vec_, unsigned ix_, call_site_record obj_ ) { call_site_record *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (call_site_record)); *slot_ = obj_; return slot_; } static call_site_record VEC_call_site_record_base_ordered_remove (VEC_call_site_record_base *vec_, unsigned ix_ ) { call_site_record *slot_; call_site_record obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (call_site_record)); return obj_; } static call_site_record VEC_call_site_record_base_unordered_remove (VEC_call_site_record_base *vec_, unsigned ix_ ) { call_site_record *slot_; call_site_record obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_call_site_record_base_block_remove (VEC_call_site_record_base *vec_, unsigned ix_, unsigned len_ ) { call_site_record *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (call_site_record)); } static call_site_record *VEC_call_site_record_base_address (VEC_call_site_record_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_call_site_record_base_lower_bound (VEC_call_site_record_base *vec_, const call_site_record obj_, unsigned char (*lessthan_)(const call_site_record, const call_site_record) ) { unsigned int len_ = VEC_call_site_record_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { call_site_record middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_call_site_record_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_call_site_record_gc { VEC_call_site_record_base base; } VEC_call_site_record_gc; static VEC_call_site_record_gc *VEC_call_site_record_gc_alloc (int alloc_ ) { return (VEC_call_site_record_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_call_site_record_gc_free (VEC_call_site_record_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_call_site_record_gc *VEC_call_site_record_gc_copy (VEC_call_site_record_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_call_site_record_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_call_site_record_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (call_site_record) * len_); } return new_vec_; } static int VEC_call_site_record_gc_reserve (VEC_call_site_record_gc **vec_, int alloc_ ) { int extend = !VEC_call_site_record_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_call_site_record_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_call_site_record_gc_reserve_exact (VEC_call_site_record_gc **vec_, int alloc_ ) { int extend = !VEC_call_site_record_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_call_site_record_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_call_site_record_gc_safe_grow (VEC_call_site_record_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_call_site_record_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_call_site_record_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_call_site_record_gc_safe_grow_cleared (VEC_call_site_record_gc **vec_, int size_ ) { int oldsize = VEC_call_site_record_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_call_site_record_gc_safe_grow (vec_, size_ ); memset (&(VEC_call_site_record_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (call_site_record) * (size_ - oldsize)); } static void VEC_call_site_record_gc_safe_splice (VEC_call_site_record_gc **dst_, VEC_call_site_record_base *src_ ) { if (src_) { VEC_call_site_record_gc_reserve_exact (dst_, src_->num ); VEC_call_site_record_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static call_site_record *VEC_call_site_record_gc_safe_push (VEC_call_site_record_gc **vec_, call_site_record obj_ ) { VEC_call_site_record_gc_reserve (vec_, 1 ); return VEC_call_site_record_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static call_site_record *VEC_call_site_record_gc_safe_insert (VEC_call_site_record_gc **vec_, unsigned ix_, call_site_record obj_ ) { VEC_call_site_record_gc_reserve (vec_, 1 ); return VEC_call_site_record_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;


struct rtl_eh {
  rtx ehr_stackadj;
  rtx ehr_handler;
  rtx ehr_label;

  rtx sjlj_fc;
  rtx sjlj_exit_after;

  VEC_uchar_gc *action_record_data;

  VEC_call_site_record_gc *call_site_record[2];
};
# 168 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h"
struct gimple_df;
struct temp_slot;
typedef struct temp_slot *temp_slot_p;
struct call_site_record_d;

static void VEC_temp_slot_p_must_be_pointer_type (void) { (void)((temp_slot_p)1 == (void *)1); } typedef struct VEC_temp_slot_p_base { unsigned num; unsigned alloc; temp_slot_p vec[1]; } VEC_temp_slot_p_base; typedef struct VEC_temp_slot_p_none { VEC_temp_slot_p_base base; } VEC_temp_slot_p_none; static unsigned VEC_temp_slot_p_base_length (const VEC_temp_slot_p_base *vec_) { return vec_ ? vec_->num : 0; } static temp_slot_p VEC_temp_slot_p_base_last (const VEC_temp_slot_p_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static temp_slot_p VEC_temp_slot_p_base_index (const VEC_temp_slot_p_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_temp_slot_p_base_iterate (const VEC_temp_slot_p_base *vec_, unsigned ix_, temp_slot_p *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (temp_slot_p) 0; return 0; } } static size_t VEC_temp_slot_p_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_temp_slot_p_base, vec) + alloc_ * sizeof(temp_slot_p); } static void VEC_temp_slot_p_base_embedded_init (VEC_temp_slot_p_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_temp_slot_p_base_space (VEC_temp_slot_p_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_temp_slot_p_base_splice (VEC_temp_slot_p_base *dst_, VEC_temp_slot_p_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (temp_slot_p)); dst_->num += len_; } } static temp_slot_p *VEC_temp_slot_p_base_quick_push (VEC_temp_slot_p_base *vec_, temp_slot_p obj_ ) { temp_slot_p *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static temp_slot_p VEC_temp_slot_p_base_pop (VEC_temp_slot_p_base *vec_ ) { temp_slot_p obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_temp_slot_p_base_truncate (VEC_temp_slot_p_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static temp_slot_p VEC_temp_slot_p_base_replace (VEC_temp_slot_p_base *vec_, unsigned ix_, temp_slot_p obj_ ) { temp_slot_p old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static temp_slot_p *VEC_temp_slot_p_base_quick_insert (VEC_temp_slot_p_base *vec_, unsigned ix_, temp_slot_p obj_ ) { temp_slot_p *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (temp_slot_p)); *slot_ = obj_; return slot_; } static temp_slot_p VEC_temp_slot_p_base_ordered_remove (VEC_temp_slot_p_base *vec_, unsigned ix_ ) { temp_slot_p *slot_; temp_slot_p obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (temp_slot_p)); return obj_; } static temp_slot_p VEC_temp_slot_p_base_unordered_remove (VEC_temp_slot_p_base *vec_, unsigned ix_ ) { temp_slot_p *slot_; temp_slot_p obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_temp_slot_p_base_block_remove (VEC_temp_slot_p_base *vec_, unsigned ix_, unsigned len_ ) { temp_slot_p *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (temp_slot_p)); } static temp_slot_p *VEC_temp_slot_p_base_address (VEC_temp_slot_p_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_temp_slot_p_base_lower_bound (VEC_temp_slot_p_base *vec_, const temp_slot_p obj_, unsigned char (*lessthan_)(const temp_slot_p, const temp_slot_p) ) { unsigned int len_ = VEC_temp_slot_p_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { temp_slot_p middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_temp_slot_p_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_temp_slot_p_gc { VEC_temp_slot_p_base base; } VEC_temp_slot_p_gc; static VEC_temp_slot_p_gc *VEC_temp_slot_p_gc_alloc (int alloc_ ) { return (VEC_temp_slot_p_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_temp_slot_p_gc_free (VEC_temp_slot_p_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_temp_slot_p_gc *VEC_temp_slot_p_gc_copy (VEC_temp_slot_p_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_temp_slot_p_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_temp_slot_p_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (temp_slot_p) * len_); } return new_vec_; } static int VEC_temp_slot_p_gc_reserve (VEC_temp_slot_p_gc **vec_, int alloc_ ) { int extend = !VEC_temp_slot_p_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_temp_slot_p_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_temp_slot_p_gc_reserve_exact (VEC_temp_slot_p_gc **vec_, int alloc_ ) { int extend = !VEC_temp_slot_p_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_temp_slot_p_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_temp_slot_p_gc_safe_grow (VEC_temp_slot_p_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_temp_slot_p_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_temp_slot_p_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_temp_slot_p_gc_safe_grow_cleared (VEC_temp_slot_p_gc **vec_, int size_ ) { int oldsize = VEC_temp_slot_p_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_temp_slot_p_gc_safe_grow (vec_, size_ ); memset (&(VEC_temp_slot_p_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (temp_slot_p) * (size_ - oldsize)); } static void VEC_temp_slot_p_gc_safe_splice (VEC_temp_slot_p_gc **dst_, VEC_temp_slot_p_base *src_ ) { if (src_) { VEC_temp_slot_p_gc_reserve_exact (dst_, src_->num ); VEC_temp_slot_p_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static temp_slot_p *VEC_temp_slot_p_gc_safe_push (VEC_temp_slot_p_gc **vec_, temp_slot_p obj_ ) { VEC_temp_slot_p_gc_reserve (vec_, 1 ); return VEC_temp_slot_p_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static temp_slot_p *VEC_temp_slot_p_gc_safe_insert (VEC_temp_slot_p_gc **vec_, unsigned ix_, temp_slot_p obj_ ) { VEC_temp_slot_p_gc_reserve (vec_, 1 ); return VEC_temp_slot_p_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
struct ipa_opt_pass_d;
typedef struct ipa_opt_pass_d *ipa_opt_pass;

static void VEC_ipa_opt_pass_must_be_pointer_type (void) { (void)((ipa_opt_pass)1 == (void *)1); } typedef struct VEC_ipa_opt_pass_base { unsigned num; unsigned alloc; ipa_opt_pass vec[1]; } VEC_ipa_opt_pass_base; typedef struct VEC_ipa_opt_pass_none { VEC_ipa_opt_pass_base base; } VEC_ipa_opt_pass_none; static unsigned VEC_ipa_opt_pass_base_length (const VEC_ipa_opt_pass_base *vec_) { return vec_ ? vec_->num : 0; } static ipa_opt_pass VEC_ipa_opt_pass_base_last (const VEC_ipa_opt_pass_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static ipa_opt_pass VEC_ipa_opt_pass_base_index (const VEC_ipa_opt_pass_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_ipa_opt_pass_base_iterate (const VEC_ipa_opt_pass_base *vec_, unsigned ix_, ipa_opt_pass *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (ipa_opt_pass) 0; return 0; } } static size_t VEC_ipa_opt_pass_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_ipa_opt_pass_base, vec) + alloc_ * sizeof(ipa_opt_pass); } static void VEC_ipa_opt_pass_base_embedded_init (VEC_ipa_opt_pass_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_ipa_opt_pass_base_space (VEC_ipa_opt_pass_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_ipa_opt_pass_base_splice (VEC_ipa_opt_pass_base *dst_, VEC_ipa_opt_pass_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (ipa_opt_pass)); dst_->num += len_; } } static ipa_opt_pass *VEC_ipa_opt_pass_base_quick_push (VEC_ipa_opt_pass_base *vec_, ipa_opt_pass obj_ ) { ipa_opt_pass *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static ipa_opt_pass VEC_ipa_opt_pass_base_pop (VEC_ipa_opt_pass_base *vec_ ) { ipa_opt_pass obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_ipa_opt_pass_base_truncate (VEC_ipa_opt_pass_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static ipa_opt_pass VEC_ipa_opt_pass_base_replace (VEC_ipa_opt_pass_base *vec_, unsigned ix_, ipa_opt_pass obj_ ) { ipa_opt_pass old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static ipa_opt_pass *VEC_ipa_opt_pass_base_quick_insert (VEC_ipa_opt_pass_base *vec_, unsigned ix_, ipa_opt_pass obj_ ) { ipa_opt_pass *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (ipa_opt_pass)); *slot_ = obj_; return slot_; } static ipa_opt_pass VEC_ipa_opt_pass_base_ordered_remove (VEC_ipa_opt_pass_base *vec_, unsigned ix_ ) { ipa_opt_pass *slot_; ipa_opt_pass obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (ipa_opt_pass)); return obj_; } static ipa_opt_pass VEC_ipa_opt_pass_base_unordered_remove (VEC_ipa_opt_pass_base *vec_, unsigned ix_ ) { ipa_opt_pass *slot_; ipa_opt_pass obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_ipa_opt_pass_base_block_remove (VEC_ipa_opt_pass_base *vec_, unsigned ix_, unsigned len_ ) { ipa_opt_pass *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (ipa_opt_pass)); } static ipa_opt_pass *VEC_ipa_opt_pass_base_address (VEC_ipa_opt_pass_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_ipa_opt_pass_base_lower_bound (VEC_ipa_opt_pass_base *vec_, const ipa_opt_pass obj_, unsigned char (*lessthan_)(const ipa_opt_pass, const ipa_opt_pass) ) { unsigned int len_ = VEC_ipa_opt_pass_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { ipa_opt_pass middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_ipa_opt_pass_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_ipa_opt_pass_heap { VEC_ipa_opt_pass_base base; } VEC_ipa_opt_pass_heap; static VEC_ipa_opt_pass_heap *VEC_ipa_opt_pass_heap_alloc (int alloc_ ) { return (VEC_ipa_opt_pass_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_ipa_opt_pass_heap_free (VEC_ipa_opt_pass_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_ipa_opt_pass_heap *VEC_ipa_opt_pass_heap_copy (VEC_ipa_opt_pass_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_ipa_opt_pass_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_ipa_opt_pass_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (ipa_opt_pass) * len_); } return new_vec_; } static int VEC_ipa_opt_pass_heap_reserve (VEC_ipa_opt_pass_heap **vec_, int alloc_ ) { int extend = !VEC_ipa_opt_pass_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_ipa_opt_pass_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_ipa_opt_pass_heap_reserve_exact (VEC_ipa_opt_pass_heap **vec_, int alloc_ ) { int extend = !VEC_ipa_opt_pass_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_ipa_opt_pass_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_ipa_opt_pass_heap_safe_grow (VEC_ipa_opt_pass_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_ipa_opt_pass_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_ipa_opt_pass_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_ipa_opt_pass_heap_safe_grow_cleared (VEC_ipa_opt_pass_heap **vec_, int size_ ) { int oldsize = VEC_ipa_opt_pass_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_ipa_opt_pass_heap_safe_grow (vec_, size_ ); memset (&(VEC_ipa_opt_pass_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (ipa_opt_pass) * (size_ - oldsize)); } static void VEC_ipa_opt_pass_heap_safe_splice (VEC_ipa_opt_pass_heap **dst_, VEC_ipa_opt_pass_base *src_ ) { if (src_) { VEC_ipa_opt_pass_heap_reserve_exact (dst_, src_->num ); VEC_ipa_opt_pass_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static ipa_opt_pass *VEC_ipa_opt_pass_heap_safe_push (VEC_ipa_opt_pass_heap **vec_, ipa_opt_pass obj_ ) { VEC_ipa_opt_pass_heap_reserve (vec_, 1 ); return VEC_ipa_opt_pass_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static ipa_opt_pass *VEC_ipa_opt_pass_heap_safe_insert (VEC_ipa_opt_pass_heap **vec_, unsigned ix_, ipa_opt_pass obj_ ) { VEC_ipa_opt_pass_heap_reserve (vec_, 1 ); return VEC_ipa_opt_pass_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

struct varasm_status {

  struct rtx_constant_pool *pool;



  unsigned int deferred_constants;
};


struct incoming_args {



  int pops_args;




  int size;




  int pretend_args_size;



  rtx arg_offset_rtx;



  CUMULATIVE_ARGS info;


  rtx internal_arg_pointer;
};


struct function_subsections {




  const char *hot_section_label;
  const char *cold_section_label;
  const char *hot_section_end_label;
  const char *cold_section_end_label;
};




struct frame_space
{
  struct frame_space *next;

  long long start;
  long long length;
};


struct rtl_data {
  struct expr_status expr;
  struct emit_status emit;
  struct varasm_status varasm;
  struct incoming_args args;
  struct function_subsections subsections;
  struct rtl_eh eh;





  int outgoing_args_size;





  rtx return_rtx;



  struct initial_value_struct *hard_reg_initial_vals;



  tree stack_protect_guard;



  rtx x_nonlocal_goto_handler_labels;




  rtx x_return_label;




  rtx x_naked_return_label;



  rtx x_stack_slot_list;


  struct frame_space *frame_space_list;


  rtx x_stack_check_probe_note;





  rtx x_arg_pointer_save_area;


  rtx drap_reg;




  long long x_frame_offset;


  rtx x_parm_birth_insn;


  VEC_temp_slot_p_gc *x_used_temp_slots;


  struct temp_slot *x_avail_temp_slots;


  int x_temp_slot_level;



  unsigned int stack_alignment_needed;



  unsigned int preferred_stack_boundary;


  unsigned int parm_stack_boundary;


  unsigned int max_used_stack_slot_alignment;
# 342 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h"
  unsigned int stack_alignment_estimated;





  rtx epilogue_delay_list;



  unsigned char accesses_prior_frames;


  unsigned char calls_eh_return;



  unsigned char saves_all_registers;



  unsigned char has_nonlocal_goto;


  unsigned char has_asm_statement;






  unsigned char all_throwers_are_sibcalls;



  unsigned char limit_stack;


  unsigned char profile;


  unsigned char uses_const_pool;


  unsigned char uses_pic_offset_table;


  unsigned char uses_eh_lsda;


  unsigned char tail_call_emit;


  unsigned char arg_pointer_save_area_init;



  unsigned char frame_pointer_needed;


  unsigned char maybe_hot_insn_p;






  unsigned char stack_realign_needed;




  unsigned char stack_realign_tried;



  unsigned char need_drap;




  unsigned char stack_realign_processed;



  unsigned char stack_realign_finalized;


  unsigned char dbr_scheduled_p;




  unsigned char nothrow;





  HARD_REG_SET asm_clobbers;
};
# 459 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h"
extern struct rtl_data x_rtl;






struct stack_usage
{

  long long static_stack_size;



  long long dynamic_stack_size;



  int pushed_stack_size;


  unsigned int dynamic_alloc_count : 31;



  unsigned int has_unbounded_dynamic_stack_size : 1;
};
# 500 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h"
struct function {
  struct eh_status *eh;


  struct control_flow_graph *cfg;


  struct gimple_seq_d *gimple_body;


  struct gimple_df *gimple_df;


  struct loops *x_current_loops;


  struct stack_usage *su;


  htab_t value_histograms;




  tree decl;



  tree static_chain_decl;




  tree nonlocal_goto_save_area;


  VEC_tree_gc *local_decls;




  struct machine_function * machine;


  struct language_function * language;


  htab_t used_types_hash;


  int last_stmt_uid;


  int funcdef_no;


  location_t function_start_locus;


  location_t function_end_locus;


  unsigned int curr_properties;
  unsigned int last_verified;




  const char * cannot_be_copied_reason;






  unsigned int va_list_gpr_size : 8;



  unsigned int va_list_fpr_size : 8;


  unsigned int calls_setjmp : 1;



  unsigned int calls_alloca : 1;



  unsigned int has_nonlocal_label : 1;




  unsigned int cannot_be_copied_set : 1;


  unsigned int stdarg : 1;
# 607 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h"
  unsigned int dont_save_pending_sizes_p : 1;

  unsigned int after_inlining : 1;
  unsigned int always_inline_functions_inlined : 1;



  unsigned int can_throw_non_call_exceptions : 1;






  unsigned int returns_struct : 1;



  unsigned int returns_pcc_struct : 1;


  unsigned int after_tree_profile : 1;



  unsigned int has_local_explicit_reg_vars : 1;





  unsigned int is_thunk : 1;
};



static void
add_local_decl (struct function *fun, tree d)
{
  (VEC_tree_gc_safe_push(&(fun->local_decls),d ));
}
# 658 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h"
extern struct function *cfun;







extern int virtuals_instantiated;


extern int trampolines_created;

struct types_used_by_vars_entry {
  tree type;
  tree var_decl;
};






extern htab_t
  types_used_by_vars_hash;

hashval_t types_used_by_vars_do_hash (const void*);
int types_used_by_vars_eq (const void *, const void *);
void types_used_by_var_decl_insert (tree type, tree var_decl);



extern VEC_tree_gc *types_used_by_cur_var_decl;



extern void set_cfun (struct function *new_cfun);
extern void push_cfun (struct function *new_cfun);
extern void pop_cfun (void);
extern void instantiate_decl_rtl (rtx x);
# 709 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h"
extern void reorder_blocks (void);


extern void number_blocks (tree);

extern void clear_block_marks (tree);
extern tree blocks_nreverse (tree);




extern long long get_frame_size (void);




extern unsigned char frame_offset_overflow (long long, tree);



extern struct machine_function * (*init_machine_status) (void);


extern void free_after_parsing (struct function *);
extern void free_after_compilation (struct function *);

extern void init_varasm_status (void);






extern rtx get_arg_pointer_save_area (void);


extern const char *current_function_name (void);

extern void do_warn_unused_parameter (tree);

extern unsigned char pass_by_reference (CUMULATIVE_ARGS *, enum machine_mode,
          tree, unsigned char);
extern unsigned char reference_callee_copied (CUMULATIVE_ARGS *, enum machine_mode,
         tree, unsigned char);

extern void used_types_insert (tree);

extern int get_next_funcdef_no (void);


extern unsigned char optimize_function_for_size_p (struct function *);
extern unsigned char optimize_function_for_speed_p (struct function *);
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/hashtab.h" 1
# 29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/vec.h" 1
# 30 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h" 2
# 43 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/splay-tree.h" 1
# 41 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/splay-tree.h"
  typedef unsigned long int libi_uhostptr_t;
  typedef long int libi_shostptr_t;
# 62 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/splay-tree.h"
typedef libi_uhostptr_t splay_tree_key;
typedef libi_uhostptr_t splay_tree_value;


typedef struct splay_tree_node_s *splay_tree_node;



typedef int (*splay_tree_compare_fn) (splay_tree_key, splay_tree_key);



typedef void (*splay_tree_delete_key_fn) (splay_tree_key);



typedef void (*splay_tree_delete_value_fn) (splay_tree_value);


typedef int (*splay_tree_foreach_fn) (splay_tree_node, void*);





typedef void *(*splay_tree_allocate_fn) (int, void *);





typedef void (*splay_tree_deallocate_fn) (void *, void *);


struct splay_tree_node_s {

  splay_tree_key key;


  splay_tree_value value;


  splay_tree_node left;
  splay_tree_node right;
};


struct splay_tree_s {

  splay_tree_node root;


  splay_tree_compare_fn comp;


  splay_tree_delete_key_fn delete_key;


  splay_tree_delete_value_fn delete_value;


  splay_tree_allocate_fn allocate;


  splay_tree_deallocate_fn deallocate;


  void * allocate_data;
};

typedef struct splay_tree_s *splay_tree;

extern splay_tree splay_tree_new (splay_tree_compare_fn,
      splay_tree_delete_key_fn,
      splay_tree_delete_value_fn);
extern splay_tree splay_tree_new_with_allocator (splay_tree_compare_fn,
       splay_tree_delete_key_fn,
       splay_tree_delete_value_fn,
       splay_tree_allocate_fn,
       splay_tree_deallocate_fn,
       void *);
extern splay_tree splay_tree_new_typed_alloc (splay_tree_compare_fn,
           splay_tree_delete_key_fn,
           splay_tree_delete_value_fn,
           splay_tree_allocate_fn,
           splay_tree_allocate_fn,
           splay_tree_deallocate_fn,
           void *);
extern void splay_tree_delete (splay_tree);
extern splay_tree_node splay_tree_insert (splay_tree,
       splay_tree_key,
       splay_tree_value);
extern void splay_tree_remove (splay_tree, splay_tree_key);
extern splay_tree_node splay_tree_lookup (splay_tree, splay_tree_key);
extern splay_tree_node splay_tree_predecessor (splay_tree, splay_tree_key);
extern splay_tree_node splay_tree_successor (splay_tree, splay_tree_key);
extern splay_tree_node splay_tree_max (splay_tree);
extern splay_tree_node splay_tree_min (splay_tree);
extern int splay_tree_foreach (splay_tree, splay_tree_foreach_fn, void*);
extern int splay_tree_compare_ints (splay_tree_key, splay_tree_key);
extern int splay_tree_compare_pointers (splay_tree_key, splay_tree_key);
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cpplib.h" 1
# 31 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cpplib.h"
typedef struct cpp_reader cpp_reader;
typedef struct cpp_buffer cpp_buffer;
typedef struct cpp_options cpp_options;
typedef struct cpp_token cpp_token;
typedef struct cpp_string cpp_string;
typedef struct cpp_hashnode cpp_hashnode;
typedef struct cpp_macro cpp_macro;
typedef struct cpp_callbacks cpp_callbacks;
typedef struct cpp_dir cpp_dir;

struct answer;
struct _cpp_file;
# 143 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cpplib.h"
enum cpp_ttype
{
  CPP_EQ, CPP_NOT, CPP_GREATER, CPP_LESS, CPP_PLUS, CPP_MINUS, CPP_MULT, CPP_DIV, CPP_MOD, CPP_AND, CPP_OR, CPP_XOR, CPP_RSHIFT, CPP_LSHIFT, CPP_COMPL, CPP_AND_AND, CPP_OR_OR, CPP_QUERY, CPP_COLON, CPP_COMMA, CPP_OPEN_PAREN, CPP_CLOSE_PAREN, CPP_EOF, CPP_EQ_EQ, CPP_NOT_EQ, CPP_GREATER_EQ, CPP_LESS_EQ, CPP_PLUS_EQ, CPP_MINUS_EQ, CPP_MULT_EQ, CPP_DIV_EQ, CPP_MOD_EQ, CPP_AND_EQ, CPP_OR_EQ, CPP_XOR_EQ, CPP_RSHIFT_EQ, CPP_LSHIFT_EQ, CPP_HASH, CPP_PASTE, CPP_OPEN_SQUARE, CPP_CLOSE_SQUARE, CPP_OPEN_BRACE, CPP_CLOSE_BRACE, CPP_SEMICOLON, CPP_ELLIPSIS, CPP_PLUS_PLUS, CPP_MINUS_MINUS, CPP_DEREF, CPP_DOT, CPP_SCOPE, CPP_DEREF_STAR, CPP_DOT_STAR, CPP_ATSIGN, CPP_NAME, CPP_AT_NAME, CPP_NUMBER, CPP_CHAR, CPP_WCHAR, CPP_CHAR16, CPP_CHAR32, CPP_OTHER, CPP_STRING, CPP_WSTRING, CPP_STRING16, CPP_STRING32, CPP_UTF8STRING, CPP_OBJC_STRING, CPP_HEADER_NAME, CPP_COMMENT, CPP_MACRO_ARG, CPP_PRAGMA, CPP_PRAGMA_EOL, CPP_PADDING,
  N_TTYPES,


  CPP_LAST_EQ = CPP_LSHIFT,
  CPP_FIRST_DIGRAPH = CPP_HASH,
  CPP_LAST_PUNCTUATOR= CPP_ATSIGN,
  CPP_LAST_CPP_OP = CPP_LESS_EQ
};




enum c_lang {CLK_GNUC89 = 0, CLK_GNUC99, CLK_GNUC1X,
      CLK_STDC89, CLK_STDC94, CLK_STDC99, CLK_STDC1X,
      CLK_GNUCXX, CLK_CXX98, CLK_GNUCXX0X, CLK_CXX0X, CLK_ASM};


struct cpp_string {
  unsigned int len;
  const unsigned char *text;
};
# 185 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cpplib.h"
enum cpp_token_fld_kind {
  CPP_TOKEN_FLD_NODE,
  CPP_TOKEN_FLD_SOURCE,
  CPP_TOKEN_FLD_STR,
  CPP_TOKEN_FLD_ARG_NO,
  CPP_TOKEN_FLD_TOKEN_NO,
  CPP_TOKEN_FLD_PRAGMA,
  CPP_TOKEN_FLD_NONE
};


struct cpp_macro_arg {

  unsigned int arg_no;
};


struct cpp_identifier {

  cpp_hashnode *
   


       node;
};



struct cpp_token {
  source_location src_loc;
enum cpp_ttype type : 8;
  unsigned short flags;

  union cpp_token_u
  {

    struct cpp_identifier node;


    cpp_token * source;


    struct cpp_string str;


    struct cpp_macro_arg macro_arg;



    unsigned int token_no;


    unsigned int pragma;
  } val;
};


extern enum cpp_token_fld_kind cpp_token_val_index (cpp_token *tok);
# 259 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cpplib.h"
typedef unsigned int cppchar_t;
typedef int cppchar_signed_t;


enum cpp_deps_style { DEPS_NONE = 0, DEPS_USER, DEPS_SYSTEM };


enum cpp_normalize_level {

  normalized_KC = 0,

  normalized_C,


  normalized_identifier_C,

  normalized_none
};



struct cpp_options
{

  unsigned int tabstop;


  enum c_lang lang;


  unsigned char cplusplus;


  unsigned char cplusplus_comments;




  unsigned char objc;


  unsigned char discard_comments;



  unsigned char discard_comments_in_macro_exp;


  unsigned char trigraphs;


  unsigned char digraphs;


  unsigned char extended_numbers;


  unsigned char uliterals;


  unsigned char print_include_names;


  unsigned char cpp_warn_deprecated;


  unsigned char warn_comments;



  unsigned char warn_missing_include_dirs;


  unsigned char warn_trigraphs;


  unsigned char warn_multichar;



  unsigned char cpp_warn_traditional;


  unsigned char cpp_warn_long_long;


  unsigned char warn_endif_labels;



  unsigned char warn_num_sign_change;



  unsigned char warn_variadic_macros;



  unsigned char warn_builtin_macro_redefined;



  unsigned char remap;


  unsigned char dollars_in_ident;


  unsigned char extended_identifiers;



  unsigned char warn_dollars;


  unsigned char warn_undef;


  unsigned char warn_unused_macros;


  unsigned char c99;


  unsigned char std;


  unsigned char cpp_pedantic;



  unsigned char preprocessed;


  unsigned char operator_names;


  unsigned char warn_cxx_operator_names;


  unsigned char traditional;


  const char *narrow_charset;


  const char *wide_charset;


  const char *input_charset;



  enum cpp_normalize_level warn_normalize;


  unsigned char warn_invalid_pch;


  unsigned char restore_pch_deps;


  struct
  {

    enum cpp_deps_style style;


    unsigned char missing_files;



    unsigned char phony_targets;


    unsigned char ignore_main_file;



    unsigned char need_preprocessor_output;
  } deps;





  size_t precision, char_precision, int_precision, wchar_precision;


  unsigned char unsigned_char, unsigned_wchar;



  unsigned char bytes_big_endian;


  unsigned char stdc_0_in_system_headers;


  unsigned char directives_only;
};







typedef const char *(*missing_header_cb)(cpp_reader *, const char *header, cpp_dir **);


struct cpp_callbacks
{

  void (*line_change) (cpp_reader *, const cpp_token *, int);





  void (*file_change) (cpp_reader *, const struct line_map *);

  void (*dir_change) (cpp_reader *, const char *);
  void (*include) (cpp_reader *, unsigned int, const unsigned char *,
     const char *, int, const cpp_token **);
  void (*define) (cpp_reader *, unsigned int, cpp_hashnode *);
  void (*undef) (cpp_reader *, unsigned int, cpp_hashnode *);
  void (*ident) (cpp_reader *, unsigned int, const cpp_string *);
  void (*def_pragma) (cpp_reader *, unsigned int);
  int (*valid_pch) (cpp_reader *, const char *, int);
  void (*read_pch) (cpp_reader *, const char *, int, const char *);
  missing_header_cb missing_header;



  cpp_hashnode * (*macro_to_expand) (cpp_reader *, const cpp_token *);



  unsigned char (*error) (cpp_reader *, int, int, source_location, unsigned int,
   const char *, va_list *)
       ; // __attribute__ ((__format__ (__printf__, 6, 0))) ; // __attribute__ ((__nonnull__ (6)));



  void (*used_define) (cpp_reader *, unsigned int, cpp_hashnode *);
  void (*used_undef) (cpp_reader *, unsigned int, cpp_hashnode *);


  void (*before_define) (cpp_reader *);


  void (*used) (cpp_reader *, source_location, cpp_hashnode *);


  unsigned char (*user_builtin_macro) (cpp_reader *, cpp_hashnode *);
};
# 524 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cpplib.h"
struct cpp_dir
{

  struct cpp_dir *next;


  char *name;
  unsigned int len;



  unsigned char sysp;


  unsigned char user_supplied_p;



  char *canonical_name;



  const char **name_map;





  char *(*construct) (const char *header, cpp_dir *dir);



  ino_t ino;
  dev_t dev;
};
# 585 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cpplib.h"
enum node_type
{
  NT_VOID = 0,
  NT_MACRO,
  NT_ASSERTION
};



enum cpp_builtin_type
{
  BT_SPECLINE = 0,
  BT_DATE,
  BT_FILE,
  BT_BASE_FILE,
  BT_INCLUDE_LEVEL,
  BT_TIME,
  BT_STDC,
  BT_PRAGMA,
  BT_TIMESTAMP,
  BT_COUNTER,
  BT_FIRST_USER,
  BT_LAST_USER = BT_FIRST_USER + 31
};
# 617 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cpplib.h"
enum {
  NTV_MACRO,
  NTV_ANSWER,
  NTV_BUILTIN,
  NTV_ARGUMENT,
  NTV_NONE
};
# 636 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cpplib.h"
union _cpp_hashnode_value {

  cpp_macro * macro;

  struct answer * answers;

  enum cpp_builtin_type builtin;

  unsigned short arg_index;
};

struct cpp_hashnode {
  struct ht_identifier ident;
  unsigned int is_directive : 1;
  unsigned int directive_index : 7;


  unsigned char rid_code;
enum node_type type : 6;
  unsigned int flags : 10;

  union _cpp_hashnode_value value;
};







extern cpp_reader *cpp_create_reader (enum c_lang, struct ht *,
          struct line_maps *);



extern void cpp_set_line_map (cpp_reader *, struct line_maps *);



extern void cpp_set_lang (cpp_reader *, enum c_lang);


extern void cpp_set_include_chains (cpp_reader *, cpp_dir *, cpp_dir *, int);






extern cpp_options *cpp_get_options (cpp_reader *);
extern cpp_callbacks *cpp_get_callbacks (cpp_reader *);
extern void cpp_set_callbacks (cpp_reader *, cpp_callbacks *);
extern struct deps *cpp_get_deps (cpp_reader *);






extern const char *cpp_read_main_file (cpp_reader *, const char *);



extern void cpp_init_special_builtins (cpp_reader *);


extern void cpp_init_builtins (cpp_reader *, int);



extern void cpp_post_options (cpp_reader *);


extern void cpp_init_iconv (cpp_reader *);




extern void cpp_finish (cpp_reader *, FILE *deps_stream);



extern void cpp_destroy (cpp_reader *);

extern unsigned int cpp_token_len (const cpp_token *);
extern unsigned char *cpp_token_as_text (cpp_reader *, const cpp_token *);
extern unsigned char *cpp_spell_token (cpp_reader *, const cpp_token *,
           unsigned char *, unsigned char);
extern void cpp_register_pragma (cpp_reader *, const char *, const char *,
     void (*) (cpp_reader *), unsigned char);
extern void cpp_register_deferred_pragma (cpp_reader *, const char *,
       const char *, unsigned, unsigned char, unsigned char);
extern int cpp_avoid_paste (cpp_reader *, const cpp_token *,
       const cpp_token *);
extern const cpp_token *cpp_get_token (cpp_reader *);
extern const cpp_token *cpp_get_token_with_location (cpp_reader *,
           source_location *);
extern const unsigned char *cpp_macro_definition (cpp_reader *,
        cpp_hashnode *);
extern void _cpp_backup_tokens (cpp_reader *, unsigned int);
extern const cpp_token *cpp_peek_token (cpp_reader *, int);


extern cppchar_t cpp_interpret_charconst (cpp_reader *, const cpp_token *,
       unsigned int *, int *);

extern unsigned char cpp_interpret_string (cpp_reader *,
      const cpp_string *, size_t,
      cpp_string *, enum cpp_ttype);
extern unsigned char cpp_interpret_string_notranslate (cpp_reader *,
           const cpp_string *, size_t,
           cpp_string *, enum cpp_ttype);


extern cppchar_t cpp_host_to_exec_charset (cpp_reader *, cppchar_t);



extern void cpp_define (cpp_reader *, const char *);
extern void cpp_define_formatted (cpp_reader *pfile,
      const char *fmt, ...) ; // __attribute__ ((__format__ (__printf__, 2, 3))) ; // __attribute__ ((__nonnull__ (2)));
extern void cpp_assert (cpp_reader *, const char *);
extern void cpp_undef (cpp_reader *, const char *);
extern void cpp_unassert (cpp_reader *, const char *);


extern void cpp_undef_all (cpp_reader *);

extern cpp_buffer *cpp_push_buffer (cpp_reader *, const unsigned char *,
        size_t, int);
extern int cpp_defined (cpp_reader *, const unsigned char *, int);



typedef unsigned long long cpp_num_part;
typedef struct cpp_num cpp_num;
struct cpp_num
{
  cpp_num_part high;
  cpp_num_part low;
  unsigned char unsignedp;
  unsigned char overflow;
};
# 818 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cpplib.h"
extern unsigned cpp_classify_number (cpp_reader *, const cpp_token *);


extern cpp_num cpp_interpret_integer (cpp_reader *, const cpp_token *,
          unsigned int type);



cpp_num cpp_num_sign_extend (cpp_num, size_t);





enum {

  CPP_DL_WARNING = 0,

  CPP_DL_WARNING_SYSHDR,

  CPP_DL_PEDWARN,

  CPP_DL_ERROR,


  CPP_DL_ICE,

  CPP_DL_NOTE,

  CPP_DL_FATAL
};



enum {
  CPP_W_NONE = 0,
  CPP_W_DEPRECATED,
  CPP_W_COMMENTS,
  CPP_W_MISSING_INCLUDE_DIRS,
  CPP_W_TRIGRAPHS,
  CPP_W_MULTICHAR,
  CPP_W_TRADITIONAL,
  CPP_W_LONG_LONG,
  CPP_W_ENDIF_LABELS,
  CPP_W_NUM_SIGN_CHANGE,
  CPP_W_VARIADIC_MACROS,
  CPP_W_BUILTIN_MACRO_REDEFINED,
  CPP_W_DOLLARS,
  CPP_W_UNDEF,
  CPP_W_UNUSED_MACROS,
  CPP_W_CXX_OPERATOR_NAMES,
  CPP_W_NORMALIZE,
  CPP_W_INVALID_PCH,
  CPP_W_WARNING_DIRECTIVE
};


extern unsigned char cpp_error (cpp_reader *, int, const char *msgid, ...)
  ; // __attribute__ ((__format__ (__printf__, 3, 4))) ; // __attribute__ ((__nonnull__ (3)));
extern unsigned char cpp_warning (cpp_reader *, int, const char *msgid, ...)
  ; // __attribute__ ((__format__ (__printf__, 3, 4))) ; // __attribute__ ((__nonnull__ (3)));
extern unsigned char cpp_pedwarning (cpp_reader *, int, const char *msgid, ...)
  ; // __attribute__ ((__format__ (__printf__, 3, 4))) ; // __attribute__ ((__nonnull__ (3)));
extern unsigned char cpp_warning_syshdr (cpp_reader *, int, const char *msgid, ...)
  ; // __attribute__ ((__format__ (__printf__, 3, 4))) ; // __attribute__ ((__nonnull__ (3)));



extern unsigned char cpp_errno (cpp_reader *, int, const char *msgid);




extern unsigned char cpp_error_with_line (cpp_reader *, int, source_location,
                                 unsigned, const char *msgid, ...)
  ; // __attribute__ ((__format__ (__printf__, 5, 6))) ; // __attribute__ ((__nonnull__ (5)));
extern unsigned char cpp_warning_with_line (cpp_reader *, int, source_location,
                                   unsigned, const char *msgid, ...)
  ; // __attribute__ ((__format__ (__printf__, 5, 6))) ; // __attribute__ ((__nonnull__ (5)));
extern unsigned char cpp_pedwarning_with_line (cpp_reader *, int, source_location,
                                      unsigned, const char *msgid, ...)
  ; // __attribute__ ((__format__ (__printf__, 5, 6))) ; // __attribute__ ((__nonnull__ (5)));
extern unsigned char cpp_warning_with_line_syshdr (cpp_reader *, int, source_location,
                                          unsigned, const char *msgid, ...)
  ; // __attribute__ ((__format__ (__printf__, 5, 6))) ; // __attribute__ ((__nonnull__ (5)));


extern int cpp_ideq (const cpp_token *, const char *);
extern void cpp_output_line (cpp_reader *, FILE *);
extern unsigned char *cpp_output_line_to_string (cpp_reader *,
       const unsigned char *);
extern void cpp_output_token (const cpp_token *, FILE *);
extern const char *cpp_type2name (enum cpp_ttype, unsigned char flags);





extern cppchar_t cpp_parse_escape (cpp_reader *, const unsigned char ** pstr,
       const unsigned char *limit, int wide);




typedef struct
{

  char *comment;


  source_location sloc;
} cpp_comment;



typedef struct
{

  cpp_comment *entries;


  int count;


  int allocated;
} cpp_comment_table;



extern cpp_comment_table *cpp_get_comments (cpp_reader *);





extern cpp_hashnode *cpp_lookup (cpp_reader *, const unsigned char *,
     unsigned int);

typedef int (*cpp_cb) (cpp_reader *, cpp_hashnode *, void *);
extern void cpp_forall_identifiers (cpp_reader *, cpp_cb, void *);


extern void cpp_scan_nooutput (cpp_reader *);
extern int cpp_sys_macro_p (cpp_reader *);
extern unsigned char *cpp_quote_string (unsigned char *, const unsigned char *,
     unsigned int);


extern unsigned char cpp_included (cpp_reader *, const char *);
extern unsigned char cpp_included_before (cpp_reader *, const char *, source_location);
extern void cpp_make_system_header (cpp_reader *, int, int);
extern unsigned char cpp_push_include (cpp_reader *, const char *);
extern void cpp_change_file (cpp_reader *, enum lc_reason, const char *);
extern const char *cpp_get_path (struct _cpp_file *);
extern cpp_dir *cpp_get_dir (struct _cpp_file *);
extern cpp_buffer *cpp_get_buffer (cpp_reader *);
extern struct _cpp_file *cpp_get_file (cpp_buffer *);
extern cpp_buffer *cpp_get_prev (cpp_buffer *);
extern void cpp_clear_file_cache (cpp_reader *);


struct save_macro_data;
extern int cpp_save_state (cpp_reader *, FILE *);
extern int cpp_write_pch_deps (cpp_reader *, FILE *);
extern int cpp_write_pch_state (cpp_reader *, FILE *);
extern int cpp_valid_state (cpp_reader *, const char *, int);
extern void cpp_prepare_state (cpp_reader *, struct save_macro_data **);
extern int cpp_read_state (cpp_reader *, const char *, FILE *,
      struct save_macro_data *);
# 27 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h" 2
# 43 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic-core.h" 1
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic-core.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/bversion.h" 1
# 29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic-core.h" 2


typedef enum
{

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic.def" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic.def"
DK_UNSPECIFIED,




DK_IGNORED,


DK_FATAL,
DK_ICE,
DK_ERROR,
DK_SORRY,
DK_WARNING,
DK_ANACHRONISM,
DK_NOTE,
DK_DEBUG,


DK_PEDWARN,
DK_PERMERROR,
# 35 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic-core.h" 2

  DK_LAST_DIAGNOSTIC_KIND,


  DK_POP
} diagnostic_t;

extern const char *progname;

extern const char *trim_filename (const char *);
# 59 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic-core.h"
extern void internal_error (const char *, ...) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 1, 2))) ; // __attribute__ ((__nonnull__ (1)))
     ; // __attribute__ ((__noreturn__));

extern unsigned char warning (int, const char *, ...) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 2, 3))) ; // __attribute__ ((__nonnull__ (2)));
extern unsigned char warning_at (location_t, int, const char *, ...)
    ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 3, 4))) ; // __attribute__ ((__nonnull__ (3)));
extern void error (const char *, ...) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 1, 2))) ; // __attribute__ ((__nonnull__ (1)));
extern void error_n (location_t, int, const char *, const char *, ...)
    ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 3, 5))) ; // __attribute__ ((__nonnull__ (3))) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 4, 5))) ; // __attribute__ ((__nonnull__ (4)));
extern void error_at (location_t, const char *, ...) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 2, 3))) ; // __attribute__ ((__nonnull__ (2)));
extern void fatal_error (const char *, ...) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 1, 2))) ; // __attribute__ ((__nonnull__ (1)))
     ; // __attribute__ ((__noreturn__));

extern unsigned char pedwarn (location_t, int, const char *, ...)
     ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 3, 4))) ; // __attribute__ ((__nonnull__ (3)));
extern unsigned char permerror (location_t, const char *, ...) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 2, 3))) ; // __attribute__ ((__nonnull__ (2)));
extern void sorry (const char *, ...) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 1, 2))) ; // __attribute__ ((__nonnull__ (1)));
extern void inform (location_t, const char *, ...) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 2, 3))) ; // __attribute__ ((__nonnull__ (2)));
extern void inform_n (location_t, int, const char *, const char *, ...)
    ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 3, 5))) ; // __attribute__ ((__nonnull__ (3))) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 4, 5))) ; // __attribute__ ((__nonnull__ (4)));
extern void verbatim (const char *, ...) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 1, 2))) ; // __attribute__ ((__nonnull__ (1)));
extern unsigned char emit_diagnostic (diagnostic_t, location_t, int,
        const char *, ...) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 4, 5))) ; // __attribute__ ((__nonnull__ (4)));
extern unsigned char seen_error (void);




extern void fnotice (FILE *, const char *, ...)
     ; // __attribute__ ((__format__ (__printf__, 2, 3))) ; // __attribute__ ((__nonnull__ (2)));
# 44 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h" 2
# 64 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
enum rid
{


  RID_STATIC = 0,
  RID_UNSIGNED, RID_LONG, RID_CONST, RID_EXTERN,
  RID_REGISTER, RID_TYPEDEF, RID_SHORT, RID_INLINE,
  RID_VOLATILE, RID_SIGNED, RID_AUTO, RID_RESTRICT,


  RID_COMPLEX, RID_THREAD, RID_SAT,


  RID_FRIEND, RID_VIRTUAL, RID_EXPLICIT, RID_EXPORT, RID_MUTABLE,



  RID_IN, RID_OUT, RID_INOUT, RID_BYCOPY, RID_BYREF, RID_ONEWAY,



  RID_GETTER, RID_SETTER,
  RID_READONLY, RID_READWRITE,
  RID_ASSIGN, RID_RETAIN, RID_COPY,
  RID_NONATOMIC,



  RID_IMAGINARY,


  RID_INT, RID_CHAR, RID_FLOAT, RID_DOUBLE, RID_VOID,
  RID_INT128,
  RID_ENUM, RID_STRUCT, RID_UNION, RID_IF, RID_ELSE,
  RID_WHILE, RID_DO, RID_FOR, RID_SWITCH, RID_CASE,
  RID_DEFAULT, RID_BREAK, RID_CONTINUE, RID_RETURN, RID_GOTO,
  RID_SIZEOF,


  RID_ASM, RID_TYPEOF, RID_ALIGNOF, RID_ATTRIBUTE, RID_VA_ARG,
  RID_EXTENSION, RID_IMAGPART, RID_REALPART, RID_LABEL, RID_CHOOSE_EXPR,
  RID_TYPES_COMPATIBLE_P,
  RID_DFLOAT32, RID_DFLOAT64, RID_DFLOAT128,
  RID_FRACT, RID_ACCUM,



  RID_CXX_COMPAT_WARN,


  RID_FUNCTION_NAME, RID_PRETTY_FUNCTION_NAME, RID_C99_FUNCTION_NAME,



  RID_BOOL, RID_WCHAR, RID_CLASS,
  RID_PUBLIC, RID_PRIVATE, RID_PROTECTED,
  RID_TEMPLATE, RID_NULL, RID_CATCH,
  RID_DELETE, RID_FALSE, RID_NAMESPACE,
  RID_NEW, RID_OFFSETOF, RID_OPERATOR,
  RID_THIS, RID_THROW, RID_TRUE,
  RID_TRY, RID_TYPENAME, RID_TYPEID,
  RID_USING, RID_CHAR16, RID_CHAR32,


  RID_CONSTCAST, RID_DYNCAST, RID_REINTCAST, RID_STATCAST,


  RID_HAS_NOTHROW_ASSIGN, RID_HAS_NOTHROW_CONSTRUCTOR,
  RID_HAS_NOTHROW_COPY, RID_HAS_TRIVIAL_ASSIGN,
  RID_HAS_TRIVIAL_CONSTRUCTOR, RID_HAS_TRIVIAL_COPY,
  RID_HAS_TRIVIAL_DESTRUCTOR, RID_HAS_VIRTUAL_DESTRUCTOR,
  RID_IS_ABSTRACT, RID_IS_BASE_OF,
  RID_IS_CONVERTIBLE_TO, RID_IS_CLASS,
  RID_IS_EMPTY, RID_IS_ENUM,
  RID_IS_POD, RID_IS_POLYMORPHIC,
  RID_IS_STD_LAYOUT, RID_IS_TRIVIAL,
  RID_IS_UNION, RID_IS_LITERAL_TYPE,


  RID_CONSTEXPR, RID_DECLTYPE, RID_NOEXCEPT, RID_NULLPTR, RID_STATIC_ASSERT,



  RID_AT_ENCODE, RID_AT_END,
  RID_AT_CLASS, RID_AT_ALIAS, RID_AT_DEFS,
  RID_AT_PRIVATE, RID_AT_PROTECTED, RID_AT_PUBLIC, RID_AT_PACKAGE,
  RID_AT_PROTOCOL, RID_AT_SELECTOR,
  RID_AT_THROW, RID_AT_TRY, RID_AT_CATCH,
  RID_AT_FINALLY, RID_AT_SYNCHRONIZED,
  RID_AT_OPTIONAL, RID_AT_REQUIRED, RID_AT_PROPERTY,
  RID_AT_SYNTHESIZE, RID_AT_DYNAMIC,
  RID_AT_INTERFACE,
  RID_AT_IMPLEMENTATION,





  RID_ADDR_SPACE_0,
  RID_ADDR_SPACE_1,
  RID_ADDR_SPACE_2,
  RID_ADDR_SPACE_3,
  RID_ADDR_SPACE_4,
  RID_ADDR_SPACE_5,
  RID_ADDR_SPACE_6,
  RID_ADDR_SPACE_7,
  RID_ADDR_SPACE_8,
  RID_ADDR_SPACE_9,
  RID_ADDR_SPACE_10,
  RID_ADDR_SPACE_11,
  RID_ADDR_SPACE_12,
  RID_ADDR_SPACE_13,
  RID_ADDR_SPACE_14,
  RID_ADDR_SPACE_15,

  RID_FIRST_ADDR_SPACE = RID_ADDR_SPACE_0,
  RID_LAST_ADDR_SPACE = RID_ADDR_SPACE_15,

  RID_MAX,

  RID_FIRST_MODIFIER = RID_STATIC,
  RID_LAST_MODIFIER = RID_ONEWAY,

  RID_FIRST_CXX0X = RID_CONSTEXPR,
  RID_LAST_CXX0X = RID_STATIC_ASSERT,
  RID_FIRST_AT = RID_AT_ENCODE,
  RID_LAST_AT = RID_AT_IMPLEMENTATION,
  RID_FIRST_PQ = RID_IN,
  RID_LAST_PQ = RID_ONEWAY,
  RID_FIRST_PATTR = RID_GETTER,
  RID_LAST_PATTR = RID_NONATOMIC
};
# 223 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
extern tree *ridpointers;



enum c_tree_index
{
    CTI_CHAR16_TYPE,
    CTI_CHAR32_TYPE,
    CTI_WCHAR_TYPE,
    CTI_UNDERLYING_WCHAR_TYPE,
    CTI_WINT_TYPE,
    CTI_SIGNED_SIZE_TYPE,
    CTI_UNSIGNED_PTRDIFF_TYPE,
    CTI_INTMAX_TYPE,
    CTI_UINTMAX_TYPE,
    CTI_WIDEST_INT_LIT_TYPE,
    CTI_WIDEST_UINT_LIT_TYPE,



    CTI_SIG_ATOMIC_TYPE,
    CTI_INT8_TYPE,
    CTI_INT16_TYPE,
    CTI_INT32_TYPE,
    CTI_INT64_TYPE,
    CTI_UINT8_TYPE,
    CTI_UINT16_TYPE,
    CTI_UINT32_TYPE,
    CTI_UINT64_TYPE,
    CTI_INT_LEAST8_TYPE,
    CTI_INT_LEAST16_TYPE,
    CTI_INT_LEAST32_TYPE,
    CTI_INT_LEAST64_TYPE,
    CTI_UINT_LEAST8_TYPE,
    CTI_UINT_LEAST16_TYPE,
    CTI_UINT_LEAST32_TYPE,
    CTI_UINT_LEAST64_TYPE,
    CTI_INT_FAST8_TYPE,
    CTI_INT_FAST16_TYPE,
    CTI_INT_FAST32_TYPE,
    CTI_INT_FAST64_TYPE,
    CTI_UINT_FAST8_TYPE,
    CTI_UINT_FAST16_TYPE,
    CTI_UINT_FAST32_TYPE,
    CTI_UINT_FAST64_TYPE,
    CTI_INTPTR_TYPE,
    CTI_UINTPTR_TYPE,

    CTI_CHAR_ARRAY_TYPE,
    CTI_CHAR16_ARRAY_TYPE,
    CTI_CHAR32_ARRAY_TYPE,
    CTI_WCHAR_ARRAY_TYPE,
    CTI_INT_ARRAY_TYPE,
    CTI_STRING_TYPE,
    CTI_CONST_STRING_TYPE,


    CTI_TRUTHVALUE_TYPE,
    CTI_TRUTHVALUE_TRUE,
    CTI_TRUTHVALUE_FALSE,

    CTI_DEFAULT_FUNCTION_TYPE,


    CTI_FUNCTION_NAME_DECL,
    CTI_PRETTY_FUNCTION_NAME_DECL,
    CTI_C99_FUNCTION_NAME_DECL,
    CTI_SAVED_FUNCTION_NAME_DECLS,

    CTI_VOID_ZERO,

    CTI_NULL,

    CTI_MAX
};
# 308 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
struct c_common_identifier {
  struct tree_common common;
  struct cpp_hashnode node;
};



struct c_common_resword
{
  const char *const word;
enum rid const rid : 16;
  const unsigned int disable : 16;
};
# 338 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
extern const struct c_common_resword c_common_reswords[];


extern const unsigned int num_c_common_reswords;
# 408 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
extern tree c_global_trees[CTI_MAX];



struct sorted_fields_type {
  int len;
  tree elts[1];
};





typedef enum c_language_kind
{
  clk_c = 0,
  clk_objc = 1,
  clk_cxx = 2,
  clk_objcxx = 3
}
c_language_kind;



extern c_language_kind c_language;





typedef enum ref_operator {

  RO_NULL,

  RO_ARRAY_INDEXING,

  RO_UNARY_STAR,

  RO_ARROW,

  RO_IMPLICIT_CONVERSION
} ref_operator;



struct stmt_tree_s {

  tree x_cur_stmt_list;
# 471 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
  int stmts_are_full_exprs_p;
};

typedef struct stmt_tree_s *stmt_tree;




struct c_language_function {


  struct stmt_tree_s x_stmt_tree;
};
# 495 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
extern void (*lang_post_pch_load) (void);

extern void push_file_scope (void);
extern void pop_file_scope (void);
extern stmt_tree current_stmt_tree (void);
extern tree push_stmt_list (void);
extern tree pop_stmt_list (tree);
extern tree add_stmt (tree);
extern void push_cleanup (tree, tree, unsigned char);
extern tree pushdecl_top_level (tree);
extern tree pushdecl (tree);
extern tree build_modify_expr (location_t, tree, tree, enum tree_code,
          location_t, tree, tree);
extern tree build_indirect_ref (location_t, tree, ref_operator);

extern int c_expand_decl (tree);

extern int field_decl_cmp (const void *, const void *);
extern void resort_sorted_fields (void *, void *, gt_pointer_operator,
      void *);
extern unsigned char has_c_linkage (const_tree decl);





extern char flag_no_line_commands;




extern char flag_no_output;




extern char flag_dump_macros;



extern char flag_dump_includes;



extern unsigned char flag_pch_preprocess;




extern const char *pch_file;




extern int flag_iso;



extern int warn_unknown_pragmas;




extern int warn_format;
# 567 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
extern int flag_cond_mismatch;



extern int flag_isoc94;



extern int flag_isoc99;



extern int flag_isoc1x;



extern int flag_hosted;
# 592 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
extern int print_struct_values;



extern const char *constant_string_class_name;
# 605 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
extern int flag_use_repository;



enum cxx_dialect {

  cxx98,


  cxx0x
};


//extern enum cxx_dialect cxx_dialect;





extern int max_tinst_depth;







extern int c_inhibit_evaluation_warnings;




extern unsigned char done_lexing;
# 655 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
struct visibility_flags
{
  unsigned inpragma : 1;
  unsigned inlines_hidden : 1;
};


extern struct visibility_flags visibility_options;


extern const struct attribute_spec c_common_attribute_table[];
extern const struct attribute_spec c_common_format_attribute_table[];






extern tree (*make_fname_decl) (location_t, tree, int);


extern void c_register_addr_space (const char *str, addr_space_t as);


extern unsigned char in_late_binary_op;
extern const char *c_addr_space_name (addr_space_t as);
extern tree identifier_global_value (tree);
extern void record_builtin_type (enum rid, const char *, tree);
extern tree build_void_list_node (void);
extern void start_fname_decls (void);
extern void finish_fname_decls (void);
extern const char *fname_as_string (int);
extern tree fname_decl (location_t, unsigned, tree);

extern void check_function_arguments (tree, int, tree *, tree);
extern void check_function_arguments_recurse (void (*)
           (void *, tree,
            unsigned long long),
           void *, tree,
           unsigned long long);
extern unsigned char check_builtin_function_arguments (tree, int, tree *);
extern void check_function_format (tree, int, tree *);
extern void set_Wformat (int);
extern tree handle_format_attribute (tree *, tree, tree, int, unsigned char *);
extern tree handle_format_arg_attribute (tree *, tree, tree, int, unsigned char *);
extern unsigned char attribute_takes_identifier_p (const_tree);
extern unsigned char c_common_handle_option (size_t, const char *, int, int, location_t,
        const struct cl_option_handlers *);
extern tree c_common_type_for_mode (enum machine_mode, int);
extern tree c_common_type_for_size (unsigned int, int);
extern tree c_common_fixed_point_type_for_size (unsigned int, unsigned int,
      int, int);
extern tree c_common_unsigned_type (tree);
extern tree c_common_signed_type (tree);
extern tree c_common_signed_or_unsigned_type (int, tree);
extern tree c_build_bitfield_integer_type (unsigned long long, int);
extern unsigned char decl_with_nonnull_addr_p (const_tree);
extern tree c_fully_fold (tree, unsigned char, unsigned char *);
extern tree decl_constant_value_for_optimization (tree);
extern tree c_wrap_maybe_const (tree, unsigned char);
extern tree c_save_expr (tree);
extern tree c_common_truthvalue_conversion (location_t, tree);
extern void c_apply_type_quals_to_decl (int, tree);
extern tree c_sizeof_or_alignof_type (location_t, tree, unsigned char, int);
extern tree c_alignof_expr (location_t, tree);


extern void binary_op_error (location_t, enum tree_code, tree, tree);
extern tree fix_string_type (tree);
extern void constant_expression_warning (tree);
extern void constant_expression_error (tree);
extern unsigned char strict_aliasing_warning (tree, tree, tree);
extern void warnings_for_convert_and_check (tree, tree, tree);
extern tree convert_and_check (tree, tree);
extern void overflow_warning (location_t, tree);
extern void warn_logical_operator (location_t, enum tree_code, tree,
       enum tree_code, tree, enum tree_code, tree);
extern void check_main_parameter_types (tree decl);
extern unsigned char c_determine_visibility (tree);
extern unsigned char same_scalar_type_ignoring_signedness (tree, tree);
extern void mark_valid_location_for_stdc_pragma (unsigned char);
extern unsigned char valid_location_for_stdc_pragma_p (void);
extern void set_float_const_decimal64 (void);
extern void clear_float_const_decimal64 (void);
extern unsigned char float_const_decimal64_p (void);

extern unsigned char keyword_begins_type_specifier (enum rid);
extern unsigned char keyword_is_storage_class_specifier (enum rid);
extern unsigned char keyword_is_type_qualifier (enum rid);
extern unsigned char keyword_is_decl_specifier (enum rid);





extern tree shorten_binary_op (tree result_type, tree op0, tree op1, unsigned char bitwise);




extern tree shorten_compare (tree *, tree *, tree *, enum tree_code *);

extern tree pointer_int_sum (location_t, enum tree_code, tree, tree);


extern tree c_build_qualified_type (tree, int);



extern void c_common_nodes_and_builtins (void);

extern void disable_builtin_function (const char *);

extern void set_compound_literal_name (tree decl);

extern tree build_va_arg (location_t, tree, tree);

extern const unsigned int c_family_lang_mask;
extern unsigned int c_common_option_lang_mask (void);
extern void c_common_initialize_diagnostics (diagnostic_context *);
extern unsigned char c_common_complain_wrong_lang_p (const struct cl_option *);
extern void c_common_init_options_struct (struct gcc_options *);
extern void c_common_init_options (unsigned int, struct cl_decoded_option *);
extern unsigned char c_common_post_options (const char **);
extern unsigned char c_common_init (void);
extern void c_common_finish (void);
extern void c_common_parse_file (void);
extern alias_set_type c_common_get_alias_set (tree);
extern void c_register_builtin_type (tree, const char*);
extern unsigned char c_promoting_integer_type_p (const_tree);
extern int self_promoting_args_p (const_tree);
extern tree strip_pointer_operator (tree);
extern tree strip_pointer_or_array_types (tree);
extern long long c_common_to_target_charset (long long);


extern void c_parse_file (void);

extern void warn_for_omitted_condop (location_t, tree);
# 829 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.h"
extern tree do_case (location_t, tree, tree);
extern tree build_stmt (location_t, enum tree_code, ...);
extern tree build_case_label (location_t, tree, tree, tree);
extern tree build_real_imag_expr (location_t, enum tree_code, tree);




extern tree build_unary_op (location_t, enum tree_code, tree, int);
extern tree build_binary_op (location_t, enum tree_code, tree, tree, int);
extern tree perform_integral_promotions (tree);




extern tree default_conversion (tree);




extern tree common_type (tree, tree);

extern tree decl_constant_value (tree);


extern tree boolean_increment (enum tree_code, tree);

extern int case_compare (splay_tree_key, splay_tree_key);

extern tree c_add_case_label (location_t, splay_tree, tree, tree, tree, tree);

extern void c_do_switch_warnings (splay_tree, location_t, tree, tree);

extern tree build_function_call (location_t, tree, tree);

extern tree build_function_call_vec (location_t, tree,
             VEC_tree_gc *, VEC_tree_gc *);

extern tree resolve_overloaded_builtin (location_t, tree, VEC_tree_gc *);

extern tree finish_label_address_expr (tree, location_t);



extern tree lookup_label (tree);
extern tree lookup_name (tree);
extern unsigned char lvalue_p (const_tree);

extern unsigned char vector_targets_convertible_p (const_tree t1, const_tree t2);
extern unsigned char vector_types_convertible_p (const_tree t1, const_tree t2, unsigned char emit_lax_note);

extern rtx c_expand_expr (tree, rtx, enum machine_mode, int, rtx *);

extern void init_c_lex (void);

extern void c_cpp_builtins (cpp_reader *);
extern void c_cpp_builtins_optimize_pragma (cpp_reader *, tree, tree);
extern unsigned char c_cpp_error (cpp_reader *, int, int, location_t, unsigned int,
    const char *, va_list *)
     ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 6, 0))) ; // __attribute__ ((__nonnull__ (6)));

extern unsigned char parse_optimize_options (tree, unsigned char);



extern int pending_lang_change;



struct c_fileinfo
{
  int time;







  short interface_only;
  short interface_unknown;
};

struct c_fileinfo *get_fileinfo (const char *);
extern void dump_time_statistics (void);

extern unsigned char c_dump_tree (void *, tree);

extern void verify_sequence_points (tree);

extern tree fold_offsetof (tree, tree);




enum lvalue_use {
  lv_assign,
  lv_increment,
  lv_decrement,
  lv_addressof,
  lv_asm
};

extern void readonly_error (tree, enum lvalue_use);
extern void lvalue_error (location_t, enum lvalue_use);
extern void invalid_indirection_error (location_t, tree, ref_operator);

extern int complete_array_type (tree *, tree, unsigned char);

extern tree builtin_type_for_size (int, unsigned char);

extern void c_common_mark_addressable_vec (tree);

extern void warn_array_subscript_with_type_char (tree);
extern void warn_about_parentheses (enum tree_code,
        enum tree_code, tree,
        enum tree_code, tree);
extern void warn_for_unused_label (tree label);
extern void warn_for_div_by_zero (location_t, tree divisor);
extern void warn_for_sign_compare (location_t,
       tree orig_op0, tree orig_op1,
       tree op0, tree op1,
       tree result_type,
       enum tree_code resultcode);
extern void do_warn_double_promotion (tree, tree, tree, const char *,
          location_t);
extern void set_underlying_type (tree x);
extern VEC_tree_gc *make_tree_vector (void);
extern void release_tree_vector (VEC_tree_gc *);
extern VEC_tree_gc *make_tree_vector_single (tree);
extern VEC_tree_gc *make_tree_vector_copy (const VEC_tree_gc *);


extern void c_genericize (tree);
extern int c_gimplify_expr (tree *, gimple_seq *, gimple_seq *);
extern tree c_build_bind_expr (location_t, tree, tree);


extern void pch_init (void);
extern int c_common_valid_pch (cpp_reader *pfile, const char *name, int fd);
extern void c_common_read_pch (cpp_reader *pfile, const char *name, int fd,
          const char *orig);
extern void c_common_write_pch (void);
extern void c_common_no_more_pch (void);
extern void c_common_pch_pragma (cpp_reader *pfile, const char *);
extern void c_common_print_pch_checksum (FILE *f);


extern const unsigned char executable_checksum[16];


extern void builtin_define_std (const char *macro);
extern void builtin_define_with_value (const char *, const char *, int);
extern void c_stddef_cpp_builtins (void);
extern void fe_file_change (const struct line_map *);
extern void c_parse_error (const char *, enum cpp_ttype, tree, unsigned char);


extern void init_pp_output (FILE *);
extern void preprocess_file (cpp_reader *);
extern void pp_file_change (const struct line_map *);
extern void pp_dir_change (cpp_reader *, const char *);
extern unsigned char check_missing_format_attribute (tree, tree);


extern tree c_finish_omp_master (location_t, tree);
extern tree c_finish_omp_critical (location_t, tree, tree);
extern tree c_finish_omp_ordered (location_t, tree);
extern void c_finish_omp_barrier (location_t);
extern tree c_finish_omp_atomic (location_t, enum tree_code, tree, tree);
extern void c_finish_omp_flush (location_t);
extern void c_finish_omp_taskwait (location_t);
extern tree c_finish_omp_for (location_t, tree, tree, tree, tree, tree, tree);
extern void c_split_parallel_clauses (location_t, tree, tree *, tree *);
extern enum omp_clause_default_kind c_omp_predetermined_sharing (tree);


extern unsigned char c_omp_sharing_predetermined (tree);
extern tree c_omp_remap_decl (tree, unsigned char);
extern void record_types_used_by_current_var_decl (tree);
# 44 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/pretty-print.h" 1
# 33 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/pretty-print.h"
typedef struct
{
  const char *format_spec;
  va_list *args_ptr;
  int err_no;
  location_t *locus;
  void **x_data;
} text_info;






typedef enum
{
  DIAGNOSTICS_SHOW_PREFIX_ONCE = 0x0,
  DIAGNOSTICS_SHOW_PREFIX_NEVER = 0x1,
  DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE = 0x2
} diagnostic_prefixing_rule_t;






struct chunk_info
{

  struct chunk_info *prev;







  const char *args[30 * 2];
};



typedef struct
{

  struct obstack formatted_obstack;



  struct obstack chunk_obstack;



  struct obstack *obstack;


  struct chunk_info *cur_chunk_array;


  FILE *stream;


  int line_length;



  char digit_buffer[128];
} output_buffer;


typedef unsigned int pp_flags;

typedef enum
{
  pp_none, pp_before, pp_after
} pp_padding;



typedef struct
{

  diagnostic_prefixing_rule_t rule;



  int line_cutoff;
} pp_wrapping_mode_t;
# 135 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/pretty-print.h"
typedef struct pretty_print_info pretty_printer;
typedef unsigned char (*printer_fn) (pretty_printer *, text_info *, const char *,
       int, unsigned char, unsigned char, unsigned char);
# 159 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/pretty-print.h"
struct pretty_print_info
{

  output_buffer *buffer;


  const char *prefix;


  pp_padding padding;



  int maximum_length;


  int indent_skip;


  pp_wrapping_mode_t wrapping;
# 188 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/pretty-print.h"
  printer_fn format_decoder;


  unsigned char emitted_prefix;


  unsigned char need_newline;



  unsigned char translate_identifiers;
};
# 295 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/pretty-print.h"
extern void pp_construct (pretty_printer *, const char *, int);
extern void pp_base_set_line_maximum_length (pretty_printer *, int);
extern void pp_base_set_prefix (pretty_printer *, const char *);
extern void pp_base_destroy_prefix (pretty_printer *);
extern int pp_base_remaining_character_count_for_line (pretty_printer *);
extern void pp_base_clear_output_area (pretty_printer *);
extern const char *pp_base_formatted_text (pretty_printer *);
extern const char *pp_base_last_position_in_text (const pretty_printer *);
extern void pp_base_emit_prefix (pretty_printer *);
extern void pp_base_append_text (pretty_printer *, const char *, const char *);
# 313 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/pretty-print.h"
extern void pp_printf (pretty_printer *, const char *, ...)
     ; // __attribute__ ((__format__ (__gcc_diag__, 2 ,3))) ; // __attribute__ ((__nonnull__ (2)));

extern void pp_verbatim (pretty_printer *, const char *, ...)
     ; // __attribute__ ((__format__ (__gcc_diag__, 2 ,3))) ; // __attribute__ ((__nonnull__ (2)));
extern void pp_base_flush (pretty_printer *);
extern void pp_base_format (pretty_printer *, text_info *);
extern void pp_base_output_formatted_text (pretty_printer *);
extern void pp_base_format_verbatim (pretty_printer *, text_info *);

extern void pp_base_indent (pretty_printer *);
extern void pp_base_newline (pretty_printer *);
extern void pp_base_character (pretty_printer *, int);
extern void pp_base_string (pretty_printer *, const char *);
extern void pp_write_text_to_stream (pretty_printer *pp);
extern void pp_base_maybe_space (pretty_printer *);


static pp_wrapping_mode_t
pp_set_verbatim_wrapping_ (pretty_printer *pp)
{
  pp_wrapping_mode_t oldmode = (pp)->wrapping;
  (pp)->wrapping.line_cutoff = 0;
  (pp)->wrapping.rule = DIAGNOSTICS_SHOW_PREFIX_NEVER;
  return oldmode;
}


extern const char *identifier_to_locale (const char *);
extern void *(*identifier_to_locale_alloc) (size_t);
extern void (*identifier_to_locale_free) (void *);
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic-core.h" 1
# 27 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic.h" 2




typedef struct diagnostic_info
{
  text_info message;
  location_t location;
  unsigned int override_column;

  void *x_data;

  diagnostic_t kind;

  int option_index;
} diagnostic_info;




typedef struct diagnostic_classification_change_t
{
  location_t location;
  int option;
  diagnostic_t kind;
} diagnostic_classification_change_t;


typedef void (*diagnostic_starter_fn) (diagnostic_context *,
           diagnostic_info *);
typedef diagnostic_starter_fn diagnostic_finalizer_fn;



struct diagnostic_context
{

  pretty_printer *printer;


  int diagnostic_count[DK_LAST_DIAGNOSTIC_KIND];



  unsigned char some_warnings_are_errors;


  unsigned char warning_as_error_requested;



  int n_opts;







  diagnostic_t *classify_diagnostic;






  diagnostic_classification_change_t *classification_history;


  int n_classification_history;


  int *push_list;
  int n_push;



  unsigned char show_option_requested;


  unsigned char abort_on_error;


  unsigned char show_column;


  unsigned char pedantic_errors;


  unsigned char permissive;



  int opt_permissive;


  unsigned char fatal_errors;


  unsigned char dc_inhibit_warnings;


  unsigned char dc_warn_system_headers;


  unsigned int max_errors;
# 141 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic.h"
  diagnostic_starter_fn begin_diagnostic;


  diagnostic_finalizer_fn end_diagnostic;


  void (*internal_error) (diagnostic_context *, const char *, va_list *);



  int (*option_enabled) (int, void *);



  void *option_state;







  char *(*option_name) (diagnostic_context *, int, diagnostic_t, diagnostic_t);


  void *x_data;



  const struct line_map *last_module;

  int lock;

  unsigned char inhibit_notes_p;
};

static void
diagnostic_inhibit_notes (diagnostic_context * context)
{
  context->inhibit_notes_p = 1;
}
# 224 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic.h"
extern diagnostic_context *global_dc;
# 254 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/diagnostic.h"
extern void diagnostic_initialize (diagnostic_context *, int);
extern void diagnostic_finish (diagnostic_context *);
extern void diagnostic_report_current_module (diagnostic_context *);


extern diagnostic_t diagnostic_classify_diagnostic (diagnostic_context *,
          int ,
          diagnostic_t ,
          location_t);
extern void diagnostic_push_diagnostics (diagnostic_context *, location_t);
extern void diagnostic_pop_diagnostics (diagnostic_context *, location_t);
extern unsigned char diagnostic_report_diagnostic (diagnostic_context *,
       diagnostic_info *);

extern void diagnostic_set_info (diagnostic_info *, const char *, va_list *,
     location_t, diagnostic_t) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 2, 0))) ; // __attribute__ ((__nonnull__ (2)));
extern void diagnostic_set_info_translated (diagnostic_info *, const char *,
         va_list *, location_t,
         diagnostic_t)
     ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 2, 0))) ; // __attribute__ ((__nonnull__ (2)));

extern char *diagnostic_build_prefix (diagnostic_context *, diagnostic_info *);
void default_diagnostic_starter (diagnostic_context *, diagnostic_info *);
void default_diagnostic_finalizer (diagnostic_context *, diagnostic_info *);


extern char *file_name_as_prefix (const char *);
# 45 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h" 2

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/name-lookup.h" 1
# 29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/name-lookup.h"
typedef struct binding_table_s *binding_table;
typedef struct binding_entry_s *binding_entry;


typedef void (*bt_foreach_proc) (binding_entry, void *);

struct binding_entry_s {
  binding_entry chain;
  tree name;
  tree type;
};
# 48 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/name-lookup.h"
extern void binding_table_foreach (binding_table, bt_foreach_proc, void *);
extern binding_entry binding_table_find (binding_table, tree);



typedef struct cxx_binding cxx_binding;


typedef struct cp_binding_level cxx_scope;
# 66 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/name-lookup.h"
struct cxx_binding {

  cxx_binding *previous;

  tree value;

  tree type;

  cxx_scope *scope;
  unsigned value_is_inherited : 1;
  unsigned is_local : 1;
};



typedef struct cxx_saved_binding {

  tree identifier;

  cxx_binding *binding;
  tree real_type_value;
} cxx_saved_binding;

typedef struct VEC_cxx_saved_binding_base { unsigned num; unsigned alloc; cxx_saved_binding vec[1]; } VEC_cxx_saved_binding_base; typedef struct VEC_cxx_saved_binding_none { VEC_cxx_saved_binding_base base; } VEC_cxx_saved_binding_none; static unsigned VEC_cxx_saved_binding_base_length (const VEC_cxx_saved_binding_base *vec_) { return vec_ ? vec_->num : 0; } static cxx_saved_binding *VEC_cxx_saved_binding_base_last (VEC_cxx_saved_binding_base *vec_ ) { (void)(vec_ && vec_->num); return &vec_->vec[vec_->num - 1]; } static cxx_saved_binding *VEC_cxx_saved_binding_base_index (VEC_cxx_saved_binding_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return &vec_->vec[ix_]; } static int VEC_cxx_saved_binding_base_iterate (VEC_cxx_saved_binding_base *vec_, unsigned ix_, cxx_saved_binding **ptr) { if (vec_ && ix_ < vec_->num) { *ptr = &vec_->vec[ix_]; return 1; } else { *ptr = 0; return 0; } } static size_t VEC_cxx_saved_binding_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_cxx_saved_binding_base, vec) + alloc_ * sizeof(cxx_saved_binding); } static void VEC_cxx_saved_binding_base_embedded_init (VEC_cxx_saved_binding_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_cxx_saved_binding_base_space (VEC_cxx_saved_binding_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_cxx_saved_binding_base_splice (VEC_cxx_saved_binding_base *dst_, VEC_cxx_saved_binding_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (cxx_saved_binding)); dst_->num += len_; } } static cxx_saved_binding *VEC_cxx_saved_binding_base_quick_push (VEC_cxx_saved_binding_base *vec_, const cxx_saved_binding *obj_ ) { cxx_saved_binding *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; if (obj_) *slot_ = *obj_; return slot_; } static void VEC_cxx_saved_binding_base_pop (VEC_cxx_saved_binding_base *vec_ ) { (void)(vec_->num); --vec_->num; } static void VEC_cxx_saved_binding_base_truncate (VEC_cxx_saved_binding_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static cxx_saved_binding *VEC_cxx_saved_binding_base_replace (VEC_cxx_saved_binding_base *vec_, unsigned ix_, const cxx_saved_binding *obj_ ) { cxx_saved_binding *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; if (obj_) *slot_ = *obj_; return slot_; } static cxx_saved_binding *VEC_cxx_saved_binding_base_quick_insert (VEC_cxx_saved_binding_base *vec_, unsigned ix_, const cxx_saved_binding *obj_ ) { cxx_saved_binding *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (cxx_saved_binding)); if (obj_) *slot_ = *obj_; return slot_; } static void VEC_cxx_saved_binding_base_ordered_remove (VEC_cxx_saved_binding_base *vec_, unsigned ix_ ) { cxx_saved_binding *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (cxx_saved_binding)); } static void VEC_cxx_saved_binding_base_unordered_remove (VEC_cxx_saved_binding_base *vec_, unsigned ix_ ) { (void)(ix_ < vec_->num); vec_->vec[ix_] = vec_->vec[--vec_->num]; } static void VEC_cxx_saved_binding_base_block_remove (VEC_cxx_saved_binding_base *vec_, unsigned ix_, unsigned len_ ) { cxx_saved_binding *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (cxx_saved_binding)); } static cxx_saved_binding *VEC_cxx_saved_binding_base_address (VEC_cxx_saved_binding_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_cxx_saved_binding_base_lower_bound (VEC_cxx_saved_binding_base *vec_, const cxx_saved_binding *obj_, unsigned char (*lessthan_)(const cxx_saved_binding *, const cxx_saved_binding *) ) { unsigned int len_ = VEC_cxx_saved_binding_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { cxx_saved_binding *middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_cxx_saved_binding_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_cxx_saved_binding_gc { VEC_cxx_saved_binding_base base; } VEC_cxx_saved_binding_gc; static VEC_cxx_saved_binding_gc *VEC_cxx_saved_binding_gc_alloc (int alloc_ ) { return (VEC_cxx_saved_binding_gc *) vec_gc_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_cxx_saved_binding_gc, base.vec), sizeof (cxx_saved_binding) ); } static VEC_cxx_saved_binding_gc *VEC_cxx_saved_binding_gc_copy (VEC_cxx_saved_binding_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_cxx_saved_binding_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_cxx_saved_binding_gc *)(vec_gc_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_cxx_saved_binding_gc, base.vec), sizeof (cxx_saved_binding) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (cxx_saved_binding) * len_); } return new_vec_; } static void VEC_cxx_saved_binding_gc_free (VEC_cxx_saved_binding_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static int VEC_cxx_saved_binding_gc_reserve (VEC_cxx_saved_binding_gc **vec_, int alloc_ ) { int extend = !VEC_cxx_saved_binding_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cxx_saved_binding_gc *) vec_gc_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_cxx_saved_binding_gc, base.vec), sizeof (cxx_saved_binding) ); return extend; } static int VEC_cxx_saved_binding_gc_reserve_exact (VEC_cxx_saved_binding_gc **vec_, int alloc_ ) { int extend = !VEC_cxx_saved_binding_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cxx_saved_binding_gc *) vec_gc_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_cxx_saved_binding_gc, base.vec), sizeof (cxx_saved_binding) ); return extend; } static void VEC_cxx_saved_binding_gc_safe_grow (VEC_cxx_saved_binding_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_cxx_saved_binding_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_cxx_saved_binding_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_cxx_saved_binding_gc_safe_grow_cleared (VEC_cxx_saved_binding_gc **vec_, int size_ ) { int oldsize = VEC_cxx_saved_binding_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_cxx_saved_binding_gc_safe_grow (vec_, size_ ); memset (&(VEC_cxx_saved_binding_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (cxx_saved_binding) * (size_ - oldsize)); } static void VEC_cxx_saved_binding_gc_safe_splice (VEC_cxx_saved_binding_gc **dst_, VEC_cxx_saved_binding_base *src_ ) { if (src_) { VEC_cxx_saved_binding_gc_reserve_exact (dst_, src_->num ); VEC_cxx_saved_binding_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static cxx_saved_binding *VEC_cxx_saved_binding_gc_safe_push (VEC_cxx_saved_binding_gc **vec_, const cxx_saved_binding *obj_ ) { VEC_cxx_saved_binding_gc_reserve (vec_, 1 ); return VEC_cxx_saved_binding_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static cxx_saved_binding *VEC_cxx_saved_binding_gc_safe_insert (VEC_cxx_saved_binding_gc **vec_, unsigned ix_, const cxx_saved_binding *obj_ ) { VEC_cxx_saved_binding_gc_reserve (vec_, 1 ); return VEC_cxx_saved_binding_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

extern tree identifier_type_value (tree);
extern void set_identifier_type_value (tree, tree);
extern void pop_binding (tree, tree);
extern tree constructor_name (tree);
extern unsigned char constructor_name_p (tree, tree);


typedef enum scope_kind {
  sk_block = 0,




  sk_cleanup,


  sk_try,
  sk_catch,
  sk_for,

  sk_function_parms,
  sk_class,
  sk_scoped_enum,

  sk_namespace,

  sk_template_parms,
  sk_template_spec,



  sk_omp
} scope_kind;


typedef enum tag_scope {
  ts_current = 0,




  ts_global = 1,


  ts_within_enclosing_non_class = 2



} tag_scope;

typedef struct cp_class_binding {
  cxx_binding base;

  tree identifier;
} cp_class_binding;

typedef struct VEC_cp_class_binding_base { unsigned num; unsigned alloc; cp_class_binding vec[1]; } VEC_cp_class_binding_base; typedef struct VEC_cp_class_binding_none { VEC_cp_class_binding_base base; } VEC_cp_class_binding_none; static unsigned VEC_cp_class_binding_base_length (const VEC_cp_class_binding_base *vec_) { return vec_ ? vec_->num : 0; } static cp_class_binding *VEC_cp_class_binding_base_last (VEC_cp_class_binding_base *vec_ ) { (void)(vec_ && vec_->num); return &vec_->vec[vec_->num - 1]; } static cp_class_binding *VEC_cp_class_binding_base_index (VEC_cp_class_binding_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return &vec_->vec[ix_]; } static int VEC_cp_class_binding_base_iterate (VEC_cp_class_binding_base *vec_, unsigned ix_, cp_class_binding **ptr) { if (vec_ && ix_ < vec_->num) { *ptr = &vec_->vec[ix_]; return 1; } else { *ptr = 0; return 0; } } static size_t VEC_cp_class_binding_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_cp_class_binding_base, vec) + alloc_ * sizeof(cp_class_binding); } static void VEC_cp_class_binding_base_embedded_init (VEC_cp_class_binding_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_cp_class_binding_base_space (VEC_cp_class_binding_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_cp_class_binding_base_splice (VEC_cp_class_binding_base *dst_, VEC_cp_class_binding_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (cp_class_binding)); dst_->num += len_; } } static cp_class_binding *VEC_cp_class_binding_base_quick_push (VEC_cp_class_binding_base *vec_, const cp_class_binding *obj_ ) { cp_class_binding *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; if (obj_) *slot_ = *obj_; return slot_; } static void VEC_cp_class_binding_base_pop (VEC_cp_class_binding_base *vec_ ) { (void)(vec_->num); --vec_->num; } static void VEC_cp_class_binding_base_truncate (VEC_cp_class_binding_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static cp_class_binding *VEC_cp_class_binding_base_replace (VEC_cp_class_binding_base *vec_, unsigned ix_, const cp_class_binding *obj_ ) { cp_class_binding *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; if (obj_) *slot_ = *obj_; return slot_; } static cp_class_binding *VEC_cp_class_binding_base_quick_insert (VEC_cp_class_binding_base *vec_, unsigned ix_, const cp_class_binding *obj_ ) { cp_class_binding *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (cp_class_binding)); if (obj_) *slot_ = *obj_; return slot_; } static void VEC_cp_class_binding_base_ordered_remove (VEC_cp_class_binding_base *vec_, unsigned ix_ ) { cp_class_binding *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (cp_class_binding)); } static void VEC_cp_class_binding_base_unordered_remove (VEC_cp_class_binding_base *vec_, unsigned ix_ ) { (void)(ix_ < vec_->num); vec_->vec[ix_] = vec_->vec[--vec_->num]; } static void VEC_cp_class_binding_base_block_remove (VEC_cp_class_binding_base *vec_, unsigned ix_, unsigned len_ ) { cp_class_binding *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (cp_class_binding)); } static cp_class_binding *VEC_cp_class_binding_base_address (VEC_cp_class_binding_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_cp_class_binding_base_lower_bound (VEC_cp_class_binding_base *vec_, const cp_class_binding *obj_, unsigned char (*lessthan_)(const cp_class_binding *, const cp_class_binding *) ) { unsigned int len_ = VEC_cp_class_binding_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { cp_class_binding *middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_cp_class_binding_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_cp_class_binding_gc { VEC_cp_class_binding_base base; } VEC_cp_class_binding_gc; static VEC_cp_class_binding_gc *VEC_cp_class_binding_gc_alloc (int alloc_ ) { return (VEC_cp_class_binding_gc *) vec_gc_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_cp_class_binding_gc, base.vec), sizeof (cp_class_binding) ); } static VEC_cp_class_binding_gc *VEC_cp_class_binding_gc_copy (VEC_cp_class_binding_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_cp_class_binding_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_cp_class_binding_gc *)(vec_gc_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_cp_class_binding_gc, base.vec), sizeof (cp_class_binding) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (cp_class_binding) * len_); } return new_vec_; } static void VEC_cp_class_binding_gc_free (VEC_cp_class_binding_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static int VEC_cp_class_binding_gc_reserve (VEC_cp_class_binding_gc **vec_, int alloc_ ) { int extend = !VEC_cp_class_binding_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cp_class_binding_gc *) vec_gc_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_cp_class_binding_gc, base.vec), sizeof (cp_class_binding) ); return extend; } static int VEC_cp_class_binding_gc_reserve_exact (VEC_cp_class_binding_gc **vec_, int alloc_ ) { int extend = !VEC_cp_class_binding_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cp_class_binding_gc *) vec_gc_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_cp_class_binding_gc, base.vec), sizeof (cp_class_binding) ); return extend; } static void VEC_cp_class_binding_gc_safe_grow (VEC_cp_class_binding_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_cp_class_binding_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_cp_class_binding_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_cp_class_binding_gc_safe_grow_cleared (VEC_cp_class_binding_gc **vec_, int size_ ) { int oldsize = VEC_cp_class_binding_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_cp_class_binding_gc_safe_grow (vec_, size_ ); memset (&(VEC_cp_class_binding_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (cp_class_binding) * (size_ - oldsize)); } static void VEC_cp_class_binding_gc_safe_splice (VEC_cp_class_binding_gc **dst_, VEC_cp_class_binding_base *src_ ) { if (src_) { VEC_cp_class_binding_gc_reserve_exact (dst_, src_->num ); VEC_cp_class_binding_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static cp_class_binding *VEC_cp_class_binding_gc_safe_push (VEC_cp_class_binding_gc **vec_, const cp_class_binding *obj_ ) { VEC_cp_class_binding_gc_reserve (vec_, 1 ); return VEC_cp_class_binding_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static cp_class_binding *VEC_cp_class_binding_gc_safe_insert (VEC_cp_class_binding_gc **vec_, unsigned ix_, const cp_class_binding *obj_ ) { VEC_cp_class_binding_gc_reserve (vec_, 1 ); return VEC_cp_class_binding_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

typedef struct cp_label_binding {

  tree label;

  tree prev_value;
} cp_label_binding;

typedef struct VEC_cp_label_binding_base { unsigned num; unsigned alloc; cp_label_binding vec[1]; } VEC_cp_label_binding_base; typedef struct VEC_cp_label_binding_none { VEC_cp_label_binding_base base; } VEC_cp_label_binding_none; static unsigned VEC_cp_label_binding_base_length (const VEC_cp_label_binding_base *vec_) { return vec_ ? vec_->num : 0; } static cp_label_binding *VEC_cp_label_binding_base_last (VEC_cp_label_binding_base *vec_ ) { (void)(vec_ && vec_->num); return &vec_->vec[vec_->num - 1]; } static cp_label_binding *VEC_cp_label_binding_base_index (VEC_cp_label_binding_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return &vec_->vec[ix_]; } static int VEC_cp_label_binding_base_iterate (VEC_cp_label_binding_base *vec_, unsigned ix_, cp_label_binding **ptr) { if (vec_ && ix_ < vec_->num) { *ptr = &vec_->vec[ix_]; return 1; } else { *ptr = 0; return 0; } } static size_t VEC_cp_label_binding_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_cp_label_binding_base, vec) + alloc_ * sizeof(cp_label_binding); } static void VEC_cp_label_binding_base_embedded_init (VEC_cp_label_binding_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_cp_label_binding_base_space (VEC_cp_label_binding_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_cp_label_binding_base_splice (VEC_cp_label_binding_base *dst_, VEC_cp_label_binding_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (cp_label_binding)); dst_->num += len_; } } static cp_label_binding *VEC_cp_label_binding_base_quick_push (VEC_cp_label_binding_base *vec_, const cp_label_binding *obj_ ) { cp_label_binding *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; if (obj_) *slot_ = *obj_; return slot_; } static void VEC_cp_label_binding_base_pop (VEC_cp_label_binding_base *vec_ ) { (void)(vec_->num); --vec_->num; } static void VEC_cp_label_binding_base_truncate (VEC_cp_label_binding_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static cp_label_binding *VEC_cp_label_binding_base_replace (VEC_cp_label_binding_base *vec_, unsigned ix_, const cp_label_binding *obj_ ) { cp_label_binding *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; if (obj_) *slot_ = *obj_; return slot_; } static cp_label_binding *VEC_cp_label_binding_base_quick_insert (VEC_cp_label_binding_base *vec_, unsigned ix_, const cp_label_binding *obj_ ) { cp_label_binding *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (cp_label_binding)); if (obj_) *slot_ = *obj_; return slot_; } static void VEC_cp_label_binding_base_ordered_remove (VEC_cp_label_binding_base *vec_, unsigned ix_ ) { cp_label_binding *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (cp_label_binding)); } static void VEC_cp_label_binding_base_unordered_remove (VEC_cp_label_binding_base *vec_, unsigned ix_ ) { (void)(ix_ < vec_->num); vec_->vec[ix_] = vec_->vec[--vec_->num]; } static void VEC_cp_label_binding_base_block_remove (VEC_cp_label_binding_base *vec_, unsigned ix_, unsigned len_ ) { cp_label_binding *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (cp_label_binding)); } static cp_label_binding *VEC_cp_label_binding_base_address (VEC_cp_label_binding_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_cp_label_binding_base_lower_bound (VEC_cp_label_binding_base *vec_, const cp_label_binding *obj_, unsigned char (*lessthan_)(const cp_label_binding *, const cp_label_binding *) ) { unsigned int len_ = VEC_cp_label_binding_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { cp_label_binding *middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_cp_label_binding_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_cp_label_binding_gc { VEC_cp_label_binding_base base; } VEC_cp_label_binding_gc; static VEC_cp_label_binding_gc *VEC_cp_label_binding_gc_alloc (int alloc_ ) { return (VEC_cp_label_binding_gc *) vec_gc_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_cp_label_binding_gc, base.vec), sizeof (cp_label_binding) ); } static VEC_cp_label_binding_gc *VEC_cp_label_binding_gc_copy (VEC_cp_label_binding_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_cp_label_binding_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_cp_label_binding_gc *)(vec_gc_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_cp_label_binding_gc, base.vec), sizeof (cp_label_binding) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (cp_label_binding) * len_); } return new_vec_; } static void VEC_cp_label_binding_gc_free (VEC_cp_label_binding_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static int VEC_cp_label_binding_gc_reserve (VEC_cp_label_binding_gc **vec_, int alloc_ ) { int extend = !VEC_cp_label_binding_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cp_label_binding_gc *) vec_gc_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_cp_label_binding_gc, base.vec), sizeof (cp_label_binding) ); return extend; } static int VEC_cp_label_binding_gc_reserve_exact (VEC_cp_label_binding_gc **vec_, int alloc_ ) { int extend = !VEC_cp_label_binding_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cp_label_binding_gc *) vec_gc_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_cp_label_binding_gc, base.vec), sizeof (cp_label_binding) ); return extend; } static void VEC_cp_label_binding_gc_safe_grow (VEC_cp_label_binding_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_cp_label_binding_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_cp_label_binding_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_cp_label_binding_gc_safe_grow_cleared (VEC_cp_label_binding_gc **vec_, int size_ ) { int oldsize = VEC_cp_label_binding_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_cp_label_binding_gc_safe_grow (vec_, size_ ); memset (&(VEC_cp_label_binding_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (cp_label_binding) * (size_ - oldsize)); } static void VEC_cp_label_binding_gc_safe_splice (VEC_cp_label_binding_gc **dst_, VEC_cp_label_binding_base *src_ ) { if (src_) { VEC_cp_label_binding_gc_reserve_exact (dst_, src_->num ); VEC_cp_label_binding_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static cp_label_binding *VEC_cp_label_binding_gc_safe_push (VEC_cp_label_binding_gc **vec_, const cp_label_binding *obj_ ) { VEC_cp_label_binding_gc_reserve (vec_, 1 ); return VEC_cp_label_binding_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static cp_label_binding *VEC_cp_label_binding_gc_safe_insert (VEC_cp_label_binding_gc **vec_, unsigned ix_, const cp_label_binding *obj_ ) { VEC_cp_label_binding_gc_reserve (vec_, 1 ); return VEC_cp_label_binding_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
# 185 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/name-lookup.h"
struct cp_binding_level {




    tree names;


    size_t names_size;


    tree namespaces;


    VEC_tree_gc *static_decls;


    tree usings;



    tree using_directives;



    VEC_cp_class_binding_gc *class_shadowed;






    tree type_shadowed;



    VEC_cp_label_binding_gc *shadowed_labels;




    tree blocks;



    tree this_entity;


    struct cp_binding_level *level_chain;




    VEC_tree_gc *dead_vars_from_for;



    tree statement_list;


    int binding_depth;




  enum scope_kind kind : 4;



    unsigned int explicit_spec_p : 1;


    unsigned keep : 1;



    unsigned more_cleanups_ok : 1;
    unsigned have_cleanups : 1;


  };
# 279 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/name-lookup.h"
extern tree global_namespace;
extern tree global_scope_name;




extern tree global_type_node;





extern cxx_scope *leave_scope (void);
extern unsigned char kept_level_p (void);
extern int global_bindings_p (void);
extern unsigned char toplevel_bindings_p (void);
extern unsigned char namespace_bindings_p (void);
extern unsigned char template_parm_scope_p (void);
extern scope_kind innermost_scope_kind (void);
extern cxx_scope *begin_scope (scope_kind, tree);
extern void print_binding_stack (void);
extern void push_to_top_level (void);
extern void pop_from_top_level (void);
extern void pop_everything (void);
extern void keep_next_level (unsigned char);
extern unsigned char is_ancestor (tree, tree);
extern tree push_scope (tree);
extern void pop_scope (tree);
extern tree push_inner_scope (tree);
extern void pop_inner_scope (tree, tree);
extern void push_binding_level (struct cp_binding_level *);

extern void push_namespace (tree);
extern void pop_namespace (void);
extern void push_nested_namespace (tree);
extern void pop_nested_namespace (tree);
extern unsigned char handle_namespace_attrs (tree, tree);
extern void pushlevel_class (void);
extern void poplevel_class (void);
extern tree pushdecl_with_scope (tree, cxx_scope *, unsigned char);
extern tree lookup_name_prefer_type (tree, int);
extern tree lookup_name_real (tree, int, int, unsigned char, int, int);
extern tree lookup_type_scope (tree, tag_scope);
extern tree namespace_binding (tree, tree);
extern void set_namespace_binding (tree, tree, tree);
extern unsigned char hidden_name_p (tree);
extern tree remove_hidden_names (tree);
extern tree lookup_qualified_name (tree, tree, unsigned char, unsigned char);
extern tree lookup_name_nonclass (tree);
extern tree lookup_name_innermost_nonclass_level (tree);
extern unsigned char is_local_extern (tree);
extern tree lookup_function_nonclass (tree, VEC_tree_gc *, unsigned char);
extern void push_local_binding (tree, tree, int);
extern unsigned char pushdecl_class_level (tree);
extern tree pushdecl_namespace_level (tree, unsigned char);
extern unsigned char push_class_level_binding (tree, tree);
extern tree getdecls (void);
extern int function_parm_depth (void);
extern tree cp_namespace_decls (tree);
extern void set_decl_namespace (tree, tree, unsigned char);
extern void push_decl_namespace (tree);
extern void pop_decl_namespace (void);
extern void do_namespace_alias (tree, tree);
extern void do_toplevel_using_decl (tree, tree, tree);
extern void do_local_using_decl (tree, tree, tree);
extern tree do_class_using_decl (tree, tree);
extern void do_using_directive (tree);
extern tree lookup_arg_dependent (tree, tree, VEC_tree_gc *, unsigned char);
extern unsigned char is_associated_namespace (tree, tree);
extern void parse_using_directive (tree, tree);
extern tree innermost_non_namespace_value (tree);
extern cxx_binding *outer_binding (tree, cxx_binding *, unsigned char);
extern void cp_emit_debug_info_for_using (tree, tree);




static unsigned char
get_global_value_if_present (tree id, tree *decl)
{
  tree global_value = namespace_binding (id, global_namespace);
  if (global_value)
    *decl = global_value;
  return global_value != ((void *)0);
}



static unsigned char
is_typename_at_global_scope (tree id)
{
  tree global_value = namespace_binding (id, global_namespace);

  return global_value && ((enum tree_code) (global_value)->base.code) == TYPE_DECL;
}
# 47 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h" 2
# 219 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct lang_identifier {
  struct c_common_identifier c_common;
  cxx_binding *namespace_bindings;
  cxx_binding *bindings;
  tree class_template_info;
  tree label_value;
};
# 236 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct template_parm_index_s {
  struct tree_common common;
  int index;
  int level;
  int orig_level;
  int num_siblings;
  tree decl;
};
typedef struct template_parm_index_s template_parm_index;

struct ptrmem_cst {
  struct tree_common common;
  tree member;
};
typedef struct ptrmem_cst * ptrmem_cst_t;
# 321 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct tree_overload {
  struct tree_common common;
  tree function;
};
# 352 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct tree_baselink {
  struct tree_common common;
  tree binfo;
  tree functions;
  tree access_binfo;
};



typedef enum cp_id_kind
{

  CP_ID_KIND_NONE,

  CP_ID_KIND_UNQUALIFIED,

  CP_ID_KIND_UNQUALIFIED_DEPENDENT,

  CP_ID_KIND_TEMPLATE_ID,

  CP_ID_KIND_QUALIFIED
} cp_id_kind;




typedef enum cpp0x_warn_str
{

  CPP0X_INITIALIZER_LISTS,

  CPP0X_EXPLICIT_CONVERSION,

  CPP0X_VARIADIC_TEMPLATES,

  CPP0X_LAMBDA_EXPR,

  CPP0X_AUTO,

  CPP0X_SCOPED_ENUMS,

  CPP0X_DEFAULTED_DELETED,

  CPP0X_INLINE_NAMESPACES
} cpp0x_warn_str;



typedef enum composite_pointer_operation
{

  CPO_COMPARISON,

  CPO_CONVERSION,

  CPO_CONDITIONAL_EXPR
} composite_pointer_operation;


typedef enum expr_list_kind {
  ELK_INIT,
  ELK_MEM_INIT,
  ELK_FUNC_CAST
} expr_list_kind;


typedef enum impl_conv_rhs {
  ICR_DEFAULT_ARGUMENT,
  ICR_CONVERTING,
  ICR_INIT,
  ICR_ARGPASS,
  ICR_RETURN,
  ICR_ASSIGN
} impl_conv_rhs;


typedef enum impl_conv_void {
  ICV_CAST,
  ICV_SECOND_OF_COND,
  ICV_THIRD_OF_COND,
  ICV_RIGHT_OF_COMMA,
  ICV_LEFT_OF_COMMA,
  ICV_STATEMENT,
  ICV_THIRD_IN_FOR
} impl_conv_void;
# 504 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct tree_default_arg {
  struct tree_common common;
  struct cp_token_cache *tokens;
  VEC_tree_gc *instantiations;
};
# 525 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct tree_static_assert {
  struct tree_common common;
  tree condition;
  tree message;
  location_t location;
};

struct tree_argument_pack_select {
  struct tree_common common;
  tree argument_pack;
  int index;
};



typedef enum cp_trait_kind
{
  CPTK_HAS_NOTHROW_ASSIGN,
  CPTK_HAS_NOTHROW_CONSTRUCTOR,
  CPTK_HAS_NOTHROW_COPY,
  CPTK_HAS_TRIVIAL_ASSIGN,
  CPTK_HAS_TRIVIAL_CONSTRUCTOR,
  CPTK_HAS_TRIVIAL_COPY,
  CPTK_HAS_TRIVIAL_DESTRUCTOR,
  CPTK_HAS_VIRTUAL_DESTRUCTOR,
  CPTK_IS_ABSTRACT,
  CPTK_IS_BASE_OF,
  CPTK_IS_CLASS,
  CPTK_IS_CONVERTIBLE_TO,
  CPTK_IS_EMPTY,
  CPTK_IS_ENUM,
  CPTK_IS_POD,
  CPTK_IS_POLYMORPHIC,
  CPTK_IS_STD_LAYOUT,
  CPTK_IS_TRIVIAL,
  CPTK_IS_LITERAL_TYPE,
  CPTK_IS_UNION
} cp_trait_kind;
# 575 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct tree_trait_expr {
  struct tree_common common;
  tree type1;
  tree type2;
  enum cp_trait_kind kind;
};
# 591 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
enum cp_lambda_default_capture_mode_type {
  CPLD_NONE,
  CPLD_COPY,
  CPLD_REFERENCE
};
# 645 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct tree_lambda_expr
{
  struct tree_common common;
  location_t locus;
  enum cp_lambda_default_capture_mode_type default_capture_mode;
  tree capture_list;
  tree this_capture;
  tree return_type;
  tree extra_scope;
  int discriminator;
};
# 671 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct qualified_typedef_usage_s {
  tree typedef_decl;
  tree context;
  location_t locus;
};
typedef struct qualified_typedef_usage_s qualified_typedef_usage_t;
typedef struct VEC_qualified_typedef_usage_t_base { unsigned num; unsigned alloc; qualified_typedef_usage_t vec[1]; } VEC_qualified_typedef_usage_t_base; typedef struct VEC_qualified_typedef_usage_t_none { VEC_qualified_typedef_usage_t_base base; } VEC_qualified_typedef_usage_t_none; static unsigned VEC_qualified_typedef_usage_t_base_length (const VEC_qualified_typedef_usage_t_base *vec_) { return vec_ ? vec_->num : 0; } static qualified_typedef_usage_t *VEC_qualified_typedef_usage_t_base_last (VEC_qualified_typedef_usage_t_base *vec_ ) { (void)(vec_ && vec_->num); return &vec_->vec[vec_->num - 1]; } static qualified_typedef_usage_t *VEC_qualified_typedef_usage_t_base_index (VEC_qualified_typedef_usage_t_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return &vec_->vec[ix_]; } static int VEC_qualified_typedef_usage_t_base_iterate (VEC_qualified_typedef_usage_t_base *vec_, unsigned ix_, qualified_typedef_usage_t **ptr) { if (vec_ && ix_ < vec_->num) { *ptr = &vec_->vec[ix_]; return 1; } else { *ptr = 0; return 0; } } static size_t VEC_qualified_typedef_usage_t_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_qualified_typedef_usage_t_base, vec) + alloc_ * sizeof(qualified_typedef_usage_t); } static void VEC_qualified_typedef_usage_t_base_embedded_init (VEC_qualified_typedef_usage_t_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_qualified_typedef_usage_t_base_space (VEC_qualified_typedef_usage_t_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_qualified_typedef_usage_t_base_splice (VEC_qualified_typedef_usage_t_base *dst_, VEC_qualified_typedef_usage_t_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (qualified_typedef_usage_t)); dst_->num += len_; } } static qualified_typedef_usage_t *VEC_qualified_typedef_usage_t_base_quick_push (VEC_qualified_typedef_usage_t_base *vec_, const qualified_typedef_usage_t *obj_ ) { qualified_typedef_usage_t *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; if (obj_) *slot_ = *obj_; return slot_; } static void VEC_qualified_typedef_usage_t_base_pop (VEC_qualified_typedef_usage_t_base *vec_ ) { (void)(vec_->num); --vec_->num; } static void VEC_qualified_typedef_usage_t_base_truncate (VEC_qualified_typedef_usage_t_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static qualified_typedef_usage_t *VEC_qualified_typedef_usage_t_base_replace (VEC_qualified_typedef_usage_t_base *vec_, unsigned ix_, const qualified_typedef_usage_t *obj_ ) { qualified_typedef_usage_t *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; if (obj_) *slot_ = *obj_; return slot_; } static qualified_typedef_usage_t *VEC_qualified_typedef_usage_t_base_quick_insert (VEC_qualified_typedef_usage_t_base *vec_, unsigned ix_, const qualified_typedef_usage_t *obj_ ) { qualified_typedef_usage_t *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (qualified_typedef_usage_t)); if (obj_) *slot_ = *obj_; return slot_; } static void VEC_qualified_typedef_usage_t_base_ordered_remove (VEC_qualified_typedef_usage_t_base *vec_, unsigned ix_ ) { qualified_typedef_usage_t *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (qualified_typedef_usage_t)); } static void VEC_qualified_typedef_usage_t_base_unordered_remove (VEC_qualified_typedef_usage_t_base *vec_, unsigned ix_ ) { (void)(ix_ < vec_->num); vec_->vec[ix_] = vec_->vec[--vec_->num]; } static void VEC_qualified_typedef_usage_t_base_block_remove (VEC_qualified_typedef_usage_t_base *vec_, unsigned ix_, unsigned len_ ) { qualified_typedef_usage_t *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (qualified_typedef_usage_t)); } static qualified_typedef_usage_t *VEC_qualified_typedef_usage_t_base_address (VEC_qualified_typedef_usage_t_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_qualified_typedef_usage_t_base_lower_bound (VEC_qualified_typedef_usage_t_base *vec_, const qualified_typedef_usage_t *obj_, unsigned char (*lessthan_)(const qualified_typedef_usage_t *, const qualified_typedef_usage_t *) ) { unsigned int len_ = VEC_qualified_typedef_usage_t_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { qualified_typedef_usage_t *middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_qualified_typedef_usage_t_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_qualified_typedef_usage_t_gc { VEC_qualified_typedef_usage_t_base base; } VEC_qualified_typedef_usage_t_gc; static VEC_qualified_typedef_usage_t_gc *VEC_qualified_typedef_usage_t_gc_alloc (int alloc_ ) { return (VEC_qualified_typedef_usage_t_gc *) vec_gc_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_qualified_typedef_usage_t_gc, base.vec), sizeof (qualified_typedef_usage_t) ); } static VEC_qualified_typedef_usage_t_gc *VEC_qualified_typedef_usage_t_gc_copy (VEC_qualified_typedef_usage_t_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_qualified_typedef_usage_t_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_qualified_typedef_usage_t_gc *)(vec_gc_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_qualified_typedef_usage_t_gc, base.vec), sizeof (qualified_typedef_usage_t) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (qualified_typedef_usage_t) * len_); } return new_vec_; } static void VEC_qualified_typedef_usage_t_gc_free (VEC_qualified_typedef_usage_t_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static int VEC_qualified_typedef_usage_t_gc_reserve (VEC_qualified_typedef_usage_t_gc **vec_, int alloc_ ) { int extend = !VEC_qualified_typedef_usage_t_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_qualified_typedef_usage_t_gc *) vec_gc_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_qualified_typedef_usage_t_gc, base.vec), sizeof (qualified_typedef_usage_t) ); return extend; } static int VEC_qualified_typedef_usage_t_gc_reserve_exact (VEC_qualified_typedef_usage_t_gc **vec_, int alloc_ ) { int extend = !VEC_qualified_typedef_usage_t_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_qualified_typedef_usage_t_gc *) vec_gc_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_qualified_typedef_usage_t_gc, base.vec), sizeof (qualified_typedef_usage_t) ); return extend; } static void VEC_qualified_typedef_usage_t_gc_safe_grow (VEC_qualified_typedef_usage_t_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_qualified_typedef_usage_t_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_qualified_typedef_usage_t_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_qualified_typedef_usage_t_gc_safe_grow_cleared (VEC_qualified_typedef_usage_t_gc **vec_, int size_ ) { int oldsize = VEC_qualified_typedef_usage_t_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_qualified_typedef_usage_t_gc_safe_grow (vec_, size_ ); memset (&(VEC_qualified_typedef_usage_t_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (qualified_typedef_usage_t) * (size_ - oldsize)); } static void VEC_qualified_typedef_usage_t_gc_safe_splice (VEC_qualified_typedef_usage_t_gc **dst_, VEC_qualified_typedef_usage_t_base *src_ ) { if (src_) { VEC_qualified_typedef_usage_t_gc_reserve_exact (dst_, src_->num ); VEC_qualified_typedef_usage_t_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static qualified_typedef_usage_t *VEC_qualified_typedef_usage_t_gc_safe_push (VEC_qualified_typedef_usage_t_gc **vec_, const qualified_typedef_usage_t *obj_ ) { VEC_qualified_typedef_usage_t_gc_reserve (vec_, 1 ); return VEC_qualified_typedef_usage_t_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static qualified_typedef_usage_t *VEC_qualified_typedef_usage_t_gc_safe_insert (VEC_qualified_typedef_usage_t_gc **vec_, unsigned ix_, const qualified_typedef_usage_t *obj_ ) { VEC_qualified_typedef_usage_t_gc_reserve (vec_, 1 ); return VEC_qualified_typedef_usage_t_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

struct tree_template_info {
  struct tree_common common;
  VEC_qualified_typedef_usage_t_gc *typedefs_needing_access_checking;
};

enum cp_tree_node_structure_enum {
  TS_CP_GENERIC,
  TS_CP_IDENTIFIER,
  TS_CP_TPI,
  TS_CP_PTRMEM,
  TS_CP_BINDING,
  TS_CP_OVERLOAD,
  TS_CP_BASELINK,
  TS_CP_WRAPPER,
  TS_CP_DEFAULT_ARG,
  TS_CP_STATIC_ASSERT,
  TS_CP_ARGUMENT_PACK_SELECT,
  TS_CP_TRAIT_EXPR,
  TS_CP_LAMBDA_EXPR,
  TS_CP_TEMPLATE_INFO,
  LAST_TS_CP_ENUM
};


union
                                                                         lang_tree_node {
  union tree_node
                                        generic;
  struct template_parm_index_s tpi;
  struct ptrmem_cst ptrmem;
  struct tree_overload overload;
  struct tree_baselink baselink;
  struct tree_default_arg default_arg;
  struct lang_identifier identifier;
  struct tree_static_assert
    static_assertion;
  struct tree_argument_pack_select
    argument_pack_select;
  struct tree_trait_expr
    trait_expression;
  struct tree_lambda_expr
    lambda_expression;
  struct tree_template_info
    template_info;
};


enum cp_tree_index
{
    CPTI_JAVA_BYTE_TYPE,
    CPTI_JAVA_SHORT_TYPE,
    CPTI_JAVA_INT_TYPE,
    CPTI_JAVA_LONG_TYPE,
    CPTI_JAVA_FLOAT_TYPE,
    CPTI_JAVA_DOUBLE_TYPE,
    CPTI_JAVA_CHAR_TYPE,
    CPTI_JAVA_BOOLEAN_TYPE,

    CPTI_WCHAR_DECL,
    CPTI_VTABLE_ENTRY_TYPE,
    CPTI_DELTA_TYPE,
    CPTI_VTABLE_INDEX_TYPE,
    CPTI_CLEANUP_TYPE,
    CPTI_VTT_PARM_TYPE,

    CPTI_CLASS_TYPE,
    CPTI_UNKNOWN_TYPE,
    CPTI_INIT_LIST_TYPE,
    CPTI_VTBL_TYPE,
    CPTI_VTBL_PTR_TYPE,
    CPTI_STD,
    CPTI_ABI,
    CPTI_CONST_TYPE_INFO_TYPE,
    CPTI_TYPE_INFO_PTR_TYPE,
    CPTI_ABORT_FNDECL,
    CPTI_GLOBAL_DELETE_FNDECL,
    CPTI_AGGR_TAG,

    CPTI_CTOR_IDENTIFIER,
    CPTI_COMPLETE_CTOR_IDENTIFIER,
    CPTI_BASE_CTOR_IDENTIFIER,
    CPTI_DTOR_IDENTIFIER,
    CPTI_COMPLETE_DTOR_IDENTIFIER,
    CPTI_BASE_DTOR_IDENTIFIER,
    CPTI_DELETING_DTOR_IDENTIFIER,
    CPTI_DELTA_IDENTIFIER,
    CPTI_IN_CHARGE_IDENTIFIER,
    CPTI_VTT_PARM_IDENTIFIER,
    CPTI_NELTS_IDENTIFIER,
    CPTI_THIS_IDENTIFIER,
    CPTI_PFN_IDENTIFIER,
    CPTI_VPTR_IDENTIFIER,
    CPTI_STD_IDENTIFIER,

    CPTI_LANG_NAME_C,
    CPTI_LANG_NAME_CPLUSPLUS,
    CPTI_LANG_NAME_JAVA,

    CPTI_EMPTY_EXCEPT_SPEC,
    CPTI_NOEXCEPT_TRUE_SPEC,
    CPTI_NOEXCEPT_FALSE_SPEC,
    CPTI_JCLASS,
    CPTI_TERMINATE,
    CPTI_CALL_UNEXPECTED,
    CPTI_ATEXIT_FN_PTR_TYPE,
    CPTI_ATEXIT,
    CPTI_DSO_HANDLE,
    CPTI_DCAST,

    CPTI_KEYED_CLASSES,

    CPTI_NULLPTR,
    CPTI_NULLPTR_TYPE,

    CPTI_MAX
};

extern tree cp_global_trees[CPTI_MAX];
# 914 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct saved_scope {
  VEC_cxx_saved_binding_gc *old_bindings;
  tree old_namespace;
  VEC_tree_gc *decl_ns_list;
  tree class_name;
  tree class_type;
  tree access_specifier;
  tree function_decl;
  VEC_tree_gc *lang_base;
  tree lang_name;
  tree template_parms;
  struct cp_binding_level *x_previous_class_level;
  tree x_saved_tree;

  int x_processing_template_decl;
  int x_processing_specialization;
  unsigned int x_processing_explicit_instantiation : 1;
  unsigned int need_pop_function_context : 1;

  int unevaluated_operand;
  int inhibit_evaluation_warnings;

  struct stmt_tree_s x_stmt_tree;

  struct cp_binding_level *class_bindings;
  struct cp_binding_level *bindings;

  struct saved_scope *prev;
};
# 992 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
extern struct saved_scope *scope_chain;

struct cxx_int_tree_map {
  unsigned int uid;
  tree to;
};

extern unsigned int cxx_int_tree_map_hash (const void *);
extern int cxx_int_tree_map_eq (const void *, const void *);



struct language_function {
  struct c_language_function base;

  tree x_cdtor_label;
  tree x_current_class_ptr;
  tree x_current_class_ref;
  tree x_eh_spec_block;
  tree x_in_charge_parm;
  tree x_vtt_parm;
  tree x_return_value;

  unsigned int returns_value : 1;
  unsigned int returns_null : 1;
  unsigned int returns_abnormally : 1;
  unsigned int in_function_try_handler : 1;
  unsigned int in_base_initializer : 1;


  unsigned int can_throw : 1;

  htab_t x_named_labels;
  struct cp_binding_level *bindings;
  VEC_tree_gc *x_local_names;
  htab_t extern_decl_map;
};
# 1114 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
extern unsigned char statement_code_p[MAX_TREE_CODES];



enum languages { lang_c, lang_cplusplus, lang_java };
# 1229 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
typedef struct tree_pair_s {
  tree purpose;
  tree value;
} tree_pair_s;
typedef tree_pair_s *tree_pair_p;
typedef struct VEC_tree_pair_s_base { unsigned num; unsigned alloc; tree_pair_s vec[1]; } VEC_tree_pair_s_base; typedef struct VEC_tree_pair_s_none { VEC_tree_pair_s_base base; } VEC_tree_pair_s_none; static unsigned VEC_tree_pair_s_base_length (const VEC_tree_pair_s_base *vec_) { return vec_ ? vec_->num : 0; } static tree_pair_s *VEC_tree_pair_s_base_last (VEC_tree_pair_s_base *vec_ ) { (void)(vec_ && vec_->num); return &vec_->vec[vec_->num - 1]; } static tree_pair_s *VEC_tree_pair_s_base_index (VEC_tree_pair_s_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return &vec_->vec[ix_]; } static int VEC_tree_pair_s_base_iterate (VEC_tree_pair_s_base *vec_, unsigned ix_, tree_pair_s **ptr) { if (vec_ && ix_ < vec_->num) { *ptr = &vec_->vec[ix_]; return 1; } else { *ptr = 0; return 0; } } static size_t VEC_tree_pair_s_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_tree_pair_s_base, vec) + alloc_ * sizeof(tree_pair_s); } static void VEC_tree_pair_s_base_embedded_init (VEC_tree_pair_s_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_tree_pair_s_base_space (VEC_tree_pair_s_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_tree_pair_s_base_splice (VEC_tree_pair_s_base *dst_, VEC_tree_pair_s_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (tree_pair_s)); dst_->num += len_; } } static tree_pair_s *VEC_tree_pair_s_base_quick_push (VEC_tree_pair_s_base *vec_, const tree_pair_s *obj_ ) { tree_pair_s *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; if (obj_) *slot_ = *obj_; return slot_; } static void VEC_tree_pair_s_base_pop (VEC_tree_pair_s_base *vec_ ) { (void)(vec_->num); --vec_->num; } static void VEC_tree_pair_s_base_truncate (VEC_tree_pair_s_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static tree_pair_s *VEC_tree_pair_s_base_replace (VEC_tree_pair_s_base *vec_, unsigned ix_, const tree_pair_s *obj_ ) { tree_pair_s *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; if (obj_) *slot_ = *obj_; return slot_; } static tree_pair_s *VEC_tree_pair_s_base_quick_insert (VEC_tree_pair_s_base *vec_, unsigned ix_, const tree_pair_s *obj_ ) { tree_pair_s *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (tree_pair_s)); if (obj_) *slot_ = *obj_; return slot_; } static void VEC_tree_pair_s_base_ordered_remove (VEC_tree_pair_s_base *vec_, unsigned ix_ ) { tree_pair_s *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (tree_pair_s)); } static void VEC_tree_pair_s_base_unordered_remove (VEC_tree_pair_s_base *vec_, unsigned ix_ ) { (void)(ix_ < vec_->num); vec_->vec[ix_] = vec_->vec[--vec_->num]; } static void VEC_tree_pair_s_base_block_remove (VEC_tree_pair_s_base *vec_, unsigned ix_, unsigned len_ ) { tree_pair_s *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (tree_pair_s)); } static tree_pair_s *VEC_tree_pair_s_base_address (VEC_tree_pair_s_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_tree_pair_s_base_lower_bound (VEC_tree_pair_s_base *vec_, const tree_pair_s *obj_, unsigned char (*lessthan_)(const tree_pair_s *, const tree_pair_s *) ) { unsigned int len_ = VEC_tree_pair_s_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { tree_pair_s *middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_tree_pair_s_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_tree_pair_s_gc { VEC_tree_pair_s_base base; } VEC_tree_pair_s_gc; static VEC_tree_pair_s_gc *VEC_tree_pair_s_gc_alloc (int alloc_ ) { return (VEC_tree_pair_s_gc *) vec_gc_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_tree_pair_s_gc, base.vec), sizeof (tree_pair_s) ); } static VEC_tree_pair_s_gc *VEC_tree_pair_s_gc_copy (VEC_tree_pair_s_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_tree_pair_s_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_tree_pair_s_gc *)(vec_gc_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_tree_pair_s_gc, base.vec), sizeof (tree_pair_s) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (tree_pair_s) * len_); } return new_vec_; } static void VEC_tree_pair_s_gc_free (VEC_tree_pair_s_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static int VEC_tree_pair_s_gc_reserve (VEC_tree_pair_s_gc **vec_, int alloc_ ) { int extend = !VEC_tree_pair_s_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_tree_pair_s_gc *) vec_gc_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_tree_pair_s_gc, base.vec), sizeof (tree_pair_s) ); return extend; } static int VEC_tree_pair_s_gc_reserve_exact (VEC_tree_pair_s_gc **vec_, int alloc_ ) { int extend = !VEC_tree_pair_s_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_tree_pair_s_gc *) vec_gc_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_tree_pair_s_gc, base.vec), sizeof (tree_pair_s) ); return extend; } static void VEC_tree_pair_s_gc_safe_grow (VEC_tree_pair_s_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_tree_pair_s_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_tree_pair_s_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_tree_pair_s_gc_safe_grow_cleared (VEC_tree_pair_s_gc **vec_, int size_ ) { int oldsize = VEC_tree_pair_s_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_tree_pair_s_gc_safe_grow (vec_, size_ ); memset (&(VEC_tree_pair_s_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (tree_pair_s) * (size_ - oldsize)); } static void VEC_tree_pair_s_gc_safe_splice (VEC_tree_pair_s_gc **dst_, VEC_tree_pair_s_base *src_ ) { if (src_) { VEC_tree_pair_s_gc_reserve_exact (dst_, src_->num ); VEC_tree_pair_s_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static tree_pair_s *VEC_tree_pair_s_gc_safe_push (VEC_tree_pair_s_gc **vec_, const tree_pair_s *obj_ ) { VEC_tree_pair_s_gc_reserve (vec_, 1 ); return VEC_tree_pair_s_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static tree_pair_s *VEC_tree_pair_s_gc_safe_insert (VEC_tree_pair_s_gc **vec_, unsigned ix_, const tree_pair_s *obj_ ) { VEC_tree_pair_s_gc_reserve (vec_, 1 ); return VEC_tree_pair_s_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;




struct lang_type_header {
  unsigned int is_lang_type_class : 1;

  unsigned int has_type_conversion : 1;
  unsigned int has_copy_ctor : 1;
  unsigned int has_default_ctor : 1;
  unsigned int const_needs_init : 1;
  unsigned int ref_needs_init : 1;
  unsigned int has_const_copy_assign : 1;

  unsigned int spare : 1;
};
# 1266 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct lang_type_class {
  struct lang_type_header h;

  unsigned char align;

  unsigned has_mutable : 1;
  unsigned com_interface : 1;
  unsigned non_pod_class : 1;
  unsigned nearly_empty_p : 1;
  unsigned user_align : 1;
  unsigned has_copy_assign : 1;
  unsigned has_new : 1;
  unsigned has_array_new : 1;

  unsigned gets_delete : 2;
  unsigned interface_only : 1;
  unsigned interface_unknown : 1;
  unsigned contains_empty_class_p : 1;
  unsigned anon_aggr : 1;
  unsigned non_zero_init : 1;
  unsigned empty_p : 1;

  unsigned vec_new_uses_cookie : 1;
  unsigned declared_class : 1;
  unsigned diamond_shaped : 1;
  unsigned repeated_base : 1;
  unsigned being_defined : 1;
  unsigned java_interface : 1;
  unsigned debug_requested : 1;
  unsigned fields_readonly : 1;

  unsigned use_template : 2;
  unsigned ptrmemfunc_flag : 1;
  unsigned was_anonymous : 1;
  unsigned lazy_default_ctor : 1;
  unsigned lazy_copy_ctor : 1;
  unsigned lazy_copy_assign : 1;
  unsigned lazy_destructor : 1;

  unsigned has_const_copy_ctor : 1;
  unsigned has_complex_copy_ctor : 1;
  unsigned has_complex_copy_assign : 1;
  unsigned non_aggregate : 1;
  unsigned has_complex_dflt : 1;
  unsigned has_list_ctor : 1;
  unsigned non_std_layout : 1;
  unsigned is_literal : 1;

  unsigned lazy_move_ctor : 1;
  unsigned lazy_move_assign : 1;
  unsigned has_complex_move_ctor : 1;
  unsigned has_complex_move_assign : 1;
  unsigned has_constexpr_ctor : 1;
# 1327 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
  unsigned dummy : 3;

  tree primary_base;
  VEC_tree_pair_s_gc *vcall_indices;
  tree vtables;
  tree typeinfo_var;
  VEC_tree_gc *vbases;
  binding_table nested_udts;
  tree as_base;
  VEC_tree_gc *pure_virtuals;
  tree friend_classes;
  VEC_tree_gc * methods;
  tree key_method;
  tree decl_list;
  tree template_info;
  tree befriending_classes;



  tree objc_info;


  struct sorted_fields_type *
    sorted_fields;

  tree lambda_expr;
};

struct lang_type_ptrmem {
  struct lang_type_header h;
  tree record;
};

struct lang_type_t {
  union lang_type_u
  {
    struct lang_type_header h;
    struct lang_type_class c;
    struct lang_type_ptrmem ptrmem;
  } u;
};
# 1797 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct lang_decl_base {
  unsigned selector : 16;
enum languages language : 4;
  unsigned use_template : 2;
  unsigned not_really_extern : 1;
  unsigned initialized_in_class : 1;
  unsigned repo_available_p : 1;
  unsigned threadprivate_or_deleted_p : 1;
  unsigned anticipated_p : 1;
  unsigned friend_attr : 1;
  unsigned template_conv_p : 1;
  unsigned odr_used : 1;
  unsigned u2sel : 1;

};
# 1825 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
struct lang_decl_min {
  struct lang_decl_base base;






  tree template_info;

  union lang_decl_u2 {



    tree access;


    int discriminator;
  } u2;
};



struct lang_decl_fn {
  struct lang_decl_min min;



enum tree_code operator_code : 16;

  unsigned global_ctor_p : 1;
  unsigned global_dtor_p : 1;
  unsigned constructor_attr : 1;
  unsigned destructor_attr : 1;
  unsigned assignment_operator_p : 1;
  unsigned static_function : 1;
  unsigned pure_virtual : 1;
  unsigned defaulted_p : 1;

  unsigned has_in_charge_parm_p : 1;
  unsigned has_vtt_parm_p : 1;
  unsigned pending_inline_p : 1;
  unsigned nonconverting : 1;
  unsigned thunk_p : 1;
  unsigned this_thunk_p : 1;
  unsigned hidden_friend_p : 1;





  tree befriending_classes;







  tree context;

  union lang_decl_u5
  {


    tree cloned_function;



    long long fixed_offset;
  } u5;

  union lang_decl_u3
  {
    struct cp_token_cache * pending_inline_info;
    struct language_function *
      saved_language_function;
  } u;

};



struct lang_decl_ns {
  struct lang_decl_base base;
  struct cp_binding_level *level;
};



struct lang_decl_parm {
  struct lang_decl_base base;
  int level;
  int index;
};





struct lang_decl_t {
  union lang_decl_u {
    struct lang_decl_base base;
    struct lang_decl_min min;
    struct lang_decl_fn fn;
    struct lang_decl_ns ns;
    struct lang_decl_parm parm;
  } u;
};
# 2440 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
extern tree decl_shadowed_for_var_lookup (tree);
extern void decl_shadowed_for_var_insert (tree, tree);
# 2839 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
typedef struct aggr_init_expr_arg_iterator_d {
  tree t;
  int n;
  int i;
} aggr_init_expr_arg_iterator;



static void
init_aggr_init_expr_arg_iterator (tree exp,
           aggr_init_expr_arg_iterator *iter)
{
  iter->t = exp;
  iter->n = (((int)((((exp)->exp.operands[0])->int_cst.int_cst).low)) - 3);
  iter->i = 0;
}



static tree
next_aggr_init_expr_arg (aggr_init_expr_arg_iterator *iter)
{
  tree result;
  if (iter->i >= iter->n)
    return (tree) ((void *)0);
  result = (((iter->t))->exp.operands[(iter->i) + 3]);
  iter->i++;
  return result;
}





static tree
first_aggr_init_expr_arg (tree exp, aggr_init_expr_arg_iterator *iter)
{
  init_aggr_init_expr_arg_iterator (exp, iter);
  return next_aggr_init_expr_arg (iter);
}



static unsigned char
more_aggr_init_expr_args_p (const aggr_init_expr_arg_iterator *iter)
{
  return (iter->i < iter->n);
}
# 3849 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
enum tag_types {
  none_type = 0,
  record_type,
  class_type,
  union_type,
  enum_type,
  typename_type
};


enum cp_lvalue_kind_flags {
  clk_none = 0,
  clk_ordinary = 1,
  clk_rvalueref = 2,
  clk_class = 4,
  clk_bitfield = 8,
  clk_packed = 16
};



typedef int cp_lvalue_kind;


typedef enum tmpl_spec_kind {
  tsk_none,
  tsk_invalid_member_spec,



  tsk_invalid_expl_inst,

  tsk_excessive_parms,

  tsk_insufficient_parms,

  tsk_template,
  tsk_expl_spec,
  tsk_expl_inst
} tmpl_spec_kind;





typedef enum access_kind {
  ak_none = 0,
  ak_public = 1,
  ak_protected = 2,
  ak_private = 3
} access_kind;



typedef enum special_function_kind {
  sfk_none = 0,


  sfk_constructor,
  sfk_copy_constructor,
  sfk_move_constructor,
  sfk_copy_assignment,
  sfk_move_assignment,
  sfk_destructor,
  sfk_complete_destructor,
  sfk_base_destructor,
  sfk_deleting_destructor,


  sfk_conversion
} special_function_kind;
# 3938 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
typedef enum linkage_kind {
  lk_none,
  lk_internal,
  lk_external
} linkage_kind;

typedef enum duration_kind {
  dk_static,
  dk_thread,
  dk_auto,
  dk_dynamic
} duration_kind;


enum tsubst_flags {
  tf_none = 0,
  tf_error = 1 << 0,
  tf_warning = 1 << 1,
  tf_ignore_bad_quals = 1 << 2,
  tf_keep_type_decl = 1 << 3,

  tf_ptrmem_ok = 1 << 4,

  tf_user = 1 << 5,

  tf_conv = 1 << 6,



  tf_no_access_control = 1 << 7,


  tf_warning_or_error = tf_warning | tf_error
};



typedef int tsubst_flags_t;


enum base_access_flags {
  ba_any = 0,

  ba_unique = 1 << 0,
  ba_check_bit = 1 << 1,
  ba_check = ba_unique | ba_check_bit,
  ba_ignore_scope = 1 << 2,
  ba_quiet = 1 << 3
};



typedef int base_access;


typedef enum deferring_kind {
  dk_no_deferred = 0,
  dk_deferred = 1,
  dk_no_check = 2
} deferring_kind;



typedef enum base_kind {
  bk_inaccessible = -3,
  bk_ambig = -2,
  bk_not_base = -1,
  bk_same_type = 0,
  bk_proper_base = 1,
  bk_via_virtual = 2


} base_kind;







extern tree integer_two_node;




extern int function_depth;







extern int cp_unevaluated_operand;
extern tree cp_convert_range_for (tree, tree, tree);







typedef enum unification_kind_t {
  DEDUCE_CALL,
  DEDUCE_CONV,
  DEDUCE_EXACT
} unification_kind_t;



extern int current_class_depth;



extern VEC_tree_gc *local_classes;
# 4152 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
extern int at_eof;





extern tree static_aggregates;

enum overload_flags { NO_SPECIAL = 0, DTOR_FLAG, TYPENAME_FLAG };
# 4391 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.h"
extern void init_reswords (void);

typedef struct operator_name_info_t {

  tree identifier;

  const char *name;

  const char *mangled_name;

  int arity;
} operator_name_info_t;


extern operator_name_info_t operator_name_info
  [(int) MAX_TREE_CODES];

extern operator_name_info_t assignment_operator_name_info
  [(int) MAX_TREE_CODES];




typedef int cp_cv_quals;



typedef enum cp_storage_class {


  sc_none = 0,
  sc_auto,
  sc_register,
  sc_static,
  sc_extern,
  sc_mutable
} cp_storage_class;



typedef enum cp_decl_spec {
  ds_first,
  ds_signed = ds_first,
  ds_unsigned,
  ds_short,
  ds_long,
  ds_const,
  ds_volatile,
  ds_restrict,
  ds_inline,
  ds_virtual,
  ds_explicit,
  ds_friend,
  ds_typedef,
  ds_constexpr,
  ds_complex,
  ds_thread,
  ds_last
} cp_decl_spec;



typedef struct cp_decl_specifier_seq {

  unsigned specs[(int) ds_last];


  location_t type_location;




  tree type;

  tree attributes;


  tree redefined_builtin_type;


  cp_storage_class storage_class;

  unsigned int user_defined_type_p : 1;


  unsigned int multiple_types_p : 1;



  unsigned int conflicting_specifiers_p : 1;

  unsigned int any_specifiers_p : 1;

  unsigned int any_type_specifiers_p : 1;

  unsigned int explicit_int_p : 1;

  unsigned int explicit_int128_p : 1;

  unsigned int explicit_char_p : 1;
} cp_decl_specifier_seq;



typedef enum cp_declarator_kind {
  cdk_id,
  cdk_function,
  cdk_array,
  cdk_pointer,
  cdk_reference,
  cdk_ptrmem,
  cdk_error
} cp_declarator_kind;



typedef struct cp_declarator cp_declarator;

typedef struct cp_parameter_declarator cp_parameter_declarator;


struct cp_parameter_declarator {

  cp_parameter_declarator *next;

  cp_decl_specifier_seq decl_specifiers;

  cp_declarator *declarator;

  tree default_argument;


  unsigned char ellipsis_p;
};


struct cp_declarator {

enum cp_declarator_kind kind : 4;


  unsigned int parameter_pack_p : 1;
  location_t id_loc;

  tree attributes;


  cp_declarator *declarator;
  union {

    struct {


      tree qualifying_scope;


      tree unqualified_name;


      special_function_kind sfk;
    } id;

    struct {

      tree parameters;

      cp_cv_quals qualifiers;

      tree exception_specification;

      tree late_return_type;
    } function;

    struct {

      tree bounds;
    } array;

    struct {

      cp_cv_quals qualifiers;

      tree class_type;
    } pointer;

    struct {


      cp_cv_quals qualifiers;

      unsigned char rvalue_ref;
    } reference;
  } u;
};


struct tinst_level {

  struct tinst_level *next;




  tree decl;


  location_t locus;


  unsigned char in_system_header_p;
};



extern cp_parameter_declarator *no_parameters;


extern unsigned char pragma_java_exceptions;


extern unsigned char check_dtor_name (tree, tree);

extern tree build_conditional_expr (tree, tree, tree,
                                                 tsubst_flags_t);
extern tree build_addr_func (tree);
extern tree build_call_a (tree, int, tree*);
extern tree build_call_n (tree, int, ...);
extern unsigned char null_ptr_cst_p (tree);
extern unsigned char sufficient_parms_p (const_tree);
extern tree type_decays_to (tree);
extern tree build_user_type_conversion (tree, tree, int);
extern tree build_new_function_call (tree, VEC_tree_gc **, unsigned char,
       tsubst_flags_t);
extern tree build_operator_new_call (tree, VEC_tree_gc **, tree *,
       tree *, tree *);
extern tree build_new_method_call (tree, tree, VEC_tree_gc **,
       tree, int, tree *,
       tsubst_flags_t);
extern tree build_special_member_call (tree, tree, VEC_tree_gc **,
       tree, int, tsubst_flags_t);
extern tree build_new_op (enum tree_code, int, tree,
       tree, tree, unsigned char *,
       tsubst_flags_t);
extern tree build_op_call (tree, VEC_tree_gc **,
       tsubst_flags_t);
extern tree build_op_delete_call (enum tree_code, tree, tree, unsigned char, tree, tree);
extern unsigned char can_convert (tree, tree);
extern unsigned char can_convert_arg (tree, tree, tree, int);
extern unsigned char can_convert_arg_bad (tree, tree, tree, int);
extern unsigned char enforce_access (tree, tree, tree);
extern tree convert_default_arg (tree, tree, tree, int);
extern tree convert_arg_to_ellipsis (tree);
extern tree build_x_va_arg (tree, tree);
extern tree cxx_type_promotes_to (tree);
extern tree type_passed_as (tree);
extern tree convert_for_arg_passing (tree, tree);
extern unsigned char is_properly_derived_from (tree, tree);
extern tree set_up_extended_ref_temp (tree, tree, tree *, tree *);
extern tree initialize_reference (tree, tree, tree, tree *, tsubst_flags_t);
extern tree make_temporary_var_for_ref_to_temp (tree, tree);
extern tree strip_top_quals (tree);
extern unsigned char reference_related_p (tree, tree);
extern tree perform_implicit_conversion (tree, tree, tsubst_flags_t);
extern tree perform_implicit_conversion_flags (tree, tree, tsubst_flags_t, int);
extern tree build_integral_nontype_arg_conv (tree, tree, tsubst_flags_t);
extern tree perform_direct_initialization_if_possible (tree, tree, unsigned char,
                                                       tsubst_flags_t);
extern tree in_charge_arg_for_name (tree);
extern tree build_cxx_call (tree, int, tree *);
extern unsigned char is_std_init_list (tree);
extern unsigned char is_list_ctor (tree);





extern tree build_vfield_ref (tree, tree);
extern tree build_base_path (enum tree_code, tree,
       tree, int);
extern tree convert_to_base (tree, tree, unsigned char, unsigned char,
       tsubst_flags_t);
extern tree convert_to_base_statically (tree, tree);
extern tree build_vtbl_ref (tree, tree);
extern tree build_vfn_ref (tree, tree);
extern tree get_vtable_decl (tree, int);
extern void resort_type_method_vec (void *, void *,
       gt_pointer_operator, void *);
extern unsigned char add_method (tree, tree, tree);
extern unsigned char currently_open_class (tree);
extern tree currently_open_derived_class (tree);
extern tree current_nonlambda_class_type (void);
extern tree finish_struct (tree, tree);
extern void finish_struct_1 (tree);
extern int resolves_to_fixed_type_p (tree, int *);
extern void init_class_processing (void);
extern int is_empty_class (tree);
extern unsigned char is_really_empty_class (tree);
extern void pushclass (tree);
extern void popclass (void);
extern void push_nested_class (tree);
extern void pop_nested_class (void);
extern int current_lang_depth (void);
extern void push_lang_context (tree);
extern void pop_lang_context (void);
extern tree instantiate_type (tree, tree, tsubst_flags_t);
extern void print_class_statistics (void);
extern void build_self_reference (void);
extern int same_signature_p (const_tree, const_tree);
extern void maybe_add_class_template_decl_list (tree, tree, int);
extern void unreverse_member_declarations (tree);
extern void invalidate_class_lookup_cache (void);
extern void maybe_note_name_used_in_class (tree, tree);
extern void note_name_declared_in_class (tree, tree);
extern tree get_vtbl_decl_for_binfo (tree);
extern void debug_class (tree);
extern void debug_thunks (tree);
extern tree cp_fold_obj_type_ref (tree, tree);
extern void set_linkage_according_to_type (tree, tree);
extern void determine_key_method (tree);
extern void check_for_override (tree, tree);
extern void push_class_stack (void);
extern void pop_class_stack (void);
extern unsigned char type_has_user_nondefault_constructor (tree);
extern tree in_class_defaulted_default_constructor (tree);
extern unsigned char user_provided_p (tree);
extern unsigned char type_has_user_provided_constructor (tree);
extern unsigned char type_has_user_provided_default_constructor (tree);
extern unsigned char synthesized_default_constructor_is_constexpr (tree);
extern unsigned char type_has_constexpr_default_constructor (tree);
extern unsigned char type_has_virtual_destructor (tree);
extern unsigned char type_has_move_constructor (tree);
extern unsigned char type_has_move_assign (tree);
extern void defaulted_late_check (tree);
extern unsigned char defaultable_fn_check (tree);
extern void fixup_type_variants (tree);
extern void fixup_attribute_variants (tree);
extern tree* decl_cloned_function_p (const_tree, unsigned char);
extern void clone_function_decl (tree, int);
extern void adjust_clone_args (tree);


extern tree convert_to_reference (tree, tree, int, int, tree);
extern tree convert_from_reference (tree);
extern tree force_rvalue (tree);
extern tree ocp_convert (tree, tree, int, int);
extern tree cp_convert (tree, tree);
extern tree cp_convert_and_check (tree, tree);
extern tree cp_fold_convert (tree, tree);
extern tree convert_to_void (tree, impl_conv_void,
                                    tsubst_flags_t);
extern tree convert_force (tree, tree, int);
extern tree build_expr_type_conversion (int, tree, unsigned char);
extern tree type_promotes_to (tree);
extern tree perform_qualification_conversions (tree, tree);


extern tree pushdecl (tree);
extern tree pushdecl_maybe_friend (tree, unsigned char);
extern void maybe_push_cleanup_level (tree);
extern tree pushtag (tree, tree, tag_scope);
extern tree make_anon_name (void);
extern tree pushdecl_top_level_maybe_friend (tree, unsigned char);
extern tree pushdecl_top_level_and_finish (tree, tree);
extern tree check_for_out_of_scope_variable (tree);
extern void print_other_binding_stack (struct cp_binding_level *);
extern tree maybe_push_decl (tree);
extern tree current_decl_namespace (void);


extern tree poplevel (int, int, int);
extern void cxx_init_decl_processing (void);
enum cp_tree_node_structure_enum cp_tree_node_structure
      (union lang_tree_node *);
extern void finish_scope (void);
extern void push_switch (tree);
extern void pop_switch (void);
extern tree make_lambda_name (void);
extern int decls_match (tree, tree);
extern tree duplicate_decls (tree, tree, unsigned char);
extern tree declare_local_label (tree);
extern tree define_label (location_t, tree);
extern void check_goto (tree);
extern unsigned char check_omp_return (void);
extern tree make_typename_type (tree, tree, enum tag_types, tsubst_flags_t);
extern tree make_unbound_class_template (tree, tree, tree, tsubst_flags_t);
extern tree build_library_fn_ptr (const char *, tree);
extern tree build_cp_library_fn_ptr (const char *, tree);
extern tree push_library_fn (tree, tree, tree);
extern tree push_void_library_fn (tree, tree);
extern tree push_throw_library_fn (tree, tree);
extern tree check_tag_decl (cp_decl_specifier_seq *);
extern tree shadow_tag (cp_decl_specifier_seq *);
extern tree groktypename (cp_decl_specifier_seq *, const cp_declarator *, unsigned char);
extern tree start_decl (const cp_declarator *, cp_decl_specifier_seq *, int, tree, tree, tree *);
extern void start_decl_1 (tree, unsigned char);
extern unsigned char check_array_initializer (tree, tree, tree);
extern void cp_finish_decl (tree, tree, unsigned char, tree, int);
extern int cp_complete_array_type (tree *, tree, unsigned char);
extern tree build_ptrmemfunc_type (tree);
extern tree build_ptrmem_type (tree, tree);

extern tree build_this_parm (tree, cp_cv_quals);
extern int copy_fn_p (const_tree);
extern unsigned char move_fn_p (const_tree);
extern tree get_scope_of_declarator (const cp_declarator *);
extern void grok_special_member_properties (tree);
extern int grok_ctor_properties (const_tree, const_tree);
extern unsigned char grok_op_properties (tree, unsigned char);
extern tree xref_tag (enum tag_types, tree, tag_scope, unsigned char);
extern tree xref_tag_from_type (tree, tree, tag_scope);
extern unsigned char xref_basetypes (tree, tree);
extern tree start_enum (tree, tree, tree, unsigned char, unsigned char *);
extern void finish_enum_value_list (tree);
extern void finish_enum (tree);
extern void build_enumerator (tree, tree, tree, location_t);
extern tree lookup_enumerator (tree, tree);
extern void start_preparsed_function (tree, tree, int);
extern int start_function (cp_decl_specifier_seq *, const cp_declarator *, tree);
extern tree begin_function_body (void);
extern void finish_function_body (tree);
extern tree outer_curly_brace_block (tree);
extern tree finish_function (int);
extern tree grokmethod (cp_decl_specifier_seq *, const cp_declarator *, tree);
extern void maybe_register_incomplete_var (tree);
extern void maybe_commonize_var (tree);
extern void complete_vars (tree);
extern void finish_stmt (void);
extern tree static_fn_type (tree);
extern void revert_static_member_fn (tree);
extern void fixup_anonymous_aggr (tree);
extern int check_static_variable_definition (tree, tree);
extern tree compute_array_index_type (tree, tree, tsubst_flags_t);
extern tree check_default_argument (tree, tree);
typedef int (*walk_namespaces_fn) (tree, void *);
extern int walk_namespaces (walk_namespaces_fn,
       void *);
extern int wrapup_globals_for_namespace (tree, void *);
extern tree create_implicit_typedef (tree, tree);
extern int local_variable_p (const_tree);
extern tree register_dtor_fn (tree);
extern tmpl_spec_kind current_tmpl_spec_kind (int);
extern tree cp_fname_init (const char *, tree *);
extern tree cxx_builtin_function (tree decl);
extern tree cxx_builtin_function_ext_scope (tree decl);
extern tree check_elaborated_type_specifier (enum tag_types, tree, unsigned char);
extern void warn_extern_redeclared_static (tree, tree);
extern tree cxx_comdat_group (tree);
extern unsigned char cp_missing_noreturn_ok_p (tree);
extern void initialize_artificial_var (tree, VEC_constructor_elt_gc *);
extern tree check_var_type (tree, tree);
extern tree reshape_init (tree, tree);
extern tree next_initializable_field (tree);

extern unsigned char defer_mark_used_calls;
extern VEC_tree_gc *deferred_mark_used_calls;
extern tree finish_case_label (location_t, tree, tree);
extern tree cxx_maybe_build_cleanup (tree);


extern unsigned char check_java_method (tree);
extern tree build_memfn_type (tree, tree, cp_cv_quals);
extern tree change_return_type (tree, tree);
extern void maybe_retrofit_in_chrg (tree);
extern void maybe_make_one_only (tree);
extern unsigned char vague_linkage_p (tree);
extern void grokclassfn (tree, tree,
       enum overload_flags);
extern tree grok_array_decl (tree, tree);
extern tree delete_sanity (tree, tree, unsigned char, int);
extern tree check_classfn (tree, tree, tree);
extern void check_member_template (tree);
extern tree grokfield (const cp_declarator *, cp_decl_specifier_seq *,
         tree, unsigned char, tree, tree);
extern tree grokbitfield (const cp_declarator *, cp_decl_specifier_seq *,
     tree, tree);
extern tree cp_reconstruct_complex_type (tree, tree);
extern void cplus_decl_attributes (tree *, tree, int);
extern void finish_anon_union (tree);
extern void cp_write_global_declarations (void);
extern tree coerce_new_type (tree);
extern tree coerce_delete_type (tree);
extern void comdat_linkage (tree);
extern void determine_visibility (tree);
extern void constrain_class_visibility (tree);
extern void import_export_decl (tree);
extern tree build_cleanup (tree);
extern tree build_offset_ref_call_from_tree (tree, VEC_tree_gc **);
extern unsigned char decl_constant_var_p (tree);
extern unsigned char decl_maybe_constant_var_p (tree);
extern void check_default_args (tree);
extern void mark_used (tree);
extern void finish_static_data_member_decl (tree, tree, unsigned char, tree, int);
extern tree cp_build_parm_decl (tree, tree);
extern tree get_guard (tree);
extern tree get_guard_cond (tree);
extern tree set_guard (tree);
extern tree cxx_callgraph_analyze_expr (tree *, int *);
extern void mark_needed (tree);
extern unsigned char decl_needed_p (tree);
extern void note_vague_linkage_fn (tree);
extern tree build_artificial_parm (tree, tree);
extern unsigned char possibly_inlined_p (tree);
extern int parm_index (tree);


extern void init_error (void);
extern const char *type_as_string (tree, int);
extern const char *type_as_string_translate (tree, int);
extern const char *decl_as_string (tree, int);
extern const char *decl_as_string_translate (tree, int);
extern const char *expr_as_string (tree, int);
extern const char *lang_decl_name (tree, int, unsigned char);
extern const char *language_to_string (enum languages);
extern const char *class_key_or_enum_as_string (tree);
extern void print_instantiation_context (void);
extern void maybe_warn_variadic_templates (void);
extern void maybe_warn_cpp0x (cpp0x_warn_str str);
extern unsigned char pedwarn_cxx98 (location_t, int, const char *, ...) ; // __attribute__ ((__format__ (__gcc_cxxdiag__, 3, 4))) ; // __attribute__ ((__nonnull__ (3)));
extern location_t location_of (tree);
extern void qualified_name_lookup_error (tree, tree, tree,
       location_t);


extern void init_exception_processing (void);
extern tree expand_start_catch_block (tree);
extern void expand_end_catch_block (void);
extern tree build_exc_ptr (void);
extern tree build_throw (tree);
extern int nothrow_libfn_p (const_tree);
extern void check_handlers (tree);
extern tree finish_noexcept_expr (tree, tsubst_flags_t);
extern void perform_deferred_noexcept_checks (void);
extern unsigned char nothrow_spec_p (const_tree);
extern unsigned char type_noexcept_p (const_tree);
extern unsigned char type_throw_all_p (const_tree);
extern tree build_noexcept_spec (tree, int);
extern void choose_personality_routine (enum languages);
extern tree eh_type_info (tree);
extern tree begin_eh_spec_block (void);
extern void finish_eh_spec_block (tree, tree);
extern tree build_eh_type_type (tree);
extern tree cp_protect_cleanup_actions (void);


extern tree cplus_expand_constant (tree);
extern tree mark_rvalue_use (tree);
extern tree mark_lvalue_use (tree);
extern tree mark_type_use (tree);
extern void mark_exp_read (tree);


extern int is_friend (tree, tree);
extern void make_friend_class (tree, tree, unsigned char);
extern void add_friend (tree, tree, unsigned char);
extern tree do_friend (tree, tree, tree, tree, enum overload_flags, unsigned char);


extern tree expand_member_init (tree);
extern void emit_mem_initializers (tree);
extern tree build_aggr_init (tree, tree, int,
                                                 tsubst_flags_t);
extern int is_class_type (tree, int);
extern tree get_type_value (tree);
extern tree build_zero_init (tree, tree, unsigned char);
extern tree build_value_init (tree, tsubst_flags_t);
extern tree build_value_init_noctor (tree, tsubst_flags_t);
extern tree build_offset_ref (tree, tree, unsigned char);
extern tree build_new (VEC_tree_gc **, tree, tree,
       VEC_tree_gc **, int,
                                                 tsubst_flags_t);
extern tree get_temp_regvar (tree, tree);
extern tree build_vec_init (tree, tree, tree, unsigned char, int,
                                                 tsubst_flags_t);
extern tree build_delete (tree, tree,
       special_function_kind,
       int, int);
extern void push_base_cleanups (void);
extern tree build_vec_delete (tree, tree,
       special_function_kind, int);
extern tree create_temporary_var (tree);
extern void initialize_vtbl_ptrs (tree);
extern tree build_java_class_ref (tree);
extern tree integral_constant_value (tree);
extern int diagnose_uninitialized_cst_or_ref_member (tree, unsigned char, unsigned char);


extern void cxx_dup_lang_specific_decl (tree);
extern void yyungetc (int, int);

extern tree unqualified_name_lookup_error (tree);
extern tree unqualified_fn_lookup_error (tree);
extern tree build_lang_decl (enum tree_code, tree, tree);
extern tree build_lang_decl_loc (location_t, enum tree_code, tree, tree);
extern void retrofit_lang_decl (tree);
extern tree copy_decl (tree);
extern tree copy_type (tree);
extern tree cxx_make_type (enum tree_code);
extern tree make_class_type (enum tree_code);
extern unsigned char cxx_init (void);
extern void cxx_finish (void);
extern unsigned char in_main_input_context (void);


extern void init_method (void);
extern tree make_thunk (tree, unsigned char, tree, tree);
extern void finish_thunk (tree);
extern void use_thunk (tree, unsigned char);
extern unsigned char trivial_fn_p (tree);
extern unsigned char maybe_explain_implicit_delete (tree);
extern void synthesize_method (tree);
extern tree lazily_declare_fn (special_function_kind,
       tree);
extern tree skip_artificial_parms_for (const_tree, tree);
extern int num_artificial_parms_for (const_tree);
extern tree make_alias_for (tree, tree);
extern tree get_copy_ctor (tree, tsubst_flags_t);
extern tree get_copy_assign (tree);
extern tree get_default_ctor (tree);
extern tree get_dtor (tree, tsubst_flags_t);
extern tree locate_ctor (tree);


extern unsigned char maybe_clone_body (tree);


extern unsigned char check_template_shadow (tree);
extern tree get_innermost_template_args (tree, int);
extern void maybe_begin_member_template_processing (tree);
extern void maybe_end_member_template_processing (void);
extern tree finish_member_template_decl (tree);
extern void begin_template_parm_list (void);
extern unsigned char begin_specialization (void);
extern void reset_specialization (void);
extern void end_specialization (void);
extern void begin_explicit_instantiation (void);
extern void end_explicit_instantiation (void);
extern tree check_explicit_specialization (tree, tree, int, int);
extern tree make_auto (void);
extern tree do_auto_deduction (tree, tree, tree);
extern tree type_uses_auto (tree);
extern void append_type_to_template_for_access_check (tree, tree, tree,
            location_t);
extern tree splice_late_return_type (tree, tree);
extern unsigned char is_auto (const_tree);
extern tree process_template_parm (tree, location_t, tree,
       unsigned char, unsigned char, unsigned);
extern tree end_template_parm_list (tree);
void fixup_template_parms (void);
extern void end_template_decl (void);
extern tree maybe_update_decl_type (tree, tree);
extern unsigned char check_default_tmpl_args (tree, tree, int, int, int);
extern tree push_template_decl (tree);
extern tree push_template_decl_real (tree, unsigned char);
extern unsigned char redeclare_class_template (tree, tree);
extern tree lookup_template_class (tree, tree, tree, tree,
       int, tsubst_flags_t);
extern tree lookup_template_function (tree, tree);
extern int uses_template_parms (tree);
extern int uses_template_parms_level (tree, int);
extern tree instantiate_class_template (tree);
extern tree instantiate_template (tree, tree, tsubst_flags_t);
extern int fn_type_unification (tree, tree, tree,
       const tree *, unsigned int,
       tree, unification_kind_t, int);
extern void mark_decl_instantiated (tree, int);
extern int more_specialized_fn (tree, tree, int);
extern void do_decl_instantiation (tree, tree);
extern void do_type_instantiation (tree, tree, tsubst_flags_t);
extern unsigned char always_instantiate_p (tree);
extern tree instantiate_decl (tree, int, unsigned char);
extern int comp_template_parms (const_tree, const_tree);
extern unsigned char uses_parameter_packs (tree);
extern unsigned char template_parameter_pack_p (const_tree);
extern unsigned char function_parameter_pack_p (const_tree);
extern unsigned char function_parameter_expanded_from_pack_p (tree, tree);
extern tree make_pack_expansion (tree);
extern unsigned char check_for_bare_parameter_packs (tree);
extern tree build_template_info (tree, tree);
extern tree get_template_info (const_tree);
extern VEC_qualified_typedef_usage_t_gc* get_types_needing_access_check (tree);
extern int template_class_depth (tree);
extern int is_specialization_of (tree, tree);
extern unsigned char is_specialization_of_friend (tree, tree);
extern tree get_pattern_parm (tree, tree);
extern int comp_template_args (tree, tree);
extern tree maybe_process_partial_specialization (tree);
extern tree most_specialized_instantiation (tree);
extern void print_candidates (tree);
extern void instantiate_pending_templates (int);
extern tree tsubst_default_argument (tree, tree, tree);
extern tree tsubst (tree, tree, tsubst_flags_t, tree);
extern tree tsubst_copy_and_build (tree, tree, tsubst_flags_t,
       tree, unsigned char, unsigned char);
extern tree most_general_template (tree);
extern tree get_mostly_instantiated_function_type (tree);
extern int problematic_instantiation_changed (void);
extern void record_last_problematic_instantiation (void);
extern struct tinst_level *current_instantiation(void);
extern tree maybe_get_template_decl_from_type_decl (tree);
extern int processing_template_parmlist;
extern unsigned char dependent_type_p (tree);
extern unsigned char dependent_scope_p (tree);
extern unsigned char any_dependent_template_arguments_p (const_tree);
extern unsigned char dependent_template_p (tree);
extern unsigned char dependent_template_id_p (tree, tree);
extern unsigned char type_dependent_expression_p (tree);
extern unsigned char any_type_dependent_arguments_p (const VEC_tree_gc *);
extern unsigned char type_dependent_expression_p_push (tree);
extern unsigned char value_dependent_expression_p (tree);
extern unsigned char any_value_dependent_elements_p (const_tree);
extern unsigned char dependent_omp_for_p (tree, tree, tree, tree);
extern tree resolve_typename_type (tree, unsigned char);
extern tree template_for_substitution (tree);
extern tree build_non_dependent_expr (tree);
extern void make_args_non_dependent (VEC_tree_gc *);
extern unsigned char reregister_specialization (tree, tree, tree);
extern tree fold_non_dependent_expr (tree);
extern unsigned char explicit_class_specialization_p (tree);
extern int push_tinst_level (tree);
extern void pop_tinst_level (void);
extern struct tinst_level *outermost_tinst_level(void);
extern unsigned char parameter_of_template_p (tree, tree);
extern void init_template_processing (void);
extern void print_template_statistics (void);
unsigned char template_template_parameter_p (const_tree);
extern unsigned char primary_template_instantiation_p (const_tree);
extern tree get_primary_template_innermost_parameters (const_tree);
extern tree get_template_parms_at_level (tree, int);
extern tree get_template_innermost_arguments (const_tree);
extern tree get_template_argument_pack_elems (const_tree);
extern tree get_function_template_decl (const_tree);
extern tree resolve_nondeduced_context (tree);
extern hashval_t iterative_hash_template_arg (tree arg, hashval_t val);


extern void init_repo (void);
extern int repo_emit_p (tree);
extern unsigned char repo_export_class_p (const_tree);
extern void finish_repo (void);



extern VEC_tree_gc *unemitted_tinfo_decls;

extern void init_rtti_processing (void);
extern tree build_typeid (tree);
extern tree get_tinfo_decl (tree);
extern tree get_typeid (tree);
extern tree build_headof (tree);
extern tree build_dynamic_cast (tree, tree, tsubst_flags_t);
extern void emit_support_tinfos (void);
extern unsigned char emit_tinfo_decl (tree);


extern unsigned char accessible_base_p (tree, tree, unsigned char);
extern tree lookup_base (tree, tree, base_access,
       base_kind *);
extern tree dcast_base_hint (tree, tree);
extern int accessible_p (tree, tree, unsigned char);
extern tree lookup_field_1 (tree, tree, unsigned char);
extern tree lookup_field (tree, tree, int, unsigned char);
extern int lookup_fnfields_1 (tree, tree);
extern tree lookup_fnfields_slot (tree, tree);
extern int class_method_index_for_fn (tree, tree);
extern tree lookup_fnfields (tree, tree, int);
extern tree lookup_member (tree, tree, int, unsigned char);
extern int look_for_overrides (tree, tree);
extern void get_pure_virtuals (tree);
extern void maybe_suppress_debug_info (tree);
extern void note_debug_info_needed (tree);
extern void print_search_statistics (void);
extern void reinit_search_statistics (void);
extern tree current_scope (void);
extern int at_function_scope_p (void);
extern unsigned char at_class_scope_p (void);
extern unsigned char at_namespace_scope_p (void);
extern tree context_for_name_lookup (tree);
extern tree lookup_conversions (tree);
extern tree binfo_from_vbase (tree);
extern tree binfo_for_vbase (tree, tree);
extern tree look_for_overrides_here (tree, tree);

extern tree dfs_walk_all (tree, tree (*) (tree, void *),
     tree (*) (tree, void *), void *);
extern tree dfs_walk_once (tree, tree (*) (tree, void *),
      tree (*) (tree, void *), void *);
extern tree binfo_via_virtual (tree, tree);
extern tree build_baselink (tree, tree, tree, tree);
extern tree adjust_result_of_qualified_name_lookup
      (tree, tree, tree);
extern tree copied_binfo (tree, tree);
extern tree original_binfo (tree, tree);
extern int shared_member_p (tree);




typedef struct deferred_access_check {

  tree binfo;

  tree decl;

  tree diag_decl;
} deferred_access_check;
typedef struct VEC_deferred_access_check_base { unsigned num; unsigned alloc; deferred_access_check vec[1]; } VEC_deferred_access_check_base; typedef struct VEC_deferred_access_check_none { VEC_deferred_access_check_base base; } VEC_deferred_access_check_none; static unsigned VEC_deferred_access_check_base_length (const VEC_deferred_access_check_base *vec_) { return vec_ ? vec_->num : 0; } static deferred_access_check *VEC_deferred_access_check_base_last (VEC_deferred_access_check_base *vec_ ) { (void)(vec_ && vec_->num); return &vec_->vec[vec_->num - 1]; } static deferred_access_check *VEC_deferred_access_check_base_index (VEC_deferred_access_check_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return &vec_->vec[ix_]; } static int VEC_deferred_access_check_base_iterate (VEC_deferred_access_check_base *vec_, unsigned ix_, deferred_access_check **ptr) { if (vec_ && ix_ < vec_->num) { *ptr = &vec_->vec[ix_]; return 1; } else { *ptr = 0; return 0; } } static size_t VEC_deferred_access_check_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_deferred_access_check_base, vec) + alloc_ * sizeof(deferred_access_check); } static void VEC_deferred_access_check_base_embedded_init (VEC_deferred_access_check_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_deferred_access_check_base_space (VEC_deferred_access_check_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_deferred_access_check_base_splice (VEC_deferred_access_check_base *dst_, VEC_deferred_access_check_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (deferred_access_check)); dst_->num += len_; } } static deferred_access_check *VEC_deferred_access_check_base_quick_push (VEC_deferred_access_check_base *vec_, const deferred_access_check *obj_ ) { deferred_access_check *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; if (obj_) *slot_ = *obj_; return slot_; } static void VEC_deferred_access_check_base_pop (VEC_deferred_access_check_base *vec_ ) { (void)(vec_->num); --vec_->num; } static void VEC_deferred_access_check_base_truncate (VEC_deferred_access_check_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static deferred_access_check *VEC_deferred_access_check_base_replace (VEC_deferred_access_check_base *vec_, unsigned ix_, const deferred_access_check *obj_ ) { deferred_access_check *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; if (obj_) *slot_ = *obj_; return slot_; } static deferred_access_check *VEC_deferred_access_check_base_quick_insert (VEC_deferred_access_check_base *vec_, unsigned ix_, const deferred_access_check *obj_ ) { deferred_access_check *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (deferred_access_check)); if (obj_) *slot_ = *obj_; return slot_; } static void VEC_deferred_access_check_base_ordered_remove (VEC_deferred_access_check_base *vec_, unsigned ix_ ) { deferred_access_check *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (deferred_access_check)); } static void VEC_deferred_access_check_base_unordered_remove (VEC_deferred_access_check_base *vec_, unsigned ix_ ) { (void)(ix_ < vec_->num); vec_->vec[ix_] = vec_->vec[--vec_->num]; } static void VEC_deferred_access_check_base_block_remove (VEC_deferred_access_check_base *vec_, unsigned ix_, unsigned len_ ) { deferred_access_check *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (deferred_access_check)); } static deferred_access_check *VEC_deferred_access_check_base_address (VEC_deferred_access_check_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_deferred_access_check_base_lower_bound (VEC_deferred_access_check_base *vec_, const deferred_access_check *obj_, unsigned char (*lessthan_)(const deferred_access_check *, const deferred_access_check *) ) { unsigned int len_ = VEC_deferred_access_check_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { deferred_access_check *middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_deferred_access_check_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_deferred_access_check_gc { VEC_deferred_access_check_base base; } VEC_deferred_access_check_gc; static VEC_deferred_access_check_gc *VEC_deferred_access_check_gc_alloc (int alloc_ ) { return (VEC_deferred_access_check_gc *) vec_gc_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_deferred_access_check_gc, base.vec), sizeof (deferred_access_check) ); } static VEC_deferred_access_check_gc *VEC_deferred_access_check_gc_copy (VEC_deferred_access_check_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_deferred_access_check_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_deferred_access_check_gc *)(vec_gc_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_deferred_access_check_gc, base.vec), sizeof (deferred_access_check) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (deferred_access_check) * len_); } return new_vec_; } static void VEC_deferred_access_check_gc_free (VEC_deferred_access_check_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static int VEC_deferred_access_check_gc_reserve (VEC_deferred_access_check_gc **vec_, int alloc_ ) { int extend = !VEC_deferred_access_check_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_deferred_access_check_gc *) vec_gc_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_deferred_access_check_gc, base.vec), sizeof (deferred_access_check) ); return extend; } static int VEC_deferred_access_check_gc_reserve_exact (VEC_deferred_access_check_gc **vec_, int alloc_ ) { int extend = !VEC_deferred_access_check_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_deferred_access_check_gc *) vec_gc_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_deferred_access_check_gc, base.vec), sizeof (deferred_access_check) ); return extend; } static void VEC_deferred_access_check_gc_safe_grow (VEC_deferred_access_check_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_deferred_access_check_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_deferred_access_check_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_deferred_access_check_gc_safe_grow_cleared (VEC_deferred_access_check_gc **vec_, int size_ ) { int oldsize = VEC_deferred_access_check_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_deferred_access_check_gc_safe_grow (vec_, size_ ); memset (&(VEC_deferred_access_check_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (deferred_access_check) * (size_ - oldsize)); } static void VEC_deferred_access_check_gc_safe_splice (VEC_deferred_access_check_gc **dst_, VEC_deferred_access_check_base *src_ ) { if (src_) { VEC_deferred_access_check_gc_reserve_exact (dst_, src_->num ); VEC_deferred_access_check_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static deferred_access_check *VEC_deferred_access_check_gc_safe_push (VEC_deferred_access_check_gc **vec_, const deferred_access_check *obj_ ) { VEC_deferred_access_check_gc_reserve (vec_, 1 ); return VEC_deferred_access_check_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static deferred_access_check *VEC_deferred_access_check_gc_safe_insert (VEC_deferred_access_check_gc **vec_, unsigned ix_, const deferred_access_check *obj_ ) { VEC_deferred_access_check_gc_reserve (vec_, 1 ); return VEC_deferred_access_check_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;


extern void push_deferring_access_checks (deferring_kind);
extern void resume_deferring_access_checks (void);
extern void stop_deferring_access_checks (void);
extern void pop_deferring_access_checks (void);
extern VEC_deferred_access_check_gc* get_deferred_access_checks (void);
extern void pop_to_parent_deferring_access_checks (void);
extern void perform_access_checks (VEC_deferred_access_check_gc*);
extern void perform_deferred_access_checks (void);
extern void perform_or_defer_access_check (tree, tree, tree);
extern unsigned char speculative_access_check (tree, tree, tree, unsigned char);
extern int stmts_are_full_exprs_p (void);
extern void init_cp_semantics (void);
extern tree do_poplevel (tree);
extern void add_decl_expr (tree);
extern tree finish_expr_stmt (tree);
extern tree begin_if_stmt (void);
extern void finish_if_stmt_cond (tree, tree);
extern tree finish_then_clause (tree);
extern void begin_else_clause (tree);
extern void finish_else_clause (tree);
extern void finish_if_stmt (tree);
extern tree begin_while_stmt (void);
extern void finish_while_stmt_cond (tree, tree);
extern void finish_while_stmt (tree);
extern tree begin_do_stmt (void);
extern void finish_do_body (tree);
extern void finish_do_stmt (tree, tree);
extern tree finish_return_stmt (tree);
extern tree begin_for_scope (tree *);
extern tree begin_for_stmt (tree, tree);
extern void finish_for_init_stmt (tree);
extern void finish_for_cond (tree, tree);
extern void finish_for_expr (tree, tree);
extern void finish_for_stmt (tree);
extern tree begin_range_for_stmt (tree, tree);
extern void finish_range_for_decl (tree, tree, tree);
extern void finish_range_for_stmt (tree);
extern tree finish_break_stmt (void);
extern tree finish_continue_stmt (void);
extern tree begin_switch_stmt (void);
extern void finish_switch_cond (tree, tree);
extern void finish_switch_stmt (tree);
extern tree finish_goto_stmt (tree);
extern tree begin_try_block (void);
extern void finish_try_block (tree);
extern void finish_handler_sequence (tree);
extern tree begin_function_try_block (tree *);
extern void finish_function_try_block (tree);
extern void finish_function_handler_sequence (tree, tree);
extern void finish_cleanup_try_block (tree);
extern tree begin_handler (void);
extern void finish_handler_parms (tree, tree);
extern void finish_handler (tree);
extern void finish_cleanup (tree, tree);
extern unsigned char literal_type_p (tree);
extern tree validate_constexpr_fundecl (tree);
extern tree register_constexpr_fundef (tree, tree);
extern unsigned char check_constexpr_ctor_body (tree, tree);
extern tree ensure_literal_type_for_constexpr_object (tree);
extern unsigned char potential_constant_expression (tree);
extern unsigned char potential_rvalue_constant_expression (tree);
extern unsigned char require_potential_constant_expression (tree);
extern unsigned char require_potential_rvalue_constant_expression (tree);
extern tree cxx_constant_value (tree);
extern tree maybe_constant_value (tree);
extern tree maybe_constant_init (tree);
extern unsigned char is_sub_constant_expr (tree);
extern unsigned char reduced_constant_expression_p (tree);
extern VEC_tree_heap* cx_error_context (void);

enum {
  BCS_NO_SCOPE = 1,
  BCS_TRY_BLOCK = 2,
  BCS_FN_BODY = 4
};
extern tree begin_compound_stmt (unsigned int);

extern void finish_compound_stmt (tree);
extern tree finish_asm_stmt (int, tree, tree, tree, tree,
       tree);
extern tree finish_label_stmt (tree);
extern void finish_label_decl (tree);
extern tree finish_parenthesized_expr (tree);
extern tree finish_non_static_data_member (tree, tree, tree);
extern tree begin_stmt_expr (void);
extern tree finish_stmt_expr_expr (tree, tree);
extern tree finish_stmt_expr (tree, unsigned char);
extern tree stmt_expr_value_expr (tree);
unsigned char empty_expr_stmt_p (tree);
extern tree perform_koenig_lookup (tree, VEC_tree_gc *, unsigned char);
extern tree finish_call_expr (tree, VEC_tree_gc **, unsigned char,
       unsigned char, tsubst_flags_t);
extern tree finish_increment_expr (tree, enum tree_code);
extern tree finish_this_expr (void);
extern tree finish_pseudo_destructor_expr (tree, tree, tree);
extern tree finish_unary_op_expr (enum tree_code, tree);
extern tree finish_compound_literal (tree, tree);
extern tree finish_fname (tree);
extern void finish_translation_unit (void);
extern tree finish_template_type_parm (tree, tree);
extern tree finish_template_template_parm (tree, tree);
extern tree begin_class_definition (tree, tree);
extern void finish_template_decl (tree);
extern tree finish_template_type (tree, tree, int);
extern tree finish_base_specifier (tree, tree, unsigned char);
extern void finish_member_declaration (tree);
extern tree finish_id_expression (tree, tree, tree,
       cp_id_kind *,
       unsigned char, unsigned char, unsigned char *,
       unsigned char, unsigned char, unsigned char, unsigned char,
       const char **,
                                                 location_t);
extern tree finish_typeof (tree);
extern tree finish_offsetof (tree);
extern void finish_decl_cleanup (tree, tree);
extern void finish_eh_cleanup (tree);
extern void emit_associated_thunks (tree);
extern void finish_mem_initializers (tree);
extern tree check_template_template_default_arg (tree);
extern unsigned char expand_or_defer_fn_1 (tree);
extern void expand_or_defer_fn (tree);
extern void add_typedef_to_current_template_for_access_check (tree, tree,
             location_t);
extern void check_accessibility_of_qualified_id (tree, tree, tree);
extern tree finish_qualified_id_expr (tree, tree, unsigned char, unsigned char,
       unsigned char, unsigned char);
extern void simplify_aggr_init_expr (tree *);
extern void finalize_nrv (tree *, tree, tree);
extern void note_decl_for_pch (tree);
extern tree finish_omp_clauses (tree);
extern void finish_omp_threadprivate (tree);
extern tree begin_omp_structured_block (void);
extern tree finish_omp_structured_block (tree);
extern tree begin_omp_parallel (void);
extern tree finish_omp_parallel (tree, tree);
extern tree begin_omp_task (void);
extern tree finish_omp_task (tree, tree);
extern tree finish_omp_for (location_t, tree, tree,
       tree, tree, tree, tree, tree);
extern void finish_omp_atomic (enum tree_code, tree, tree);
extern void finish_omp_barrier (void);
extern void finish_omp_flush (void);
extern void finish_omp_taskwait (void);
extern unsigned char cxx_omp_create_clause_info (tree, tree, unsigned char, unsigned char, unsigned char);
extern tree baselink_for_fns (tree);
extern void finish_static_assert (tree, tree, location_t,
                                                 unsigned char);
extern tree describable_type (tree);
extern tree finish_decltype_type (tree, unsigned char, tsubst_flags_t);
extern tree finish_trait_expr (enum cp_trait_kind, tree, tree);
extern tree build_lambda_expr (void);
extern tree build_lambda_object (tree);
extern tree begin_lambda_type (tree);
extern tree lambda_capture_field_type (tree);
extern tree lambda_return_type (tree);
extern tree lambda_function (tree);
extern void apply_lambda_return_type (tree, tree);
extern tree add_capture (tree, tree, tree, unsigned char, unsigned char);
extern tree add_default_capture (tree, tree, tree);
extern void register_capture_members (tree);
extern tree lambda_expr_this_capture (tree);
extern tree nonlambda_method_basetype (void);
extern void maybe_add_lambda_conv_op (tree);


void cp_free_lang_data (tree t);
extern tree force_target_expr (tree, tree);
extern tree build_target_expr_with_type (tree, tree);
extern void lang_check_failed (const char *, int,
       const char *) ; // __attribute__ ((__noreturn__));
extern tree stabilize_expr (tree, tree *);
extern void stabilize_call (tree, tree *);
extern void stabilize_aggr_init (tree, tree *);
extern unsigned char stabilize_init (tree, tree *);
extern tree add_stmt_to_compound (tree, tree);
extern void init_tree (void);
extern unsigned char pod_type_p (const_tree);
extern unsigned char layout_pod_type_p (const_tree);
extern unsigned char std_layout_type_p (const_tree);
extern unsigned char trivial_type_p (const_tree);
extern unsigned char trivially_copyable_p (const_tree);
extern unsigned char type_has_nontrivial_default_init (const_tree);
extern unsigned char type_has_nontrivial_copy_init (const_tree);
extern unsigned char class_tmpl_impl_spec_p (const_tree);
extern int zero_init_p (const_tree);
extern tree strip_typedefs (tree);
extern tree copy_binfo (tree, tree, tree,
       tree *, int);
extern int member_p (const_tree);
extern cp_lvalue_kind real_lvalue_p (const_tree);
extern cp_lvalue_kind lvalue_kind (const_tree);
extern unsigned char lvalue_or_rvalue_with_address_p (const_tree);
extern unsigned char builtin_valid_in_constant_expr_p (const_tree);
extern tree build_min (enum tree_code, tree, ...);
extern tree build_min_nt (enum tree_code, ...);
extern tree build_min_non_dep (enum tree_code, tree, ...);
extern tree build_min_non_dep_call_vec (tree, tree, VEC_tree_gc *);
extern tree build_cplus_new (tree, tree);
extern tree build_aggr_init_expr (tree, tree);
extern tree get_target_expr (tree);
extern tree build_cplus_array_type (tree, tree);
extern tree build_array_of_n_type (tree, int);
extern tree build_array_copy (tree);
extern tree build_vec_init_expr (tree, tree);
extern void diagnose_non_constexpr_vec_init (tree);
extern tree hash_tree_cons (tree, tree, tree);
extern tree hash_tree_chain (tree, tree);
extern tree build_qualified_name (tree, tree, tree, unsigned char);
extern int is_overloaded_fn (tree);
extern tree get_fns (tree);
extern tree get_first_fn (tree);
extern tree ovl_cons (tree, tree);
extern tree build_overload (tree, tree);
extern unsigned char non_static_member_function_p (tree);
extern const char *cxx_printable_name (tree, int);
extern const char *cxx_printable_name_translate (tree, int);
extern tree build_exception_variant (tree, tree);
extern tree bind_template_template_parm (tree, tree);
extern tree array_type_nelts_total (tree);
extern tree array_type_nelts_top (tree);
extern tree break_out_target_exprs (tree);
extern tree get_type_decl (tree);
extern tree decl_namespace_context (tree);
extern unsigned char decl_anon_ns_mem_p (const_tree);
extern tree lvalue_type (tree);
extern tree error_type (tree);
extern int varargs_function_p (const_tree);
extern unsigned char really_overloaded_fn (tree);
extern unsigned char cp_tree_equal (tree, tree);
extern tree no_linkage_check (tree, unsigned char);
extern void debug_binfo (tree);
extern tree build_dummy_object (tree);
extern tree maybe_dummy_object (tree, tree *);
extern int is_dummy_object (const_tree);
extern const struct attribute_spec cxx_attribute_table[];
extern tree make_ptrmem_cst (tree, tree);
extern tree cp_build_type_attribute_variant (tree, tree);
extern tree cp_build_reference_type (tree, unsigned char);
extern tree move (tree);
extern tree cp_build_qualified_type_real (tree, int, tsubst_flags_t);


extern unsigned char cv_qualified_p (const_tree);
extern tree cv_unqualified (tree);
extern special_function_kind special_function_p (const_tree);
extern int count_trees (tree);
extern int char_type_p (tree);
extern void verify_stmt_tree (tree);
extern linkage_kind decl_linkage (tree);
extern duration_kind decl_storage_duration (tree);
extern tree cp_walk_subtrees (tree*, int*, walk_tree_fn,
         void*, struct pointer_set_t*);




extern tree fold_if_not_in_template (tree);
extern tree rvalue (tree);
extern tree convert_bitfield_to_declared_type (tree);
extern tree cp_save_expr (tree);
extern unsigned char cast_valid_in_integral_constant_expression_p (tree);
extern unsigned char cxx_type_hash_eq (const_tree, const_tree);

extern void cxx_print_statistics (void);


extern void cxx_print_xnode (FILE *, tree, int);
extern void cxx_print_decl (FILE *, tree, int);
extern void cxx_print_type (FILE *, tree, int);
extern void cxx_print_identifier (FILE *, tree, int);
extern void cxx_print_error_function (diagnostic_context *,
       const char *,
       struct diagnostic_info *);


extern unsigned char cxx_mark_addressable (tree);
extern int string_conv_p (const_tree, const_tree, int);
extern tree cp_truthvalue_conversion (tree);
extern tree condition_conversion (tree);
extern tree require_complete_type (tree);
extern tree require_complete_type_sfinae (tree, tsubst_flags_t);
extern tree complete_type (tree);
extern tree complete_type_or_else (tree, tree);
extern tree complete_type_or_maybe_complain (tree, tree, tsubst_flags_t);
extern int type_unknown_p (const_tree);
enum { ce_derived, ce_normal, ce_exact };
extern unsigned char comp_except_specs (const_tree, const_tree, int);
extern unsigned char comptypes (tree, tree, int);
extern unsigned char same_type_ignoring_top_level_qualifiers_p (tree, tree);
extern unsigned char compparms (const_tree, const_tree);
extern int comp_cv_qualification (const_tree, const_tree);
extern int comp_cv_qual_signature (tree, tree);
extern tree cxx_sizeof_or_alignof_expr (tree, enum tree_code, unsigned char);
extern tree cxx_sizeof_or_alignof_type (tree, enum tree_code, unsigned char);
extern tree cxx_sizeof_nowarn (tree);
extern tree is_bitfield_expr_with_lowered_type (const_tree);
extern tree unlowered_expr_type (const_tree);
extern tree decay_conversion (tree);
extern tree build_class_member_access_expr (tree, tree, tree, unsigned char,
       tsubst_flags_t);
extern tree finish_class_member_access_expr (tree, tree, unsigned char,
       tsubst_flags_t);
extern tree build_x_indirect_ref (tree, ref_operator,
                                                 tsubst_flags_t);
extern tree cp_build_indirect_ref (tree, ref_operator,
                                                 tsubst_flags_t);
extern tree build_array_ref (location_t, tree, tree);
extern tree cp_build_array_ref (location_t, tree, tree,
       tsubst_flags_t);
extern tree get_member_function_from_ptrfunc (tree *, tree);
extern tree cp_build_function_call (tree, tree, tsubst_flags_t);
extern tree cp_build_function_call_nary (tree, tsubst_flags_t, ...)
      ; // __attribute__ ((__sentinel__));
extern tree cp_build_function_call_vec (tree, VEC_tree_gc **,
       tsubst_flags_t);
extern tree build_x_binary_op (enum tree_code, tree,
       enum tree_code, tree,
       enum tree_code, unsigned char *,
       tsubst_flags_t);
extern tree build_x_array_ref (tree, tree, tsubst_flags_t);
extern tree build_x_unary_op (enum tree_code, tree,
                                                 tsubst_flags_t);
extern tree cp_build_addr_expr (tree, tsubst_flags_t);
extern tree cp_build_addr_expr_strict (tree, tsubst_flags_t);
extern tree cp_build_unary_op (enum tree_code, tree, int,
                                                 tsubst_flags_t);
extern tree unary_complex_lvalue (enum tree_code, tree);
extern tree build_x_conditional_expr (tree, tree, tree,
                                                 tsubst_flags_t);
extern tree build_x_compound_expr_from_list (tree, expr_list_kind,
       tsubst_flags_t);
extern tree build_x_compound_expr_from_vec (VEC_tree_gc *, const char *);
extern tree build_x_compound_expr (tree, tree, tsubst_flags_t);
extern tree build_compound_expr (location_t, tree, tree);
extern tree cp_build_compound_expr (tree, tree, tsubst_flags_t);
extern tree build_static_cast (tree, tree, tsubst_flags_t);
extern tree build_reinterpret_cast (tree, tree, tsubst_flags_t);
extern tree build_const_cast (tree, tree, tsubst_flags_t);
extern tree build_c_cast (location_t, tree, tree);
extern tree cp_build_c_cast (tree, tree, tsubst_flags_t);
extern tree build_x_modify_expr (tree, enum tree_code, tree,
       tsubst_flags_t);
extern tree cp_build_modify_expr (tree, enum tree_code, tree,
       tsubst_flags_t);
extern tree convert_for_initialization (tree, tree, tree, int,
       impl_conv_rhs, tree, int,
                                                 tsubst_flags_t);
extern int comp_ptr_ttypes (tree, tree);
extern unsigned char comp_ptr_ttypes_const (tree, tree);
extern unsigned char error_type_p (const_tree);
extern int ptr_reasonably_similar (const_tree, const_tree);
extern tree build_ptrmemfunc (tree, tree, int, unsigned char,
       tsubst_flags_t);
extern int cp_type_quals (const_tree);
extern int type_memfn_quals (const_tree);
extern tree apply_memfn_quals (tree, cp_cv_quals);
extern unsigned char cp_has_mutable_p (const_tree);
extern unsigned char at_least_as_qualified_p (const_tree, const_tree);
extern void cp_apply_type_quals_to_decl (int, tree);
extern tree build_ptrmemfunc1 (tree, tree, tree);
extern void expand_ptrmemfunc_cst (tree, tree *, tree *);
extern tree type_after_usual_arithmetic_conversions (tree, tree);
extern tree common_pointer_type (tree, tree);
extern tree composite_pointer_type (tree, tree, tree, tree,
       composite_pointer_operation,
       tsubst_flags_t);
extern tree merge_types (tree, tree);
extern tree strip_array_domain (tree);
extern tree check_return_expr (tree, unsigned char *);
extern tree cp_build_binary_op (location_t,
       enum tree_code, tree, tree,
       tsubst_flags_t);

extern tree build_ptrmemfunc_access_expr (tree, tree);
extern tree build_address (tree);
extern tree build_typed_address (tree, tree);
extern tree build_nop (tree, tree);
extern tree non_reference (tree);
extern tree lookup_anon_field (tree, tree);
extern unsigned char invalid_nonstatic_memfn_p (const_tree, tsubst_flags_t);
extern tree convert_member_func_to_ptr (tree, tree);
extern tree convert_ptrmem (tree, tree, unsigned char, unsigned char,
       tsubst_flags_t);
extern int lvalue_or_else (tree, enum lvalue_use,
                                                 tsubst_flags_t);
extern void check_template_keyword (tree);


extern void require_complete_eh_spec_types (tree, tree);
extern void cxx_incomplete_type_diagnostic (const_tree, const_tree, diagnostic_t);

extern void cxx_incomplete_type_error (const_tree, const_tree);


extern tree error_not_base_type (tree, tree);
extern tree binfo_or_else (tree, tree);
extern void cxx_readonly_error (tree, enum lvalue_use);
extern void complete_type_check_abstract (tree);
extern int abstract_virtuals_error (tree, tree);

extern tree store_init_value (tree, tree, int);
extern void check_narrowing (tree, tree);
extern tree digest_init (tree, tree);
extern tree digest_init_flags (tree, tree, int);
extern tree build_scoped_ref (tree, tree, tree *);
extern tree build_x_arrow (tree);
extern tree build_m_component_ref (tree, tree);
extern tree build_functional_cast (tree, tree, tsubst_flags_t);
extern tree add_exception_specifier (tree, tree, int);
extern tree merge_exception_specifiers (tree, tree);


extern void init_mangle (void);
extern void mangle_decl (tree);
extern const char *mangle_type_string (tree);
extern tree mangle_typeinfo_for_type (tree);
extern tree mangle_typeinfo_string_for_type (tree);
extern tree mangle_vtbl_for_type (tree);
extern tree mangle_vtt_for_type (tree);
extern tree mangle_ctor_vtbl_for_type (tree, tree);
extern tree mangle_thunk (tree, int, tree, tree);
extern tree mangle_conv_op_name_for_type (tree);
extern tree mangle_guard_variable (tree);
extern tree mangle_ref_init_variable (tree);


extern unsigned char cp_dump_tree (void *, tree);



extern alias_set_type cxx_get_alias_set (tree);
extern unsigned char cxx_warn_unused_global_decl (const_tree);
extern size_t cp_tree_size (enum tree_code);
extern unsigned char cp_var_mod_type_p (tree, tree);
extern void cxx_initialize_diagnostics (diagnostic_context *);
extern int cxx_types_compatible_p (tree, tree);
extern void init_shadowed_var_for_decl (void);


extern int cp_gimplify_expr (tree *, gimple_seq *,
       gimple_seq *);
extern void cp_genericize (tree);
extern enum omp_clause_default_kind cxx_omp_predetermined_sharing (tree);
extern tree cxx_omp_clause_default_ctor (tree, tree, tree);
extern tree cxx_omp_clause_copy_ctor (tree, tree, tree);
extern tree cxx_omp_clause_assign_op (tree, tree, tree);
extern tree cxx_omp_clause_dtor (tree, tree);
extern void cxx_omp_finish_clause (tree);
extern unsigned char cxx_omp_privatize_by_reference (const_tree);


extern void suggest_alternatives_for (location_t, tree);
# 7 "plugin.c" 2





const enum tree_code_class tree_code_type[] = {
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 1
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def" 1
# 42 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_exceptional,





tcc_exceptional,






tcc_exceptional,


tcc_exceptional,
# 79 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_exceptional,
# 123 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_type,
# 136 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_type,



tcc_type,
# 150 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_type,



tcc_type,
# 163 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_type,



tcc_type,


tcc_type,




tcc_type,
# 184 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_type,




tcc_type,
# 205 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_type,
# 215 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_type,





tcc_type,





tcc_type,






tcc_type,







tcc_type,






tcc_type,





tcc_type,
# 268 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_constant,


tcc_constant,


tcc_constant,



tcc_constant,


tcc_constant,


tcc_constant,
# 344 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_declaration,
tcc_declaration,




tcc_declaration,
tcc_declaration,
tcc_declaration,
tcc_declaration,
tcc_declaration,
tcc_declaration,



tcc_declaration,



tcc_declaration,
# 374 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_declaration,



tcc_declaration,
# 391 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_reference,
# 401 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_reference,



tcc_reference,
tcc_reference,






tcc_reference,




tcc_reference,


tcc_reference,
# 430 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_expression,
# 446 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_exceptional,
# 456 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_expression,


tcc_expression,




tcc_expression,







tcc_expression,
# 486 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_expression,
# 498 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_expression,
# 521 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_expression,







tcc_vl_exp,






tcc_expression,
# 553 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_expression,
# 605 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_exceptional,


tcc_binary,
tcc_binary,
tcc_binary,



tcc_binary,


tcc_binary,


tcc_binary,


tcc_binary,


tcc_binary,


tcc_binary,
tcc_binary,
tcc_binary,
tcc_binary,


tcc_binary,



tcc_binary,


tcc_unary,


tcc_unary,


tcc_unary,




tcc_binary,
tcc_binary,





tcc_unary,
# 675 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_binary,
tcc_binary,
tcc_binary,
tcc_binary,


tcc_binary,
tcc_binary,
tcc_binary,
tcc_unary,
# 695 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_expression,
tcc_expression,
tcc_expression,
tcc_expression,
tcc_expression,
tcc_expression,







tcc_comparison,
tcc_comparison,
tcc_comparison,
tcc_comparison,
tcc_comparison,
tcc_comparison,


tcc_comparison,
tcc_comparison,


tcc_comparison,
tcc_comparison,
tcc_comparison,
tcc_comparison,
tcc_comparison,


tcc_comparison,

tcc_binary,



tcc_unary,




tcc_unary,



tcc_unary,




tcc_unary,


tcc_unary,


tcc_unary,
# 765 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_reference,






tcc_expression,




tcc_expression,



tcc_expression,



tcc_expression,



tcc_binary,


tcc_unary,




tcc_expression,
tcc_expression,
tcc_expression,
tcc_expression,


tcc_expression,






tcc_statement,




tcc_statement,





tcc_statement,




tcc_statement,



tcc_statement,






tcc_statement,



tcc_statement,




tcc_statement,
# 860 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_statement,





tcc_statement,






tcc_statement,




tcc_exceptional,



tcc_statement,





tcc_statement,



tcc_expression,



tcc_expression,



tcc_expression,



tcc_exceptional,
# 923 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_expression,



tcc_exceptional,






tcc_expression,
# 945 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_expression,
# 961 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_reference,
# 971 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_reference,







tcc_statement,





tcc_statement,
# 1006 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_statement,




tcc_statement,




tcc_statement,



tcc_statement,



tcc_statement,



tcc_statement,




tcc_statement,







tcc_statement,


tcc_exceptional,







tcc_unary,
tcc_unary,
tcc_unary,
# 1065 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_expression,
# 1074 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_binary,






tcc_binary,
# 1090 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree.def"
tcc_expression,


tcc_expression,





tcc_expression,




tcc_binary,
tcc_binary,






tcc_binary,
tcc_binary,





tcc_unary,
tcc_unary,





tcc_unary,
tcc_unary,





tcc_binary,
tcc_binary,





tcc_binary,


tcc_binary,
tcc_binary,


tcc_binary,
tcc_binary,






tcc_expression,


tcc_exceptional,


tcc_exceptional,
# 2 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.def" 1
# 41 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/c-family/c-common.def"
tcc_expression,






tcc_expression,
# 4 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def" 1
# 29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def"
tcc_type,





tcc_reference,




tcc_expression,



tcc_binary,



tcc_binary,




tcc_reference,
# 62 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ada/gcc-interface/ada-tree.def"
tcc_statement,





tcc_statement,





tcc_statement,
# 5 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def" 1
# 43 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_reference,




tcc_constant,





tcc_expression,
tcc_expression,




tcc_expression,
tcc_expression,




tcc_reference,




tcc_reference,



tcc_expression,






tcc_vl_exp,




tcc_expression,



tcc_expression,



tcc_expression,
# 109 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_exceptional,
# 126 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_declaration,
# 161 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_exceptional,
# 170 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_type,
# 179 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_type,





tcc_type,



tcc_type,





tcc_type,





tcc_type,





tcc_declaration,


tcc_statement,




tcc_exceptional,






tcc_expression,



tcc_exceptional,
# 238 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_expression,



tcc_expression,
tcc_unary,
tcc_unary,
tcc_unary,
tcc_unary,
tcc_unary,
tcc_expression,
tcc_expression,
tcc_unary,
# 261 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_expression,



tcc_expression,

tcc_statement,

tcc_statement,





tcc_statement,



tcc_expression,




tcc_statement,





tcc_statement,



tcc_statement,




tcc_statement,



tcc_statement,



tcc_statement,


tcc_statement,


tcc_statement,



tcc_statement,



tcc_expression,

tcc_expression,


tcc_expression,


tcc_expression,


tcc_expression,



tcc_expression,



tcc_expression,




tcc_expression,



tcc_unary,







tcc_exceptional,
# 376 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_type,
# 385 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_expression,
# 408 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_type,






tcc_expression,
# 427 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_exceptional,




tcc_exceptional,
# 441 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_exceptional,
# 450 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_type,
# 460 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cp/cp-tree.def"
tcc_exceptional,
# 6 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/java/java-tree.def" 1
# 23 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/java/java-tree.def"
tcc_binary,



tcc_binary,


tcc_binary,

tcc_binary,
# 7 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def"
tcc_type,
tcc_type,

tcc_type,
tcc_type,

tcc_type,


tcc_declaration,
tcc_declaration,
tcc_declaration,
tcc_declaration,


tcc_expression,
tcc_expression,
# 71 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/objc/objc-tree.def"
tcc_expression,
# 7 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/all-tree.def" 2
# 14 "plugin.c" 2
};

static void generic_callback(void *gcc_data, void *user_data);
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/config.h" 1
# 18 "plugin.c" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/system.h" 1
# 19 "plugin.c" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/coretypes.h" 1
# 20 "plugin.c" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tm.h" 1
# 21 "plugin.c" 2

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h" 1
# 24 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/predict.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/predict.h"
enum br_predictor
{
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/predict.def" 1
# 38 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/predict.def"
PRED_COMBINED,


PRED_DS_THEORY,



PRED_FIRST_MATCH,


PRED_NO_PREDICTION,


PRED_UNCONDITIONAL,





PRED_LOOP_ITERATIONS,



PRED_BUILTIN_EXPECT,



PRED_LOOP_ITERATIONS_GUESSED,



PRED_CONTINUE,


PRED_NORETURN,



PRED_COLD_FUNCTION,



PRED_LOOP_BRANCH,



PRED_LOOP_EXIT,



PRED_POINTER,
PRED_TREE_POINTER,


PRED_OPCODE_POSITIVE,
PRED_OPCODE_NONEQUAL,
PRED_FPOPCODE,
PRED_TREE_OPCODE_POSITIVE,
PRED_TREE_OPCODE_NONEQUAL,
PRED_TREE_FPOPCODE,


PRED_CALL,


PRED_TREE_EARLY_RETURN,


PRED_GOTO,


PRED_CONST_RETURN,


PRED_NEGATIVE_RETURN,


PRED_NULL_RETURN,


PRED_MUDFLAP,
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/predict.h" 2


  END_PREDICTORS
};

enum prediction
{
   NOT_TAKEN,
   TAKEN
};

extern void predict_insn_def (rtx, enum br_predictor, enum prediction);
extern int counts_to_freqs (void);
extern void estimate_bb_frequencies (void);
extern const char *predictor_name (enum br_predictor);
extern tree build_predict_expr (enum br_predictor, enum prediction);
extern void tree_estimate_probability (void);
extern void compute_function_frequency (void);
extern void rebuild_frequencies (void);
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h" 2

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/function.h" 1
# 27 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h" 2






typedef long long gcov_type;


struct edge_def {

  struct basic_block_def *src;
  struct basic_block_def *dest;


  union edge_def_insns {
    gimple_seq g;
    rtx r;
  } insns;


  void * aux;


  tree goto_block;
  location_t goto_locus;



  unsigned int dest_idx;

  int flags;
  int probability;
  gcov_type count;

};

static void VEC_edge_must_be_pointer_type (void) { (void)((edge)1 == (void *)1); } typedef struct VEC_edge_base { unsigned num; unsigned alloc; edge vec[1]; } VEC_edge_base; typedef struct VEC_edge_none { VEC_edge_base base; } VEC_edge_none; static unsigned VEC_edge_base_length (const VEC_edge_base *vec_) { return vec_ ? vec_->num : 0; } static edge VEC_edge_base_last (const VEC_edge_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static edge VEC_edge_base_index (const VEC_edge_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_edge_base_iterate (const VEC_edge_base *vec_, unsigned ix_, edge *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (edge) 0; return 0; } } static size_t VEC_edge_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_edge_base, vec) + alloc_ * sizeof(edge); } static void VEC_edge_base_embedded_init (VEC_edge_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_edge_base_space (VEC_edge_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_edge_base_splice (VEC_edge_base *dst_, VEC_edge_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (edge)); dst_->num += len_; } } static edge *VEC_edge_base_quick_push (VEC_edge_base *vec_, edge obj_ ) { edge *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static edge VEC_edge_base_pop (VEC_edge_base *vec_ ) { edge obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_edge_base_truncate (VEC_edge_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static edge VEC_edge_base_replace (VEC_edge_base *vec_, unsigned ix_, edge obj_ ) { edge old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static edge *VEC_edge_base_quick_insert (VEC_edge_base *vec_, unsigned ix_, edge obj_ ) { edge *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (edge)); *slot_ = obj_; return slot_; } static edge VEC_edge_base_ordered_remove (VEC_edge_base *vec_, unsigned ix_ ) { edge *slot_; edge obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (edge)); return obj_; } static edge VEC_edge_base_unordered_remove (VEC_edge_base *vec_, unsigned ix_ ) { edge *slot_; edge obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_edge_base_block_remove (VEC_edge_base *vec_, unsigned ix_, unsigned len_ ) { edge *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (edge)); } static edge *VEC_edge_base_address (VEC_edge_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_edge_base_lower_bound (VEC_edge_base *vec_, const edge obj_, unsigned char (*lessthan_)(const edge, const edge) ) { unsigned int len_ = VEC_edge_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { edge middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_edge_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_edge_gc { VEC_edge_base base; } VEC_edge_gc; static VEC_edge_gc *VEC_edge_gc_alloc (int alloc_ ) { return (VEC_edge_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_edge_gc_free (VEC_edge_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_edge_gc *VEC_edge_gc_copy (VEC_edge_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_edge_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_edge_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (edge) * len_); } return new_vec_; } static int VEC_edge_gc_reserve (VEC_edge_gc **vec_, int alloc_ ) { int extend = !VEC_edge_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_edge_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_edge_gc_reserve_exact (VEC_edge_gc **vec_, int alloc_ ) { int extend = !VEC_edge_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_edge_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_edge_gc_safe_grow (VEC_edge_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_edge_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_edge_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_edge_gc_safe_grow_cleared (VEC_edge_gc **vec_, int size_ ) { int oldsize = VEC_edge_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_edge_gc_safe_grow (vec_, size_ ); memset (&(VEC_edge_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (edge) * (size_ - oldsize)); } static void VEC_edge_gc_safe_splice (VEC_edge_gc **dst_, VEC_edge_base *src_ ) { if (src_) { VEC_edge_gc_reserve_exact (dst_, src_->num ); VEC_edge_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static edge *VEC_edge_gc_safe_push (VEC_edge_gc **vec_, edge obj_ ) { VEC_edge_gc_reserve (vec_, 1 ); return VEC_edge_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static edge *VEC_edge_gc_safe_insert (VEC_edge_gc **vec_, unsigned ix_, edge obj_ ) { VEC_edge_gc_reserve (vec_, 1 ); return VEC_edge_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
typedef struct VEC_edge_heap { VEC_edge_base base; } VEC_edge_heap; static VEC_edge_heap *VEC_edge_heap_alloc (int alloc_ ) { return (VEC_edge_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_edge_heap_free (VEC_edge_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_edge_heap *VEC_edge_heap_copy (VEC_edge_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_edge_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_edge_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (edge) * len_); } return new_vec_; } static int VEC_edge_heap_reserve (VEC_edge_heap **vec_, int alloc_ ) { int extend = !VEC_edge_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_edge_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_edge_heap_reserve_exact (VEC_edge_heap **vec_, int alloc_ ) { int extend = !VEC_edge_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_edge_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_edge_heap_safe_grow (VEC_edge_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_edge_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_edge_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_edge_heap_safe_grow_cleared (VEC_edge_heap **vec_, int size_ ) { int oldsize = VEC_edge_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_edge_heap_safe_grow (vec_, size_ ); memset (&(VEC_edge_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (edge) * (size_ - oldsize)); } static void VEC_edge_heap_safe_splice (VEC_edge_heap **dst_, VEC_edge_base *src_ ) { if (src_) { VEC_edge_heap_reserve_exact (dst_, src_->num ); VEC_edge_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static edge *VEC_edge_heap_safe_push (VEC_edge_heap **vec_, edge obj_ ) { VEC_edge_heap_reserve (vec_, 1 ); return VEC_edge_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static edge *VEC_edge_heap_safe_insert (VEC_edge_heap **vec_, unsigned ix_, edge obj_ ) { VEC_edge_heap_reserve (vec_, 1 ); return VEC_edge_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
# 96 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h"
extern const struct gcov_ctr_summary *profile_info;


struct loop;


struct rtl_bb_info;
# 130 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h"
struct basic_block_def {

  VEC_edge_gc *preds;
  VEC_edge_gc *succs;


  void * aux;


  struct loop *loop_father;


  struct et_node * dom[2];


  struct basic_block_def *prev_bb;
  struct basic_block_def *next_bb;

  union basic_block_il_dependent {
      struct gimple_bb_info * gimple;
      struct rtl_bb_info * rtl;
    } il;


  gcov_type count;


  int index;


  int loop_depth;


  int frequency;


  int discriminator;


  int flags;
};

struct rtl_bb_info {

  rtx head_;
  rtx end_;



  rtx header;
  rtx footer;


  int visited;
};

struct gimple_bb_info {

  gimple_seq seq;


  gimple_seq phi_nodes;
};

static void VEC_basic_block_must_be_pointer_type (void) { (void)((basic_block)1 == (void *)1); } typedef struct VEC_basic_block_base { unsigned num; unsigned alloc; basic_block vec[1]; } VEC_basic_block_base; typedef struct VEC_basic_block_none { VEC_basic_block_base base; } VEC_basic_block_none; static unsigned VEC_basic_block_base_length (const VEC_basic_block_base *vec_) { return vec_ ? vec_->num : 0; } static basic_block VEC_basic_block_base_last (const VEC_basic_block_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static basic_block VEC_basic_block_base_index (const VEC_basic_block_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_basic_block_base_iterate (const VEC_basic_block_base *vec_, unsigned ix_, basic_block *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (basic_block) 0; return 0; } } static size_t VEC_basic_block_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_basic_block_base, vec) + alloc_ * sizeof(basic_block); } static void VEC_basic_block_base_embedded_init (VEC_basic_block_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_basic_block_base_space (VEC_basic_block_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_basic_block_base_splice (VEC_basic_block_base *dst_, VEC_basic_block_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (basic_block)); dst_->num += len_; } } static basic_block *VEC_basic_block_base_quick_push (VEC_basic_block_base *vec_, basic_block obj_ ) { basic_block *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static basic_block VEC_basic_block_base_pop (VEC_basic_block_base *vec_ ) { basic_block obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_basic_block_base_truncate (VEC_basic_block_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static basic_block VEC_basic_block_base_replace (VEC_basic_block_base *vec_, unsigned ix_, basic_block obj_ ) { basic_block old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static basic_block *VEC_basic_block_base_quick_insert (VEC_basic_block_base *vec_, unsigned ix_, basic_block obj_ ) { basic_block *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (basic_block)); *slot_ = obj_; return slot_; } static basic_block VEC_basic_block_base_ordered_remove (VEC_basic_block_base *vec_, unsigned ix_ ) { basic_block *slot_; basic_block obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (basic_block)); return obj_; } static basic_block VEC_basic_block_base_unordered_remove (VEC_basic_block_base *vec_, unsigned ix_ ) { basic_block *slot_; basic_block obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_basic_block_base_block_remove (VEC_basic_block_base *vec_, unsigned ix_, unsigned len_ ) { basic_block *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (basic_block)); } static basic_block *VEC_basic_block_base_address (VEC_basic_block_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_basic_block_base_lower_bound (VEC_basic_block_base *vec_, const basic_block obj_, unsigned char (*lessthan_)(const basic_block, const basic_block) ) { unsigned int len_ = VEC_basic_block_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { basic_block middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_basic_block_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_basic_block_gc { VEC_basic_block_base base; } VEC_basic_block_gc; static VEC_basic_block_gc *VEC_basic_block_gc_alloc (int alloc_ ) { return (VEC_basic_block_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_basic_block_gc_free (VEC_basic_block_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_basic_block_gc *VEC_basic_block_gc_copy (VEC_basic_block_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_basic_block_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_basic_block_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (basic_block) * len_); } return new_vec_; } static int VEC_basic_block_gc_reserve (VEC_basic_block_gc **vec_, int alloc_ ) { int extend = !VEC_basic_block_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_basic_block_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_basic_block_gc_reserve_exact (VEC_basic_block_gc **vec_, int alloc_ ) { int extend = !VEC_basic_block_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_basic_block_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_basic_block_gc_safe_grow (VEC_basic_block_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_basic_block_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_basic_block_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_basic_block_gc_safe_grow_cleared (VEC_basic_block_gc **vec_, int size_ ) { int oldsize = VEC_basic_block_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_basic_block_gc_safe_grow (vec_, size_ ); memset (&(VEC_basic_block_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (basic_block) * (size_ - oldsize)); } static void VEC_basic_block_gc_safe_splice (VEC_basic_block_gc **dst_, VEC_basic_block_base *src_ ) { if (src_) { VEC_basic_block_gc_reserve_exact (dst_, src_->num ); VEC_basic_block_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static basic_block *VEC_basic_block_gc_safe_push (VEC_basic_block_gc **vec_, basic_block obj_ ) { VEC_basic_block_gc_reserve (vec_, 1 ); return VEC_basic_block_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static basic_block *VEC_basic_block_gc_safe_insert (VEC_basic_block_gc **vec_, unsigned ix_, basic_block obj_ ) { VEC_basic_block_gc_reserve (vec_, 1 ); return VEC_basic_block_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
typedef struct VEC_basic_block_heap { VEC_basic_block_base base; } VEC_basic_block_heap; static VEC_basic_block_heap *VEC_basic_block_heap_alloc (int alloc_ ) { return (VEC_basic_block_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_basic_block_heap_free (VEC_basic_block_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_basic_block_heap *VEC_basic_block_heap_copy (VEC_basic_block_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_basic_block_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_basic_block_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (basic_block) * len_); } return new_vec_; } static int VEC_basic_block_heap_reserve (VEC_basic_block_heap **vec_, int alloc_ ) { int extend = !VEC_basic_block_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_basic_block_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_basic_block_heap_reserve_exact (VEC_basic_block_heap **vec_, int alloc_ ) { int extend = !VEC_basic_block_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_basic_block_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_basic_block_heap_safe_grow (VEC_basic_block_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_basic_block_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_basic_block_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_basic_block_heap_safe_grow_cleared (VEC_basic_block_heap **vec_, int size_ ) { int oldsize = VEC_basic_block_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_basic_block_heap_safe_grow (vec_, size_ ); memset (&(VEC_basic_block_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (basic_block) * (size_ - oldsize)); } static void VEC_basic_block_heap_safe_splice (VEC_basic_block_heap **dst_, VEC_basic_block_base *src_ ) { if (src_) { VEC_basic_block_heap_reserve_exact (dst_, src_->num ); VEC_basic_block_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static basic_block *VEC_basic_block_heap_safe_push (VEC_basic_block_heap **vec_, basic_block obj_ ) { VEC_basic_block_heap_reserve (vec_, 1 ); return VEC_basic_block_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static basic_block *VEC_basic_block_heap_safe_insert (VEC_basic_block_heap **vec_, unsigned ix_, basic_block obj_ ) { VEC_basic_block_heap_reserve (vec_, 1 ); return VEC_basic_block_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
# 208 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h"
enum bb_flags
{

  BB_NEW = 1 << 0,



  BB_REACHABLE = 1 << 1,


  BB_IRREDUCIBLE_LOOP = 1 << 2,


  BB_SUPERBLOCK = 1 << 3,



  BB_DISABLE_SCHEDULE = 1 << 4,


  BB_HOT_PARTITION = 1 << 5,


  BB_COLD_PARTITION = 1 << 6,


  BB_DUPLICATED = 1 << 7,


  BB_NON_LOCAL_GOTO_TARGET = 1 << 8,


  BB_RTL = 1 << 9 ,



  BB_FORWARDER_BLOCK = 1 << 10,



  BB_NONTHREADABLE_BLOCK = 1 << 11,





  BB_MODIFIED = 1 << 12
};
# 274 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h"
enum dom_state
{
  DOM_NONE,
  DOM_NO_FAST_QUERY,
  DOM_OK
};


enum profile_status_d
{
  PROFILE_ABSENT,
  PROFILE_GUESSED,
  PROFILE_READ
};





struct control_flow_graph {


  basic_block x_entry_block_ptr;
  basic_block x_exit_block_ptr;


  VEC_basic_block_gc *x_basic_block_info;


  int x_n_basic_blocks;


  int x_n_edges;


  int x_last_basic_block;


  int last_label_uid;



  VEC_basic_block_gc *x_label_to_block_map;

  enum profile_status_d x_profile_status;


  enum dom_state x_dom_computed[2];


  unsigned x_n_bbs_in_dom_tree[2];



  int max_jumptable_ents;
};
# 421 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h"
extern void compute_bb_for_insn (void);
extern unsigned int free_bb_for_insn (void);
extern void update_bb_for_insn (basic_block);

extern void insert_insn_on_edge (rtx, edge);
basic_block split_edge_and_insert (edge, rtx);

extern void commit_one_edge_insertion (edge e);
extern void commit_edge_insertions (void);

extern void remove_fake_edges (void);
extern void remove_fake_exit_edges (void);
extern void add_noreturn_fake_exit_edges (void);
extern void connect_infinite_loops_to_exit (void);
extern edge unchecked_make_edge (basic_block, basic_block, int);
extern edge cached_make_edge (sbitmap, basic_block, basic_block, int);
extern edge make_edge (basic_block, basic_block, int);
extern edge make_single_succ_edge (basic_block, basic_block, int);
extern void remove_edge_raw (edge);
extern void redirect_edge_succ (edge, basic_block);
extern edge redirect_edge_succ_nodup (edge, basic_block);
extern void redirect_edge_pred (edge, basic_block);
extern basic_block create_basic_block_structure (rtx, rtx, rtx, basic_block);
extern void clear_bb_flags (void);
extern int post_order_compute (int *, unsigned char, unsigned char);
extern int inverted_post_order_compute (int *);
extern int pre_and_rev_post_order_compute (int *, int *, unsigned char);
extern int dfs_enumerate_from (basic_block, int,
          unsigned char (*)(const_basic_block, const void *),
          basic_block *, int, const void *);
extern void compute_dominance_frontiers (struct bitmap_head_def *);
extern bitmap compute_idf (bitmap, struct bitmap_head_def *);
extern void dump_bb_info (basic_block, unsigned char, unsigned char, int, const char *, FILE *);
extern void dump_edge_info (FILE *, edge, int);
extern void brief_dump_cfg (FILE *);
extern void clear_edges (void);
extern void scale_bbs_frequencies_int (basic_block *, int, int, int);
extern void scale_bbs_frequencies_gcov_type (basic_block *, int, gcov_type,
          gcov_type);






typedef struct ce_if_block
{
  basic_block test_bb;
  basic_block then_bb;
  basic_block else_bb;
  basic_block join_bb;
  basic_block last_test_bb;
  int num_multiple_test_blocks;
  int num_and_and_blocks;
  int num_or_or_blocks;
  int num_multiple_test_insns;
  int and_and_p;
  int num_then_insns;
  int num_else_insns;
  int pass;





} ce_if_block_t;


struct edge_list
{
  int num_blocks;
  int num_edges;
  edge *index_to_edge;
};
# 542 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h"
static unsigned char
single_succ_p (const_basic_block bb)
{
  return (VEC_edge_base_length((((bb->succs)) ? &((bb->succs))->base : 0))) == 1;
}



static unsigned char
single_pred_p (const_basic_block bb)
{
  return (VEC_edge_base_length((((bb->preds)) ? &((bb->preds))->base : 0))) == 1;
}




static edge
single_succ_edge (const_basic_block bb)
{
  ((void)(0 && (single_succ_p (bb))));
  return (VEC_edge_base_index((((bb)->succs) ? &((bb)->succs)->base : 0),(0) ));
}




static edge
single_pred_edge (const_basic_block bb)
{
  ((void)(0 && (single_pred_p (bb))));
  return (VEC_edge_base_index((((bb)->preds) ? &((bb)->preds)->base : 0),(0) ));
}




static basic_block
single_succ (const_basic_block bb)
{
  return single_succ_edge (bb)->dest;
}




static basic_block
single_pred (const_basic_block bb)
{
  return single_pred_edge (bb)->src;
}



typedef struct {
  unsigned index;
  VEC_edge_gc **container;
} edge_iterator;

static VEC_edge_gc *
ei_container (edge_iterator i)
{
  ((void)(0 && (i.container)));
  return *i.container;
}





static edge_iterator
ei_start_1 (VEC_edge_gc **ev)
{
  edge_iterator i;

  i.index = 0;
  i.container = ev;

  return i;
}



static edge_iterator
ei_last_1 (VEC_edge_gc **ev)
{
  edge_iterator i;

  i.index = (VEC_edge_base_length((((*ev)) ? &((*ev))->base : 0))) - 1;
  i.container = ev;

  return i;
}


static unsigned char
ei_end_p (edge_iterator i)
{
  return (i.index == (VEC_edge_base_length((((ei_container (i))) ? &((ei_container (i)))->base : 0))));
}



static unsigned char
ei_one_before_end_p (edge_iterator i)
{
  return (i.index + 1 == (VEC_edge_base_length((((ei_container (i))) ? &((ei_container (i)))->base : 0))));
}


static void
ei_next (edge_iterator *i)
{
  ((void)(0 && (i->index < (VEC_edge_base_length((((ei_container (*i))) ? &((ei_container (*i)))->base : 0))))));
  i->index++;
}


static void
ei_prev (edge_iterator *i)
{
  ((void)(0 && (i->index > 0)));
  i->index--;
}


static edge
ei_edge (edge_iterator i)
{
  return (VEC_edge_base_index((((ei_container (i))) ? &((ei_container (i)))->base : 0),(i.index) ));
}




static edge
ei_safe_edge (edge_iterator i)
{
  return !ei_end_p (i) ? ei_edge (i) : ((void *)0);
}





static unsigned char
ei_cond (edge_iterator ei, edge *p)
{
  if (!ei_end_p (ei))
    {
      *p = ei_edge (ei);
      return 1;
    }
  else
    {
      *p = ((void *)0);
      return 0;
    }
}
# 722 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h"
struct edge_list * create_edge_list (void);
void free_edge_list (struct edge_list *);
void print_edge_list (FILE *, struct edge_list *);
void verify_edge_list (FILE *, struct edge_list *);
int find_edge_index (struct edge_list *, basic_block, basic_block);
edge find_edge (basic_block, basic_block);
# 740 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h"
extern struct edge_list *pre_edge_lcm (int, sbitmap *, sbitmap *,
           sbitmap *, sbitmap *, sbitmap **,
           sbitmap **);
extern struct edge_list *pre_edge_rev_lcm (int, sbitmap *,
        sbitmap *, sbitmap *,
        sbitmap *, sbitmap **,
        sbitmap **);
extern void compute_available (sbitmap *, sbitmap *, sbitmap *, sbitmap *);


extern unsigned char maybe_hot_bb_p (const_basic_block);
extern unsigned char maybe_hot_edge_p (edge);
extern unsigned char probably_never_executed_bb_p (const_basic_block);
extern unsigned char optimize_bb_for_size_p (const_basic_block);
extern unsigned char optimize_bb_for_speed_p (const_basic_block);
extern unsigned char optimize_edge_for_size_p (edge);
extern unsigned char optimize_edge_for_speed_p (edge);
extern unsigned char optimize_loop_for_size_p (struct loop *);
extern unsigned char optimize_loop_for_speed_p (struct loop *);
extern unsigned char optimize_loop_nest_for_size_p (struct loop *);
extern unsigned char optimize_loop_nest_for_speed_p (struct loop *);
extern unsigned char gimple_predicted_by_p (const_basic_block, enum br_predictor);
extern unsigned char rtl_predicted_by_p (const_basic_block, enum br_predictor);
extern void gimple_predict_edge (edge, enum br_predictor, int);
extern void rtl_predict_edge (edge, enum br_predictor, int);
extern void predict_edge_def (edge, enum br_predictor, enum prediction);
extern void guess_outgoing_edge_probabilities (basic_block);
extern void remove_predictions_associated_with_edge (edge);
extern unsigned char edge_probability_reliable_p (const_edge);
extern unsigned char br_prob_note_reliable_p (const_rtx);
extern unsigned char predictable_edge_p (edge);


extern void init_flow (struct function *);
extern void debug_bb (basic_block);
extern basic_block debug_bb_n (int);
extern void expunge_block (basic_block);
extern void link_block (basic_block, basic_block);
extern void unlink_block (basic_block);
extern void compact_blocks (void);
extern basic_block alloc_block (void);
extern void alloc_aux_for_blocks (int);
extern void clear_aux_for_blocks (void);
extern void free_aux_for_blocks (void);
extern void alloc_aux_for_edges (int);
extern void clear_aux_for_edges (void);
extern void free_aux_for_edges (void);


extern void find_unreachable_blocks (void);
extern unsigned char forwarder_block_p (const_basic_block);
extern unsigned char can_fallthru (basic_block, basic_block);
extern unsigned char could_fall_through (basic_block, basic_block);
extern void flow_nodes_print (const char *, const_sbitmap, FILE *);
extern void flow_edge_list_print (const char *, const edge *, int, FILE *);


extern basic_block force_nonfallthru (edge);
extern rtx block_label (basic_block);
extern unsigned char purge_all_dead_edges (void);
extern unsigned char purge_dead_edges (basic_block);


extern void find_many_sub_basic_blocks (sbitmap);
extern void rtl_make_eh_edge (sbitmap, basic_block, rtx);


extern unsigned char cleanup_cfg (int);
extern int flow_find_cross_jump (basic_block, basic_block, rtx *, rtx *);
extern int flow_find_head_matching_sequence (basic_block, basic_block,
          rtx *, rtx *, int);

extern unsigned char delete_unreachable_blocks (void);

extern unsigned char mark_dfs_back_edges (void);
extern void set_edge_can_fallthru_flag (void);
extern void update_br_prob_note (basic_block);
extern void fixup_abnormal_edges (void);
extern unsigned char inside_basic_block_p (const_rtx);
extern unsigned char control_flow_insn_p (const_rtx);
extern rtx get_last_bb_insn (basic_block);


extern void reorder_basic_blocks (void);



enum cdi_direction
{
  CDI_DOMINATORS = 1,
  CDI_POST_DOMINATORS = 2
};

extern enum dom_state dom_info_state (enum cdi_direction);
extern void set_dom_info_availability (enum cdi_direction, enum dom_state);
extern unsigned char dom_info_available_p (enum cdi_direction);
extern void calculate_dominance_info (enum cdi_direction);
extern void free_dominance_info (enum cdi_direction);
extern basic_block nearest_common_dominator (enum cdi_direction,
          basic_block, basic_block);
extern basic_block nearest_common_dominator_for_set (enum cdi_direction,
           bitmap);
extern void set_immediate_dominator (enum cdi_direction, basic_block,
         basic_block);
extern basic_block get_immediate_dominator (enum cdi_direction, basic_block);
extern unsigned char dominated_by_p (enum cdi_direction, const_basic_block, const_basic_block);
extern VEC_basic_block_heap *get_dominated_by (enum cdi_direction, basic_block);
extern VEC_basic_block_heap *get_dominated_by_region (enum cdi_direction,
        basic_block *,
        unsigned);
extern VEC_basic_block_heap *get_dominated_to_depth (enum cdi_direction,
       basic_block, int);
extern VEC_basic_block_heap *get_all_dominated_blocks (enum cdi_direction,
         basic_block);
extern void add_to_dominance_info (enum cdi_direction, basic_block);
extern void delete_from_dominance_info (enum cdi_direction, basic_block);
basic_block recompute_dominator (enum cdi_direction, basic_block);
extern void redirect_immediate_dominators (enum cdi_direction, basic_block,
        basic_block);
extern void iterate_fix_dominators (enum cdi_direction,
        VEC_basic_block_heap *, unsigned char);
extern void verify_dominators (enum cdi_direction);
extern basic_block first_dom_son (enum cdi_direction, basic_block);
extern basic_block next_dom_son (enum cdi_direction, basic_block);
unsigned bb_dom_dfs_in (enum cdi_direction, basic_block);
unsigned bb_dom_dfs_out (enum cdi_direction, basic_block);

extern edge try_redirect_by_replacing_jump (edge, basic_block, unsigned char);
extern void break_superblocks (void);
extern void relink_block_chain (unsigned char);
extern void check_bb_profile (basic_block, FILE *);
extern void update_bb_profile_for_threading (basic_block, int, gcov_type, edge);
extern void init_rtl_bb_info (basic_block);

extern void initialize_original_copy_tables (void);
extern void free_original_copy_tables (void);
extern void set_bb_original (basic_block, basic_block);
extern basic_block get_bb_original (basic_block);
extern void set_bb_copy (basic_block, basic_block);
extern basic_block get_bb_copy (basic_block);
void set_loop_copy (struct loop *, struct loop *);
struct loop *get_loop_copy (struct loop *);

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cfghooks.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cfghooks.h"
struct cfg_hooks
{

  const char *name;


  int (*verify_flow_info) (void);
  void (*dump_bb) (basic_block, FILE *, int, int);




  basic_block (*create_basic_block) (void *head, void *end, basic_block after);





  edge (*redirect_edge_and_branch) (edge e, basic_block b);




  basic_block (*redirect_edge_and_branch_force) (edge, basic_block);



  unsigned char (*can_remove_branch_p) (const_edge);


  void (*delete_basic_block) (basic_block);



  basic_block (*split_block) (basic_block b, void * i);


  unsigned char (*move_block_after) (basic_block b, basic_block a);


  unsigned char (*can_merge_blocks_p) (basic_block a, basic_block b);


  void (*merge_blocks) (basic_block a, basic_block b);


  void (*predict_edge) (edge e, enum br_predictor predictor, int probability);



  unsigned char (*predicted_by_p) (const_basic_block bb, enum br_predictor predictor);


  unsigned char (*can_duplicate_block_p) (const_basic_block a);


  basic_block (*duplicate_block) (basic_block a);



  basic_block (*split_edge) (edge);
  void (*make_forwarder_block) (edge);


  void (*tidy_fallthru_edge) (edge);



  unsigned char (*block_ends_with_call_p) (basic_block);



  unsigned char (*block_ends_with_condjump_p) (const_basic_block);
# 106 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cfghooks.h"
  int (*flow_call_edges_add) (sbitmap);



  void (*execute_on_growing_pred) (edge);



  void (*execute_on_shrinking_pred) (edge);



  unsigned char (*cfg_hook_duplicate_loop_to_header_edge) (struct loop *, edge,
        unsigned, sbitmap,
        edge, VEC_edge_heap **,
        int);



  void (*lv_add_condition_to_bb) (basic_block, basic_block, basic_block,
      void *);

  void (*lv_adjust_loop_header_phi) (basic_block, basic_block,
         basic_block, edge);



  void (*extract_cond_bb_edges) (basic_block, edge *, edge *);




  void (*flush_pending_stmts) (edge);
};

extern void verify_flow_info (void);
extern void dump_bb (basic_block, FILE *, int);
extern edge redirect_edge_and_branch (edge, basic_block);
extern basic_block redirect_edge_and_branch_force (edge, basic_block);
extern unsigned char can_remove_branch_p (const_edge);
extern void remove_branch (edge);
extern void remove_edge (edge);
extern edge split_block (basic_block, void *);
extern edge split_block_after_labels (basic_block);
extern unsigned char move_block_after (basic_block, basic_block);
extern void delete_basic_block (basic_block);
extern basic_block split_edge (edge);
extern basic_block create_basic_block (void *, void *, basic_block);
extern basic_block create_empty_bb (basic_block);
extern unsigned char can_merge_blocks_p (basic_block, basic_block);
extern void merge_blocks (basic_block, basic_block);
extern edge make_forwarder_block (basic_block, unsigned char (*)(edge),
      void (*) (basic_block));
extern void tidy_fallthru_edge (edge);
extern void tidy_fallthru_edges (void);
extern void predict_edge (edge e, enum br_predictor predictor, int probability);
extern unsigned char predicted_by_p (const_basic_block bb, enum br_predictor predictor);
extern unsigned char can_duplicate_block_p (const_basic_block);
extern basic_block duplicate_block (basic_block, edge, basic_block);
extern unsigned char block_ends_with_call_p (basic_block bb);
extern unsigned char block_ends_with_condjump_p (const_basic_block bb);
extern int flow_call_edges_add (sbitmap);
extern void execute_on_growing_pred (edge);
extern void execute_on_shrinking_pred (edge);
extern unsigned char cfg_hook_duplicate_loop_to_header_edge (struct loop *loop, edge,
          unsigned int ndupl,
          sbitmap wont_exit,
          edge orig,
          VEC_edge_heap **to_remove,
          int flags);

extern void lv_flush_pending_stmts (edge);
extern void extract_cond_bb_edges (basic_block, edge *, edge*);
extern void lv_adjust_loop_header_phi (basic_block, basic_block, basic_block,
           edge);
extern void lv_add_condition_to_bb (basic_block, basic_block, basic_block,
        void *);


extern struct cfg_hooks gimple_cfg_hooks;
extern struct cfg_hooks rtl_cfg_hooks;
extern struct cfg_hooks cfg_layout_rtl_cfg_hooks;


extern enum ir_type current_ir_type (void);
extern void rtl_register_cfg_hooks (void);
extern void cfg_layout_rtl_register_cfg_hooks (void);
extern void gimple_register_cfg_hooks (void);
extern struct cfg_hooks get_cfg_hooks (void);
extern void set_cfg_hooks (struct cfg_hooks);
# 884 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h" 2


static unsigned char
bb_has_eh_pred (basic_block bb)
{
  edge e;
  edge_iterator ei;

  for ((ei) = ei_start_1 (&((bb->preds))); ei_cond ((ei), &(e)); ei_next (&(ei)))
    {
      if (e->flags & 8)
 return 1;
    }
  return 0;
}


static unsigned char
bb_has_abnormal_pred (basic_block bb)
{
  edge e;
  edge_iterator ei;

  for ((ei) = ei_start_1 (&((bb->preds))); ei_cond ((ei), &(e)); ei_next (&(ei)))
    {
      if (e->flags & 2)
 return 1;
    }
  return 0;
}


static edge
find_fallthru_edge (VEC_edge_gc *edges)
{
  edge e;
  edge_iterator ei;

  for ((ei) = ei_start_1 (&((edges))); ei_cond ((ei), &(e)); ei_next (&(ei)))
    if (e->flags & 1)
      break;

  return e;
}


extern edge mfb_kj_edge;
extern unsigned char mfb_keep_just (edge);


extern void rtl_profile_for_bb (basic_block);
extern void rtl_profile_for_edge (edge);
extern void default_rtl_profile (void);
# 23 "plugin.c" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/bitmap.h" 1
# 29 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/bitmap.h"
typedef unsigned long BITMAP_WORD;
# 45 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/bitmap.h"
typedef struct bitmap_obstack {
  struct bitmap_element_def *elements;
  struct bitmap_head_def *heads;
  struct obstack obstack;
} bitmap_obstack;
# 63 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/bitmap.h"
typedef struct bitmap_element_def {
  struct bitmap_element_def *next;
  struct bitmap_element_def *prev;
  unsigned int indx;
  BITMAP_WORD bits[((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u))];
} bitmap_element;

struct bitmap_descriptor;




typedef struct bitmap_head_def {
  bitmap_element *first;
  bitmap_element *current;
  unsigned int indx;
  bitmap_obstack *obstack;




} bitmap_head;


extern bitmap_element bitmap_zero_bits;
extern bitmap_obstack bitmap_default_obstack;


extern void bitmap_clear (bitmap);


extern void bitmap_copy (bitmap, const_bitmap);


extern unsigned char bitmap_equal_p (const_bitmap, const_bitmap);


extern unsigned char bitmap_intersect_p (const_bitmap, const_bitmap);



extern unsigned char bitmap_intersect_compl_p (const_bitmap, const_bitmap);





extern unsigned char bitmap_single_bit_set_p (const_bitmap);


extern unsigned long bitmap_count_bits (const_bitmap);





extern void bitmap_and (bitmap, const_bitmap, const_bitmap);
extern void bitmap_and_into (bitmap, const_bitmap);
extern unsigned char bitmap_and_compl (bitmap, const_bitmap, const_bitmap);
extern unsigned char bitmap_and_compl_into (bitmap, const_bitmap);

extern void bitmap_compl_and_into (bitmap, const_bitmap);
extern void bitmap_clear_range (bitmap, unsigned int, unsigned int);
extern void bitmap_set_range (bitmap, unsigned int, unsigned int);
extern unsigned char bitmap_ior (bitmap, const_bitmap, const_bitmap);
extern unsigned char bitmap_ior_into (bitmap, const_bitmap);
extern void bitmap_xor (bitmap, const_bitmap, const_bitmap);
extern void bitmap_xor_into (bitmap, const_bitmap);


extern unsigned char bitmap_ior_and_into (bitmap DST, const_bitmap B, const_bitmap C);

extern unsigned char bitmap_ior_and_compl (bitmap DST, const_bitmap A, const_bitmap B, const_bitmap C);

extern unsigned char bitmap_ior_and_compl_into (bitmap DST, const_bitmap B, const_bitmap C);


extern unsigned char bitmap_clear_bit (bitmap, int);


extern unsigned char bitmap_set_bit (bitmap, int);


extern int bitmap_bit_p (bitmap, int);


extern void debug_bitmap (const_bitmap);
extern void debug_bitmap_file (FILE *, const_bitmap);


extern void bitmap_print (FILE *, const_bitmap, const char *, const char *);


extern void bitmap_obstack_initialize (bitmap_obstack *);
extern void bitmap_obstack_release (bitmap_obstack *);
extern void bitmap_register (bitmap );
extern void dump_bitmap_statistics (void);




static void
bitmap_initialize_stat (bitmap head, bitmap_obstack *obstack )
{
  head->first = head->current = ((void *)0);
  head->obstack = obstack;



}



extern bitmap bitmap_obstack_alloc_stat (bitmap_obstack *obstack );

extern bitmap bitmap_gc_alloc_stat (void);

extern void bitmap_obstack_free (bitmap);




extern unsigned bitmap_first_set_bit (const_bitmap);
extern unsigned bitmap_last_set_bit (const_bitmap);


extern hashval_t bitmap_hash(const_bitmap);
# 203 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/bitmap.h"
typedef struct
{

  bitmap_element *elt1;


  bitmap_element *elt2;


  unsigned word_no;




  BITMAP_WORD bits;
} bitmap_iterator;




static void
bmp_iter_set_init (bitmap_iterator *bi, const_bitmap map,
     unsigned start_bit, unsigned *bit_no)
{
  bi->elt1 = map->first;
  bi->elt2 = ((void *)0);


  while (1)
    {
      if (!bi->elt1)
 {
   bi->elt1 = &bitmap_zero_bits;
   break;
 }

      if (bi->elt1->indx >= start_bit / (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u)))
 break;
      bi->elt1 = bi->elt1->next;
    }


  if (bi->elt1->indx != start_bit / (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u)))
    start_bit = bi->elt1->indx * (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u));


  bi->word_no = start_bit / (8 * 4 * 1u) % ((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u));
  bi->bits = bi->elt1->bits[bi->word_no];
  bi->bits >>= start_bit % (8 * 4 * 1u);





  start_bit += !bi->bits;

  *bit_no = start_bit;
}




static void
bmp_iter_and_init (bitmap_iterator *bi, const_bitmap map1, const_bitmap map2,
     unsigned start_bit, unsigned *bit_no)
{
  bi->elt1 = map1->first;
  bi->elt2 = map2->first;



  while (1)
    {
      if (!bi->elt1)
 {
   bi->elt2 = ((void *)0);
   break;
 }

      if (bi->elt1->indx >= start_bit / (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u)))
 break;
      bi->elt1 = bi->elt1->next;
    }


  while (1)
    {
      if (!bi->elt2)
 {
   bi->elt1 = bi->elt2 = &bitmap_zero_bits;
   break;
 }

      if (bi->elt2->indx >= bi->elt1->indx)
 break;
      bi->elt2 = bi->elt2->next;
    }


  if (bi->elt1->indx == bi->elt2->indx)
    {


      if (bi->elt1->indx != start_bit / (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u)))
 start_bit = bi->elt1->indx * (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u));

      bi->word_no = start_bit / (8 * 4 * 1u) % ((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u));
      bi->bits = bi->elt1->bits[bi->word_no] & bi->elt2->bits[bi->word_no];
      bi->bits >>= start_bit % (8 * 4 * 1u);
    }
  else
    {


      bi->word_no = ((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) - 1;
      bi->bits = 0;
    }





  start_bit += !bi->bits;

  *bit_no = start_bit;
}




static void
bmp_iter_and_compl_init (bitmap_iterator *bi, const_bitmap map1, const_bitmap map2,
    unsigned start_bit, unsigned *bit_no)
{
  bi->elt1 = map1->first;
  bi->elt2 = map2->first;


  while (1)
    {
      if (!bi->elt1)
 {
   bi->elt1 = &bitmap_zero_bits;
   break;
 }

      if (bi->elt1->indx >= start_bit / (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u)))
 break;
      bi->elt1 = bi->elt1->next;
    }


  while (bi->elt2 && bi->elt2->indx < bi->elt1->indx)
    bi->elt2 = bi->elt2->next;



  if (bi->elt1->indx != start_bit / (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u)))
    start_bit = bi->elt1->indx * (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u));

  bi->word_no = start_bit / (8 * 4 * 1u) % ((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u));
  bi->bits = bi->elt1->bits[bi->word_no];
  if (bi->elt2 && bi->elt1->indx == bi->elt2->indx)
    bi->bits &= ~bi->elt2->bits[bi->word_no];
  bi->bits >>= start_bit % (8 * 4 * 1u);





  start_bit += !bi->bits;

  *bit_no = start_bit;
}




static void
bmp_iter_next (bitmap_iterator *bi, unsigned *bit_no)
{
  bi->bits >>= 1;
  *bit_no += 1;
}



static void
bmp_iter_next_bit (bitmap_iterator * bi, unsigned *bit_no)
{

  {
    unsigned int n = __builtin_ctzl (bi->bits);
    ((void)(!(sizeof (unsigned long) == sizeof (BITMAP_WORD)) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/bitmap.h", 396, __FUNCTION__), 0 : 0));
    bi->bits >>= n;
    *bit_no += n;
  }







}





static unsigned char
bmp_iter_set (bitmap_iterator *bi, unsigned *bit_no)
{

  if (bi->bits)
    {
    next_bit:
      bmp_iter_next_bit (bi, bit_no);
      return 1;
    }




  *bit_no = ((*bit_no + (8 * 4 * 1u) - 1)
      / (8 * 4 * 1u) * (8 * 4 * 1u));
  bi->word_no++;

  while (1)
    {

      while (bi->word_no != ((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)))
 {
   bi->bits = bi->elt1->bits[bi->word_no];
   if (bi->bits)
     goto next_bit;
   *bit_no += (8 * 4 * 1u);
   bi->word_no++;
 }


      bi->elt1 = bi->elt1->next;
      if (!bi->elt1)
 return 0;
      *bit_no = bi->elt1->indx * (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u));
      bi->word_no = 0;
    }
}





static unsigned char
bmp_iter_and (bitmap_iterator *bi, unsigned *bit_no)
{

  if (bi->bits)
    {
    next_bit:
      bmp_iter_next_bit (bi, bit_no);
      return 1;
    }




  *bit_no = ((*bit_no + (8 * 4 * 1u) - 1)
      / (8 * 4 * 1u) * (8 * 4 * 1u));
  bi->word_no++;

  while (1)
    {

      while (bi->word_no != ((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)))
 {
   bi->bits = bi->elt1->bits[bi->word_no] & bi->elt2->bits[bi->word_no];
   if (bi->bits)
     goto next_bit;
   *bit_no += (8 * 4 * 1u);
   bi->word_no++;
 }


      do
 {


   do
     {
       bi->elt1 = bi->elt1->next;
       if (!bi->elt1)
  return 0;
     }
   while (bi->elt1->indx < bi->elt2->indx);



   while (bi->elt2->indx < bi->elt1->indx)
     {
       bi->elt2 = bi->elt2->next;
       if (!bi->elt2)
  return 0;
     }
 }
      while (bi->elt1->indx != bi->elt2->indx);

      *bit_no = bi->elt1->indx * (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u));
      bi->word_no = 0;
    }
}





static unsigned char
bmp_iter_and_compl (bitmap_iterator *bi, unsigned *bit_no)
{

  if (bi->bits)
    {
    next_bit:
      bmp_iter_next_bit (bi, bit_no);
      return 1;
    }




  *bit_no = ((*bit_no + (8 * 4 * 1u) - 1)
      / (8 * 4 * 1u) * (8 * 4 * 1u));
  bi->word_no++;

  while (1)
    {

      while (bi->word_no != ((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)))
 {
   bi->bits = bi->elt1->bits[bi->word_no];
   if (bi->elt2 && bi->elt2->indx == bi->elt1->indx)
     bi->bits &= ~bi->elt2->bits[bi->word_no];
   if (bi->bits)
     goto next_bit;
   *bit_no += (8 * 4 * 1u);
   bi->word_no++;
 }


      bi->elt1 = bi->elt1->next;
      if (!bi->elt1)
 return 0;


      while (bi->elt2 && bi->elt2->indx < bi->elt1->indx)
 bi->elt2 = bi->elt2->next;

      *bit_no = bi->elt1->indx * (((128 + (8 * 4 * 1u) - 1) / (8 * 4 * 1u)) * (8 * 4 * 1u));
      bi->word_no = 0;
    }
}
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/sbitmap.h" 1
# 39 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/sbitmap.h"
struct simple_bitmap_def
{
  unsigned char *popcount;
  unsigned int n_bits;
  unsigned int size;
  unsigned long elms[1];
};
# 58 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/sbitmap.h"
static void
SET_BIT (sbitmap map, unsigned int bitno)
{
  if (map->popcount)
    {
      unsigned char oldbit;
      oldbit = ((map)->elms [(bitno) / ((unsigned) (8 * 4))] >> (bitno) % ((unsigned) (8 * 4)) & 1);
      if (!oldbit)
 map->popcount[bitno / ((unsigned) (8 * 4))]++;
    }
  map->elms[bitno / ((unsigned) (8 * 4))]
    |= (unsigned long) 1 << (bitno) % ((unsigned) (8 * 4));
}






static void
RESET_BIT (sbitmap map, unsigned int bitno)
{
  if (map->popcount)
    {
      unsigned char oldbit;
      oldbit = ((map)->elms [(bitno) / ((unsigned) (8 * 4))] >> (bitno) % ((unsigned) (8 * 4)) & 1);
      if (oldbit)
 map->popcount[bitno / ((unsigned) (8 * 4))]--;
    }
  map->elms[bitno / ((unsigned) (8 * 4))]
    &= ~((unsigned long) 1 << (bitno) % ((unsigned) (8 * 4)));
}


typedef struct {

  const unsigned long *ptr;


  unsigned int size;


  unsigned int word_num;


  unsigned int bit_num;


  unsigned long word;
} sbitmap_iterator;




static void
sbitmap_iter_init (sbitmap_iterator *i, const_sbitmap bmp, unsigned int min)
{
  i->word_num = min / (unsigned int) ((unsigned) (8 * 4));
  i->bit_num = min;
  i->size = bmp->size;
  i->ptr = bmp->elms;

  if (i->word_num >= i->size)
    i->word = 0;
  else
    i->word = (i->ptr[i->word_num]
        >> (i->bit_num % (unsigned int) ((unsigned) (8 * 4))));
}





static unsigned char
sbitmap_iter_cond (sbitmap_iterator *i, unsigned int *n)
{

  for (; i->word == 0; i->word = i->ptr[i->word_num])
    {
      i->word_num++;


      if (i->word_num >= i->size)
 return 0;

      i->bit_num = i->word_num * ((unsigned) (8 * 4));
    }


  for (; (i->word & 1) == 0; i->word >>= 1)
    i->bit_num++;

  *n = i->bit_num;

  return 1;
}



static void
sbitmap_iter_next (sbitmap_iterator *i)
{
  i->word >>= 1;
  i->bit_num++;
}
# 204 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/sbitmap.h"
struct int_list;

extern void dump_sbitmap (FILE *, const_sbitmap);
extern void dump_sbitmap_file (FILE *, const_sbitmap);
extern void dump_sbitmap_vector (FILE *, const char *, const char *, sbitmap *,
     int);
extern sbitmap sbitmap_alloc (unsigned int);
extern sbitmap sbitmap_alloc_with_popcount (unsigned int);
extern sbitmap *sbitmap_vector_alloc (unsigned int, unsigned int);
extern sbitmap sbitmap_resize (sbitmap, unsigned int, int);
extern void sbitmap_copy (sbitmap, const_sbitmap);
extern void sbitmap_copy_n (sbitmap, const_sbitmap, unsigned int);
extern int sbitmap_equal (const_sbitmap, const_sbitmap);
extern unsigned char sbitmap_empty_p (const_sbitmap);
extern unsigned char sbitmap_range_empty_p (const_sbitmap, unsigned int, unsigned int);
extern void sbitmap_zero (sbitmap);
extern void sbitmap_ones (sbitmap);
extern void sbitmap_vector_zero (sbitmap *, unsigned int);
extern void sbitmap_vector_ones (sbitmap *, unsigned int);

extern void sbitmap_union_of_diff (sbitmap, const_sbitmap, const_sbitmap, const_sbitmap);
extern unsigned char sbitmap_union_of_diff_cg (sbitmap, const_sbitmap, const_sbitmap, const_sbitmap);
extern void sbitmap_difference (sbitmap, const_sbitmap, const_sbitmap);
extern void sbitmap_not (sbitmap, const_sbitmap);
extern void sbitmap_a_or_b_and_c (sbitmap, const_sbitmap, const_sbitmap, const_sbitmap);
extern unsigned char sbitmap_a_or_b_and_c_cg (sbitmap, const_sbitmap, const_sbitmap, const_sbitmap);
extern void sbitmap_a_and_b_or_c (sbitmap, const_sbitmap, const_sbitmap, const_sbitmap);
extern unsigned char sbitmap_a_and_b_or_c_cg (sbitmap, const_sbitmap, const_sbitmap, const_sbitmap);
extern unsigned char sbitmap_any_common_bits (const_sbitmap, const_sbitmap);
extern void sbitmap_a_and_b (sbitmap, const_sbitmap, const_sbitmap);
extern unsigned char sbitmap_a_and_b_cg (sbitmap, const_sbitmap, const_sbitmap);
extern void sbitmap_a_or_b (sbitmap, const_sbitmap, const_sbitmap);
extern unsigned char sbitmap_a_or_b_cg (sbitmap, const_sbitmap, const_sbitmap);
extern void sbitmap_a_xor_b (sbitmap, const_sbitmap, const_sbitmap);
extern unsigned char sbitmap_a_xor_b_cg (sbitmap, const_sbitmap, const_sbitmap);
extern unsigned char sbitmap_a_subset_b_p (const_sbitmap, const_sbitmap);

extern int sbitmap_first_set_bit (const_sbitmap);
extern int sbitmap_last_set_bit (const_sbitmap);

extern void sbitmap_intersect_of_predsucc (sbitmap, sbitmap *, int,
        struct int_list **);



extern void sbitmap_union_of_predsucc (sbitmap, sbitmap *, int,
           struct int_list **);






extern void sbitmap_intersection_of_succs (sbitmap, sbitmap *, int);
extern void sbitmap_intersection_of_preds (sbitmap, sbitmap *, int);
extern void sbitmap_union_of_succs (sbitmap, sbitmap *, int);
extern void sbitmap_union_of_preds (sbitmap, sbitmap *, int);

extern void debug_sbitmap (const_sbitmap);
extern sbitmap sbitmap_realloc (sbitmap, unsigned int);
extern unsigned long sbitmap_popcount(const_sbitmap, unsigned long);
extern void sbitmap_verify_popcount (const_sbitmap);
# 27 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/basic-block.h" 1
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h" 2

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/pointer-set.h" 1
# 23 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/pointer-set.h"
struct pointer_set_t;
struct pointer_set_t *pointer_set_create (void);
void pointer_set_destroy (struct pointer_set_t *pset);

int pointer_set_contains (const struct pointer_set_t *pset, const void *p);
int pointer_set_insert (struct pointer_set_t *pset, const void *p);
void pointer_set_traverse (const struct pointer_set_t *,
      unsigned char (*) (const void *, void *),
      void *);

struct pointer_map_t;
struct pointer_map_t *pointer_map_create (void);
void pointer_map_destroy (struct pointer_map_t *pmap);

void **pointer_map_contains (const struct pointer_map_t *pmap, const void *p);
void **pointer_map_insert (struct pointer_map_t *pmap, const void *p);
void pointer_map_traverse (const struct pointer_map_t *,
      unsigned char (*) (const void *, void **, void *), void *);
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h" 2



# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ggc.h" 1
# 30 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h" 2

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-ssa-operands.h" 1
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-ssa-operands.h"
typedef tree *def_operand_p;


typedef ssa_use_operand_t *use_operand_p;






struct def_optype_d
{
  struct def_optype_d *next;
  tree *def_ptr;
};
typedef struct def_optype_d *def_optype_p;


struct use_optype_d
{
  struct use_optype_d *next;
  struct ssa_use_operand_d use_ptr;
};
typedef struct use_optype_d *use_optype_p;





struct ssa_operand_memory_d {
  struct ssa_operand_memory_d *next;
  char mem[1];
};


struct ssa_operands {
   struct ssa_operand_memory_d *operand_memory;
   unsigned operand_memory_index;

   unsigned int ssa_operand_mem_size;

   unsigned char ops_active;

   struct def_optype_d * free_defs;
   struct use_optype_d * free_uses;
};
# 103 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-ssa-operands.h"
extern void init_ssa_operands (void);
extern void fini_ssa_operands (void);
extern void update_stmt_operands (gimple);
extern void free_stmt_operands (gimple);
extern unsigned char verify_imm_links (FILE *f, tree var);

extern void dump_immediate_uses (FILE *file);
extern void dump_immediate_uses_for (FILE *file, tree var);
extern void debug_immediate_uses (void);
extern void debug_immediate_uses_for (tree var);
extern void dump_decl_set (FILE *, bitmap);
extern void debug_decl_set (bitmap);

extern unsigned char ssa_operands_active (void);

extern void unlink_stmt_vdef (gimple);

enum ssa_op_iter_type {
  ssa_op_iter_none = 0,
  ssa_op_iter_tree,
  ssa_op_iter_use,
  ssa_op_iter_def
};






typedef struct ssa_operand_iterator_d
{
  unsigned char done;
  enum ssa_op_iter_type iter_type;
  def_optype_p defs;
  use_optype_p uses;
  int phi_i;
  int num_phi;
  gimple phi_stmt;
} ssa_op_iter;
# 32 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-ssa-alias.h" 1
# 31 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-ssa-alias.h"
struct pt_solution
{


  unsigned int anything : 1;



  unsigned int nonlocal : 1;



  unsigned int escaped : 1;



  unsigned int ipa_escaped : 1;



  unsigned int null : 1;



  unsigned int vars_contains_global : 1;


  unsigned int vars_contains_restrict : 1;


  bitmap vars;
};





typedef struct ao_ref_s
{


  tree ref;





  tree base;

  long long offset;

  long long size;

  long long max_size;


  alias_set_type ref_alias_set;


  alias_set_type base_alias_set;
} ao_ref;



extern void ao_ref_init (ao_ref *, tree);
extern void ao_ref_init_from_ptr_and_size (ao_ref *, tree, tree);
extern tree ao_ref_base (ao_ref *);
extern alias_set_type ao_ref_alias_set (ao_ref *);
extern unsigned char ptr_deref_may_alias_global_p (tree);
extern unsigned char ptr_derefs_may_alias_p (tree, tree);
extern unsigned char refs_may_alias_p (tree, tree);
extern unsigned char refs_may_alias_p_1 (ao_ref *, ao_ref *, unsigned char);
extern unsigned char refs_anti_dependent_p (tree, tree);
extern unsigned char refs_output_dependent_p (tree, tree);
extern unsigned char ref_maybe_used_by_stmt_p (gimple, tree);
extern unsigned char stmt_may_clobber_ref_p (gimple, tree);
extern unsigned char stmt_may_clobber_ref_p_1 (gimple, ao_ref *);
extern unsigned char call_may_clobber_ref_p (gimple, tree);
extern unsigned char stmt_kills_ref_p (gimple, tree);
extern tree get_continuation_for_phi (gimple, ao_ref *, bitmap *);
extern void *walk_non_aliased_vuses (ao_ref *, tree,
         void *(*)(ao_ref *, tree, void *),
         void *(*)(ao_ref *, tree, void *), void *);
extern unsigned int walk_aliased_vdefs (ao_ref *, tree,
     unsigned char (*)(ao_ref *, tree, void *),
     void *, bitmap *);
extern struct ptr_info_def *get_ptr_info (tree);
extern void dump_alias_info (FILE *);
extern void debug_alias_info (void);
extern void dump_points_to_solution (FILE *, struct pt_solution *);
extern void dump_points_to_info_for (FILE *, tree);
extern void debug_points_to_info_for (tree);
extern void dump_alias_stats (FILE *);



extern unsigned int compute_may_aliases (void);
extern void delete_alias_heapvars (void);
extern unsigned char pt_solution_empty_p (struct pt_solution *);
extern unsigned char pt_solution_includes_global (struct pt_solution *);
extern unsigned char pt_solution_includes (struct pt_solution *, const_tree);
extern unsigned char pt_solutions_intersect (struct pt_solution *, struct pt_solution *);
extern unsigned char pt_solutions_same_restrict_base (struct pt_solution *,
          struct pt_solution *);
extern void pt_solution_reset (struct pt_solution *);
extern void pt_solution_set (struct pt_solution *, bitmap, unsigned char, unsigned char);
extern void pt_solution_set_var (struct pt_solution *, tree);

extern void dump_pta_stats (FILE *);

extern struct pt_solution ipa_escaped_pt;
# 33 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/internal-fn.h" 1
# 23 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/internal-fn.h"
enum internal_fn {

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/internal-fn.def" 1
# 41 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/internal-fn.def"
IFN_LOAD_LANES,
IFN_STORE_LANES,
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/internal-fn.h" 2

  IFN_LAST
};

extern const char *const internal_fn_name_array[];
extern const int internal_fn_flags_array[];




static const char *
internal_fn_name (enum internal_fn fn)
{
  return internal_fn_name_array[(int) fn];
}



static int
internal_fn_flags (enum internal_fn fn)
{
  return internal_fn_flags_array[(int) fn];
}

extern void expand_internal_call (gimple);
# 34 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h" 2

struct gimple_seq_node_d;
typedef struct gimple_seq_node_d *gimple_seq_node;
typedef const struct gimple_seq_node_d *const_gimple_seq_node;



typedef VEC_gimple_heap *gimple_vec;
static void VEC_gimple_vec_must_be_pointer_type (void) { (void)((gimple_vec)1 == (void *)1); } typedef struct VEC_gimple_vec_base { unsigned num; unsigned alloc; gimple_vec vec[1]; } VEC_gimple_vec_base; typedef struct VEC_gimple_vec_none { VEC_gimple_vec_base base; } VEC_gimple_vec_none; static unsigned VEC_gimple_vec_base_length (const VEC_gimple_vec_base *vec_) { return vec_ ? vec_->num : 0; } static gimple_vec VEC_gimple_vec_base_last (const VEC_gimple_vec_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static gimple_vec VEC_gimple_vec_base_index (const VEC_gimple_vec_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_gimple_vec_base_iterate (const VEC_gimple_vec_base *vec_, unsigned ix_, gimple_vec *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (gimple_vec) 0; return 0; } } static size_t VEC_gimple_vec_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_gimple_vec_base, vec) + alloc_ * sizeof(gimple_vec); } static void VEC_gimple_vec_base_embedded_init (VEC_gimple_vec_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_gimple_vec_base_space (VEC_gimple_vec_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_gimple_vec_base_splice (VEC_gimple_vec_base *dst_, VEC_gimple_vec_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (gimple_vec)); dst_->num += len_; } } static gimple_vec *VEC_gimple_vec_base_quick_push (VEC_gimple_vec_base *vec_, gimple_vec obj_ ) { gimple_vec *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static gimple_vec VEC_gimple_vec_base_pop (VEC_gimple_vec_base *vec_ ) { gimple_vec obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_gimple_vec_base_truncate (VEC_gimple_vec_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static gimple_vec VEC_gimple_vec_base_replace (VEC_gimple_vec_base *vec_, unsigned ix_, gimple_vec obj_ ) { gimple_vec old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static gimple_vec *VEC_gimple_vec_base_quick_insert (VEC_gimple_vec_base *vec_, unsigned ix_, gimple_vec obj_ ) { gimple_vec *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (gimple_vec)); *slot_ = obj_; return slot_; } static gimple_vec VEC_gimple_vec_base_ordered_remove (VEC_gimple_vec_base *vec_, unsigned ix_ ) { gimple_vec *slot_; gimple_vec obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (gimple_vec)); return obj_; } static gimple_vec VEC_gimple_vec_base_unordered_remove (VEC_gimple_vec_base *vec_, unsigned ix_ ) { gimple_vec *slot_; gimple_vec obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_gimple_vec_base_block_remove (VEC_gimple_vec_base *vec_, unsigned ix_, unsigned len_ ) { gimple_vec *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (gimple_vec)); } static gimple_vec *VEC_gimple_vec_base_address (VEC_gimple_vec_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_gimple_vec_base_lower_bound (VEC_gimple_vec_base *vec_, const gimple_vec obj_, unsigned char (*lessthan_)(const gimple_vec, const gimple_vec) ) { unsigned int len_ = VEC_gimple_vec_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { gimple_vec middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_gimple_vec_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_gimple_vec_heap { VEC_gimple_vec_base base; } VEC_gimple_vec_heap; static VEC_gimple_vec_heap *VEC_gimple_vec_heap_alloc (int alloc_ ) { return (VEC_gimple_vec_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_gimple_vec_heap_free (VEC_gimple_vec_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_gimple_vec_heap *VEC_gimple_vec_heap_copy (VEC_gimple_vec_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_gimple_vec_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_gimple_vec_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (gimple_vec) * len_); } return new_vec_; } static int VEC_gimple_vec_heap_reserve (VEC_gimple_vec_heap **vec_, int alloc_ ) { int extend = !VEC_gimple_vec_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_vec_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_gimple_vec_heap_reserve_exact (VEC_gimple_vec_heap **vec_, int alloc_ ) { int extend = !VEC_gimple_vec_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_gimple_vec_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_gimple_vec_heap_safe_grow (VEC_gimple_vec_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_gimple_vec_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_gimple_vec_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_gimple_vec_heap_safe_grow_cleared (VEC_gimple_vec_heap **vec_, int size_ ) { int oldsize = VEC_gimple_vec_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_gimple_vec_heap_safe_grow (vec_, size_ ); memset (&(VEC_gimple_vec_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (gimple_vec) * (size_ - oldsize)); } static void VEC_gimple_vec_heap_safe_splice (VEC_gimple_vec_heap **dst_, VEC_gimple_vec_base *src_ ) { if (src_) { VEC_gimple_vec_heap_reserve_exact (dst_, src_->num ); VEC_gimple_vec_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static gimple_vec *VEC_gimple_vec_heap_safe_push (VEC_gimple_vec_heap **vec_, gimple_vec obj_ ) { VEC_gimple_vec_heap_reserve (vec_, 1 ); return VEC_gimple_vec_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static gimple_vec *VEC_gimple_vec_heap_safe_insert (VEC_gimple_vec_heap **vec_, unsigned ix_, gimple_vec obj_ ) { VEC_gimple_vec_heap_reserve (vec_, 1 ); return VEC_gimple_vec_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

enum gimple_code {

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def" 1
# 27 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_ERROR_MARK,
# 46 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_COND,


GIMPLE_DEBUG,



GIMPLE_GOTO,



GIMPLE_LABEL,
# 74 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_SWITCH,
# 101 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_ASSIGN,
# 111 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_ASM,
# 125 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_CALL,





GIMPLE_RETURN,





GIMPLE_BIND,




GIMPLE_CATCH,




GIMPLE_EH_FILTER,




GIMPLE_EH_MUST_NOT_THROW,


GIMPLE_RESX,



GIMPLE_EH_DISPATCH,
# 171 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_PHI,
# 186 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_TRY,


GIMPLE_NOP,
# 207 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_OMP_ATOMIC_LOAD,

GIMPLE_OMP_ATOMIC_STORE,




GIMPLE_OMP_CONTINUE,







GIMPLE_OMP_CRITICAL,
# 259 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_OMP_FOR,



GIMPLE_OMP_MASTER,



GIMPLE_OMP_ORDERED,
# 285 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_OMP_PARALLEL,
# 311 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.def"
GIMPLE_OMP_TASK,


GIMPLE_OMP_RETURN,



GIMPLE_OMP_SECTION,







GIMPLE_OMP_SECTIONS,




GIMPLE_OMP_SECTIONS_SWITCH,




GIMPLE_OMP_SINGLE,






GIMPLE_PREDICT,






GIMPLE_WITH_CLEANUP_EXPR,
# 48 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h" 2

    LAST_AND_UNUSED_GIMPLE_CODE
};

extern const char *const gimple_code_name[];
extern const unsigned char gimple_rhs_class_table[];
# 76 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h"
enum gimple_rhs_class
{
  GIMPLE_INVALID_RHS,
  GIMPLE_TERNARY_RHS,
  GIMPLE_BINARY_RHS,
  GIMPLE_UNARY_RHS,
  GIMPLE_SINGLE_RHS

};
# 99 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h"
enum gf_mask {
    GF_ASM_INPUT = 1 << 0,
    GF_ASM_VOLATILE = 1 << 1,
    GF_CALL_CANNOT_INLINE = 1 << 0,
    GF_CALL_FROM_THUNK = 1 << 1,
    GF_CALL_RETURN_SLOT_OPT = 1 << 2,
    GF_CALL_TAILCALL = 1 << 3,
    GF_CALL_VA_ARG_PACK = 1 << 4,
    GF_CALL_NOTHROW = 1 << 5,
    GF_CALL_INTERNAL = 1 << 6,
    GF_CALL_INTERNAL_FN = 0xff << 8,
    GF_OMP_PARALLEL_COMBINED = 1 << 0,





    GF_OMP_RETURN_NOWAIT = 1 << 0,

    GF_OMP_SECTION_LAST = 1 << 0,
    GF_PREDICT_TAKEN = 1 << 15
};





enum gimple_debug_subcode {
  GIMPLE_DEBUG_BIND = 0
};



enum plf_mask {
    GF_PLF_1 = 1 << 0,
    GF_PLF_2 = 1 << 1
};


struct gimple_seq_node_d {
  gimple stmt;
  struct gimple_seq_node_d *prev;
  struct gimple_seq_node_d *next;
};


struct gimple_seq_d {

  gimple_seq_node first;
  gimple_seq_node last;





  gimple_seq next_free;
};




static gimple_seq_node
gimple_seq_first (const_gimple_seq s)
{
  return s ? s->first : ((void *)0);
}




static gimple
gimple_seq_first_stmt (const_gimple_seq s)
{
  gimple_seq_node n = gimple_seq_first (s);
  return (n) ? n->stmt : ((void *)0);
}




static gimple_seq_node
gimple_seq_last (const_gimple_seq s)
{
  return s ? s->last : ((void *)0);
}




static gimple
gimple_seq_last_stmt (const_gimple_seq s)
{
  gimple_seq_node n = gimple_seq_last (s);
  return (n) ? n->stmt : ((void *)0);
}




static void
gimple_seq_set_last (gimple_seq s, gimple_seq_node last)
{
  s->last = last;
}




static void
gimple_seq_set_first (gimple_seq s, gimple_seq_node first)
{
  s->first = first;
}




static unsigned char
gimple_seq_empty_p (const_gimple_seq s)
{
  return s == ((void *)0) || s->first == ((void *)0);
}


void gimple_seq_add_stmt (gimple_seq *, gimple);






void gimplify_seq_add_stmt (gimple_seq *, gimple);



static gimple_seq
gimple_seq_alloc_with_stmt (gimple stmt)
{
  gimple_seq seq = ((void *)0);
  gimple_seq_add_stmt (&seq, stmt);
  return seq;
}




static gimple_seq
bb_seq (const_basic_block bb)
{
  return (!(bb->flags & BB_RTL) && bb->il.gimple) ? bb->il.gimple->seq : ((void *)0);
}




static void
set_bb_seq (basic_block bb, gimple_seq seq)
{
  ((void)(0 && (!(bb->flags & BB_RTL))));
  bb->il.gimple->seq = seq;
}



typedef struct
{

  gimple_seq_node ptr;





  gimple_seq seq;
  basic_block bb;
} gimple_stmt_iterator;





struct gimple_statement_base {


enum gimple_code code : 8;


  unsigned int no_warning : 1;



  unsigned int visited : 1;


  unsigned int nontemporal_move : 1;






  unsigned int plf : 2;



  unsigned modified : 1;


  unsigned has_volatile_ops : 1;


  unsigned pad : 1;





  unsigned int subcode : 16;




  unsigned uid;



  location_t location;


  unsigned num_ops;



  struct basic_block_def *bb;



  tree block;
};




struct gimple_statement_with_ops_base
{

  struct gimple_statement_base gsbase;






  struct def_optype_d *def_ops;
  struct use_optype_d *use_ops;
};




struct gimple_statement_with_ops
{

  struct gimple_statement_with_ops_base opbase;





  tree op[1];
};




struct gimple_statement_with_memory_ops_base
{

  struct gimple_statement_with_ops_base opbase;




  tree vdef;
  tree vuse;
};




struct gimple_statement_with_memory_ops
{

  struct gimple_statement_with_memory_ops_base membase;





  tree op[1];
};




struct gimple_statement_call
{

  struct gimple_statement_with_memory_ops_base membase;


  struct pt_solution call_used;
  struct pt_solution call_clobbered;





  tree op[1];
};




struct gimple_statement_omp {

  struct gimple_statement_base gsbase;


  gimple_seq body;
};




struct gimple_statement_bind {

  struct gimple_statement_base gsbase;



  tree vars;







  tree block;


  gimple_seq body;
};




struct gimple_statement_catch {

  struct gimple_statement_base gsbase;


  tree types;


  gimple_seq handler;
};




struct gimple_statement_eh_filter {

  struct gimple_statement_base gsbase;



  tree types;



  gimple_seq failure;
};




struct gimple_statement_eh_mnt {

  struct gimple_statement_base gsbase;


  tree fndecl;
};



struct gimple_statement_phi {

  struct gimple_statement_base gsbase;


  unsigned capacity;
  unsigned nargs;


  tree result;


  struct phi_arg_d args[1];
};




struct gimple_statement_eh_ctrl
{

  struct gimple_statement_base gsbase;



  int region;
};




struct gimple_statement_try {

  struct gimple_statement_base gsbase;



  gimple_seq eval;



  gimple_seq cleanup;
};


enum gimple_try_flags
{

  GIMPLE_TRY_CATCH = 1 << 0,


  GIMPLE_TRY_FINALLY = 1 << 1,
  GIMPLE_TRY_KIND = GIMPLE_TRY_CATCH | GIMPLE_TRY_FINALLY,


  GIMPLE_TRY_CATCH_IS_CLEANUP = 1 << 2
};



struct gimple_statement_wce {

  struct gimple_statement_base gsbase;
# 568 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h"
  gimple_seq cleanup;
};




struct gimple_statement_asm
{

  struct gimple_statement_with_memory_ops_base membase;



  const char *string;



  unsigned char ni;
  unsigned char no;
  unsigned char nc;
  unsigned char nl;





  tree op[1];
};



struct gimple_statement_omp_critical {

  struct gimple_statement_omp omp;



  tree name;
};


struct gimple_omp_for_iter {

  enum tree_code cond;


  tree index;


  tree initial;


  tree final;


  tree incr;
};



struct gimple_statement_omp_for {

  struct gimple_statement_omp omp;


  tree clauses;



  size_t collapse;


  struct gimple_omp_for_iter * iter;



  gimple_seq pre_body;
};




struct gimple_statement_omp_parallel {

  struct gimple_statement_omp omp;



  tree clauses;



  tree child_fn;



  tree data_arg;
};




struct gimple_statement_omp_task {

  struct gimple_statement_omp_parallel par;



  tree copy_fn;



  tree arg_size;
  tree arg_align;
};
# 691 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h"
struct gimple_statement_omp_sections {

  struct gimple_statement_omp omp;


  tree clauses;




  tree control;
};






struct gimple_statement_omp_continue {

  struct gimple_statement_base gsbase;


  tree control_def;


  tree control_use;
};



struct gimple_statement_omp_single {

  struct gimple_statement_omp omp;


  tree clauses;
};






struct gimple_statement_omp_atomic_load {

  struct gimple_statement_base gsbase;


  tree rhs, lhs;
};




struct gimple_statement_omp_atomic_store {

  struct gimple_statement_base gsbase;


  tree val;
};


enum gimple_statement_structure_enum {
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gsstruct.def" 1
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gsstruct.def"
GSS_BASE,
GSS_WITH_OPS,
GSS_WITH_MEM_OPS_BASE,
GSS_WITH_MEM_OPS,
GSS_CALL,
GSS_ASM,
GSS_BIND,
GSS_PHI,
GSS_TRY,
GSS_CATCH,
GSS_EH_FILTER,
GSS_EH_MNT,
GSS_EH_CTRL,
GSS_WCE,
GSS_OMP,
GSS_OMP_CRITICAL,
GSS_OMP_FOR,
GSS_OMP_PARALLEL,
GSS_OMP_TASK,
GSS_OMP_SECTIONS,
GSS_OMP_SINGLE,
GSS_OMP_CONTINUE,
GSS_OMP_ATOMIC_LOAD,
GSS_OMP_ATOMIC_STORE,
# 757 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h" 2
    LAST_GSS_ENUM
};






union gimple_statement_d {
  struct gimple_statement_base gsbase;
  struct gimple_statement_with_ops gsops;
  struct gimple_statement_with_memory_ops_base gsmembase;
  struct gimple_statement_with_memory_ops gsmem;
  struct gimple_statement_call gimple_call;
  struct gimple_statement_omp omp;
  struct gimple_statement_bind gimple_bind;
  struct gimple_statement_catch gimple_catch;
  struct gimple_statement_eh_filter gimple_eh_filter;
  struct gimple_statement_eh_mnt gimple_eh_mnt;
  struct gimple_statement_phi gimple_phi;
  struct gimple_statement_eh_ctrl gimple_eh_ctrl;
  struct gimple_statement_try gimple_try;
  struct gimple_statement_wce gimple_wce;
  struct gimple_statement_asm gimple_asm;
  struct gimple_statement_omp_critical gimple_omp_critical;
  struct gimple_statement_omp_for gimple_omp_for;
  struct gimple_statement_omp_parallel gimple_omp_parallel;
  struct gimple_statement_omp_task gimple_omp_task;
  struct gimple_statement_omp_sections gimple_omp_sections;
  struct gimple_statement_omp_single gimple_omp_single;
  struct gimple_statement_omp_continue gimple_omp_continue;
  struct gimple_statement_omp_atomic_load gimple_omp_atomic_load;
  struct gimple_statement_omp_atomic_store gimple_omp_atomic_store;
};





extern size_t const gimple_ops_offset_[];


extern enum gimple_statement_structure_enum const gss_for_code_[];



extern gimple currently_expanding_gimple_stmt;

gimple gimple_build_return (tree);

gimple gimple_build_assign_stat (tree, tree );


void extract_ops_from_tree_1 (tree, enum tree_code *, tree *, tree *, tree *);

gimple gimple_build_assign_with_ops_stat (enum tree_code, tree, tree,
       tree, tree );





gimple gimple_build_debug_bind_stat (tree, tree, gimple );



gimple gimple_build_call_vec (tree, VEC_tree_heap *);
gimple gimple_build_call (tree, unsigned, ...);
gimple gimple_build_call_internal (enum internal_fn, unsigned, ...);
gimple gimple_build_call_internal_vec (enum internal_fn, VEC_tree_heap *);
gimple gimple_build_call_from_tree (tree);
gimple gimplify_assign (tree, tree, gimple_seq *);
gimple gimple_build_cond (enum tree_code, tree, tree, tree, tree);
gimple gimple_build_label (tree label);
gimple gimple_build_goto (tree dest);
gimple gimple_build_nop (void);
gimple gimple_build_bind (tree, gimple_seq, tree);
gimple gimple_build_asm_vec (const char *, VEC_tree_gc *, VEC_tree_gc *,
                             VEC_tree_gc *, VEC_tree_gc *);
gimple gimple_build_catch (tree, gimple_seq);
gimple gimple_build_eh_filter (tree, gimple_seq);
gimple gimple_build_eh_must_not_throw (tree);
gimple gimple_build_try (gimple_seq, gimple_seq, enum gimple_try_flags);
gimple gimple_build_wce (gimple_seq);
gimple gimple_build_resx (int);
gimple gimple_build_eh_dispatch (int);
gimple gimple_build_switch_nlabels (unsigned, tree, tree);
gimple gimple_build_switch (unsigned, tree, tree, ...);
gimple gimple_build_switch_vec (tree, tree, VEC_tree_heap *);
gimple gimple_build_omp_parallel (gimple_seq, tree, tree, tree);
gimple gimple_build_omp_task (gimple_seq, tree, tree, tree, tree, tree, tree);
gimple gimple_build_omp_for (gimple_seq, tree, size_t, gimple_seq);
gimple gimple_build_omp_critical (gimple_seq, tree);
gimple gimple_build_omp_section (gimple_seq);
gimple gimple_build_omp_continue (tree, tree);
gimple gimple_build_omp_master (gimple_seq);
gimple gimple_build_omp_return (unsigned char);
gimple gimple_build_omp_ordered (gimple_seq);
gimple gimple_build_omp_sections (gimple_seq, tree);
gimple gimple_build_omp_sections_switch (void);
gimple gimple_build_omp_single (gimple_seq, tree);
gimple gimple_build_cdt (tree, tree);
gimple gimple_build_omp_atomic_load (tree, tree);
gimple gimple_build_omp_atomic_store (tree);
gimple gimple_build_predict (enum br_predictor, enum prediction);
enum gimple_statement_structure_enum gss_for_assign (enum tree_code);
void sort_case_labels (VEC_tree_heap *);
void gimple_set_body (tree, gimple_seq);
gimple_seq gimple_body (tree);
unsigned char gimple_has_body_p (tree);
gimple_seq gimple_seq_alloc (void);
void gimple_seq_free (gimple_seq);
void gimple_seq_add_seq (gimple_seq *, gimple_seq);
gimple_seq gimple_seq_copy (gimple_seq);
unsigned char gimple_call_same_target_p (const_gimple, const_gimple);
int gimple_call_flags (const_gimple);
int gimple_call_return_flags (const_gimple);
int gimple_call_arg_flags (const_gimple, unsigned);
void gimple_call_reset_alias_info (gimple);
unsigned char gimple_assign_copy_p (gimple);
unsigned char gimple_assign_ssa_name_copy_p (gimple);
unsigned char gimple_assign_unary_nop_p (gimple);
void gimple_set_bb (gimple, struct basic_block_def *);
void gimple_assign_set_rhs_from_tree (gimple_stmt_iterator *, tree);
void gimple_assign_set_rhs_with_ops_1 (gimple_stmt_iterator *, enum tree_code,
           tree, tree, tree);
tree gimple_get_lhs (const_gimple);
void gimple_set_lhs (gimple, tree);
void gimple_replace_lhs (gimple, tree);
gimple gimple_copy (gimple);
void gimple_set_modified (gimple, unsigned char);
void gimple_cond_get_ops_from_tree (tree, enum tree_code *, tree *, tree *);
gimple gimple_build_cond_from_tree (tree, tree, tree);
void gimple_cond_set_condition_from_tree (gimple, tree);
unsigned char gimple_has_side_effects (const_gimple);
unsigned char gimple_rhs_has_side_effects (const_gimple);
unsigned char gimple_could_trap_p (gimple);
unsigned char gimple_could_trap_p_1 (gimple, unsigned char, unsigned char);
unsigned char gimple_assign_rhs_could_trap_p (gimple);
void gimple_regimplify_operands (gimple, gimple_stmt_iterator *);
unsigned char empty_body_p (gimple_seq);
unsigned get_gimple_rhs_num_ops (enum tree_code);

gimple gimple_alloc_stat (enum gimple_code, unsigned );
const char *gimple_decl_printable_name (tree, int);
unsigned char gimple_fold_call (gimple_stmt_iterator *gsi, unsigned char inplace);
tree gimple_get_virt_method_for_binfo (long long, tree, tree *, unsigned char);
void gimple_adjust_this_by_delta (gimple_stmt_iterator *, tree);

extern unsigned char is_gimple_stmt (tree);


extern unsigned char is_gimple_reg_type (tree);

extern unsigned char is_gimple_reg (tree);

extern unsigned char is_gimple_variable (tree);

extern unsigned char is_gimple_id (tree);

extern unsigned char is_gimple_min_lval (tree);

extern unsigned char is_gimple_addressable (tree);

extern unsigned char is_gimple_lvalue (tree);


unsigned char is_gimple_address (const_tree);

unsigned char is_gimple_invariant_address (const_tree);


unsigned char is_gimple_ip_invariant_address (const_tree);

unsigned char is_gimple_constant (const_tree);

extern unsigned char is_gimple_min_invariant (const_tree);

extern unsigned char is_gimple_ip_invariant (const_tree);

extern unsigned char is_gimple_val (tree);

extern unsigned char is_gimple_asm_val (tree);

unsigned char is_gimple_mem_ref_addr (tree);



extern unsigned char is_gimple_reg_rhs (tree);
extern unsigned char is_gimple_mem_rhs (tree);


extern unsigned char is_gimple_condexpr (tree);


extern unsigned char is_gimple_non_addressable (tree t);


extern unsigned char is_gimple_call_addr (tree);

extern tree get_call_expr_in (tree t);

extern void recalculate_side_effects (tree);
extern unsigned char gimple_compare_field_offset (tree, tree);
extern tree gimple_register_type (tree);
extern tree gimple_register_canonical_type (tree);
enum gtc_mode { GTC_MERGE = 0, GTC_DIAG = 1 };
extern unsigned char gimple_types_compatible_p (tree, tree, enum gtc_mode);
extern void print_gimple_types_stats (void);
extern void free_gimple_type_tables (void);
extern tree gimple_unsigned_type (tree);
extern tree gimple_signed_type (tree);
extern alias_set_type gimple_get_alias_set (tree);
extern void count_uses_and_derefs (tree, gimple, unsigned *, unsigned *,
       unsigned *);
extern unsigned char walk_stmt_load_store_addr_ops (gimple, void *,
        unsigned char (*)(gimple, tree, void *),
        unsigned char (*)(gimple, tree, void *),
        unsigned char (*)(gimple, tree, void *));
extern unsigned char walk_stmt_load_store_ops (gimple, void *,
          unsigned char (*)(gimple, tree, void *),
          unsigned char (*)(gimple, tree, void *));
extern unsigned char gimple_ior_addresses_taken (bitmap, gimple);
extern unsigned char gimple_call_builtin_p (gimple, enum built_in_function);


extern tree create_tmp_var_raw (tree, const char *);
extern tree create_tmp_var_name (const char *);
extern tree create_tmp_var (tree, const char *);
extern tree create_tmp_reg (tree, const char *);
extern tree get_initialized_tmp_var (tree, gimple_seq *, gimple_seq *);
extern tree get_formal_tmp_var (tree, gimple_seq *);
extern void declare_vars (tree, gimple, unsigned char);
extern void annotate_all_with_location (gimple_seq, location_t);




typedef unsigned char (*gimple_predicate)(tree);



enum fallback {
  fb_none = 0,

  fb_rvalue = 1,


  fb_lvalue = 2,


  fb_mayfail = 4,

  fb_either= fb_rvalue | fb_lvalue
};

typedef int fallback_t;

enum gimplify_status {
  GS_ERROR = -2,
  GS_UNHANDLED = -1,
  GS_OK = 0,
  GS_ALL_DONE = 1
};

struct gimplify_ctx
{
  struct gimplify_ctx *prev_context;

  VEC_gimple_heap *bind_expr_stack;
  tree temps;
  gimple_seq conditional_cleanups;
  tree exit_label;
  tree return_temp;

  VEC_tree_heap *case_labels;

  htab_t temp_htab;

  int conditions;
  unsigned char save_stack;
  unsigned char into_ssa;
  unsigned char allow_rhs_cond_expr;
};

extern enum gimplify_status gimplify_expr (tree *, gimple_seq *, gimple_seq *,
        unsigned char (*) (tree), fallback_t);
extern void gimplify_type_sizes (tree, gimple_seq *);
extern void gimplify_one_sizepos (tree *, gimple_seq *);
extern unsigned char gimplify_stmt (tree *, gimple_seq *);
extern gimple gimplify_body (tree *, tree, unsigned char);
extern void push_gimplify_context (struct gimplify_ctx *);
extern void pop_gimplify_context (gimple);
extern void gimplify_and_add (tree, gimple_seq *);


extern void gimple_add_tmp_var (tree);
extern gimple gimple_current_bind_expr (void);
extern VEC_gimple_heap *gimple_bind_expr_stack (void);
extern tree voidify_wrapper_expr (tree, tree);
extern tree build_and_jump (tree *);
extern tree force_labels_r (tree *, int *, void *);
extern enum gimplify_status gimplify_va_arg_expr (tree *, gimple_seq *,
        gimple_seq *);
struct gimplify_omp_ctx;
extern void omp_firstprivatize_variable (struct gimplify_omp_ctx *, tree);
extern tree gimple_boolify (tree);
extern gimple_predicate rhs_predicate_for (tree);
extern tree canonicalize_cond_expr_cond (tree);


extern tree omp_reduction_init (tree, tree);


extern void lower_nested_functions (tree);
extern void insert_field_into_struct (tree, tree);


extern void gimplify_function_tree (tree);


extern tree gimple_assign_rhs_to_tree (gimple);


extern unsigned char validate_gimple_arglist (const_gimple, ...);


extern unsigned char tree_ssa_useless_type_conversion (tree);
extern tree tree_ssa_strip_useless_type_conversions (tree);
extern unsigned char useless_type_conversion_p (tree, tree);
extern unsigned char types_compatible_p (tree, tree);



static enum gimple_code
f_gimple_code (const_gimple g)
{
  return g->gsbase.code;
}




static enum gimple_statement_structure_enum
gss_for_code (enum gimple_code code)
{
  ((void)(0 && ((unsigned int)code < LAST_AND_UNUSED_GIMPLE_CODE)));
  return gss_for_code_[code];
}




static enum gimple_statement_structure_enum
gimple_statement_structure (gimple gs)
{
  return gss_for_code (gimple_code (gs));
}





static unsigned char
gimple_has_substatements (gimple g)
{
  switch (gimple_code (g))
    {
    case GIMPLE_BIND:
    case GIMPLE_CATCH:
    case GIMPLE_EH_FILTER:
    case GIMPLE_TRY:
    case GIMPLE_OMP_FOR:
    case GIMPLE_OMP_MASTER:
    case GIMPLE_OMP_ORDERED:
    case GIMPLE_OMP_SECTION:
    case GIMPLE_OMP_PARALLEL:
    case GIMPLE_OMP_TASK:
    case GIMPLE_OMP_SECTIONS:
    case GIMPLE_OMP_SINGLE:
    case GIMPLE_OMP_CRITICAL:
    case GIMPLE_WITH_CLEANUP_EXPR:
      return 1;

    default:
      return 0;
    }
}




static struct basic_block_def *
gimple_bb (const_gimple g)
{
  return g->gsbase.bb;
}




static tree
gimple_block (const_gimple g)
{
  return g->gsbase.block;
}




static void
gimple_set_block (gimple g, tree block)
{
  g->gsbase.block = block;
}




static location_t
gimple_location (const_gimple g)
{
  return g->gsbase.location;
}



static const location_t *
gimple_location_ptr (const_gimple g)
{
  return &g->gsbase.location;
}




static void
gimple_set_location (gimple g, location_t location)
{
  g->gsbase.location = location;
}




static unsigned char
gimple_has_location (const_gimple g)
{
  return gimple_location (g) != ((source_location) 0);
}




static const char *
gimple_filename (const_gimple stmt)
{
  return ((expand_location (gimple_location (stmt))).file);
}




static int
gimple_lineno (const_gimple stmt)
{
  return ((expand_location (gimple_location (stmt))).line);
}




static unsigned char
gimple_seq_singleton_p (gimple_seq seq)
{
  return ((gimple_seq_first (seq) != ((void *)0))
   && (gimple_seq_first (seq) == gimple_seq_last (seq)));
}



static unsigned char
gimple_no_warning_p (const_gimple stmt)
{
  return stmt->gsbase.no_warning;
}



static void
gimple_set_no_warning (gimple stmt, unsigned char no_warning)
{
  stmt->gsbase.no_warning = (unsigned) no_warning;
}



static void
gimple_set_visited (gimple stmt, unsigned char visited_p)
{
  stmt->gsbase.visited = (unsigned) visited_p;
}




static unsigned char
gimple_visited_p (gimple stmt)
{
  return stmt->gsbase.visited;
}




static void
gimple_set_plf (gimple stmt, enum plf_mask plf, unsigned char val_p)
{
  if (val_p)
    stmt->gsbase.plf |= (unsigned int) plf;
  else
    stmt->gsbase.plf &= ~((unsigned int) plf);
}




static unsigned int
gimple_plf (gimple stmt, enum plf_mask plf)
{
  return stmt->gsbase.plf & ((unsigned int) plf);
}




static void
gimple_set_uid (gimple g, unsigned uid)
{
  g->gsbase.uid = uid;
}




static unsigned
gimple_uid (const_gimple g)
{
  return g->gsbase.uid;
}




static unsigned char
gimple_has_ops (const_gimple g)
{
  return gimple_code (g) >= GIMPLE_COND && gimple_code (g) <= GIMPLE_RETURN;
}




static unsigned char
gimple_has_mem_ops (const_gimple g)
{
  return gimple_code (g) >= GIMPLE_ASSIGN && gimple_code (g) <= GIMPLE_RETURN;
}




static struct def_optype_d *
gimple_def_ops (const_gimple g)
{
  if (!gimple_has_ops (g))
    return ((void *)0);
  return g->gsops.opbase.def_ops;
}




static void
gimple_set_def_ops (gimple g, struct def_optype_d *def)
{
  ((void)(0 && (gimple_has_ops (g))));
  g->gsops.opbase.def_ops = def;
}




static struct use_optype_d *
gimple_use_ops (const_gimple g)
{
  if (!gimple_has_ops (g))
    return ((void *)0);
  return g->gsops.opbase.use_ops;
}




static void
gimple_set_use_ops (gimple g, struct use_optype_d *use)
{
  ((void)(0 && (gimple_has_ops (g))));
  g->gsops.opbase.use_ops = use;
}




static use_operand_p
gimple_vuse_op (const_gimple g)
{
  struct use_optype_d *ops;
  if (!gimple_has_mem_ops (g))
    return ((use_operand_p)((void *)0));
  ops = g->gsops.opbase.use_ops;
  if (ops
      && (&((ops)->use_ptr))->use == &g->gsmembase.vuse)
    return (&((ops)->use_ptr));
  return ((use_operand_p)((void *)0));
}



static def_operand_p
gimple_vdef_op (const_gimple g)
{
  struct def_optype_d *ops;
  if (!gimple_has_mem_ops (g))
    return ((def_operand_p)((void *)0));
  ops = g->gsops.opbase.def_ops;
  if (ops
      && ((ops)->def_ptr) == &g->gsmembase.vdef)
    return ((ops)->def_ptr);
  return ((def_operand_p)((void *)0));
}




static tree
gimple_vuse (const_gimple g)
{
  if (!gimple_has_mem_ops (g))
    return (tree) ((void *)0);
  return g->gsmembase.vuse;
}



static tree
gimple_vdef (const_gimple g)
{
  if (!gimple_has_mem_ops (g))
    return (tree) ((void *)0);
  return g->gsmembase.vdef;
}



static tree *
gimple_vuse_ptr (gimple g)
{
  if (!gimple_has_mem_ops (g))
    return ((void *)0);
  return &g->gsmembase.vuse;
}



static tree *
gimple_vdef_ptr (gimple g)
{
  if (!gimple_has_mem_ops (g))
    return ((void *)0);
  return &g->gsmembase.vdef;
}



static void
gimple_set_vuse (gimple g, tree vuse)
{
  ((void)(0 && (gimple_has_mem_ops (g))));
  g->gsmembase.vuse = vuse;
}



static void
gimple_set_vdef (gimple g, tree vdef)
{
  ((void)(0 && (gimple_has_mem_ops (g))));
  g->gsmembase.vdef = vdef;
}





static unsigned char
gimple_modified_p (const_gimple g)
{
  return (gimple_has_ops (g)) ? (unsigned char) g->gsbase.modified : 0;
}
# 1475 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h"
static enum tree_code
gimple_expr_code (const_gimple stmt)
{
  enum gimple_code code = gimple_code (stmt);
  if (code == GIMPLE_ASSIGN || code == GIMPLE_COND)
    return (enum tree_code) stmt->gsbase.subcode;
  else
    {
      ((void)(0 && (code == GIMPLE_CALL)));
      return CALL_EXPR;
    }
}




static void
update_stmt (gimple s)
{
  if (gimple_has_ops (s))
    {
      gimple_set_modified (s, 1);
      update_stmt_operands (s);
    }
}



static void
update_stmt_if_modified (gimple s)
{
  if (gimple_modified_p (s))
    update_stmt_operands (s);
}



static unsigned char
gimple_has_volatile_ops (const_gimple stmt)
{
  if (gimple_has_mem_ops (stmt))
    return stmt->gsbase.has_volatile_ops;
  else
    return 0;
}




static void
gimple_set_has_volatile_ops (gimple stmt, unsigned char volatilep)
{
  if (gimple_has_mem_ops (stmt))
    stmt->gsbase.has_volatile_ops = (unsigned) volatilep;
}




static unsigned char
gimple_references_memory_p (gimple stmt)
{
  return gimple_has_mem_ops (stmt) && gimple_vuse (stmt);
}




static unsigned
gimple_omp_subcode (const_gimple s)
{
  ((void)(0 && (gimple_code (s) >= GIMPLE_OMP_ATOMIC_LOAD && gimple_code (s) <= GIMPLE_OMP_SINGLE)))
                                               ;
  return s->gsbase.subcode;
}



static void
gimple_omp_set_subcode (gimple s, unsigned int subcode)
{


  ((void)(0 && (subcode < (1 << 16))));
  s->gsbase.subcode = subcode;
}



static void
gimple_omp_return_set_nowait (gimple s)
{
  (void)0;
  s->gsbase.subcode |= GF_OMP_RETURN_NOWAIT;
}





static unsigned char
gimple_omp_return_nowait_p (const_gimple g)
{
  (void)0;
  return (gimple_omp_subcode (g) & GF_OMP_RETURN_NOWAIT) != 0;
}





static unsigned char
gimple_omp_section_last_p (const_gimple g)
{
  (void)0;
  return (gimple_omp_subcode (g) & GF_OMP_SECTION_LAST) != 0;
}




static void
gimple_omp_section_set_last (gimple g)
{
  (void)0;
  g->gsbase.subcode |= GF_OMP_SECTION_LAST;
}





static unsigned char
gimple_omp_parallel_combined_p (const_gimple g)
{
  (void)0;
  return (gimple_omp_subcode (g) & GF_OMP_PARALLEL_COMBINED) != 0;
}





static void
gimple_omp_parallel_set_combined_p (gimple g, unsigned char combined_p)
{
  (void)0;
  if (combined_p)
    g->gsbase.subcode |= GF_OMP_PARALLEL_COMBINED;
  else
    g->gsbase.subcode &= ~GF_OMP_PARALLEL_COMBINED;
}




static unsigned
gimple_num_ops (const_gimple gs)
{
  return gs->gsbase.num_ops;
}




static void
gimple_set_num_ops (gimple gs, unsigned num_ops)
{
  gs->gsbase.num_ops = num_ops;
}




static tree *
gimple_ops (gimple gs)
{
  size_t off;




  off = gimple_ops_offset_[gimple_statement_structure (gs)];
  ((void)(0 && (off != 0)));

  return (tree *) ((char *) gs + off);
}




static tree
gimple_op (const_gimple gs, unsigned i)
{
  if (gimple_has_ops (gs))
    {
      ((void)(0 && (i < gimple_num_ops (gs))));
      return gimple_ops ((((union {const union gimple_statement_d * _q; union gimple_statement_d * _nq;})(((gs))))._nq))[i];
    }
  else
    return (tree) ((void *)0);
}



//static 
tree *
gimple_op_ptr (const_gimple gs, unsigned i);
/*{
  if (gimple_has_ops (gs))
    {
      ((void)(0 && (i < gimple_num_ops (gs))));
      return gimple_ops ((((union {const union gimple_statement_d * _q; union gimple_statement_d * _nq;})(((gs))))._nq)) + i;
    }
  else
    return ((void *)0);
    }*/



static void
gimple_set_op (gimple gs, unsigned i, tree op)
{
  ((void)(0 && (gimple_has_ops (gs) && i < gimple_num_ops (gs))));





  gimple_ops (gs)[i] = op;
}



static unsigned char
is_gimple_assign (const_gimple gs)
{
  return gimple_code (gs) == GIMPLE_ASSIGN;
}




static enum gimple_rhs_class
get_gimple_rhs_class (enum tree_code code)
{
  return (enum gimple_rhs_class) gimple_rhs_class_table[(int) code];
}



static tree
gimple_assign_lhs (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 0);
}




static tree *
gimple_assign_lhs_ptr (const_gimple gs)
{
  (void)0;
  return gimple_op_ptr (gs, 0);
}




static void
gimple_assign_set_lhs (gimple gs, tree lhs)
{
  (void)0;
  gimple_set_op (gs, 0, lhs);

  if (lhs && ((enum tree_code) (lhs)->base.code) == SSA_NAME)
    (lhs)->ssa_name.def_stmt = gs;
}




static tree
gimple_assign_rhs1 (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 1);
}





static tree *
gimple_assign_rhs1_ptr (const_gimple gs)
{
  (void)0;
  return gimple_op_ptr (gs, 1);
}



static void
gimple_assign_set_rhs1 (gimple gs, tree rhs)
{
  (void)0;

  gimple_set_op (gs, 1, rhs);
}





static tree
gimple_assign_rhs2 (const_gimple gs)
{
  (void)0;

  if (gimple_num_ops (gs) >= 3)
    return gimple_op (gs, 2);
  else
    return (tree) ((void *)0);
}





static tree *
gimple_assign_rhs2_ptr (const_gimple gs)
{
  (void)0;
  return gimple_op_ptr (gs, 2);
}




static void
gimple_assign_set_rhs2 (gimple gs, tree rhs)
{
  (void)0;

  gimple_set_op (gs, 2, rhs);
}




static tree
gimple_assign_rhs3 (const_gimple gs)
{
  (void)0;

  if (gimple_num_ops (gs) >= 4)
    return gimple_op (gs, 3);
  else
    return (tree) ((void *)0);
}




static tree *
gimple_assign_rhs3_ptr (const_gimple gs)
{
  (void)0;
  return gimple_op_ptr (gs, 3);
}




static void
gimple_assign_set_rhs3 (gimple gs, tree rhs)
{
  (void)0;

  gimple_set_op (gs, 3, rhs);
}




static void
gimple_assign_set_rhs_with_ops (gimple_stmt_iterator *gsi, enum tree_code code,
    tree op1, tree op2)
{
  gimple_assign_set_rhs_with_ops_1 (gsi, code, op1, op2, ((void *)0));
}




static void
extract_ops_from_tree (tree expr, enum tree_code *code, tree *op0,
         tree *op1)
{
  tree op2;
  extract_ops_from_tree_1 (expr, code, op0, op1, &op2);
  ((void)(!(op2 == (tree) ((void *)0)) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h", 1877, __FUNCTION__), 0 : 0));
}



static unsigned char
gimple_assign_nontemporal_move_p (const_gimple gs)
{
  (void)0;
  return gs->gsbase.nontemporal_move;
}



static void
gimple_assign_set_nontemporal_move (gimple gs, unsigned char nontemporal)
{
  (void)0;
  gs->gsbase.nontemporal_move = nontemporal;
}






static enum tree_code
gimple_assign_rhs_code (const_gimple gs)
{
  enum tree_code code;
  (void)0;

  code = (enum tree_code) gs->gsbase.subcode;



  if (get_gimple_rhs_class (code) == GIMPLE_SINGLE_RHS)
    code = ((enum tree_code) (gimple_assign_rhs1 (gs))->base.code);

  return code;
}





static void
gimple_assign_set_rhs_code (gimple s, enum tree_code code)
{
  (void)0;
  s->gsbase.subcode = code;
}






static enum gimple_rhs_class
gimple_assign_rhs_class (const_gimple gs)
{
  return get_gimple_rhs_class (gimple_assign_rhs_code (gs));
}







static unsigned char
gimple_assign_single_p (gimple gs)
{
  return (is_gimple_assign (gs)
          && gimple_assign_rhs_class (gs) == GIMPLE_SINGLE_RHS);
}




static unsigned char
gimple_assign_cast_p (gimple s)
{
  if (is_gimple_assign (s))
    {
      enum tree_code sc = gimple_assign_rhs_code (s);
      return ((sc) == NOP_EXPR || (sc) == CONVERT_EXPR)
      || sc == VIEW_CONVERT_EXPR
      || sc == FIX_TRUNC_EXPR;
    }

  return 0;
}




static unsigned char
is_gimple_call (const_gimple gs)
{
  return gimple_code (gs) == GIMPLE_CALL;
}



static tree
gimple_call_lhs (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 0);
}




static tree *
gimple_call_lhs_ptr (const_gimple gs)
{
  (void)0;
  return gimple_op_ptr (gs, 0);
}




static void
gimple_call_set_lhs (gimple gs, tree lhs)
{
  (void)0;
  gimple_set_op (gs, 0, lhs);
  if (lhs && ((enum tree_code) (lhs)->base.code) == SSA_NAME)
    (lhs)->ssa_name.def_stmt = gs;
}





static tree
gimple_call_fn (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 1);
}





static unsigned char
gimple_call_internal_p (const_gimple gs)
{
  (void)0;
  return (gs->gsbase.subcode & GF_CALL_INTERNAL) != 0;
}




static enum internal_fn
gimple_call_internal_fn (const_gimple gs)
{
  ((void)(!(gimple_call_internal_p (gs)) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h", 2039, __FUNCTION__), 0 : 0));
  return (enum internal_fn) (gs->gsbase.subcode >> 8);
}





static tree *
gimple_call_fn_ptr (const_gimple gs)
{
  (void)0;
  return gimple_op_ptr (gs, 1);
}




static void
gimple_call_set_fn (gimple gs, tree fn)
{
  (void)0;
  ((void)(!(!gimple_call_internal_p (gs)) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h", 2061, __FUNCTION__), 0 : 0));
  gimple_set_op (gs, 1, fn);
}




static void
gimple_call_set_fndecl (gimple gs, tree decl)
{
  (void)0;
  ((void)(!(!gimple_call_internal_p (gs)) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h", 2072, __FUNCTION__), 0 : 0));
  gimple_set_op (gs, 1, build_fold_addr_expr_loc (gimple_location (gs), decl));
}




static void
gimple_call_set_internal_fn (gimple gs, enum internal_fn fn)
{
  (void)0;
  ((void)(!(gimple_call_internal_p (gs)) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h", 2083, __FUNCTION__), 0 : 0));
  gs->gsbase.subcode &= ~GF_CALL_INTERNAL_FN;
  gs->gsbase.subcode |= (int) fn << 8;
}






static tree
gimple_call_fndecl (const_gimple gs)
{
  tree addr = gimple_call_fn (gs);
  if (addr && ((enum tree_code) (addr)->base.code) == ADDR_EXPR)
    {
      tree fndecl = ((addr)->exp.operands[0]);
      if (((enum tree_code) (fndecl)->base.code) == MEM_REF)
 {
   if (((enum tree_code) (((fndecl)->exp.operands[0]))->base.code) == ADDR_EXPR
       && integer_zerop (((fndecl)->exp.operands[1])))
     return ((((fndecl)->exp.operands[0]))->exp.operands[0]);
   else
     return (tree) ((void *)0);
 }
      return ((addr)->exp.operands[0]);
    }
  return (tree) ((void *)0);
}




static tree
gimple_call_return_type (const_gimple gs)
{
  tree fn, type;

  fn = gimple_call_fn (gs);
  if (fn == (tree) ((void *)0))
    return ((gimple_call_lhs (gs))->common.type);

  type = ((fn)->common.type);


  type = ((type)->common.type);



  return ((type)->common.type);
}




static tree
gimple_call_chain (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 2);
}




static tree *
gimple_call_chain_ptr (const_gimple gs)
{
  (void)0;
  return gimple_op_ptr (gs, 2);
}



static void
gimple_call_set_chain (gimple gs, tree chain)
{
  (void)0;

  gimple_set_op (gs, 2, chain);
}




static unsigned
gimple_call_num_args (const_gimple gs)
{
  unsigned num_ops;
  (void)0;
  num_ops = gimple_num_ops (gs);
  return num_ops - 3;
}




static tree
gimple_call_arg (const_gimple gs, unsigned index)
{
  (void)0;
  return gimple_op (gs, index + 3);
}





static tree *
gimple_call_arg_ptr (const_gimple gs, unsigned index)
{
  (void)0;
  return gimple_op_ptr (gs, index + 3);
}




static void
gimple_call_set_arg (gimple gs, unsigned index, tree arg)
{
  (void)0;
  gimple_set_op (gs, index + 3, arg);
}






static void
gimple_call_set_tail (gimple s, unsigned char tail_p)
{
  (void)0;
  if (tail_p)
    s->gsbase.subcode |= GF_CALL_TAILCALL;
  else
    s->gsbase.subcode &= ~GF_CALL_TAILCALL;
}




static unsigned char
gimple_call_tail_p (gimple s)
{
  (void)0;
  return (s->gsbase.subcode & GF_CALL_TAILCALL) != 0;
}




static void
gimple_call_set_cannot_inline (gimple s, unsigned char inlinable_p)
{
  (void)0;
  if (inlinable_p)
    s->gsbase.subcode |= GF_CALL_CANNOT_INLINE;
  else
    s->gsbase.subcode &= ~GF_CALL_CANNOT_INLINE;
}




static unsigned char
gimple_call_cannot_inline_p (gimple s)
{
  (void)0;
  return (s->gsbase.subcode & GF_CALL_CANNOT_INLINE) != 0;
}






static void
gimple_call_set_return_slot_opt (gimple s, unsigned char return_slot_opt_p)
{
  (void)0;
  if (return_slot_opt_p)
    s->gsbase.subcode |= GF_CALL_RETURN_SLOT_OPT;
  else
    s->gsbase.subcode &= ~GF_CALL_RETURN_SLOT_OPT;
}




static unsigned char
gimple_call_return_slot_opt_p (gimple s)
{
  (void)0;
  return (s->gsbase.subcode & GF_CALL_RETURN_SLOT_OPT) != 0;
}





static void
gimple_call_set_from_thunk (gimple s, unsigned char from_thunk_p)
{
  (void)0;
  if (from_thunk_p)
    s->gsbase.subcode |= GF_CALL_FROM_THUNK;
  else
    s->gsbase.subcode &= ~GF_CALL_FROM_THUNK;
}




static unsigned char
gimple_call_from_thunk_p (gimple s)
{
  (void)0;
  return (s->gsbase.subcode & GF_CALL_FROM_THUNK) != 0;
}





static void
gimple_call_set_va_arg_pack (gimple s, unsigned char pass_arg_pack_p)
{
  (void)0;
  if (pass_arg_pack_p)
    s->gsbase.subcode |= GF_CALL_VA_ARG_PACK;
  else
    s->gsbase.subcode &= ~GF_CALL_VA_ARG_PACK;
}





static unsigned char
gimple_call_va_arg_pack_p (gimple s)
{
  (void)0;
  return (s->gsbase.subcode & GF_CALL_VA_ARG_PACK) != 0;
}




static unsigned char
gimple_call_noreturn_p (gimple s)
{
  (void)0;
  return (gimple_call_flags (s) & (1 << 3)) != 0;
}





static void
gimple_call_set_nothrow (gimple s, unsigned char nothrow_p)
{
  (void)0;
  if (nothrow_p)
    s->gsbase.subcode |= GF_CALL_NOTHROW;
  else
    s->gsbase.subcode &= ~GF_CALL_NOTHROW;
}



static unsigned char
gimple_call_nothrow_p (gimple s)
{
  (void)0;
  return (gimple_call_flags (s) & (1 << 6)) != 0;
}




static void
gimple_call_copy_flags (gimple dest_call, gimple orig_call)
{
  (void)0;
  (void)0;
  dest_call->gsbase.subcode = orig_call->gsbase.subcode;
}





static struct pt_solution *
gimple_call_use_set (gimple call)
{
  (void)0;
  return &call->gimple_call.call_used;
}





static struct pt_solution *
gimple_call_clobber_set (gimple call)
{
  (void)0;
  return &call->gimple_call.call_clobbered;
}





static unsigned char
gimple_has_lhs (gimple stmt)
{
  return (is_gimple_assign (stmt)
   || (is_gimple_call (stmt)
       && gimple_call_lhs (stmt) != (tree) ((void *)0)));
}




static enum tree_code
gimple_cond_code (const_gimple gs)
{
  (void)0;
  return (enum tree_code) gs->gsbase.subcode;
}




static void
gimple_cond_set_code (gimple gs, enum tree_code code)
{
  (void)0;
  gs->gsbase.subcode = code;
}




static tree
gimple_cond_lhs (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 0);
}




static tree *
gimple_cond_lhs_ptr (const_gimple gs)
{
  (void)0;
  return gimple_op_ptr (gs, 0);
}




static void
gimple_cond_set_lhs (gimple gs, tree lhs)
{
  (void)0;
  gimple_set_op (gs, 0, lhs);
}




static tree
gimple_cond_rhs (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 1);
}




static tree *
gimple_cond_rhs_ptr (const_gimple gs)
{
  (void)0;
  return gimple_op_ptr (gs, 1);
}





static void
gimple_cond_set_rhs (gimple gs, tree rhs)
{
  (void)0;
  gimple_set_op (gs, 1, rhs);
}





static tree
gimple_cond_true_label (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 2);
}





static void
gimple_cond_set_true_label (gimple gs, tree label)
{
  (void)0;
  gimple_set_op (gs, 2, label);
}





static void
gimple_cond_set_false_label (gimple gs, tree label)
{
  (void)0;
  gimple_set_op (gs, 3, label);
}





static tree
gimple_cond_false_label (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 3);
}




static void
gimple_cond_make_false (gimple gs)
{
  gimple_cond_set_lhs (gs, global_trees[TI_BOOLEAN_TRUE]);
  gimple_cond_set_rhs (gs, global_trees[TI_BOOLEAN_FALSE]);
  gs->gsbase.subcode = EQ_EXPR;
}




static void
gimple_cond_make_true (gimple gs)
{
  gimple_cond_set_lhs (gs, global_trees[TI_BOOLEAN_TRUE]);
  gimple_cond_set_rhs (gs, global_trees[TI_BOOLEAN_TRUE]);
  gs->gsbase.subcode = EQ_EXPR;
}




static unsigned char
gimple_cond_true_p (const_gimple gs)
{
  tree lhs = gimple_cond_lhs (gs);
  tree rhs = gimple_cond_rhs (gs);
  enum tree_code code = gimple_cond_code (gs);

  if (lhs != global_trees[TI_BOOLEAN_TRUE] && lhs != global_trees[TI_BOOLEAN_FALSE])
    return 0;

  if (rhs != global_trees[TI_BOOLEAN_TRUE] && rhs != global_trees[TI_BOOLEAN_FALSE])
    return 0;

  if (code == NE_EXPR && lhs != rhs)
    return 1;

  if (code == EQ_EXPR && lhs == rhs)
      return 1;

  return 0;
}




static unsigned char
gimple_cond_false_p (const_gimple gs)
{
  tree lhs = gimple_cond_lhs (gs);
  tree rhs = gimple_cond_rhs (gs);
  enum tree_code code = gimple_cond_code (gs);

  if (lhs != global_trees[TI_BOOLEAN_TRUE] && lhs != global_trees[TI_BOOLEAN_FALSE])
    return 0;

  if (rhs != global_trees[TI_BOOLEAN_TRUE] && rhs != global_trees[TI_BOOLEAN_FALSE])
    return 0;

  if (code == NE_EXPR && lhs == rhs)
    return 1;

  if (code == EQ_EXPR && lhs != rhs)
      return 1;

  return 0;
}




static unsigned char
gimple_cond_single_var_p (gimple gs)
{
  if (gimple_cond_code (gs) == NE_EXPR
      && gimple_cond_rhs (gs) == global_trees[TI_BOOLEAN_FALSE])
    return 1;

  if (gimple_cond_code (gs) == EQ_EXPR
      && gimple_cond_rhs (gs) == global_trees[TI_BOOLEAN_TRUE])
    return 1;

  return 0;
}



static void
gimple_cond_set_condition (gimple stmt, enum tree_code code, tree lhs, tree rhs)
{
  gimple_cond_set_code (stmt, code);
  gimple_cond_set_lhs (stmt, lhs);
  gimple_cond_set_rhs (stmt, rhs);
}



static tree
gimple_label_label (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 0);
}





static void
gimple_label_set_label (gimple gs, tree label)
{
  (void)0;
  gimple_set_op (gs, 0, label);
}




static tree
gimple_goto_dest (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 0);
}




static void
gimple_goto_set_dest (gimple gs, tree dest)
{
  (void)0;
  gimple_set_op (gs, 0, dest);
}




static tree
gimple_bind_vars (const_gimple gs)
{
  (void)0;
  return gs->gimple_bind.vars;
}





static void
gimple_bind_set_vars (gimple gs, tree vars)
{
  (void)0;
  gs->gimple_bind.vars = vars;
}





static void
gimple_bind_append_vars (gimple gs, tree vars)
{
  (void)0;
  gs->gimple_bind.vars = chainon (gs->gimple_bind.vars, vars);
}




static gimple_seq
gimple_bind_body (gimple gs)
{
  (void)0;
  return gs->gimple_bind.body;
}





static void
gimple_bind_set_body (gimple gs, gimple_seq seq)
{
  (void)0;
  gs->gimple_bind.body = seq;
}




static void
gimple_bind_add_stmt (gimple gs, gimple stmt)
{
  (void)0;
  gimple_seq_add_stmt (&gs->gimple_bind.body, stmt);
}




static void
gimple_bind_add_seq (gimple gs, gimple_seq seq)
{
  (void)0;
  gimple_seq_add_seq (&gs->gimple_bind.body, seq);
}





static tree
gimple_bind_block (const_gimple gs)
{
  (void)0;
  return gs->gimple_bind.block;
}





static void
gimple_bind_set_block (gimple gs, tree block)
{
  (void)0;
  ((void)(0 && (block == (tree) ((void *)0) || ((enum tree_code) (block)->base.code) == BLOCK)))
                                       ;
  gs->gimple_bind.block = block;
}




static unsigned
gimple_asm_ninputs (const_gimple gs)
{
  (void)0;
  return gs->gimple_asm.ni;
}




static unsigned
gimple_asm_noutputs (const_gimple gs)
{
  (void)0;
  return gs->gimple_asm.no;
}




static unsigned
gimple_asm_nclobbers (const_gimple gs)
{
  (void)0;
  return gs->gimple_asm.nc;
}



static unsigned
gimple_asm_nlabels (const_gimple gs)
{
  (void)0;
  return gs->gimple_asm.nl;
}



static tree
gimple_asm_input_op (const_gimple gs, unsigned index)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_asm.ni)));
  return gimple_op (gs, index);
}



static tree *
gimple_asm_input_op_ptr (const_gimple gs, unsigned index)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_asm.ni)));
  return gimple_op_ptr (gs, index);
}




static void
gimple_asm_set_input_op (gimple gs, unsigned index, tree in_op)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_asm.ni && ((enum tree_code) (in_op)->base.code) == TREE_LIST)))
                                           ;
  gimple_set_op (gs, index, in_op);
}




static tree
gimple_asm_output_op (const_gimple gs, unsigned index)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_asm.no)));
  return gimple_op (gs, index + gs->gimple_asm.ni);
}



static tree *
gimple_asm_output_op_ptr (const_gimple gs, unsigned index)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_asm.no)));
  return gimple_op_ptr (gs, index + gs->gimple_asm.ni);
}




static void
gimple_asm_set_output_op (gimple gs, unsigned index, tree out_op)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_asm.no && ((enum tree_code) (out_op)->base.code) == TREE_LIST)))
                                            ;
  gimple_set_op (gs, index + gs->gimple_asm.ni, out_op);
}




static tree
gimple_asm_clobber_op (const_gimple gs, unsigned index)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_asm.nc)));
  return gimple_op (gs, index + gs->gimple_asm.ni + gs->gimple_asm.no);
}




static void
gimple_asm_set_clobber_op (gimple gs, unsigned index, tree clobber_op)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_asm.nc && ((enum tree_code) (clobber_op)->base.code) == TREE_LIST)))
                                                ;
  gimple_set_op (gs, index + gs->gimple_asm.ni + gs->gimple_asm.no, clobber_op);
}



static tree
gimple_asm_label_op (const_gimple gs, unsigned index)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_asm.nl)));
  return gimple_op (gs, index + gs->gimple_asm.ni + gs->gimple_asm.nc);
}



static void
gimple_asm_set_label_op (gimple gs, unsigned index, tree label_op)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_asm.nl && ((enum tree_code) (label_op)->base.code) == TREE_LIST)))
                                              ;
  gimple_set_op (gs, index + gs->gimple_asm.ni + gs->gimple_asm.nc, label_op);
}




static const char *
gimple_asm_string (const_gimple gs)
{
  (void)0;
  return gs->gimple_asm.string;
}




static unsigned char
gimple_asm_volatile_p (const_gimple gs)
{
  (void)0;
  return (gs->gsbase.subcode & GF_ASM_VOLATILE) != 0;
}




static void
gimple_asm_set_volatile (gimple gs, unsigned char volatile_p)
{
  (void)0;
  if (volatile_p)
    gs->gsbase.subcode |= GF_ASM_VOLATILE;
  else
    gs->gsbase.subcode &= ~GF_ASM_VOLATILE;
}




static void
gimple_asm_set_input (gimple gs, unsigned char input_p)
{
  (void)0;
  if (input_p)
    gs->gsbase.subcode |= GF_ASM_INPUT;
  else
    gs->gsbase.subcode &= ~GF_ASM_INPUT;
}




static unsigned char
gimple_asm_input_p (const_gimple gs)
{
  (void)0;
  return (gs->gsbase.subcode & GF_ASM_INPUT) != 0;
}




static tree
gimple_catch_types (const_gimple gs)
{
  (void)0;
  return gs->gimple_catch.types;
}




static tree *
gimple_catch_types_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_catch.types;
}





static gimple_seq
gimple_catch_handler (gimple gs)
{
  (void)0;
  return gs->gimple_catch.handler;
}





static gimple_seq *
gimple_catch_handler_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_catch.handler;
}




static void
gimple_catch_set_types (gimple gs, tree t)
{
  (void)0;
  gs->gimple_catch.types = t;
}




static void
gimple_catch_set_handler (gimple gs, gimple_seq handler)
{
  (void)0;
  gs->gimple_catch.handler = handler;
}




static tree
gimple_eh_filter_types (const_gimple gs)
{
  (void)0;
  return gs->gimple_eh_filter.types;
}





static tree *
gimple_eh_filter_types_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_eh_filter.types;
}





static gimple_seq
gimple_eh_filter_failure (gimple gs)
{
  (void)0;
  return gs->gimple_eh_filter.failure;
}




static void
gimple_eh_filter_set_types (gimple gs, tree types)
{
  (void)0;
  gs->gimple_eh_filter.types = types;
}





static void
gimple_eh_filter_set_failure (gimple gs, gimple_seq failure)
{
  (void)0;
  gs->gimple_eh_filter.failure = failure;
}



static tree
gimple_eh_must_not_throw_fndecl (gimple gs)
{
  (void)0;
  return gs->gimple_eh_mnt.fndecl;
}



static void
gimple_eh_must_not_throw_set_fndecl (gimple gs, tree decl)
{
  (void)0;
  gs->gimple_eh_mnt.fndecl = decl;
}







static enum gimple_try_flags
gimple_try_kind (const_gimple gs)
{
  (void)0;
  return (enum gimple_try_flags) (gs->gsbase.subcode & GIMPLE_TRY_KIND);
}




static void
gimple_try_set_kind (gimple gs, enum gimple_try_flags kind)
{
  (void)0;
  ((void)(0 && (kind == GIMPLE_TRY_CATCH || kind == GIMPLE_TRY_FINALLY)))
                                       ;
  if (gimple_try_kind (gs) != kind)
    gs->gsbase.subcode = (unsigned int) kind;
}




static unsigned char
gimple_try_catch_is_cleanup (const_gimple gs)
{
  ((void)(0 && (gimple_try_kind (gs) == GIMPLE_TRY_CATCH)));
  return (gs->gsbase.subcode & GIMPLE_TRY_CATCH_IS_CLEANUP) != 0;
}




static gimple_seq
gimple_try_eval (gimple gs)
{
  (void)0;
  return gs->gimple_try.eval;
}





static gimple_seq
gimple_try_cleanup (gimple gs)
{
  (void)0;
  return gs->gimple_try.cleanup;
}




static void
gimple_try_set_catch_is_cleanup (gimple g, unsigned char catch_is_cleanup)
{
  ((void)(0 && (gimple_try_kind (g) == GIMPLE_TRY_CATCH)));
  if (catch_is_cleanup)
    g->gsbase.subcode |= GIMPLE_TRY_CATCH_IS_CLEANUP;
  else
    g->gsbase.subcode &= ~GIMPLE_TRY_CATCH_IS_CLEANUP;
}





static void
gimple_try_set_eval (gimple gs, gimple_seq eval)
{
  (void)0;
  gs->gimple_try.eval = eval;
}





static void
gimple_try_set_cleanup (gimple gs, gimple_seq cleanup)
{
  (void)0;
  gs->gimple_try.cleanup = cleanup;
}




static gimple_seq
gimple_wce_cleanup (gimple gs)
{
  (void)0;
  return gs->gimple_wce.cleanup;
}




static void
gimple_wce_set_cleanup (gimple gs, gimple_seq cleanup)
{
  (void)0;
  gs->gimple_wce.cleanup = cleanup;
}




static unsigned char
gimple_wce_cleanup_eh_only (const_gimple gs)
{
  (void)0;
  return gs->gsbase.subcode != 0;
}




static void
gimple_wce_set_cleanup_eh_only (gimple gs, unsigned char eh_only_p)
{
  (void)0;
  gs->gsbase.subcode = (unsigned int) eh_only_p;
}




static unsigned
gimple_phi_capacity (const_gimple gs)
{
  (void)0;
  return gs->gimple_phi.capacity;
}






static unsigned
gimple_phi_num_args (const_gimple gs)
{
  (void)0;
  return gs->gimple_phi.nargs;
}




static tree
gimple_phi_result (const_gimple gs)
{
  (void)0;
  return gs->gimple_phi.result;
}



static tree *
gimple_phi_result_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_phi.result;
}



static void
gimple_phi_set_result (gimple gs, tree result)
{
  (void)0;
  gs->gimple_phi.result = result;
}





static struct phi_arg_d *
gimple_phi_arg (gimple gs, unsigned index)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_phi.capacity)));
  return &(gs->gimple_phi.args[index]);
}




static void
gimple_phi_set_arg (gimple gs, unsigned index, struct phi_arg_d * phiarg)
{
  (void)0;
  ((void)(0 && (index <= gs->gimple_phi.nargs)));
  gs->gimple_phi.args[index] = *phiarg;
}



static int
gimple_resx_region (const_gimple gs)
{
  (void)0;
  return gs->gimple_eh_ctrl.region;
}



static void
gimple_resx_set_region (gimple gs, int region)
{
  (void)0;
  gs->gimple_eh_ctrl.region = region;
}



static int
gimple_eh_dispatch_region (const_gimple gs)
{
  (void)0;
  return gs->gimple_eh_ctrl.region;
}



static void
gimple_eh_dispatch_set_region (gimple gs, int region)
{
  (void)0;
  gs->gimple_eh_ctrl.region = region;
}



static unsigned
gimple_switch_num_labels (const_gimple gs)
{
  unsigned num_ops;
  (void)0;
  num_ops = gimple_num_ops (gs);
  ((void)(0 && (num_ops > 1)));
  return num_ops - 1;
}




static void
gimple_switch_set_num_labels (gimple g, unsigned nlabels)
{
  (void)0;
  gimple_set_num_ops (g, nlabels + 1);
}




static tree
gimple_switch_index (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 0);
}




static tree *
gimple_switch_index_ptr (const_gimple gs)
{
  (void)0;
  return gimple_op_ptr (gs, 0);
}




static void
gimple_switch_set_index (gimple gs, tree index)
{
  (void)0;
  ((void)(0 && ((((enum tree_code) (index)->base.code) == VAR_DECL || ((enum tree_code) (index)->base.code) == PARM_DECL || ((enum tree_code) (index)->base.code) == RESULT_DECL || (((enum tree_code) (index)->base.code) == SSA_NAME && (((enum tree_code) ((index)->ssa_name.var)->base.code) == VAR_DECL || ((enum tree_code) ((index)->ssa_name.var)->base.code) == PARM_DECL || ((enum tree_code) ((index)->ssa_name.var)->base.code) == RESULT_DECL))) || (tree_code_type[(int) (((enum tree_code) (index)->base.code))] == tcc_constant))));
  gimple_set_op (gs, 0, index);
}





static tree
gimple_switch_label (const_gimple gs, unsigned index)
{
  (void)0;
  ((void)(0 && (gimple_num_ops (gs) > index + 1)));
  return gimple_op (gs, index + 1);
}



static void
gimple_switch_set_label (gimple gs, unsigned index, tree label)
{
  (void)0;
  ((void)(0 && (gimple_num_ops (gs) > index + 1 && (label == (tree) ((void *)0) || ((enum tree_code) (label)->base.code) == CASE_LABEL_EXPR))))

                                                      ;
  gimple_set_op (gs, index + 1, label);
}



static tree
gimple_switch_default_label (const_gimple gs)
{
  return gimple_switch_label (gs, 0);
}



static void
gimple_switch_set_default_label (gimple gs, tree label)
{
  gimple_switch_set_label (gs, 0, label);
}



static unsigned char
is_gimple_debug (const_gimple gs)
{
  return gimple_code (gs) == GIMPLE_DEBUG;
}



static unsigned char
gimple_debug_bind_p (const_gimple s)
{
  if (is_gimple_debug (s))
    return s->gsbase.subcode == GIMPLE_DEBUG_BIND;

  return 0;
}



static tree
gimple_debug_bind_get_var (gimple dbg)
{
  (void)0;
  ((void)(0 && (gimple_debug_bind_p (dbg))));
  return gimple_op (dbg, 0);
}




static tree
gimple_debug_bind_get_value (gimple dbg)
{
  (void)0;
  ((void)(0 && (gimple_debug_bind_p (dbg))));
  return gimple_op (dbg, 1);
}




static tree *
gimple_debug_bind_get_value_ptr (gimple dbg)
{
  (void)0;
  ((void)(0 && (gimple_debug_bind_p (dbg))));
  return gimple_op_ptr (dbg, 1);
}



static void
gimple_debug_bind_set_var (gimple dbg, tree var)
{
  (void)0;
  ((void)(0 && (gimple_debug_bind_p (dbg))));
  gimple_set_op (dbg, 0, var);
}




static void
gimple_debug_bind_set_value (gimple dbg, tree value)
{
  (void)0;
  ((void)(0 && (gimple_debug_bind_p (dbg))));
  gimple_set_op (dbg, 1, value);
}
# 3519 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h"
static void
gimple_debug_bind_reset_value (gimple dbg)
{
  (void)0;
  ((void)(0 && (gimple_debug_bind_p (dbg))));
  gimple_set_op (dbg, 1, (tree) ((void *)0));
}




static unsigned char
gimple_debug_bind_has_value_p (gimple dbg)
{
  (void)0;
  ((void)(0 && (gimple_debug_bind_p (dbg))));
  return gimple_op (dbg, 1) != (tree) ((void *)0);
}





static gimple_seq
gimple_omp_body (gimple gs)
{
  return gs->omp.body;
}



static void
gimple_omp_set_body (gimple gs, gimple_seq body)
{
  gs->omp.body = body;
}




static tree
gimple_omp_critical_name (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_critical.name;
}




static tree *
gimple_omp_critical_name_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_critical.name;
}




static void
gimple_omp_critical_set_name (gimple gs, tree name)
{
  (void)0;
  gs->gimple_omp_critical.name = name;
}




static tree
gimple_omp_for_clauses (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_for.clauses;
}




static tree *
gimple_omp_for_clauses_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_for.clauses;
}




static void
gimple_omp_for_set_clauses (gimple gs, tree clauses)
{
  (void)0;
  gs->gimple_omp_for.clauses = clauses;
}




static size_t
gimple_omp_for_collapse (gimple gs)
{
  (void)0;
  return gs->gimple_omp_for.collapse;
}




static tree
gimple_omp_for_index (const_gimple gs, size_t i)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  return gs->gimple_omp_for.iter[i].index;
}




static tree *
gimple_omp_for_index_ptr (gimple gs, size_t i)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  return &gs->gimple_omp_for.iter[i].index;
}




static void
gimple_omp_for_set_index (gimple gs, size_t i, tree index)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  gs->gimple_omp_for.iter[i].index = index;
}




static tree
gimple_omp_for_initial (const_gimple gs, size_t i)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  return gs->gimple_omp_for.iter[i].initial;
}




static tree *
gimple_omp_for_initial_ptr (gimple gs, size_t i)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  return &gs->gimple_omp_for.iter[i].initial;
}




static void
gimple_omp_for_set_initial (gimple gs, size_t i, tree initial)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  gs->gimple_omp_for.iter[i].initial = initial;
}




static tree
gimple_omp_for_final (const_gimple gs, size_t i)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  return gs->gimple_omp_for.iter[i].final;
}




static tree *
gimple_omp_for_final_ptr (gimple gs, size_t i)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  return &gs->gimple_omp_for.iter[i].final;
}




static void
gimple_omp_for_set_final (gimple gs, size_t i, tree final)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  gs->gimple_omp_for.iter[i].final = final;
}




static tree
gimple_omp_for_incr (const_gimple gs, size_t i)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  return gs->gimple_omp_for.iter[i].incr;
}




static tree *
gimple_omp_for_incr_ptr (gimple gs, size_t i)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  return &gs->gimple_omp_for.iter[i].incr;
}




static void
gimple_omp_for_set_incr (gimple gs, size_t i, tree incr)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  gs->gimple_omp_for.iter[i].incr = incr;
}





static gimple_seq
gimple_omp_for_pre_body (gimple gs)
{
  (void)0;
  return gs->gimple_omp_for.pre_body;
}





static void
gimple_omp_for_set_pre_body (gimple gs, gimple_seq pre_body)
{
  (void)0;
  gs->gimple_omp_for.pre_body = pre_body;
}




static tree
gimple_omp_parallel_clauses (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_parallel.clauses;
}




static tree *
gimple_omp_parallel_clauses_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_parallel.clauses;
}





static void
gimple_omp_parallel_set_clauses (gimple gs, tree clauses)
{
  (void)0;
  gs->gimple_omp_parallel.clauses = clauses;
}




static tree
gimple_omp_parallel_child_fn (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_parallel.child_fn;
}




static tree *
gimple_omp_parallel_child_fn_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_parallel.child_fn;
}




static void
gimple_omp_parallel_set_child_fn (gimple gs, tree child_fn)
{
  (void)0;
  gs->gimple_omp_parallel.child_fn = child_fn;
}





static tree
gimple_omp_parallel_data_arg (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_parallel.data_arg;
}




static tree *
gimple_omp_parallel_data_arg_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_parallel.data_arg;
}




static void
gimple_omp_parallel_set_data_arg (gimple gs, tree data_arg)
{
  (void)0;
  gs->gimple_omp_parallel.data_arg = data_arg;
}




static tree
gimple_omp_task_clauses (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_parallel.clauses;
}




static tree *
gimple_omp_task_clauses_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_parallel.clauses;
}





static void
gimple_omp_task_set_clauses (gimple gs, tree clauses)
{
  (void)0;
  gs->gimple_omp_parallel.clauses = clauses;
}




static tree
gimple_omp_task_child_fn (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_parallel.child_fn;
}




static tree *
gimple_omp_task_child_fn_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_parallel.child_fn;
}




static void
gimple_omp_task_set_child_fn (gimple gs, tree child_fn)
{
  (void)0;
  gs->gimple_omp_parallel.child_fn = child_fn;
}





static tree
gimple_omp_task_data_arg (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_parallel.data_arg;
}




static tree *
gimple_omp_task_data_arg_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_parallel.data_arg;
}




static void
gimple_omp_task_set_data_arg (gimple gs, tree data_arg)
{
  (void)0;
  gs->gimple_omp_parallel.data_arg = data_arg;
}




static tree
gimple_omp_taskreg_clauses (const_gimple gs)
{
  if (gimple_code (gs) != GIMPLE_OMP_PARALLEL)
    (void)0;
  return gs->gimple_omp_parallel.clauses;
}




static tree *
gimple_omp_taskreg_clauses_ptr (gimple gs)
{
  if (gimple_code (gs) != GIMPLE_OMP_PARALLEL)
    (void)0;
  return &gs->gimple_omp_parallel.clauses;
}





static void
gimple_omp_taskreg_set_clauses (gimple gs, tree clauses)
{
  if (gimple_code (gs) != GIMPLE_OMP_PARALLEL)
    (void)0;
  gs->gimple_omp_parallel.clauses = clauses;
}




static tree
gimple_omp_taskreg_child_fn (const_gimple gs)
{
  if (gimple_code (gs) != GIMPLE_OMP_PARALLEL)
    (void)0;
  return gs->gimple_omp_parallel.child_fn;
}




static tree *
gimple_omp_taskreg_child_fn_ptr (gimple gs)
{
  if (gimple_code (gs) != GIMPLE_OMP_PARALLEL)
    (void)0;
  return &gs->gimple_omp_parallel.child_fn;
}




static void
gimple_omp_taskreg_set_child_fn (gimple gs, tree child_fn)
{
  if (gimple_code (gs) != GIMPLE_OMP_PARALLEL)
    (void)0;
  gs->gimple_omp_parallel.child_fn = child_fn;
}





static tree
gimple_omp_taskreg_data_arg (const_gimple gs)
{
  if (gimple_code (gs) != GIMPLE_OMP_PARALLEL)
    (void)0;
  return gs->gimple_omp_parallel.data_arg;
}




static tree *
gimple_omp_taskreg_data_arg_ptr (gimple gs)
{
  if (gimple_code (gs) != GIMPLE_OMP_PARALLEL)
    (void)0;
  return &gs->gimple_omp_parallel.data_arg;
}




static void
gimple_omp_taskreg_set_data_arg (gimple gs, tree data_arg)
{
  if (gimple_code (gs) != GIMPLE_OMP_PARALLEL)
    (void)0;
  gs->gimple_omp_parallel.data_arg = data_arg;
}




static tree
gimple_omp_task_copy_fn (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_task.copy_fn;
}




static tree *
gimple_omp_task_copy_fn_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_task.copy_fn;
}




static void
gimple_omp_task_set_copy_fn (gimple gs, tree copy_fn)
{
  (void)0;
  gs->gimple_omp_task.copy_fn = copy_fn;
}




static tree
gimple_omp_task_arg_size (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_task.arg_size;
}




static tree *
gimple_omp_task_arg_size_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_task.arg_size;
}




static void
gimple_omp_task_set_arg_size (gimple gs, tree arg_size)
{
  (void)0;
  gs->gimple_omp_task.arg_size = arg_size;
}




static tree
gimple_omp_task_arg_align (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_task.arg_align;
}




static tree *
gimple_omp_task_arg_align_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_task.arg_align;
}




static void
gimple_omp_task_set_arg_align (gimple gs, tree arg_align)
{
  (void)0;
  gs->gimple_omp_task.arg_align = arg_align;
}




static tree
gimple_omp_single_clauses (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_single.clauses;
}




static tree *
gimple_omp_single_clauses_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_single.clauses;
}




static void
gimple_omp_single_set_clauses (gimple gs, tree clauses)
{
  (void)0;
  gs->gimple_omp_single.clauses = clauses;
}




static tree
gimple_omp_sections_clauses (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_sections.clauses;
}




static tree *
gimple_omp_sections_clauses_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_sections.clauses;
}





static void
gimple_omp_sections_set_clauses (gimple gs, tree clauses)
{
  (void)0;
  gs->gimple_omp_sections.clauses = clauses;
}





static tree
gimple_omp_sections_control (const_gimple gs)
{
  (void)0;
  return gs->gimple_omp_sections.control;
}





static tree *
gimple_omp_sections_control_ptr (gimple gs)
{
  (void)0;
  return &gs->gimple_omp_sections.control;
}





static void
gimple_omp_sections_set_control (gimple gs, tree control)
{
  (void)0;
  gs->gimple_omp_sections.control = control;
}




static void
gimple_omp_for_set_cond (gimple gs, size_t i, enum tree_code cond)
{
  (void)0;
  ((void)(0 && (tree_code_type[(int) (cond)] == tcc_comparison && i < gs->gimple_omp_for.collapse)))
                                            ;
  gs->gimple_omp_for.iter[i].cond = cond;
}




static enum tree_code
gimple_omp_for_cond (const_gimple gs, size_t i)
{
  (void)0;
  ((void)(0 && (i < gs->gimple_omp_for.collapse)));
  return gs->gimple_omp_for.iter[i].cond;
}




static void
gimple_omp_atomic_store_set_val (gimple g, tree val)
{
  (void)0;
  g->gimple_omp_atomic_store.val = val;
}




static tree
gimple_omp_atomic_store_val (const_gimple g)
{
  (void)0;
  return g->gimple_omp_atomic_store.val;
}




static tree *
gimple_omp_atomic_store_val_ptr (gimple g)
{
  (void)0;
  return &g->gimple_omp_atomic_store.val;
}




static void
gimple_omp_atomic_load_set_lhs (gimple g, tree lhs)
{
  (void)0;
  g->gimple_omp_atomic_load.lhs = lhs;
}




static tree
gimple_omp_atomic_load_lhs (const_gimple g)
{
  (void)0;
  return g->gimple_omp_atomic_load.lhs;
}




static tree *
gimple_omp_atomic_load_lhs_ptr (gimple g)
{
  (void)0;
  return &g->gimple_omp_atomic_load.lhs;
}




static void
gimple_omp_atomic_load_set_rhs (gimple g, tree rhs)
{
  (void)0;
  g->gimple_omp_atomic_load.rhs = rhs;
}




static tree
gimple_omp_atomic_load_rhs (const_gimple g)
{
  (void)0;
  return g->gimple_omp_atomic_load.rhs;
}




static tree *
gimple_omp_atomic_load_rhs_ptr (gimple g)
{
  (void)0;
  return &g->gimple_omp_atomic_load.rhs;
}




static tree
gimple_omp_continue_control_def (const_gimple g)
{
  (void)0;
  return g->gimple_omp_continue.control_def;
}



static tree *
gimple_omp_continue_control_def_ptr (gimple g)
{
  (void)0;
  return &g->gimple_omp_continue.control_def;
}



static void
gimple_omp_continue_set_control_def (gimple g, tree def)
{
  (void)0;
  g->gimple_omp_continue.control_def = def;
}




static tree
gimple_omp_continue_control_use (const_gimple g)
{
  (void)0;
  return g->gimple_omp_continue.control_use;
}




static tree *
gimple_omp_continue_control_use_ptr (gimple g)
{
  (void)0;
  return &g->gimple_omp_continue.control_use;
}




static void
gimple_omp_continue_set_control_use (gimple g, tree use)
{
  (void)0;
  g->gimple_omp_continue.control_use = use;
}




static tree *
gimple_return_retval_ptr (const_gimple gs)
{
  (void)0;
  return gimple_op_ptr (gs, 0);
}



static tree
gimple_return_retval (const_gimple gs)
{
  (void)0;
  return gimple_op (gs, 0);
}




static void
gimple_return_set_retval (gimple gs, tree retval)
{
  (void)0;
  gimple_set_op (gs, 0, retval);
}
# 4468 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h"
static unsigned char
is_gimple_omp (const_gimple stmt)
{
  switch (gimple_code (stmt))
    {
    case GIMPLE_OMP_PARALLEL: case GIMPLE_OMP_TASK: case GIMPLE_OMP_FOR: case GIMPLE_OMP_SECTIONS: case GIMPLE_OMP_SECTIONS_SWITCH: case GIMPLE_OMP_SINGLE: case GIMPLE_OMP_SECTION: case GIMPLE_OMP_MASTER: case GIMPLE_OMP_ORDERED: case GIMPLE_OMP_CRITICAL: case GIMPLE_OMP_RETURN: case GIMPLE_OMP_ATOMIC_LOAD: case GIMPLE_OMP_ATOMIC_STORE: case GIMPLE_OMP_CONTINUE:
      return 1;
    default:
      return 0;
    }
}




static unsigned char
gimple_nop_p (const_gimple g)
{
  return gimple_code (g) == GIMPLE_NOP;
}




static unsigned char
is_gimple_resx (const_gimple gs)
{
  return gimple_code (gs) == GIMPLE_RESX;
}



static enum br_predictor
gimple_predict_predictor (gimple gs)
{
  (void)0;
  return (enum br_predictor) (gs->gsbase.subcode & ~GF_PREDICT_TAKEN);
}




static void
gimple_predict_set_predictor (gimple gs, enum br_predictor predictor)
{
  (void)0;
  gs->gsbase.subcode = (gs->gsbase.subcode & GF_PREDICT_TAKEN)
         | (unsigned) predictor;
}




static enum prediction
gimple_predict_outcome (gimple gs)
{
  (void)0;
  return (gs->gsbase.subcode & GF_PREDICT_TAKEN) ? TAKEN : NOT_TAKEN;
}




static void
gimple_predict_set_outcome (gimple gs, enum prediction outcome)
{
  (void)0;
  if (outcome == TAKEN)
    gs->gsbase.subcode |= GF_PREDICT_TAKEN;
  else
    gs->gsbase.subcode &= ~GF_PREDICT_TAKEN;
}





static tree
gimple_expr_type (const_gimple stmt)
{
  enum gimple_code code = gimple_code (stmt);

  if (code == GIMPLE_ASSIGN || code == GIMPLE_CALL)
    {
      tree type;




      if (code == GIMPLE_CALL)
 type = gimple_call_return_type (stmt);
      else
 switch (gimple_assign_rhs_code (stmt))
   {
   case POINTER_PLUS_EXPR:
     type = ((gimple_assign_rhs1 (stmt))->common.type);
     break;

   default:

     type = ((gimple_get_lhs (stmt))->common.type);
     break;
   }
      return type;
    }
  else if (code == GIMPLE_COND)
    return global_trees[TI_BOOLEAN_TYPE];
  else
    return global_trees[TI_VOID_TYPE];
}




static gimple_stmt_iterator
gsi_start (gimple_seq seq)
{
  gimple_stmt_iterator i;

  i.ptr = gimple_seq_first (seq);
  i.seq = seq;
  i.bb = (i.ptr && i.ptr->stmt) ? gimple_bb (i.ptr->stmt) : ((void *)0);

  return i;
}




static gimple_stmt_iterator
gsi_start_bb (basic_block bb)
{
  gimple_stmt_iterator i;
  gimple_seq seq;

  seq = bb_seq (bb);
  i.ptr = gimple_seq_first (seq);
  i.seq = seq;
  i.bb = bb;

  return i;
}




static gimple_stmt_iterator
gsi_last (gimple_seq seq)
{
  gimple_stmt_iterator i;

  i.ptr = gimple_seq_last (seq);
  i.seq = seq;
  i.bb = (i.ptr && i.ptr->stmt) ? gimple_bb (i.ptr->stmt) : ((void *)0);

  return i;
}




static gimple_stmt_iterator
gsi_last_bb (basic_block bb)
{
  gimple_stmt_iterator i;
  gimple_seq seq;

  seq = bb_seq (bb);
  i.ptr = gimple_seq_last (seq);
  i.seq = seq;
  i.bb = bb;

  return i;
}




static unsigned char
gsi_end_p (gimple_stmt_iterator i)
{
  return i.ptr == ((void *)0);
}




static unsigned char
gsi_one_before_end_p (gimple_stmt_iterator i)
{
  return i.ptr != ((void *)0) && i.ptr->next == ((void *)0);
}




static void
gsi_next (gimple_stmt_iterator *i)
{
  i->ptr = i->ptr->next;
}



static void
gsi_prev (gimple_stmt_iterator *i)
{
  i->ptr = i->ptr->prev;
}



static gimple
gsi_stmt (gimple_stmt_iterator i)
{
  return i.ptr->stmt;
}




static gimple_stmt_iterator
gsi_after_labels (basic_block bb)
{
  gimple_stmt_iterator gsi = gsi_start_bb (bb);

  while (!gsi_end_p (gsi) && gimple_code (gsi_stmt (gsi)) == GIMPLE_LABEL)
    gsi_next (&gsi);

  return gsi;
}



static void
gsi_next_nondebug (gimple_stmt_iterator *i)
{
  do
    {
      gsi_next (i);
    }
  while (!gsi_end_p (*i) && is_gimple_debug (gsi_stmt (*i)));
}



static void
gsi_prev_nondebug (gimple_stmt_iterator *i)
{
  do
    {
      gsi_prev (i);
    }
  while (!gsi_end_p (*i) && is_gimple_debug (gsi_stmt (*i)));
}




static gimple_stmt_iterator
gsi_start_nondebug_bb (basic_block bb)
{
  gimple_stmt_iterator i = gsi_start_bb (bb);

  if (!gsi_end_p (i) && is_gimple_debug (gsi_stmt (i)))
    gsi_next_nondebug (&i);

  return i;
}




static gimple_stmt_iterator
gsi_last_nondebug_bb (basic_block bb)
{
  gimple_stmt_iterator i = gsi_last_bb (bb);

  if (!gsi_end_p (i) && is_gimple_debug (gsi_stmt (i)))
    gsi_prev_nondebug (&i);

  return i;
}







static gimple *
gsi_stmt_ptr (gimple_stmt_iterator *i)
{
  return &i->ptr->stmt;
}




static basic_block
gsi_bb (gimple_stmt_iterator i)
{
  return i.bb;
}




static gimple_seq
gsi_seq (gimple_stmt_iterator i)
{
  return i.seq;
}


enum gsi_iterator_update
{
  GSI_NEW_STMT,

  GSI_SAME_STMT,
  GSI_CONTINUE_LINKING


};


gimple_stmt_iterator gsi_start_phis (basic_block);
gimple_seq gsi_split_seq_after (gimple_stmt_iterator);
gimple_seq gsi_split_seq_before (gimple_stmt_iterator *);
void gsi_replace (gimple_stmt_iterator *, gimple, unsigned char);
void gsi_insert_before (gimple_stmt_iterator *, gimple,
   enum gsi_iterator_update);
void gsi_insert_before_without_update (gimple_stmt_iterator *, gimple,
                                       enum gsi_iterator_update);
void gsi_insert_seq_before (gimple_stmt_iterator *, gimple_seq,
                            enum gsi_iterator_update);
void gsi_insert_seq_before_without_update (gimple_stmt_iterator *, gimple_seq,
                                           enum gsi_iterator_update);
void gsi_insert_after (gimple_stmt_iterator *, gimple,
         enum gsi_iterator_update);
void gsi_insert_after_without_update (gimple_stmt_iterator *, gimple,
                                      enum gsi_iterator_update);
void gsi_insert_seq_after (gimple_stmt_iterator *, gimple_seq,
      enum gsi_iterator_update);
void gsi_insert_seq_after_without_update (gimple_stmt_iterator *, gimple_seq,
                                          enum gsi_iterator_update);
void gsi_remove (gimple_stmt_iterator *, unsigned char);
gimple_stmt_iterator gsi_for_stmt (gimple);
void gsi_move_after (gimple_stmt_iterator *, gimple_stmt_iterator *);
void gsi_move_before (gimple_stmt_iterator *, gimple_stmt_iterator *);
void gsi_move_to_bb_end (gimple_stmt_iterator *, struct basic_block_def *);
void gsi_insert_on_edge (edge, gimple);
void gsi_insert_seq_on_edge (edge, gimple_seq);
basic_block gsi_insert_on_edge_immediate (edge, gimple);
basic_block gsi_insert_seq_on_edge_immediate (edge, gimple_seq);
void gsi_commit_one_edge_insert (edge, basic_block *);
void gsi_commit_edge_inserts (void);
gimple gimple_call_copy_skip_args (gimple, bitmap);






struct walk_stmt_info
{

  gimple_stmt_iterator gsi;



  void *info;




  struct pointer_set_t *pset;
# 4858 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h"
  unsigned char val_only;


  unsigned char is_lhs;



  unsigned char changed;


  unsigned char want_locations;





  tree callback_result;
};
# 4884 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h"
typedef tree (*walk_stmt_fn) (gimple_stmt_iterator *, unsigned char *,
         struct walk_stmt_info *);

gimple walk_gimple_seq (gimple_seq, walk_stmt_fn, walk_tree_fn,
          struct walk_stmt_info *);
tree walk_gimple_stmt (gimple_stmt_iterator *, walk_stmt_fn, walk_tree_fn,
         struct walk_stmt_info *);
tree walk_gimple_op (gimple, walk_tree_fn, struct walk_stmt_info *);
# 4927 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/gimple.h"
extern void dump_gimple_statistics (void);


void gimplify_and_update_call_from_tree (gimple_stmt_iterator *, tree);
tree gimple_fold_builtin (gimple);
unsigned char fold_stmt (gimple_stmt_iterator *);
unsigned char fold_stmt_inplace (gimple);
tree maybe_fold_offset_to_address (location_t, tree, tree, tree);
tree maybe_fold_offset_to_reference (location_t, tree, tree, tree);
tree maybe_fold_stmt_addition (location_t, tree, tree, tree);
tree get_symbol_constant_value (tree);
tree canonicalize_constructor_val (tree);
unsigned char may_propagate_address_into_dereference (tree, tree);
extern tree maybe_fold_and_comparisons (enum tree_code, tree, tree,
     enum tree_code, tree, tree);
extern tree maybe_fold_or_comparisons (enum tree_code, tree, tree,
           enum tree_code, tree, tree);
# 30 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h" 2

# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cgraph.h" 1
# 25 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cgraph.h"
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/plugin-api.h" 1
# 47 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/plugin-api.h"
enum ld_plugin_status
{
  LDPS_OK = 0,
  LDPS_NO_SYMS,
  LDPS_BAD_HANDLE,
  LDPS_ERR

};



enum ld_plugin_api_version
{
  LD_PLUGIN_API_VERSION = 1
};



enum ld_plugin_output_file_type
{
  LDPO_REL,
  LDPO_EXEC,
  LDPO_DYN
};



struct ld_plugin_input_file
{
  const char *name;
  int fd;
  off_t offset;
  off_t filesize;
  void *handle;
};



struct ld_plugin_symbol
{
  char *name;
  char *version;
  int def;
  int visibility;
  uint64_t size;
  char *comdat_key;
  int resolution;
};



enum ld_plugin_symbol_kind
{
  LDPK_DEF,
  LDPK_WEAKDEF,
  LDPK_UNDEF,
  LDPK_WEAKUNDEF,
  LDPK_COMMON
};



enum ld_plugin_symbol_visibility
{
  LDPV_DEFAULT,
  LDPV_PROTECTED,
  LDPV_INTERNAL,
  LDPV_HIDDEN
};



enum ld_plugin_symbol_resolution
{
  LDPR_UNKNOWN = 0,


  LDPR_UNDEF,



  LDPR_PREVAILING_DEF,




  LDPR_PREVAILING_DEF_IRONLY,



  LDPR_PREEMPTED_REG,


  LDPR_PREEMPTED_IR,


  LDPR_RESOLVED_IR,



  LDPR_RESOLVED_EXEC,


  LDPR_RESOLVED_DYN
};



typedef
enum ld_plugin_status
(*ld_plugin_claim_file_handler) (
  const struct ld_plugin_input_file *file, int *claimed);



typedef
enum ld_plugin_status
(*ld_plugin_all_symbols_read_handler) (void);



typedef
enum ld_plugin_status
(*ld_plugin_cleanup_handler) (void);



typedef
enum ld_plugin_status
(*ld_plugin_register_claim_file) (ld_plugin_claim_file_handler handler);



typedef
enum ld_plugin_status
(*ld_plugin_register_all_symbols_read) (
  ld_plugin_all_symbols_read_handler handler);



typedef
enum ld_plugin_status
(*ld_plugin_register_cleanup) (ld_plugin_cleanup_handler handler);



typedef
enum ld_plugin_status
(*ld_plugin_add_symbols) (void *handle, int nsyms,
                          const struct ld_plugin_symbol *syms);




typedef
enum ld_plugin_status
(*ld_plugin_get_input_file) (const void *handle,
                             struct ld_plugin_input_file *file);



typedef
enum ld_plugin_status
(*ld_plugin_release_input_file) (const void *handle);



typedef
enum ld_plugin_status
(*ld_plugin_get_symbols) (const void *handle, int nsyms,
                          struct ld_plugin_symbol *syms);



typedef
enum ld_plugin_status
(*ld_plugin_add_input_file) (const char *pathname);



typedef
enum ld_plugin_status
(*ld_plugin_add_input_library) (const char *libname);



typedef
enum ld_plugin_status
(*ld_plugin_set_extra_library_path) (const char *path);



typedef
enum ld_plugin_status
(*ld_plugin_message) (int level, const char *format, ...);

enum ld_plugin_level
{
  LDPL_INFO,
  LDPL_WARNING,
  LDPL_ERROR,
  LDPL_FATAL
};



enum ld_plugin_tag
{
  LDPT_NULL = 0,
  LDPT_API_VERSION,
  LDPT_GOLD_VERSION,
  LDPT_LINKER_OUTPUT,
  LDPT_OPTION,
  LDPT_REGISTER_CLAIM_FILE_HOOK,
  LDPT_REGISTER_ALL_SYMBOLS_READ_HOOK,
  LDPT_REGISTER_CLEANUP_HOOK,
  LDPT_ADD_SYMBOLS,
  LDPT_GET_SYMBOLS,
  LDPT_ADD_INPUT_FILE,
  LDPT_MESSAGE,
  LDPT_GET_INPUT_FILE,
  LDPT_RELEASE_INPUT_FILE,
  LDPT_ADD_INPUT_LIBRARY,
  LDPT_OUTPUT_NAME,
  LDPT_SET_EXTRA_LIBRARY_PATH,
  LDPT_GNU_LD_VERSION
};



struct ld_plugin_tv
{
  enum ld_plugin_tag tv_tag;
  union
  {
    int tv_val;
    const char *tv_string;
    ld_plugin_register_claim_file tv_register_claim_file;
    ld_plugin_register_all_symbols_read tv_register_all_symbols_read;
    ld_plugin_register_cleanup tv_register_cleanup;
    ld_plugin_add_symbols tv_add_symbols;
    ld_plugin_get_symbols tv_get_symbols;
    ld_plugin_add_input_file tv_add_input_file;
    ld_plugin_message tv_message;
    ld_plugin_get_input_file tv_get_input_file;
    ld_plugin_release_input_file tv_release_input_file;
    ld_plugin_add_input_library tv_add_input_library;
    ld_plugin_set_extra_library_path tv_set_extra_library_path;
  } tv_u;
};



typedef
enum ld_plugin_status
(*ld_plugin_onload) (struct ld_plugin_tv *tv);
# 26 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cgraph.h" 2




# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ipa-ref.h" 1
# 22 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ipa-ref.h"
struct cgraph_node;
struct varpool_node;


enum ipa_ref_use
{
  IPA_REF_LOAD,
  IPA_REF_STORE,
  IPA_REF_ADDR
};


enum ipa_ref_type
{
  IPA_REF_CGRAPH,
  IPA_REF_VARPOOL
};



union ipa_ref_ptr_u
{
  struct cgraph_node * cgraph_node;
  struct varpool_node * varpool_node;
};


struct ipa_ref
{
  union ipa_ref_ptr_u refering;
  union ipa_ref_ptr_u refered;
  gimple stmt;
  unsigned int refered_index;
enum ipa_ref_type refering_type:1;
enum ipa_ref_type refered_type:1;
enum ipa_ref_use use:2;
};

typedef struct ipa_ref ipa_ref_t;
typedef struct ipa_ref *ipa_ref_ptr;

typedef struct VEC_ipa_ref_t_base { unsigned num; unsigned alloc; ipa_ref_t vec[1]; } VEC_ipa_ref_t_base; typedef struct VEC_ipa_ref_t_none { VEC_ipa_ref_t_base base; } VEC_ipa_ref_t_none; static unsigned VEC_ipa_ref_t_base_length (const VEC_ipa_ref_t_base *vec_) { return vec_ ? vec_->num : 0; } static ipa_ref_t *VEC_ipa_ref_t_base_last (VEC_ipa_ref_t_base *vec_ ) { (void)(vec_ && vec_->num); return &vec_->vec[vec_->num - 1]; } static ipa_ref_t *VEC_ipa_ref_t_base_index (VEC_ipa_ref_t_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return &vec_->vec[ix_]; } static int VEC_ipa_ref_t_base_iterate (VEC_ipa_ref_t_base *vec_, unsigned ix_, ipa_ref_t **ptr) { if (vec_ && ix_ < vec_->num) { *ptr = &vec_->vec[ix_]; return 1; } else { *ptr = 0; return 0; } } static size_t VEC_ipa_ref_t_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_ipa_ref_t_base, vec) + alloc_ * sizeof(ipa_ref_t); } static void VEC_ipa_ref_t_base_embedded_init (VEC_ipa_ref_t_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_ipa_ref_t_base_space (VEC_ipa_ref_t_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_ipa_ref_t_base_splice (VEC_ipa_ref_t_base *dst_, VEC_ipa_ref_t_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (ipa_ref_t)); dst_->num += len_; } } static ipa_ref_t *VEC_ipa_ref_t_base_quick_push (VEC_ipa_ref_t_base *vec_, const ipa_ref_t *obj_ ) { ipa_ref_t *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; if (obj_) *slot_ = *obj_; return slot_; } static void VEC_ipa_ref_t_base_pop (VEC_ipa_ref_t_base *vec_ ) { (void)(vec_->num); --vec_->num; } static void VEC_ipa_ref_t_base_truncate (VEC_ipa_ref_t_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static ipa_ref_t *VEC_ipa_ref_t_base_replace (VEC_ipa_ref_t_base *vec_, unsigned ix_, const ipa_ref_t *obj_ ) { ipa_ref_t *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; if (obj_) *slot_ = *obj_; return slot_; } static ipa_ref_t *VEC_ipa_ref_t_base_quick_insert (VEC_ipa_ref_t_base *vec_, unsigned ix_, const ipa_ref_t *obj_ ) { ipa_ref_t *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (ipa_ref_t)); if (obj_) *slot_ = *obj_; return slot_; } static void VEC_ipa_ref_t_base_ordered_remove (VEC_ipa_ref_t_base *vec_, unsigned ix_ ) { ipa_ref_t *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (ipa_ref_t)); } static void VEC_ipa_ref_t_base_unordered_remove (VEC_ipa_ref_t_base *vec_, unsigned ix_ ) { (void)(ix_ < vec_->num); vec_->vec[ix_] = vec_->vec[--vec_->num]; } static void VEC_ipa_ref_t_base_block_remove (VEC_ipa_ref_t_base *vec_, unsigned ix_, unsigned len_ ) { ipa_ref_t *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (ipa_ref_t)); } static ipa_ref_t *VEC_ipa_ref_t_base_address (VEC_ipa_ref_t_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_ipa_ref_t_base_lower_bound (VEC_ipa_ref_t_base *vec_, const ipa_ref_t *obj_, unsigned char (*lessthan_)(const ipa_ref_t *, const ipa_ref_t *) ) { unsigned int len_ = VEC_ipa_ref_t_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { ipa_ref_t *middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_ipa_ref_t_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_ipa_ref_t_gc { VEC_ipa_ref_t_base base; } VEC_ipa_ref_t_gc; static VEC_ipa_ref_t_gc *VEC_ipa_ref_t_gc_alloc (int alloc_ ) { return (VEC_ipa_ref_t_gc *) vec_gc_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_ipa_ref_t_gc, base.vec), sizeof (ipa_ref_t) ); } static VEC_ipa_ref_t_gc *VEC_ipa_ref_t_gc_copy (VEC_ipa_ref_t_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_ipa_ref_t_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_ipa_ref_t_gc *)(vec_gc_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_ipa_ref_t_gc, base.vec), sizeof (ipa_ref_t) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (ipa_ref_t) * len_); } return new_vec_; } static void VEC_ipa_ref_t_gc_free (VEC_ipa_ref_t_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static int VEC_ipa_ref_t_gc_reserve (VEC_ipa_ref_t_gc **vec_, int alloc_ ) { int extend = !VEC_ipa_ref_t_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_ipa_ref_t_gc *) vec_gc_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_ipa_ref_t_gc, base.vec), sizeof (ipa_ref_t) ); return extend; } static int VEC_ipa_ref_t_gc_reserve_exact (VEC_ipa_ref_t_gc **vec_, int alloc_ ) { int extend = !VEC_ipa_ref_t_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_ipa_ref_t_gc *) vec_gc_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_ipa_ref_t_gc, base.vec), sizeof (ipa_ref_t) ); return extend; } static void VEC_ipa_ref_t_gc_safe_grow (VEC_ipa_ref_t_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_ipa_ref_t_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_ipa_ref_t_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_ipa_ref_t_gc_safe_grow_cleared (VEC_ipa_ref_t_gc **vec_, int size_ ) { int oldsize = VEC_ipa_ref_t_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_ipa_ref_t_gc_safe_grow (vec_, size_ ); memset (&(VEC_ipa_ref_t_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (ipa_ref_t) * (size_ - oldsize)); } static void VEC_ipa_ref_t_gc_safe_splice (VEC_ipa_ref_t_gc **dst_, VEC_ipa_ref_t_base *src_ ) { if (src_) { VEC_ipa_ref_t_gc_reserve_exact (dst_, src_->num ); VEC_ipa_ref_t_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static ipa_ref_t *VEC_ipa_ref_t_gc_safe_push (VEC_ipa_ref_t_gc **vec_, const ipa_ref_t *obj_ ) { VEC_ipa_ref_t_gc_reserve (vec_, 1 ); return VEC_ipa_ref_t_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static ipa_ref_t *VEC_ipa_ref_t_gc_safe_insert (VEC_ipa_ref_t_gc **vec_, unsigned ix_, const ipa_ref_t *obj_ ) { VEC_ipa_ref_t_gc_reserve (vec_, 1 ); return VEC_ipa_ref_t_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
static void VEC_ipa_ref_ptr_must_be_pointer_type (void) { (void)((ipa_ref_ptr)1 == (void *)1); } typedef struct VEC_ipa_ref_ptr_base { unsigned num; unsigned alloc; ipa_ref_ptr vec[1]; } VEC_ipa_ref_ptr_base; typedef struct VEC_ipa_ref_ptr_none { VEC_ipa_ref_ptr_base base; } VEC_ipa_ref_ptr_none; static unsigned VEC_ipa_ref_ptr_base_length (const VEC_ipa_ref_ptr_base *vec_) { return vec_ ? vec_->num : 0; } static ipa_ref_ptr VEC_ipa_ref_ptr_base_last (const VEC_ipa_ref_ptr_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static ipa_ref_ptr VEC_ipa_ref_ptr_base_index (const VEC_ipa_ref_ptr_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_ipa_ref_ptr_base_iterate (const VEC_ipa_ref_ptr_base *vec_, unsigned ix_, ipa_ref_ptr *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (ipa_ref_ptr) 0; return 0; } } static size_t VEC_ipa_ref_ptr_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_ipa_ref_ptr_base, vec) + alloc_ * sizeof(ipa_ref_ptr); } static void VEC_ipa_ref_ptr_base_embedded_init (VEC_ipa_ref_ptr_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_ipa_ref_ptr_base_space (VEC_ipa_ref_ptr_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_ipa_ref_ptr_base_splice (VEC_ipa_ref_ptr_base *dst_, VEC_ipa_ref_ptr_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (ipa_ref_ptr)); dst_->num += len_; } } static ipa_ref_ptr *VEC_ipa_ref_ptr_base_quick_push (VEC_ipa_ref_ptr_base *vec_, ipa_ref_ptr obj_ ) { ipa_ref_ptr *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static ipa_ref_ptr VEC_ipa_ref_ptr_base_pop (VEC_ipa_ref_ptr_base *vec_ ) { ipa_ref_ptr obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_ipa_ref_ptr_base_truncate (VEC_ipa_ref_ptr_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static ipa_ref_ptr VEC_ipa_ref_ptr_base_replace (VEC_ipa_ref_ptr_base *vec_, unsigned ix_, ipa_ref_ptr obj_ ) { ipa_ref_ptr old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static ipa_ref_ptr *VEC_ipa_ref_ptr_base_quick_insert (VEC_ipa_ref_ptr_base *vec_, unsigned ix_, ipa_ref_ptr obj_ ) { ipa_ref_ptr *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (ipa_ref_ptr)); *slot_ = obj_; return slot_; } static ipa_ref_ptr VEC_ipa_ref_ptr_base_ordered_remove (VEC_ipa_ref_ptr_base *vec_, unsigned ix_ ) { ipa_ref_ptr *slot_; ipa_ref_ptr obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (ipa_ref_ptr)); return obj_; } static ipa_ref_ptr VEC_ipa_ref_ptr_base_unordered_remove (VEC_ipa_ref_ptr_base *vec_, unsigned ix_ ) { ipa_ref_ptr *slot_; ipa_ref_ptr obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_ipa_ref_ptr_base_block_remove (VEC_ipa_ref_ptr_base *vec_, unsigned ix_, unsigned len_ ) { ipa_ref_ptr *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (ipa_ref_ptr)); } static ipa_ref_ptr *VEC_ipa_ref_ptr_base_address (VEC_ipa_ref_ptr_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_ipa_ref_ptr_base_lower_bound (VEC_ipa_ref_ptr_base *vec_, const ipa_ref_ptr obj_, unsigned char (*lessthan_)(const ipa_ref_ptr, const ipa_ref_ptr) ) { unsigned int len_ = VEC_ipa_ref_ptr_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { ipa_ref_ptr middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_ipa_ref_ptr_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_ipa_ref_ptr_heap { VEC_ipa_ref_ptr_base base; } VEC_ipa_ref_ptr_heap; static VEC_ipa_ref_ptr_heap *VEC_ipa_ref_ptr_heap_alloc (int alloc_ ) { return (VEC_ipa_ref_ptr_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_ipa_ref_ptr_heap_free (VEC_ipa_ref_ptr_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_ipa_ref_ptr_heap *VEC_ipa_ref_ptr_heap_copy (VEC_ipa_ref_ptr_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_ipa_ref_ptr_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_ipa_ref_ptr_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (ipa_ref_ptr) * len_); } return new_vec_; } static int VEC_ipa_ref_ptr_heap_reserve (VEC_ipa_ref_ptr_heap **vec_, int alloc_ ) { int extend = !VEC_ipa_ref_ptr_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_ipa_ref_ptr_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_ipa_ref_ptr_heap_reserve_exact (VEC_ipa_ref_ptr_heap **vec_, int alloc_ ) { int extend = !VEC_ipa_ref_ptr_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_ipa_ref_ptr_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_ipa_ref_ptr_heap_safe_grow (VEC_ipa_ref_ptr_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_ipa_ref_ptr_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_ipa_ref_ptr_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_ipa_ref_ptr_heap_safe_grow_cleared (VEC_ipa_ref_ptr_heap **vec_, int size_ ) { int oldsize = VEC_ipa_ref_ptr_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_ipa_ref_ptr_heap_safe_grow (vec_, size_ ); memset (&(VEC_ipa_ref_ptr_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (ipa_ref_ptr) * (size_ - oldsize)); } static void VEC_ipa_ref_ptr_heap_safe_splice (VEC_ipa_ref_ptr_heap **dst_, VEC_ipa_ref_ptr_base *src_ ) { if (src_) { VEC_ipa_ref_ptr_heap_reserve_exact (dst_, src_->num ); VEC_ipa_ref_ptr_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static ipa_ref_ptr *VEC_ipa_ref_ptr_heap_safe_push (VEC_ipa_ref_ptr_heap **vec_, ipa_ref_ptr obj_ ) { VEC_ipa_ref_ptr_heap_reserve (vec_, 1 ); return VEC_ipa_ref_ptr_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static ipa_ref_ptr *VEC_ipa_ref_ptr_heap_safe_insert (VEC_ipa_ref_ptr_heap **vec_, unsigned ix_, ipa_ref_ptr obj_ ) { VEC_ipa_ref_ptr_heap_reserve (vec_, 1 ); return VEC_ipa_ref_ptr_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;


struct ipa_ref_list
{

  VEC_ipa_ref_t_gc *references;


  VEC_ipa_ref_ptr_heap * refering;
};

struct ipa_ref * ipa_record_reference (struct cgraph_node *,
           struct varpool_node *,
           struct cgraph_node *,
           struct varpool_node *,
           enum ipa_ref_use, gimple);

void ipa_remove_reference (struct ipa_ref *);
void ipa_remove_all_references (struct ipa_ref_list *);
void ipa_remove_all_refering (struct ipa_ref_list *);
void ipa_dump_references (FILE *, struct ipa_ref_list *);
void ipa_dump_refering (FILE *, struct ipa_ref_list *);
void ipa_clone_references (struct cgraph_node *, struct varpool_node *, struct ipa_ref_list *);
void ipa_clone_refering (struct cgraph_node *, struct varpool_node *, struct ipa_ref_list *);
unsigned char ipa_ref_cannot_lead_to_return (struct ipa_ref *);
# 31 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cgraph.h" 2

enum availability
{

  AVAIL_UNSET,

  AVAIL_NOT_AVAILABLE,





  AVAIL_OVERWRITABLE,


  AVAIL_AVAILABLE,




  AVAIL_LOCAL
};



struct lto_file_decl_data;

extern const char * const cgraph_availability_names[];
extern const char * const ld_plugin_symbol_resolution_names[];



struct inline_summary
{

  long long estimated_self_stack_size;


  int self_size;

  int size_inlining_benefit;

  int self_time;

  int time_inlining_benefit;
};



struct cgraph_thunk_info {

  long long fixed_offset;
  long long virtual_value;
  tree alias;
  unsigned char this_adjusting;
  unsigned char virtual_offset_p;

  unsigned char thunk_p;
};




struct cgraph_local_info {

  struct lto_file_decl_data * lto_file_data;

  struct inline_summary inline_summary;



  unsigned local : 1;


  unsigned externally_visible : 1;


  unsigned finalized : 1;


  unsigned inlinable : 1;



  unsigned versionable : 1;



  unsigned can_change_signature : 1;


  unsigned disregard_inline_limits : 1;



  unsigned redefined_extern_inline : 1;



  unsigned vtable_method : 1;
};




struct cgraph_global_info {

  long long estimated_stack_size;

  long long stack_frame_offset;



  struct cgraph_node *inlined_to;


  int time;
  int size;


  int estimated_growth;
};




struct cgraph_rtl_info {
   unsigned int preferred_incoming_stack_boundary;
};



struct ipa_replace_map
{

  tree old_tree;

  tree new_tree;

  int parm_num;

  unsigned char replace_p;

  unsigned char ref_p;
};
typedef struct ipa_replace_map *ipa_replace_map_p;
static void VEC_ipa_replace_map_p_must_be_pointer_type (void) { (void)((ipa_replace_map_p)1 == (void *)1); } typedef struct VEC_ipa_replace_map_p_base { unsigned num; unsigned alloc; ipa_replace_map_p vec[1]; } VEC_ipa_replace_map_p_base; typedef struct VEC_ipa_replace_map_p_none { VEC_ipa_replace_map_p_base base; } VEC_ipa_replace_map_p_none; static unsigned VEC_ipa_replace_map_p_base_length (const VEC_ipa_replace_map_p_base *vec_) { return vec_ ? vec_->num : 0; } static ipa_replace_map_p VEC_ipa_replace_map_p_base_last (const VEC_ipa_replace_map_p_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static ipa_replace_map_p VEC_ipa_replace_map_p_base_index (const VEC_ipa_replace_map_p_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_ipa_replace_map_p_base_iterate (const VEC_ipa_replace_map_p_base *vec_, unsigned ix_, ipa_replace_map_p *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (ipa_replace_map_p) 0; return 0; } } static size_t VEC_ipa_replace_map_p_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_ipa_replace_map_p_base, vec) + alloc_ * sizeof(ipa_replace_map_p); } static void VEC_ipa_replace_map_p_base_embedded_init (VEC_ipa_replace_map_p_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_ipa_replace_map_p_base_space (VEC_ipa_replace_map_p_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_ipa_replace_map_p_base_splice (VEC_ipa_replace_map_p_base *dst_, VEC_ipa_replace_map_p_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (ipa_replace_map_p)); dst_->num += len_; } } static ipa_replace_map_p *VEC_ipa_replace_map_p_base_quick_push (VEC_ipa_replace_map_p_base *vec_, ipa_replace_map_p obj_ ) { ipa_replace_map_p *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static ipa_replace_map_p VEC_ipa_replace_map_p_base_pop (VEC_ipa_replace_map_p_base *vec_ ) { ipa_replace_map_p obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_ipa_replace_map_p_base_truncate (VEC_ipa_replace_map_p_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static ipa_replace_map_p VEC_ipa_replace_map_p_base_replace (VEC_ipa_replace_map_p_base *vec_, unsigned ix_, ipa_replace_map_p obj_ ) { ipa_replace_map_p old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static ipa_replace_map_p *VEC_ipa_replace_map_p_base_quick_insert (VEC_ipa_replace_map_p_base *vec_, unsigned ix_, ipa_replace_map_p obj_ ) { ipa_replace_map_p *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (ipa_replace_map_p)); *slot_ = obj_; return slot_; } static ipa_replace_map_p VEC_ipa_replace_map_p_base_ordered_remove (VEC_ipa_replace_map_p_base *vec_, unsigned ix_ ) { ipa_replace_map_p *slot_; ipa_replace_map_p obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (ipa_replace_map_p)); return obj_; } static ipa_replace_map_p VEC_ipa_replace_map_p_base_unordered_remove (VEC_ipa_replace_map_p_base *vec_, unsigned ix_ ) { ipa_replace_map_p *slot_; ipa_replace_map_p obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_ipa_replace_map_p_base_block_remove (VEC_ipa_replace_map_p_base *vec_, unsigned ix_, unsigned len_ ) { ipa_replace_map_p *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (ipa_replace_map_p)); } static ipa_replace_map_p *VEC_ipa_replace_map_p_base_address (VEC_ipa_replace_map_p_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_ipa_replace_map_p_base_lower_bound (VEC_ipa_replace_map_p_base *vec_, const ipa_replace_map_p obj_, unsigned char (*lessthan_)(const ipa_replace_map_p, const ipa_replace_map_p) ) { unsigned int len_ = VEC_ipa_replace_map_p_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { ipa_replace_map_p middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_ipa_replace_map_p_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_ipa_replace_map_p_gc { VEC_ipa_replace_map_p_base base; } VEC_ipa_replace_map_p_gc; static VEC_ipa_replace_map_p_gc *VEC_ipa_replace_map_p_gc_alloc (int alloc_ ) { return (VEC_ipa_replace_map_p_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_ipa_replace_map_p_gc_free (VEC_ipa_replace_map_p_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_ipa_replace_map_p_gc *VEC_ipa_replace_map_p_gc_copy (VEC_ipa_replace_map_p_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_ipa_replace_map_p_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_ipa_replace_map_p_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (ipa_replace_map_p) * len_); } return new_vec_; } static int VEC_ipa_replace_map_p_gc_reserve (VEC_ipa_replace_map_p_gc **vec_, int alloc_ ) { int extend = !VEC_ipa_replace_map_p_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_ipa_replace_map_p_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_ipa_replace_map_p_gc_reserve_exact (VEC_ipa_replace_map_p_gc **vec_, int alloc_ ) { int extend = !VEC_ipa_replace_map_p_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_ipa_replace_map_p_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_ipa_replace_map_p_gc_safe_grow (VEC_ipa_replace_map_p_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_ipa_replace_map_p_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_ipa_replace_map_p_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_ipa_replace_map_p_gc_safe_grow_cleared (VEC_ipa_replace_map_p_gc **vec_, int size_ ) { int oldsize = VEC_ipa_replace_map_p_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_ipa_replace_map_p_gc_safe_grow (vec_, size_ ); memset (&(VEC_ipa_replace_map_p_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (ipa_replace_map_p) * (size_ - oldsize)); } static void VEC_ipa_replace_map_p_gc_safe_splice (VEC_ipa_replace_map_p_gc **dst_, VEC_ipa_replace_map_p_base *src_ ) { if (src_) { VEC_ipa_replace_map_p_gc_reserve_exact (dst_, src_->num ); VEC_ipa_replace_map_p_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static ipa_replace_map_p *VEC_ipa_replace_map_p_gc_safe_push (VEC_ipa_replace_map_p_gc **vec_, ipa_replace_map_p obj_ ) { VEC_ipa_replace_map_p_gc_reserve (vec_, 1 ); return VEC_ipa_replace_map_p_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static ipa_replace_map_p *VEC_ipa_replace_map_p_gc_safe_insert (VEC_ipa_replace_map_p_gc **vec_, unsigned ix_, ipa_replace_map_p obj_ ) { VEC_ipa_replace_map_p_gc_reserve (vec_, 1 ); return VEC_ipa_replace_map_p_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

struct cgraph_clone_info
{
  VEC_ipa_replace_map_p_gc* tree_map;
  bitmap args_to_skip;
  bitmap combined_args_to_skip;
};





struct cgraph_node {
  tree decl;
  struct cgraph_edge *callees;
  struct cgraph_edge *callers;
  struct cgraph_node *next;
  struct cgraph_node *previous;


  struct cgraph_edge *indirect_calls;

  struct cgraph_node *origin;

  struct cgraph_node *nested;

  struct cgraph_node *next_nested;

  struct cgraph_node *next_needed;

  struct cgraph_node *next_sibling_clone;
  struct cgraph_node *prev_sibling_clone;
  struct cgraph_node *clones;
  struct cgraph_node *clone_of;


  struct cgraph_node *same_body;

  struct cgraph_node *same_comdat_group;


  htab_t call_site_hash;

  tree former_clone_of;

  void * aux;




  VEC_ipa_opt_pass_heap * ipa_transforms_to_apply;

  struct ipa_ref_list ref_list;
  struct cgraph_local_info local;
  struct cgraph_global_info global;
  struct cgraph_rtl_info rtl;
  struct cgraph_clone_info clone;
  struct cgraph_thunk_info thunk;


  gcov_type count;


  int count_materialization_scale;

  int uid;

  int order;



  int pid;
  enum ld_plugin_symbol_resolution resolution;






  unsigned needed : 1;


  unsigned address_taken : 1;


  unsigned abstract_and_needed : 1;






  unsigned reachable : 1;

  unsigned reachable_from_other_partition : 1;

  unsigned lowered : 1;


  unsigned analyzed : 1;



  unsigned in_other_partition : 1;

  unsigned process : 1;

  unsigned alias : 1;

  unsigned finalized_by_frontend : 1;


  unsigned same_body_alias : 1;


enum node_frequency frequency : 2;

  unsigned only_called_at_startup : 1;

  unsigned only_called_at_exit : 1;
};

typedef struct cgraph_node *cgraph_node_ptr;

static void VEC_cgraph_node_ptr_must_be_pointer_type (void) { (void)((cgraph_node_ptr)1 == (void *)1); } typedef struct VEC_cgraph_node_ptr_base { unsigned num; unsigned alloc; cgraph_node_ptr vec[1]; } VEC_cgraph_node_ptr_base; typedef struct VEC_cgraph_node_ptr_none { VEC_cgraph_node_ptr_base base; } VEC_cgraph_node_ptr_none; static unsigned VEC_cgraph_node_ptr_base_length (const VEC_cgraph_node_ptr_base *vec_) { return vec_ ? vec_->num : 0; } static cgraph_node_ptr VEC_cgraph_node_ptr_base_last (const VEC_cgraph_node_ptr_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static cgraph_node_ptr VEC_cgraph_node_ptr_base_index (const VEC_cgraph_node_ptr_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_cgraph_node_ptr_base_iterate (const VEC_cgraph_node_ptr_base *vec_, unsigned ix_, cgraph_node_ptr *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (cgraph_node_ptr) 0; return 0; } } static size_t VEC_cgraph_node_ptr_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_cgraph_node_ptr_base, vec) + alloc_ * sizeof(cgraph_node_ptr); } static void VEC_cgraph_node_ptr_base_embedded_init (VEC_cgraph_node_ptr_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_cgraph_node_ptr_base_space (VEC_cgraph_node_ptr_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_cgraph_node_ptr_base_splice (VEC_cgraph_node_ptr_base *dst_, VEC_cgraph_node_ptr_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (cgraph_node_ptr)); dst_->num += len_; } } static cgraph_node_ptr *VEC_cgraph_node_ptr_base_quick_push (VEC_cgraph_node_ptr_base *vec_, cgraph_node_ptr obj_ ) { cgraph_node_ptr *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static cgraph_node_ptr VEC_cgraph_node_ptr_base_pop (VEC_cgraph_node_ptr_base *vec_ ) { cgraph_node_ptr obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_cgraph_node_ptr_base_truncate (VEC_cgraph_node_ptr_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static cgraph_node_ptr VEC_cgraph_node_ptr_base_replace (VEC_cgraph_node_ptr_base *vec_, unsigned ix_, cgraph_node_ptr obj_ ) { cgraph_node_ptr old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static cgraph_node_ptr *VEC_cgraph_node_ptr_base_quick_insert (VEC_cgraph_node_ptr_base *vec_, unsigned ix_, cgraph_node_ptr obj_ ) { cgraph_node_ptr *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (cgraph_node_ptr)); *slot_ = obj_; return slot_; } static cgraph_node_ptr VEC_cgraph_node_ptr_base_ordered_remove (VEC_cgraph_node_ptr_base *vec_, unsigned ix_ ) { cgraph_node_ptr *slot_; cgraph_node_ptr obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (cgraph_node_ptr)); return obj_; } static cgraph_node_ptr VEC_cgraph_node_ptr_base_unordered_remove (VEC_cgraph_node_ptr_base *vec_, unsigned ix_ ) { cgraph_node_ptr *slot_; cgraph_node_ptr obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_cgraph_node_ptr_base_block_remove (VEC_cgraph_node_ptr_base *vec_, unsigned ix_, unsigned len_ ) { cgraph_node_ptr *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (cgraph_node_ptr)); } static cgraph_node_ptr *VEC_cgraph_node_ptr_base_address (VEC_cgraph_node_ptr_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_cgraph_node_ptr_base_lower_bound (VEC_cgraph_node_ptr_base *vec_, const cgraph_node_ptr obj_, unsigned char (*lessthan_)(const cgraph_node_ptr, const cgraph_node_ptr) ) { unsigned int len_ = VEC_cgraph_node_ptr_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { cgraph_node_ptr middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_cgraph_node_ptr_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_cgraph_node_ptr_heap { VEC_cgraph_node_ptr_base base; } VEC_cgraph_node_ptr_heap; static VEC_cgraph_node_ptr_heap *VEC_cgraph_node_ptr_heap_alloc (int alloc_ ) { return (VEC_cgraph_node_ptr_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_cgraph_node_ptr_heap_free (VEC_cgraph_node_ptr_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_cgraph_node_ptr_heap *VEC_cgraph_node_ptr_heap_copy (VEC_cgraph_node_ptr_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_cgraph_node_ptr_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_cgraph_node_ptr_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (cgraph_node_ptr) * len_); } return new_vec_; } static int VEC_cgraph_node_ptr_heap_reserve (VEC_cgraph_node_ptr_heap **vec_, int alloc_ ) { int extend = !VEC_cgraph_node_ptr_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cgraph_node_ptr_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_cgraph_node_ptr_heap_reserve_exact (VEC_cgraph_node_ptr_heap **vec_, int alloc_ ) { int extend = !VEC_cgraph_node_ptr_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cgraph_node_ptr_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_cgraph_node_ptr_heap_safe_grow (VEC_cgraph_node_ptr_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_cgraph_node_ptr_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_cgraph_node_ptr_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_cgraph_node_ptr_heap_safe_grow_cleared (VEC_cgraph_node_ptr_heap **vec_, int size_ ) { int oldsize = VEC_cgraph_node_ptr_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_cgraph_node_ptr_heap_safe_grow (vec_, size_ ); memset (&(VEC_cgraph_node_ptr_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (cgraph_node_ptr) * (size_ - oldsize)); } static void VEC_cgraph_node_ptr_heap_safe_splice (VEC_cgraph_node_ptr_heap **dst_, VEC_cgraph_node_ptr_base *src_ ) { if (src_) { VEC_cgraph_node_ptr_heap_reserve_exact (dst_, src_->num ); VEC_cgraph_node_ptr_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static cgraph_node_ptr *VEC_cgraph_node_ptr_heap_safe_push (VEC_cgraph_node_ptr_heap **vec_, cgraph_node_ptr obj_ ) { VEC_cgraph_node_ptr_heap_reserve (vec_, 1 ); return VEC_cgraph_node_ptr_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static cgraph_node_ptr *VEC_cgraph_node_ptr_heap_safe_insert (VEC_cgraph_node_ptr_heap **vec_, unsigned ix_, cgraph_node_ptr obj_ ) { VEC_cgraph_node_ptr_heap_reserve (vec_, 1 ); return VEC_cgraph_node_ptr_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
typedef struct VEC_cgraph_node_ptr_gc { VEC_cgraph_node_ptr_base base; } VEC_cgraph_node_ptr_gc; static VEC_cgraph_node_ptr_gc *VEC_cgraph_node_ptr_gc_alloc (int alloc_ ) { return (VEC_cgraph_node_ptr_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_cgraph_node_ptr_gc_free (VEC_cgraph_node_ptr_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_cgraph_node_ptr_gc *VEC_cgraph_node_ptr_gc_copy (VEC_cgraph_node_ptr_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_cgraph_node_ptr_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_cgraph_node_ptr_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (cgraph_node_ptr) * len_); } return new_vec_; } static int VEC_cgraph_node_ptr_gc_reserve (VEC_cgraph_node_ptr_gc **vec_, int alloc_ ) { int extend = !VEC_cgraph_node_ptr_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cgraph_node_ptr_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_cgraph_node_ptr_gc_reserve_exact (VEC_cgraph_node_ptr_gc **vec_, int alloc_ ) { int extend = !VEC_cgraph_node_ptr_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cgraph_node_ptr_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_cgraph_node_ptr_gc_safe_grow (VEC_cgraph_node_ptr_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_cgraph_node_ptr_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_cgraph_node_ptr_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_cgraph_node_ptr_gc_safe_grow_cleared (VEC_cgraph_node_ptr_gc **vec_, int size_ ) { int oldsize = VEC_cgraph_node_ptr_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_cgraph_node_ptr_gc_safe_grow (vec_, size_ ); memset (&(VEC_cgraph_node_ptr_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (cgraph_node_ptr) * (size_ - oldsize)); } static void VEC_cgraph_node_ptr_gc_safe_splice (VEC_cgraph_node_ptr_gc **dst_, VEC_cgraph_node_ptr_base *src_ ) { if (src_) { VEC_cgraph_node_ptr_gc_reserve_exact (dst_, src_->num ); VEC_cgraph_node_ptr_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static cgraph_node_ptr *VEC_cgraph_node_ptr_gc_safe_push (VEC_cgraph_node_ptr_gc **vec_, cgraph_node_ptr obj_ ) { VEC_cgraph_node_ptr_gc_reserve (vec_, 1 ); return VEC_cgraph_node_ptr_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static cgraph_node_ptr *VEC_cgraph_node_ptr_gc_safe_insert (VEC_cgraph_node_ptr_gc **vec_, unsigned ix_, cgraph_node_ptr obj_ ) { VEC_cgraph_node_ptr_gc_reserve (vec_, 1 ); return VEC_cgraph_node_ptr_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;



struct cgraph_node_set_def
{
  htab_t hashtab;
  VEC_cgraph_node_ptr_gc *nodes;
};

typedef struct varpool_node *varpool_node_ptr;

static void VEC_varpool_node_ptr_must_be_pointer_type (void) { (void)((varpool_node_ptr)1 == (void *)1); } typedef struct VEC_varpool_node_ptr_base { unsigned num; unsigned alloc; varpool_node_ptr vec[1]; } VEC_varpool_node_ptr_base; typedef struct VEC_varpool_node_ptr_none { VEC_varpool_node_ptr_base base; } VEC_varpool_node_ptr_none; static unsigned VEC_varpool_node_ptr_base_length (const VEC_varpool_node_ptr_base *vec_) { return vec_ ? vec_->num : 0; } static varpool_node_ptr VEC_varpool_node_ptr_base_last (const VEC_varpool_node_ptr_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static varpool_node_ptr VEC_varpool_node_ptr_base_index (const VEC_varpool_node_ptr_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_varpool_node_ptr_base_iterate (const VEC_varpool_node_ptr_base *vec_, unsigned ix_, varpool_node_ptr *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (varpool_node_ptr) 0; return 0; } } static size_t VEC_varpool_node_ptr_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_varpool_node_ptr_base, vec) + alloc_ * sizeof(varpool_node_ptr); } static void VEC_varpool_node_ptr_base_embedded_init (VEC_varpool_node_ptr_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_varpool_node_ptr_base_space (VEC_varpool_node_ptr_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_varpool_node_ptr_base_splice (VEC_varpool_node_ptr_base *dst_, VEC_varpool_node_ptr_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (varpool_node_ptr)); dst_->num += len_; } } static varpool_node_ptr *VEC_varpool_node_ptr_base_quick_push (VEC_varpool_node_ptr_base *vec_, varpool_node_ptr obj_ ) { varpool_node_ptr *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static varpool_node_ptr VEC_varpool_node_ptr_base_pop (VEC_varpool_node_ptr_base *vec_ ) { varpool_node_ptr obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_varpool_node_ptr_base_truncate (VEC_varpool_node_ptr_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static varpool_node_ptr VEC_varpool_node_ptr_base_replace (VEC_varpool_node_ptr_base *vec_, unsigned ix_, varpool_node_ptr obj_ ) { varpool_node_ptr old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static varpool_node_ptr *VEC_varpool_node_ptr_base_quick_insert (VEC_varpool_node_ptr_base *vec_, unsigned ix_, varpool_node_ptr obj_ ) { varpool_node_ptr *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (varpool_node_ptr)); *slot_ = obj_; return slot_; } static varpool_node_ptr VEC_varpool_node_ptr_base_ordered_remove (VEC_varpool_node_ptr_base *vec_, unsigned ix_ ) { varpool_node_ptr *slot_; varpool_node_ptr obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (varpool_node_ptr)); return obj_; } static varpool_node_ptr VEC_varpool_node_ptr_base_unordered_remove (VEC_varpool_node_ptr_base *vec_, unsigned ix_ ) { varpool_node_ptr *slot_; varpool_node_ptr obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_varpool_node_ptr_base_block_remove (VEC_varpool_node_ptr_base *vec_, unsigned ix_, unsigned len_ ) { varpool_node_ptr *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (varpool_node_ptr)); } static varpool_node_ptr *VEC_varpool_node_ptr_base_address (VEC_varpool_node_ptr_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_varpool_node_ptr_base_lower_bound (VEC_varpool_node_ptr_base *vec_, const varpool_node_ptr obj_, unsigned char (*lessthan_)(const varpool_node_ptr, const varpool_node_ptr) ) { unsigned int len_ = VEC_varpool_node_ptr_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { varpool_node_ptr middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_varpool_node_ptr_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_varpool_node_ptr_heap { VEC_varpool_node_ptr_base base; } VEC_varpool_node_ptr_heap; static VEC_varpool_node_ptr_heap *VEC_varpool_node_ptr_heap_alloc (int alloc_ ) { return (VEC_varpool_node_ptr_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_varpool_node_ptr_heap_free (VEC_varpool_node_ptr_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_varpool_node_ptr_heap *VEC_varpool_node_ptr_heap_copy (VEC_varpool_node_ptr_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_varpool_node_ptr_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_varpool_node_ptr_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (varpool_node_ptr) * len_); } return new_vec_; } static int VEC_varpool_node_ptr_heap_reserve (VEC_varpool_node_ptr_heap **vec_, int alloc_ ) { int extend = !VEC_varpool_node_ptr_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_varpool_node_ptr_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_varpool_node_ptr_heap_reserve_exact (VEC_varpool_node_ptr_heap **vec_, int alloc_ ) { int extend = !VEC_varpool_node_ptr_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_varpool_node_ptr_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_varpool_node_ptr_heap_safe_grow (VEC_varpool_node_ptr_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_varpool_node_ptr_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_varpool_node_ptr_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_varpool_node_ptr_heap_safe_grow_cleared (VEC_varpool_node_ptr_heap **vec_, int size_ ) { int oldsize = VEC_varpool_node_ptr_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_varpool_node_ptr_heap_safe_grow (vec_, size_ ); memset (&(VEC_varpool_node_ptr_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (varpool_node_ptr) * (size_ - oldsize)); } static void VEC_varpool_node_ptr_heap_safe_splice (VEC_varpool_node_ptr_heap **dst_, VEC_varpool_node_ptr_base *src_ ) { if (src_) { VEC_varpool_node_ptr_heap_reserve_exact (dst_, src_->num ); VEC_varpool_node_ptr_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static varpool_node_ptr *VEC_varpool_node_ptr_heap_safe_push (VEC_varpool_node_ptr_heap **vec_, varpool_node_ptr obj_ ) { VEC_varpool_node_ptr_heap_reserve (vec_, 1 ); return VEC_varpool_node_ptr_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static varpool_node_ptr *VEC_varpool_node_ptr_heap_safe_insert (VEC_varpool_node_ptr_heap **vec_, unsigned ix_, varpool_node_ptr obj_ ) { VEC_varpool_node_ptr_heap_reserve (vec_, 1 ); return VEC_varpool_node_ptr_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
typedef struct VEC_varpool_node_ptr_gc { VEC_varpool_node_ptr_base base; } VEC_varpool_node_ptr_gc; static VEC_varpool_node_ptr_gc *VEC_varpool_node_ptr_gc_alloc (int alloc_ ) { return (VEC_varpool_node_ptr_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_varpool_node_ptr_gc_free (VEC_varpool_node_ptr_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_varpool_node_ptr_gc *VEC_varpool_node_ptr_gc_copy (VEC_varpool_node_ptr_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_varpool_node_ptr_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_varpool_node_ptr_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (varpool_node_ptr) * len_); } return new_vec_; } static int VEC_varpool_node_ptr_gc_reserve (VEC_varpool_node_ptr_gc **vec_, int alloc_ ) { int extend = !VEC_varpool_node_ptr_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_varpool_node_ptr_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_varpool_node_ptr_gc_reserve_exact (VEC_varpool_node_ptr_gc **vec_, int alloc_ ) { int extend = !VEC_varpool_node_ptr_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_varpool_node_ptr_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_varpool_node_ptr_gc_safe_grow (VEC_varpool_node_ptr_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_varpool_node_ptr_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_varpool_node_ptr_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_varpool_node_ptr_gc_safe_grow_cleared (VEC_varpool_node_ptr_gc **vec_, int size_ ) { int oldsize = VEC_varpool_node_ptr_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_varpool_node_ptr_gc_safe_grow (vec_, size_ ); memset (&(VEC_varpool_node_ptr_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (varpool_node_ptr) * (size_ - oldsize)); } static void VEC_varpool_node_ptr_gc_safe_splice (VEC_varpool_node_ptr_gc **dst_, VEC_varpool_node_ptr_base *src_ ) { if (src_) { VEC_varpool_node_ptr_gc_reserve_exact (dst_, src_->num ); VEC_varpool_node_ptr_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static varpool_node_ptr *VEC_varpool_node_ptr_gc_safe_push (VEC_varpool_node_ptr_gc **vec_, varpool_node_ptr obj_ ) { VEC_varpool_node_ptr_gc_reserve (vec_, 1 ); return VEC_varpool_node_ptr_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static varpool_node_ptr *VEC_varpool_node_ptr_gc_safe_insert (VEC_varpool_node_ptr_gc **vec_, unsigned ix_, varpool_node_ptr obj_ ) { VEC_varpool_node_ptr_gc_reserve (vec_, 1 ); return VEC_varpool_node_ptr_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;



struct varpool_node_set_def
{
  htab_t hashtab;
  VEC_varpool_node_ptr_gc *nodes;
};

typedef struct cgraph_node_set_def *cgraph_node_set;

static void VEC_cgraph_node_set_must_be_pointer_type (void) { (void)((cgraph_node_set)1 == (void *)1); } typedef struct VEC_cgraph_node_set_base { unsigned num; unsigned alloc; cgraph_node_set vec[1]; } VEC_cgraph_node_set_base; typedef struct VEC_cgraph_node_set_none { VEC_cgraph_node_set_base base; } VEC_cgraph_node_set_none; static unsigned VEC_cgraph_node_set_base_length (const VEC_cgraph_node_set_base *vec_) { return vec_ ? vec_->num : 0; } static cgraph_node_set VEC_cgraph_node_set_base_last (const VEC_cgraph_node_set_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static cgraph_node_set VEC_cgraph_node_set_base_index (const VEC_cgraph_node_set_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_cgraph_node_set_base_iterate (const VEC_cgraph_node_set_base *vec_, unsigned ix_, cgraph_node_set *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (cgraph_node_set) 0; return 0; } } static size_t VEC_cgraph_node_set_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_cgraph_node_set_base, vec) + alloc_ * sizeof(cgraph_node_set); } static void VEC_cgraph_node_set_base_embedded_init (VEC_cgraph_node_set_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_cgraph_node_set_base_space (VEC_cgraph_node_set_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_cgraph_node_set_base_splice (VEC_cgraph_node_set_base *dst_, VEC_cgraph_node_set_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (cgraph_node_set)); dst_->num += len_; } } static cgraph_node_set *VEC_cgraph_node_set_base_quick_push (VEC_cgraph_node_set_base *vec_, cgraph_node_set obj_ ) { cgraph_node_set *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static cgraph_node_set VEC_cgraph_node_set_base_pop (VEC_cgraph_node_set_base *vec_ ) { cgraph_node_set obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_cgraph_node_set_base_truncate (VEC_cgraph_node_set_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static cgraph_node_set VEC_cgraph_node_set_base_replace (VEC_cgraph_node_set_base *vec_, unsigned ix_, cgraph_node_set obj_ ) { cgraph_node_set old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static cgraph_node_set *VEC_cgraph_node_set_base_quick_insert (VEC_cgraph_node_set_base *vec_, unsigned ix_, cgraph_node_set obj_ ) { cgraph_node_set *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (cgraph_node_set)); *slot_ = obj_; return slot_; } static cgraph_node_set VEC_cgraph_node_set_base_ordered_remove (VEC_cgraph_node_set_base *vec_, unsigned ix_ ) { cgraph_node_set *slot_; cgraph_node_set obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (cgraph_node_set)); return obj_; } static cgraph_node_set VEC_cgraph_node_set_base_unordered_remove (VEC_cgraph_node_set_base *vec_, unsigned ix_ ) { cgraph_node_set *slot_; cgraph_node_set obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_cgraph_node_set_base_block_remove (VEC_cgraph_node_set_base *vec_, unsigned ix_, unsigned len_ ) { cgraph_node_set *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (cgraph_node_set)); } static cgraph_node_set *VEC_cgraph_node_set_base_address (VEC_cgraph_node_set_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_cgraph_node_set_base_lower_bound (VEC_cgraph_node_set_base *vec_, const cgraph_node_set obj_, unsigned char (*lessthan_)(const cgraph_node_set, const cgraph_node_set) ) { unsigned int len_ = VEC_cgraph_node_set_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { cgraph_node_set middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_cgraph_node_set_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_cgraph_node_set_gc { VEC_cgraph_node_set_base base; } VEC_cgraph_node_set_gc; static VEC_cgraph_node_set_gc *VEC_cgraph_node_set_gc_alloc (int alloc_ ) { return (VEC_cgraph_node_set_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_cgraph_node_set_gc_free (VEC_cgraph_node_set_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_cgraph_node_set_gc *VEC_cgraph_node_set_gc_copy (VEC_cgraph_node_set_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_cgraph_node_set_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_cgraph_node_set_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (cgraph_node_set) * len_); } return new_vec_; } static int VEC_cgraph_node_set_gc_reserve (VEC_cgraph_node_set_gc **vec_, int alloc_ ) { int extend = !VEC_cgraph_node_set_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cgraph_node_set_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_cgraph_node_set_gc_reserve_exact (VEC_cgraph_node_set_gc **vec_, int alloc_ ) { int extend = !VEC_cgraph_node_set_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cgraph_node_set_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_cgraph_node_set_gc_safe_grow (VEC_cgraph_node_set_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_cgraph_node_set_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_cgraph_node_set_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_cgraph_node_set_gc_safe_grow_cleared (VEC_cgraph_node_set_gc **vec_, int size_ ) { int oldsize = VEC_cgraph_node_set_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_cgraph_node_set_gc_safe_grow (vec_, size_ ); memset (&(VEC_cgraph_node_set_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (cgraph_node_set) * (size_ - oldsize)); } static void VEC_cgraph_node_set_gc_safe_splice (VEC_cgraph_node_set_gc **dst_, VEC_cgraph_node_set_base *src_ ) { if (src_) { VEC_cgraph_node_set_gc_reserve_exact (dst_, src_->num ); VEC_cgraph_node_set_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static cgraph_node_set *VEC_cgraph_node_set_gc_safe_push (VEC_cgraph_node_set_gc **vec_, cgraph_node_set obj_ ) { VEC_cgraph_node_set_gc_reserve (vec_, 1 ); return VEC_cgraph_node_set_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static cgraph_node_set *VEC_cgraph_node_set_gc_safe_insert (VEC_cgraph_node_set_gc **vec_, unsigned ix_, cgraph_node_set obj_ ) { VEC_cgraph_node_set_gc_reserve (vec_, 1 ); return VEC_cgraph_node_set_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
typedef struct VEC_cgraph_node_set_heap { VEC_cgraph_node_set_base base; } VEC_cgraph_node_set_heap; static VEC_cgraph_node_set_heap *VEC_cgraph_node_set_heap_alloc (int alloc_ ) { return (VEC_cgraph_node_set_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_cgraph_node_set_heap_free (VEC_cgraph_node_set_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_cgraph_node_set_heap *VEC_cgraph_node_set_heap_copy (VEC_cgraph_node_set_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_cgraph_node_set_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_cgraph_node_set_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (cgraph_node_set) * len_); } return new_vec_; } static int VEC_cgraph_node_set_heap_reserve (VEC_cgraph_node_set_heap **vec_, int alloc_ ) { int extend = !VEC_cgraph_node_set_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cgraph_node_set_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_cgraph_node_set_heap_reserve_exact (VEC_cgraph_node_set_heap **vec_, int alloc_ ) { int extend = !VEC_cgraph_node_set_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cgraph_node_set_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_cgraph_node_set_heap_safe_grow (VEC_cgraph_node_set_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_cgraph_node_set_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_cgraph_node_set_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_cgraph_node_set_heap_safe_grow_cleared (VEC_cgraph_node_set_heap **vec_, int size_ ) { int oldsize = VEC_cgraph_node_set_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_cgraph_node_set_heap_safe_grow (vec_, size_ ); memset (&(VEC_cgraph_node_set_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (cgraph_node_set) * (size_ - oldsize)); } static void VEC_cgraph_node_set_heap_safe_splice (VEC_cgraph_node_set_heap **dst_, VEC_cgraph_node_set_base *src_ ) { if (src_) { VEC_cgraph_node_set_heap_reserve_exact (dst_, src_->num ); VEC_cgraph_node_set_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static cgraph_node_set *VEC_cgraph_node_set_heap_safe_push (VEC_cgraph_node_set_heap **vec_, cgraph_node_set obj_ ) { VEC_cgraph_node_set_heap_reserve (vec_, 1 ); return VEC_cgraph_node_set_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static cgraph_node_set *VEC_cgraph_node_set_heap_safe_insert (VEC_cgraph_node_set_heap **vec_, unsigned ix_, cgraph_node_set obj_ ) { VEC_cgraph_node_set_heap_reserve (vec_, 1 ); return VEC_cgraph_node_set_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;

typedef struct varpool_node_set_def *varpool_node_set;

static void VEC_varpool_node_set_must_be_pointer_type (void) { (void)((varpool_node_set)1 == (void *)1); } typedef struct VEC_varpool_node_set_base { unsigned num; unsigned alloc; varpool_node_set vec[1]; } VEC_varpool_node_set_base; typedef struct VEC_varpool_node_set_none { VEC_varpool_node_set_base base; } VEC_varpool_node_set_none; static unsigned VEC_varpool_node_set_base_length (const VEC_varpool_node_set_base *vec_) { return vec_ ? vec_->num : 0; } static varpool_node_set VEC_varpool_node_set_base_last (const VEC_varpool_node_set_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static varpool_node_set VEC_varpool_node_set_base_index (const VEC_varpool_node_set_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_varpool_node_set_base_iterate (const VEC_varpool_node_set_base *vec_, unsigned ix_, varpool_node_set *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (varpool_node_set) 0; return 0; } } static size_t VEC_varpool_node_set_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_varpool_node_set_base, vec) + alloc_ * sizeof(varpool_node_set); } static void VEC_varpool_node_set_base_embedded_init (VEC_varpool_node_set_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_varpool_node_set_base_space (VEC_varpool_node_set_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_varpool_node_set_base_splice (VEC_varpool_node_set_base *dst_, VEC_varpool_node_set_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (varpool_node_set)); dst_->num += len_; } } static varpool_node_set *VEC_varpool_node_set_base_quick_push (VEC_varpool_node_set_base *vec_, varpool_node_set obj_ ) { varpool_node_set *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static varpool_node_set VEC_varpool_node_set_base_pop (VEC_varpool_node_set_base *vec_ ) { varpool_node_set obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_varpool_node_set_base_truncate (VEC_varpool_node_set_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static varpool_node_set VEC_varpool_node_set_base_replace (VEC_varpool_node_set_base *vec_, unsigned ix_, varpool_node_set obj_ ) { varpool_node_set old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static varpool_node_set *VEC_varpool_node_set_base_quick_insert (VEC_varpool_node_set_base *vec_, unsigned ix_, varpool_node_set obj_ ) { varpool_node_set *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (varpool_node_set)); *slot_ = obj_; return slot_; } static varpool_node_set VEC_varpool_node_set_base_ordered_remove (VEC_varpool_node_set_base *vec_, unsigned ix_ ) { varpool_node_set *slot_; varpool_node_set obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (varpool_node_set)); return obj_; } static varpool_node_set VEC_varpool_node_set_base_unordered_remove (VEC_varpool_node_set_base *vec_, unsigned ix_ ) { varpool_node_set *slot_; varpool_node_set obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_varpool_node_set_base_block_remove (VEC_varpool_node_set_base *vec_, unsigned ix_, unsigned len_ ) { varpool_node_set *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (varpool_node_set)); } static varpool_node_set *VEC_varpool_node_set_base_address (VEC_varpool_node_set_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_varpool_node_set_base_lower_bound (VEC_varpool_node_set_base *vec_, const varpool_node_set obj_, unsigned char (*lessthan_)(const varpool_node_set, const varpool_node_set) ) { unsigned int len_ = VEC_varpool_node_set_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { varpool_node_set middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_varpool_node_set_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_varpool_node_set_gc { VEC_varpool_node_set_base base; } VEC_varpool_node_set_gc; static VEC_varpool_node_set_gc *VEC_varpool_node_set_gc_alloc (int alloc_ ) { return (VEC_varpool_node_set_gc *) vec_gc_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_varpool_node_set_gc_free (VEC_varpool_node_set_gc **vec_) { if (*vec_) ggc_free (*vec_); *vec_ = ((void *)0); } static VEC_varpool_node_set_gc *VEC_varpool_node_set_gc_copy (VEC_varpool_node_set_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_varpool_node_set_gc *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_varpool_node_set_gc *)(vec_gc_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (varpool_node_set) * len_); } return new_vec_; } static int VEC_varpool_node_set_gc_reserve (VEC_varpool_node_set_gc **vec_, int alloc_ ) { int extend = !VEC_varpool_node_set_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_varpool_node_set_gc *) vec_gc_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_varpool_node_set_gc_reserve_exact (VEC_varpool_node_set_gc **vec_, int alloc_ ) { int extend = !VEC_varpool_node_set_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_varpool_node_set_gc *) vec_gc_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_varpool_node_set_gc_safe_grow (VEC_varpool_node_set_gc **vec_, int size_ ) { (void)(size_ >= 0 && VEC_varpool_node_set_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_varpool_node_set_gc_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_varpool_node_set_gc_safe_grow_cleared (VEC_varpool_node_set_gc **vec_, int size_ ) { int oldsize = VEC_varpool_node_set_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_varpool_node_set_gc_safe_grow (vec_, size_ ); memset (&(VEC_varpool_node_set_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (varpool_node_set) * (size_ - oldsize)); } static void VEC_varpool_node_set_gc_safe_splice (VEC_varpool_node_set_gc **dst_, VEC_varpool_node_set_base *src_ ) { if (src_) { VEC_varpool_node_set_gc_reserve_exact (dst_, src_->num ); VEC_varpool_node_set_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static varpool_node_set *VEC_varpool_node_set_gc_safe_push (VEC_varpool_node_set_gc **vec_, varpool_node_set obj_ ) { VEC_varpool_node_set_gc_reserve (vec_, 1 ); return VEC_varpool_node_set_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static varpool_node_set *VEC_varpool_node_set_gc_safe_insert (VEC_varpool_node_set_gc **vec_, unsigned ix_, varpool_node_set obj_ ) { VEC_varpool_node_set_gc_reserve (vec_, 1 ); return VEC_varpool_node_set_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;
typedef struct VEC_varpool_node_set_heap { VEC_varpool_node_set_base base; } VEC_varpool_node_set_heap; static VEC_varpool_node_set_heap *VEC_varpool_node_set_heap_alloc (int alloc_ ) { return (VEC_varpool_node_set_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_varpool_node_set_heap_free (VEC_varpool_node_set_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_varpool_node_set_heap *VEC_varpool_node_set_heap_copy (VEC_varpool_node_set_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_varpool_node_set_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_varpool_node_set_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (varpool_node_set) * len_); } return new_vec_; } static int VEC_varpool_node_set_heap_reserve (VEC_varpool_node_set_heap **vec_, int alloc_ ) { int extend = !VEC_varpool_node_set_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_varpool_node_set_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_varpool_node_set_heap_reserve_exact (VEC_varpool_node_set_heap **vec_, int alloc_ ) { int extend = !VEC_varpool_node_set_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_varpool_node_set_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_varpool_node_set_heap_safe_grow (VEC_varpool_node_set_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_varpool_node_set_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_varpool_node_set_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_varpool_node_set_heap_safe_grow_cleared (VEC_varpool_node_set_heap **vec_, int size_ ) { int oldsize = VEC_varpool_node_set_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_varpool_node_set_heap_safe_grow (vec_, size_ ); memset (&(VEC_varpool_node_set_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (varpool_node_set) * (size_ - oldsize)); } static void VEC_varpool_node_set_heap_safe_splice (VEC_varpool_node_set_heap **dst_, VEC_varpool_node_set_base *src_ ) { if (src_) { VEC_varpool_node_set_heap_reserve_exact (dst_, src_->num ); VEC_varpool_node_set_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static varpool_node_set *VEC_varpool_node_set_heap_safe_push (VEC_varpool_node_set_heap **vec_, varpool_node_set obj_ ) { VEC_varpool_node_set_heap_reserve (vec_, 1 ); return VEC_varpool_node_set_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static varpool_node_set *VEC_varpool_node_set_heap_safe_insert (VEC_varpool_node_set_heap **vec_, unsigned ix_, varpool_node_set obj_ ) { VEC_varpool_node_set_heap_reserve (vec_, 1 ); return VEC_varpool_node_set_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;



struct cgraph_node_set_element_def
{
  struct cgraph_node *node;
  long long index;
};

typedef struct cgraph_node_set_element_def *cgraph_node_set_element;
typedef const struct cgraph_node_set_element_def *const_cgraph_node_set_element;


typedef struct
{
  cgraph_node_set set;
  unsigned index;
} cgraph_node_set_iterator;



struct varpool_node_set_element_def
{
  struct varpool_node *node;
  long long index;
};

typedef struct varpool_node_set_element_def *varpool_node_set_element;
typedef const struct varpool_node_set_element_def *const_varpool_node_set_element;


typedef struct
{
  varpool_node_set set;
  unsigned index;
} varpool_node_set_iterator;



typedef enum {
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def" 1
# 31 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
CIF_OK,


CIF_UNSPECIFIED,




 CIF_FUNCTION_NOT_CONSIDERED
# 38 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
 ,



CIF_BODY_NOT_AVAILABLE,



 CIF_REDEFINED_EXTERN_INLINE
# 44 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
 ,




CIF_FUNCTION_NOT_INLINABLE,


CIF_FUNCTION_NOT_INLINE_CANDIDATE,



 CIF_LARGE_FUNCTION_GROWTH_LIMIT
# 55 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
 ,


 CIF_LARGE_STACK_FRAME_GROWTH_LIMIT
# 57 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
 ,


 CIF_MAX_INLINE_INSNS_SINGLE_LIMIT
# 59 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
 ,


 CIF_MAX_INLINE_INSNS_AUTO_LIMIT
# 61 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
 ,


 CIF_INLINE_UNIT_GROWTH_LIMIT
# 63 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
 ,



CIF_RECURSIVE_INLINING,


CIF_UNLIKELY_CALL,



 CIF_NOT_DECLARED_INLINED
# 73 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
 ,




 CIF_OPTIMIZING_FOR_SIZE
# 77 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
 ,



CIF_TARGET_OPTION_MISMATCH,
CIF_MISMATCHED_ARGUMENTS,



 CIF_ORIGINALLY_INDIRECT_CALL
# 85 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
 ,




 CIF_INDIRECT_UNKNOWN_CALL
# 89 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cif-code.def"
 ,


CIF_OVERWRITABLE,
# 381 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cgraph.h" 2
  CIF_N_REASONS
} cgraph_inline_failed_t;



struct cgraph_indirect_call_info
{


  long long anc_offset;

  long long otr_token;


  long long thunk_delta;

  tree otr_type;

  int param_index;

  int ecf_flags;



  unsigned polymorphic : 1;
};

struct cgraph_edge {

  gcov_type count;
  struct cgraph_node *caller;
  struct cgraph_node *callee;
  struct cgraph_edge *prev_caller;
  struct cgraph_edge *next_caller;
  struct cgraph_edge *prev_callee;
  struct cgraph_edge *next_callee;
  gimple call_stmt;


  struct cgraph_indirect_call_info *indirect_info;
  void * aux;


  cgraph_inline_failed_t inline_failed;


  unsigned int lto_stmt_uid;



  int frequency;

  int uid;

  unsigned short int loop_nest;

  unsigned int indirect_inlining_edge : 1;


  unsigned int indirect_unknown_callee : 1;


  unsigned int call_stmt_cannot_inline_p : 1;

  unsigned int can_throw_external : 1;
};




typedef struct cgraph_edge *cgraph_edge_p;

static void VEC_cgraph_edge_p_must_be_pointer_type (void) { (void)((cgraph_edge_p)1 == (void *)1); } typedef struct VEC_cgraph_edge_p_base { unsigned num; unsigned alloc; cgraph_edge_p vec[1]; } VEC_cgraph_edge_p_base; typedef struct VEC_cgraph_edge_p_none { VEC_cgraph_edge_p_base base; } VEC_cgraph_edge_p_none; static unsigned VEC_cgraph_edge_p_base_length (const VEC_cgraph_edge_p_base *vec_) { return vec_ ? vec_->num : 0; } static cgraph_edge_p VEC_cgraph_edge_p_base_last (const VEC_cgraph_edge_p_base *vec_ ) { (void)(vec_ && vec_->num); return vec_->vec[vec_->num - 1]; } static cgraph_edge_p VEC_cgraph_edge_p_base_index (const VEC_cgraph_edge_p_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return vec_->vec[ix_]; } static int VEC_cgraph_edge_p_base_iterate (const VEC_cgraph_edge_p_base *vec_, unsigned ix_, cgraph_edge_p *ptr) { if (vec_ && ix_ < vec_->num) { *ptr = vec_->vec[ix_]; return 1; } else { *ptr = (cgraph_edge_p) 0; return 0; } } static size_t VEC_cgraph_edge_p_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_cgraph_edge_p_base, vec) + alloc_ * sizeof(cgraph_edge_p); } static void VEC_cgraph_edge_p_base_embedded_init (VEC_cgraph_edge_p_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_cgraph_edge_p_base_space (VEC_cgraph_edge_p_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_cgraph_edge_p_base_splice (VEC_cgraph_edge_p_base *dst_, VEC_cgraph_edge_p_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (cgraph_edge_p)); dst_->num += len_; } } static cgraph_edge_p *VEC_cgraph_edge_p_base_quick_push (VEC_cgraph_edge_p_base *vec_, cgraph_edge_p obj_ ) { cgraph_edge_p *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; *slot_ = obj_; return slot_; } static cgraph_edge_p VEC_cgraph_edge_p_base_pop (VEC_cgraph_edge_p_base *vec_ ) { cgraph_edge_p obj_; (void)(vec_->num); obj_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_cgraph_edge_p_base_truncate (VEC_cgraph_edge_p_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static cgraph_edge_p VEC_cgraph_edge_p_base_replace (VEC_cgraph_edge_p_base *vec_, unsigned ix_, cgraph_edge_p obj_ ) { cgraph_edge_p old_obj_; (void)(ix_ < vec_->num); old_obj_ = vec_->vec[ix_]; vec_->vec[ix_] = obj_; return old_obj_; } static cgraph_edge_p *VEC_cgraph_edge_p_base_quick_insert (VEC_cgraph_edge_p_base *vec_, unsigned ix_, cgraph_edge_p obj_ ) { cgraph_edge_p *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (cgraph_edge_p)); *slot_ = obj_; return slot_; } static cgraph_edge_p VEC_cgraph_edge_p_base_ordered_remove (VEC_cgraph_edge_p_base *vec_, unsigned ix_ ) { cgraph_edge_p *slot_; cgraph_edge_p obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (cgraph_edge_p)); return obj_; } static cgraph_edge_p VEC_cgraph_edge_p_base_unordered_remove (VEC_cgraph_edge_p_base *vec_, unsigned ix_ ) { cgraph_edge_p *slot_; cgraph_edge_p obj_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; obj_ = *slot_; *slot_ = vec_->vec[--vec_->num]; return obj_; } static void VEC_cgraph_edge_p_base_block_remove (VEC_cgraph_edge_p_base *vec_, unsigned ix_, unsigned len_ ) { cgraph_edge_p *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (cgraph_edge_p)); } static cgraph_edge_p *VEC_cgraph_edge_p_base_address (VEC_cgraph_edge_p_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_cgraph_edge_p_base_lower_bound (VEC_cgraph_edge_p_base *vec_, const cgraph_edge_p obj_, unsigned char (*lessthan_)(const cgraph_edge_p, const cgraph_edge_p) ) { unsigned int len_ = VEC_cgraph_edge_p_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { cgraph_edge_p middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_cgraph_edge_p_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_cgraph_edge_p_heap { VEC_cgraph_edge_p_base base; } VEC_cgraph_edge_p_heap; static VEC_cgraph_edge_p_heap *VEC_cgraph_edge_p_heap_alloc (int alloc_ ) { return (VEC_cgraph_edge_p_heap *) vec_heap_p_reserve_exact (((void *)0), alloc_ ); } static void VEC_cgraph_edge_p_heap_free (VEC_cgraph_edge_p_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static VEC_cgraph_edge_p_heap *VEC_cgraph_edge_p_heap_copy (VEC_cgraph_edge_p_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_cgraph_edge_p_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_cgraph_edge_p_heap *)(vec_heap_p_reserve_exact (((void *)0), len_ )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (cgraph_edge_p) * len_); } return new_vec_; } static int VEC_cgraph_edge_p_heap_reserve (VEC_cgraph_edge_p_heap **vec_, int alloc_ ) { int extend = !VEC_cgraph_edge_p_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cgraph_edge_p_heap *) vec_heap_p_reserve (*vec_, alloc_ ); return extend; } static int VEC_cgraph_edge_p_heap_reserve_exact (VEC_cgraph_edge_p_heap **vec_, int alloc_ ) { int extend = !VEC_cgraph_edge_p_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_cgraph_edge_p_heap *) vec_heap_p_reserve_exact (*vec_, alloc_ ); return extend; } static void VEC_cgraph_edge_p_heap_safe_grow (VEC_cgraph_edge_p_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_cgraph_edge_p_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_cgraph_edge_p_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_cgraph_edge_p_heap_safe_grow_cleared (VEC_cgraph_edge_p_heap **vec_, int size_ ) { int oldsize = VEC_cgraph_edge_p_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_cgraph_edge_p_heap_safe_grow (vec_, size_ ); memset (&(VEC_cgraph_edge_p_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (cgraph_edge_p) * (size_ - oldsize)); } static void VEC_cgraph_edge_p_heap_safe_splice (VEC_cgraph_edge_p_heap **dst_, VEC_cgraph_edge_p_base *src_ ) { if (src_) { VEC_cgraph_edge_p_heap_reserve_exact (dst_, src_->num ); VEC_cgraph_edge_p_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static cgraph_edge_p *VEC_cgraph_edge_p_heap_safe_push (VEC_cgraph_edge_p_heap **vec_, cgraph_edge_p obj_ ) { VEC_cgraph_edge_p_heap_reserve (vec_, 1 ); return VEC_cgraph_edge_p_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static cgraph_edge_p *VEC_cgraph_edge_p_heap_safe_insert (VEC_cgraph_edge_p_heap **vec_, unsigned ix_, cgraph_edge_p obj_ ) { VEC_cgraph_edge_p_heap_reserve (vec_, 1 ); return VEC_cgraph_edge_p_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;




struct varpool_node {
  tree decl;

  struct varpool_node *next, *prev;

  struct varpool_node *next_needed, *prev_needed;


  struct varpool_node *extra_name;

  struct varpool_node *same_comdat_group;
  struct ipa_ref_list ref_list;

  struct lto_file_decl_data * lto_file_data;
  void * aux;

  int order;
  enum ld_plugin_symbol_resolution resolution;



  unsigned needed : 1;


  unsigned force_output : 1;


  unsigned analyzed : 1;

  unsigned finalized : 1;

  unsigned output : 1;

  unsigned externally_visible : 1;


  unsigned alias : 1;

  unsigned used_from_other_partition : 1;



  unsigned in_other_partition : 1;
};



struct cgraph_asm_node {

  struct cgraph_asm_node *next;

  tree asm_str;

  int order;
};

extern struct cgraph_node *cgraph_nodes;
extern int cgraph_n_nodes;
extern int cgraph_max_uid;
extern int cgraph_edge_max_uid;
extern int cgraph_max_pid;
extern unsigned char cgraph_global_info_ready;
enum cgraph_state
{

  CGRAPH_STATE_CONSTRUCTION,

  CGRAPH_STATE_IPA,

  CGRAPH_STATE_IPA_SSA,

  CGRAPH_STATE_EXPANSION,

  CGRAPH_STATE_FINISHED
};
//extern enum cgraph_state cgraph_state;
extern unsigned char cgraph_function_flags_ready;
extern struct cgraph_node *cgraph_nodes_queue;
extern struct cgraph_node *cgraph_new_nodes;

extern struct cgraph_asm_node *cgraph_asm_nodes;
extern int cgraph_order;


void dump_cgraph (FILE *);
void debug_cgraph (void);
void dump_cgraph_node (FILE *, struct cgraph_node *);
void debug_cgraph_node (struct cgraph_node *);
void cgraph_insert_node_to_hashtable (struct cgraph_node *node);
void cgraph_remove_edge (struct cgraph_edge *);
void cgraph_remove_node (struct cgraph_node *);
void cgraph_remove_node_and_inline_clones (struct cgraph_node *);
void cgraph_release_function_body (struct cgraph_node *);
void cgraph_node_remove_callees (struct cgraph_node *node);
struct cgraph_edge *cgraph_create_edge (struct cgraph_node *,
     struct cgraph_node *,
     gimple, gcov_type, int, int);
struct cgraph_edge *cgraph_create_indirect_edge (struct cgraph_node *, gimple,
       int, gcov_type, int, int);
struct cgraph_indirect_call_info *cgraph_allocate_init_indirect_info (void);
struct cgraph_node * cgraph_get_node (const_tree);
struct cgraph_node * cgraph_get_node_or_alias (const_tree);
//struct cgraph_node * cgraph_node (tree);
struct cgraph_node * cgraph_same_body_alias (struct cgraph_node *, tree, tree);
struct cgraph_node * cgraph_add_thunk (struct cgraph_node *, tree, tree, unsigned char, long long,
           long long, tree, tree);
void cgraph_remove_same_body_alias (struct cgraph_node *);
struct cgraph_node *cgraph_node_for_asm (tree);
//struct cgraph_edge *cgraph_edge (struct cgraph_node *, gimple);
void cgraph_set_call_stmt (struct cgraph_edge *, gimple);
void cgraph_set_call_stmt_including_clones (struct cgraph_node *, gimple, gimple);
void cgraph_create_edge_including_clones (struct cgraph_node *,
       struct cgraph_node *,
       gimple, gimple, gcov_type, int, int,
       cgraph_inline_failed_t);
void cgraph_update_edges_for_call_stmt (gimple, tree, gimple);
//struct cgraph_local_info *cgraph_local_info (tree);
//struct cgraph_global_info *cgraph_global_info (tree);
//struct cgraph_rtl_info *cgraph_rtl_info (tree);
const char * cgraph_node_name (struct cgraph_node *);
struct cgraph_edge * cgraph_clone_edge (struct cgraph_edge *,
     struct cgraph_node *, gimple,
     unsigned, gcov_type, int, int, unsigned char);
struct cgraph_node * cgraph_clone_node (struct cgraph_node *, tree, gcov_type, int,
     int, unsigned char, VEC_cgraph_edge_p_heap *);

void cgraph_redirect_edge_callee (struct cgraph_edge *, struct cgraph_node *);
void cgraph_make_edge_direct (struct cgraph_edge *, struct cgraph_node *,
         long long);

struct cgraph_asm_node *cgraph_add_asm_node (tree);

unsigned char cgraph_function_possibly_inlined_p (tree);
void cgraph_unnest_node (struct cgraph_node *);

enum availability cgraph_function_body_availability (struct cgraph_node *);
void cgraph_add_new_function (tree, unsigned char);
const char* cgraph_inline_failed_string (cgraph_inline_failed_t);
struct cgraph_node * cgraph_create_virtual_clone (struct cgraph_node *old_node,
                             VEC_cgraph_edge_p_heap*,
                             VEC_ipa_replace_map_p_gc* tree_map,
                             bitmap args_to_skip,
        const char *clone_name);

void cgraph_set_nothrow_flag (struct cgraph_node *, unsigned char);
void cgraph_set_const_flag (struct cgraph_node *, unsigned char, unsigned char);
void cgraph_set_pure_flag (struct cgraph_node *, unsigned char, unsigned char);
tree clone_function_name (tree decl, const char *);
unsigned char cgraph_node_cannot_return (struct cgraph_node *);
unsigned char cgraph_edge_cannot_lead_to_return (struct cgraph_edge *);
unsigned char cgraph_will_be_removed_from_program_if_no_direct_calls
  (struct cgraph_node *node);
unsigned char cgraph_can_remove_if_no_direct_calls_and_refs_p
  (struct cgraph_node *node);
unsigned char resolution_used_from_other_file_p (enum ld_plugin_symbol_resolution resolution);
unsigned char cgraph_used_from_object_file_p (struct cgraph_node *node);
unsigned char varpool_used_from_object_file_p (struct varpool_node *node);


extern FILE *cgraph_dump_file;
void cgraph_finalize_function (tree, unsigned char);
void cgraph_mark_if_needed (tree);
void cgraph_finalize_compilation_unit (void);
void cgraph_optimize (void);
void cgraph_mark_needed_node (struct cgraph_node *);
void cgraph_mark_address_taken_node (struct cgraph_node *);
void cgraph_mark_reachable_node (struct cgraph_node *);
unsigned char cgraph_inline_p (struct cgraph_edge *, cgraph_inline_failed_t *reason);
unsigned char cgraph_preserve_function_body_p (tree);
void verify_cgraph (void);
void verify_cgraph_node (struct cgraph_node *);
void cgraph_build_static_cdtor (char which, tree body, int priority);
void cgraph_reset_static_var_maps (void);
void init_cgraph (void);
struct cgraph_node *cgraph_function_versioning (struct cgraph_node *,
      VEC_cgraph_edge_p_heap*,
      VEC_ipa_replace_map_p_gc*,
      bitmap, bitmap, basic_block,
      const char *);
void tree_function_versioning (tree, tree, VEC_ipa_replace_map_p_gc*, unsigned char, bitmap,
          bitmap, basic_block);
struct cgraph_node *save_inline_function_body (struct cgraph_node *);
void record_references_in_initializer (tree, unsigned char);
unsigned char cgraph_process_new_functions (void);

unsigned char cgraph_decide_is_function_needed (struct cgraph_node *, tree);

typedef void (*cgraph_edge_hook)(struct cgraph_edge *, void *);
typedef void (*cgraph_node_hook)(struct cgraph_node *, void *);
typedef void (*cgraph_2edge_hook)(struct cgraph_edge *, struct cgraph_edge *,
      void *);
typedef void (*cgraph_2node_hook)(struct cgraph_node *, struct cgraph_node *,
      void *);
struct cgraph_edge_hook_list;
struct cgraph_node_hook_list;
struct cgraph_2edge_hook_list;
struct cgraph_2node_hook_list;
struct cgraph_edge_hook_list *cgraph_add_edge_removal_hook (cgraph_edge_hook, void *);
void cgraph_remove_edge_removal_hook (struct cgraph_edge_hook_list *);
struct cgraph_node_hook_list *cgraph_add_node_removal_hook (cgraph_node_hook,
           void *);
void cgraph_remove_node_removal_hook (struct cgraph_node_hook_list *);
struct cgraph_node_hook_list *cgraph_add_function_insertion_hook (cgraph_node_hook,
                 void *);
void cgraph_remove_function_insertion_hook (struct cgraph_node_hook_list *);
void cgraph_call_function_insertion_hooks (struct cgraph_node *node);
struct cgraph_2edge_hook_list *cgraph_add_edge_duplication_hook (cgraph_2edge_hook, void *);
void cgraph_remove_edge_duplication_hook (struct cgraph_2edge_hook_list *);
struct cgraph_2node_hook_list *cgraph_add_node_duplication_hook (cgraph_2node_hook, void *);
void cgraph_remove_node_duplication_hook (struct cgraph_2node_hook_list *);
void cgraph_materialize_all_clones (void);
gimple cgraph_redirect_edge_call_stmt_to_callee (struct cgraph_edge *);
unsigned char cgraph_propagate_frequency (struct cgraph_node *node);

unsigned int rebuild_cgraph_edges (void);
void cgraph_rebuild_references (void);
void reset_inline_failed (struct cgraph_node *);
int compute_call_stmt_bb_frequency (tree, basic_block bb);


unsigned char cgraph_remove_unreachable_nodes (unsigned char, FILE *);
int cgraph_postorder (struct cgraph_node **);
cgraph_node_set cgraph_node_set_new (void);
cgraph_node_set_iterator cgraph_node_set_find (cgraph_node_set,
            struct cgraph_node *);
void cgraph_node_set_add (cgraph_node_set, struct cgraph_node *);
void cgraph_node_set_remove (cgraph_node_set, struct cgraph_node *);
void dump_cgraph_node_set (FILE *, cgraph_node_set);
void debug_cgraph_node_set (cgraph_node_set);

varpool_node_set varpool_node_set_new (void);
varpool_node_set_iterator varpool_node_set_find (varpool_node_set,
            struct varpool_node *);
void varpool_node_set_add (varpool_node_set, struct varpool_node *);
void varpool_node_set_remove (varpool_node_set, struct varpool_node *);
void dump_varpool_node_set (FILE *, varpool_node_set);
void debug_varpool_node_set (varpool_node_set);
void ipa_discover_readonly_nonaddressable_vars (void);
unsigned char cgraph_comdat_can_be_unshared_p (struct cgraph_node *);


unsigned char cgraph_maybe_hot_edge_p (struct cgraph_edge *e);


extern struct varpool_node *varpool_nodes_queue;
extern struct varpool_node *varpool_nodes;

//struct varpool_node *varpool_node (tree);
struct varpool_node *varpool_node_for_asm (tree asmname);
void varpool_mark_needed_node (struct varpool_node *);
void debug_varpool (void);
void dump_varpool (FILE *);
void dump_varpool_node (FILE *, struct varpool_node *);

void varpool_finalize_decl (tree);
unsigned char decide_is_variable_needed (struct varpool_node *, tree);
enum availability cgraph_variable_initializer_availability (struct varpool_node *);
void cgraph_make_decl_local (tree);
void cgraph_make_node_local (struct cgraph_node *);
unsigned char cgraph_node_can_be_local_p (struct cgraph_node *);


struct varpool_node * varpool_get_node (const_tree decl);
void varpool_remove_node (struct varpool_node *node);
void varpool_finalize_named_section_flags (struct varpool_node *node);
unsigned char varpool_assemble_pending_decls (void);
unsigned char varpool_assemble_decl (struct varpool_node *node);
unsigned char varpool_analyze_pending_decls (void);
void varpool_remove_unreferenced_decls (void);
void varpool_empty_needed_queue (void);
struct varpool_node * varpool_extra_name_alias (tree, tree);
const char * varpool_node_name (struct varpool_node *node);
void varpool_reset_queue (void);
unsigned char const_value_known_p (tree);






static struct varpool_node *
varpool_first_static_initializer (void)
{
  struct varpool_node *node;
  for (node = varpool_nodes_queue; node; node = node->next_needed)
    {
      ((void)(0 && (((enum tree_code) (node->decl)->base.code) == VAR_DECL)));
      if (((node->decl)->decl_common.initial))
 return node;
    }
  return ((void *)0);
}


static struct varpool_node *
varpool_next_static_initializer (struct varpool_node *node)
{
  for (node = node->next_needed; node; node = node->next_needed)
    {
      ((void)(0 && (((enum tree_code) (node->decl)->base.code) == VAR_DECL)));
      if (((node->decl)->decl_common.initial))
 return node;
    }
  return ((void *)0);
}







void cgraph_clone_inlined_nodes (struct cgraph_edge *, unsigned char, unsigned char);
void compute_inline_parameters (struct cgraph_node *);



tree add_new_static_var (tree type);


static unsigned char
csi_end_p (cgraph_node_set_iterator csi)
{
  return csi.index >= (VEC_cgraph_node_ptr_base_length(((csi.set->nodes) ? &(csi.set->nodes)->base : 0)));
}


static void
csi_next (cgraph_node_set_iterator *csi)
{
  csi->index++;
}


static struct cgraph_node *
csi_node (cgraph_node_set_iterator csi)
{
  return (VEC_cgraph_node_ptr_base_index(((csi.set->nodes) ? &(csi.set->nodes)->base : 0),csi.index ));
}


static cgraph_node_set_iterator
csi_start (cgraph_node_set set)
{
  cgraph_node_set_iterator csi;

  csi.set = set;
  csi.index = 0;
  return csi;
}


static unsigned char
cgraph_node_in_set_p (struct cgraph_node *node, cgraph_node_set set)
{
  cgraph_node_set_iterator csi;
  csi = cgraph_node_set_find (set, node);
  return !csi_end_p (csi);
}


static size_t
cgraph_node_set_size (cgraph_node_set set)
{
  return htab_elements (set->hashtab);
}


static unsigned char
vsi_end_p (varpool_node_set_iterator vsi)
{
  return vsi.index >= (VEC_varpool_node_ptr_base_length(((vsi.set->nodes) ? &(vsi.set->nodes)->base : 0)));
}


static void
vsi_next (varpool_node_set_iterator *vsi)
{
  vsi->index++;
}


static struct varpool_node *
vsi_node (varpool_node_set_iterator vsi)
{
  return (VEC_varpool_node_ptr_base_index(((vsi.set->nodes) ? &(vsi.set->nodes)->base : 0),vsi.index ));
}


static varpool_node_set_iterator
vsi_start (varpool_node_set set)
{
  varpool_node_set_iterator vsi;

  vsi.set = set;
  vsi.index = 0;
  return vsi;
}


static unsigned char
varpool_node_in_set_p (struct varpool_node *node, varpool_node_set set)
{
  varpool_node_set_iterator vsi;
  vsi = varpool_node_set_find (set, node);
  return !vsi_end_p (vsi);
}


static size_t
varpool_node_set_size (varpool_node_set set)
{
  return htab_elements (set->hashtab);
}





struct constant_descriptor_tree {

  rtx rtl;


  tree value;




  hashval_t hash;
};


static unsigned char
cgraph_node_set_nonempty_p (cgraph_node_set set)
{
  return !((VEC_cgraph_node_ptr_base_length(((set->nodes) ? &(set->nodes)->base : 0))) == 0);
}


static unsigned char
varpool_node_set_nonempty_p (varpool_node_set set)
{
  return !((VEC_varpool_node_ptr_base_length(((set->nodes) ? &(set->nodes)->base : 0))) == 0);
}





static unsigned char
cgraph_only_called_directly_p (struct cgraph_node *node)
{
  ((void)(!(!node->global.inlined_to) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cgraph.h", 912, __FUNCTION__), 0 : 0));
  return (!node->needed && !node->address_taken
   && !node->reachable_from_other_partition
   && !((node->decl)->function_decl.static_ctor_flag)
   && !((node->decl)->function_decl.static_dtor_flag)
   && !node->local.externally_visible);
}




static unsigned char
cgraph_can_remove_if_no_direct_calls_p (struct cgraph_node *node)
{

  if (((node->decl)->decl_common.decl_flag_1))
    return 1;
  return !node->address_taken && cgraph_can_remove_if_no_direct_calls_and_refs_p (node);
}




static unsigned char
varpool_can_remove_if_no_refs (struct varpool_node *node)
{
  return (!node->force_output && !node->used_from_other_partition
   && (global_options.x_flag_toplevel_reorder || ((node->decl)->decl_with_vis.comdat_flag)
       || ((node->decl)->decl_common.artificial_flag))
     && (((node->decl)->decl_with_vis.comdat_flag) || !node->externally_visible));
}






static unsigned char
varpool_all_refs_explicit_p (struct varpool_node *vnode)
{
  return (!vnode->externally_visible
   && !vnode->used_from_other_partition
   && !vnode->force_output);
}


htab_t constant_pool_htab (void);


# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ipa-ref-inline.h" 1
# 23 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ipa-ref-inline.h"
static struct cgraph_node *
ipa_ref_node (struct ipa_ref *ref)
{
  ((void)(!(ref->refered_type == IPA_REF_CGRAPH) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ipa-ref-inline.h", 26, __FUNCTION__), 0 : 0));
  return ref->refered.cgraph_node;
}



static struct varpool_node *
ipa_ref_varpool_node (struct ipa_ref *ref)
{
  ((void)(!(ref->refered_type == IPA_REF_VARPOOL) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ipa-ref-inline.h", 35, __FUNCTION__), 0 : 0));
  return ref->refered.varpool_node;
}



static struct cgraph_node *
ipa_ref_refering_node (struct ipa_ref *ref)
{
  ((void)(!(ref->refering_type == IPA_REF_CGRAPH) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ipa-ref-inline.h", 44, __FUNCTION__), 0 : 0));
  return ref->refering.cgraph_node;
}



static struct varpool_node *
ipa_ref_refering_varpool_node (struct ipa_ref *ref)
{
  ((void)(!(ref->refering_type == IPA_REF_VARPOOL) ? fancy_abort ("/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ipa-ref-inline.h", 53, __FUNCTION__), 0 : 0));
  return ref->refering.varpool_node;
}



static struct ipa_ref_list *
ipa_ref_refering_ref_list (struct ipa_ref *ref)
{
  if (ref->refering_type == IPA_REF_CGRAPH)
    return &ipa_ref_refering_node (ref)->ref_list;
  else
    return &ipa_ref_refering_varpool_node (ref)->ref_list;
}



static struct ipa_ref_list *
ipa_ref_refered_ref_list (struct ipa_ref *ref)
{
  if (ref->refered_type == IPA_REF_CGRAPH)
    return &ipa_ref_node (ref)->ref_list;
  else
    return &ipa_ref_varpool_node (ref)->ref_list;
}



static struct ipa_ref *
ipa_ref_list_first_reference (struct ipa_ref_list *list)
{
  if (!(VEC_ipa_ref_t_base_length(((list->references) ? &(list->references)->base : 0))))
    return ((void *)0);
  return (VEC_ipa_ref_t_base_index(((list->references) ? &(list->references)->base : 0),0 ));
}



static struct ipa_ref *
ipa_ref_list_first_refering (struct ipa_ref_list *list)
{
  if (!(VEC_ipa_ref_ptr_base_length(((list->refering) ? &(list->refering)->base : 0))))
    return ((void *)0);
  return (VEC_ipa_ref_ptr_base_index(((list->refering) ? &(list->refering)->base : 0),0 ));
}



static void
ipa_empty_ref_list (struct ipa_ref_list *list)
{
  list->refering = ((void *)0);
  list->references = ((void *)0);
}



static unsigned int
ipa_ref_list_nreferences (struct ipa_ref_list *list)
{
  return (VEC_ipa_ref_t_base_length(((list->references) ? &(list->references)->base : 0)));
}
# 962 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/cgraph.h" 2
# 32 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h" 2
# 1 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ipa-reference.h" 1
# 28 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/ipa-reference.h"
bitmap ipa_reference_get_not_read_global (struct cgraph_node *fn);
bitmap ipa_reference_get_not_written_global (struct cgraph_node *fn);
# 33 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h" 2






struct gimple_df {

  htab_t referenced_vars;






  VEC_gimple_gc *modified_noreturn_calls;


  VEC_tree_gc *ssa_names;


  tree vop;


  struct pt_solution escaped;



  struct pointer_map_t * decls_to_pointers;


  tree free_ssanames;





  htab_t default_defs;



  bitmap syms_to_rename;


  unsigned int in_ssa_p : 1;


  unsigned int ipa_pta : 1;

  struct ssa_operands ssa_operands;
};
# 93 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h"
typedef struct
{
  htab_t htab;
  void * *slot;
  void * *limit;
} htab_iterator;
# 118 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h"
struct ptr_info_def
{

  struct pt_solution pt;
# 130 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h"
  unsigned int align;


  unsigned int misalign;
};






enum need_phi_state {



  NEED_PHI_STATE_UNKNOWN,






  NEED_PHI_STATE_NO,





  NEED_PHI_STATE_MAYBE
};


struct var_ann_d {

  unsigned base_var_processed : 1;



  unsigned used : 1;




enum need_phi_state need_phi_state : 2;



  unsigned is_heapvar : 1;


  unsigned base_index;



  tree current_def;
};
# 223 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h"
typedef struct immediate_use_iterator_d
{

  ssa_use_operand_t *imm_use;

  ssa_use_operand_t *end_p;

  ssa_use_operand_t iter_node;


  ssa_use_operand_t *next_imm_name;
} imm_use_iterator;
# 282 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h"
typedef struct var_ann_d *var_ann_t;

static var_ann_t var_ann (const_tree);
static var_ann_t get_var_ann (tree);
static void update_stmt (gimple);
static int get_lineno (const_gimple);


static gimple_seq phi_nodes (const_basic_block);
static void set_phi_nodes (basic_block, gimple_seq);




struct int_tree_map {
  unsigned int uid;
  tree to;
};

extern unsigned int int_tree_map_hash (const void *);
extern int int_tree_map_eq (const void *, const void *);

extern unsigned int uid_decl_map_hash (const void *);
extern int uid_decl_map_eq (const void *, const void *);

typedef struct
{
  htab_iterator hti;
} referenced_var_iterator;
# 322 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h"
extern tree referenced_var_lookup (struct function *, unsigned int);
extern unsigned char referenced_var_check_and_insert (tree);
# 348 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h"
struct omp_region
{

  struct omp_region *outer;


  struct omp_region *inner;


  struct omp_region *next;


  basic_block entry;


  basic_block exit;


  basic_block cont;




  VEC_tree_gc *ws_args;


  enum gimple_code type;


  enum omp_clause_schedule_kind sched_kind;


  unsigned char is_combined_parallel;
};

//extern struct omp_region *root_omp_region;
/*
extern struct omp_region *new_omp_region (basic_block, enum gimple_code,
       struct omp_region *);
extern void free_omp_regions (void);
void omp_expand_local (basic_block);
extern tree find_omp_clause (tree, enum omp_clause_code);
tree copy_var_decl (tree, tree, tree);
# 399 "/usr/lib/gcc/i686-linux-gnu/4.6.1/plugin/include/tree-flow.h"
extern void delete_tree_cfg_annotations (void);
extern unsigned char stmt_ends_bb_p (gimple);
extern unsigned char is_ctrl_stmt (gimple);
extern unsigned char is_ctrl_altering_stmt (gimple);
extern unsigned char simple_goto_p (gimple);
extern unsigned char stmt_can_make_abnormal_goto (gimple);
extern basic_block single_noncomplex_succ (basic_block bb);
extern void gimple_dump_bb (basic_block, FILE *, int, int);
extern void gimple_debug_bb (basic_block);
extern basic_block gimple_debug_bb_n (int);
extern void gimple_dump_cfg (FILE *, int);
extern void gimple_debug_cfg (int);
extern void dump_cfg_stats (FILE *);
extern void dot_cfg (void);
extern void debug_cfg_stats (void);
extern void debug_loops (int);
extern void debug_loop (struct loop *, int);
extern void debug_loop_num (unsigned, int);
extern void print_loops (FILE *, int);
extern void print_loops_bb (FILE *, basic_block, int, int);
extern void cleanup_dead_labels (void);
extern void group_case_labels (void);
extern gimple first_stmt (basic_block);
extern gimple last_stmt (basic_block);
extern gimple last_and_only_stmt (basic_block);
extern edge find_taken_edge (basic_block, tree);
extern basic_block label_to_block_fn (struct function *, tree);

extern void notice_special_calls (gimple);
extern void clear_special_calls (void);
extern void verify_stmts (void);
extern void verify_gimple (void);
extern void verify_types_in_gimple_seq (gimple_seq);
extern tree gimple_block_label (basic_block);
extern void extract_true_false_edges_from_block (basic_block, edge *, edge *);
extern unsigned char gimple_duplicate_sese_region (edge, edge, basic_block *, unsigned,
     basic_block *);
extern unsigned char gimple_duplicate_sese_tail (edge, edge, basic_block *, unsigned,
          basic_block *);
extern void gather_blocks_in_sese_region (basic_block entry, basic_block exit,
       VEC_basic_block_heap **bbs_p);
extern void add_phi_args_after_copy_bb (basic_block);
extern void add_phi_args_after_copy (basic_block *, unsigned, edge);
extern unsigned char gimple_purge_dead_eh_edges (basic_block);
extern unsigned char gimple_purge_all_dead_eh_edges (const_bitmap);
extern unsigned char gimple_purge_dead_abnormal_call_edges (basic_block);
extern unsigned char gimple_purge_all_dead_abnormal_call_edges (const_bitmap);
extern tree gimplify_build1 (gimple_stmt_iterator *, enum tree_code,
        tree, tree);
extern tree gimplify_build2 (gimple_stmt_iterator *, enum tree_code,
        tree, tree, tree);
extern tree gimplify_build3 (gimple_stmt_iterator *, enum tree_code,
        tree, tree, tree, tree);
extern void init_empty_tree_cfg (void);
extern void init_empty_tree_cfg_for_function (struct function *);
extern void fold_cond_expr_cond (void);
extern void make_abnormal_goto_edges (basic_block, unsigned char);
extern void replace_uses_by (tree, tree);
extern void start_recording_case_labels (void);
extern void end_recording_case_labels (void);
extern basic_block move_sese_region_to_fn (struct function *, basic_block,
               basic_block, tree);
void remove_edge_and_dominated_blocks (edge);
unsigned char tree_node_can_be_shared (tree);


extern bitmap cfgcleanup_altered_bbs;
extern unsigned char cleanup_tree_cfg (void);


extern void dump_generic_bb (FILE *, basic_block, int, int);
extern int op_code_prio (enum tree_code);
extern int op_prio (const_tree);
extern const char *op_symbol_code (enum tree_code);


extern var_ann_t create_var_ann (tree);
extern void renumber_gimple_stmt_uids (void);
extern void renumber_gimple_stmt_uids_in_blocks (basic_block *, int);
extern void dump_dfa_stats (FILE *);
extern void debug_dfa_stats (void);
extern void debug_referenced_vars (void);
extern void dump_referenced_vars (FILE *);
extern void dump_variable (FILE *, tree);
extern void debug_variable (tree);
extern tree get_virtual_var (tree);
extern unsigned char add_referenced_var (tree);
extern void remove_referenced_var (tree);
extern void mark_symbols_for_renaming (gimple);
extern void find_new_referenced_vars (gimple);
extern tree make_rename_temp (tree, const char *);
extern void set_default_def (tree, tree);
extern tree gimple_default_def (struct function *, tree);
extern unsigned char stmt_references_abnormal_ssa_name (gimple);
extern tree get_ref_base_and_extent (tree, long long *,
         long long *, long long *);
extern tree get_addr_base_and_unit_offset (tree, long long *);
extern void find_referenced_vars_in (gimple);


extern void reserve_phi_args_for_new_edge (basic_block);
extern void add_phi_node_to_bb (gimple phi, basic_block bb);
extern gimple make_phi_node (tree var, int len);
extern gimple create_phi_node (tree, basic_block);
extern void add_phi_arg (gimple, tree, edge, source_location);
extern void remove_phi_args (edge);
extern void remove_phi_node (gimple_stmt_iterator *, unsigned char);
extern void remove_phi_nodes (basic_block);
extern void init_phinodes (void);
extern void fini_phinodes (void);
extern void release_phi_node (gimple);





extern void record_vars_into (tree, tree);
extern void record_vars (tree);
extern unsigned char gimple_seq_may_fallthru (gimple_seq);
extern unsigned char gimple_stmt_may_fallthru (gimple);
extern unsigned char gimple_check_call_args (gimple);


*/


struct _edge_var_map {
  tree result;
  tree def;
  source_location locus;
};
typedef struct _edge_var_map edge_var_map;

typedef struct VEC_edge_var_map_base { unsigned num; unsigned alloc; edge_var_map vec[1]; } VEC_edge_var_map_base; typedef struct VEC_edge_var_map_none { VEC_edge_var_map_base base; } VEC_edge_var_map_none; static unsigned VEC_edge_var_map_base_length (const VEC_edge_var_map_base *vec_) { return vec_ ? vec_->num : 0; } static edge_var_map *VEC_edge_var_map_base_last (VEC_edge_var_map_base *vec_ ) { (void)(vec_ && vec_->num); return &vec_->vec[vec_->num - 1]; } static edge_var_map *VEC_edge_var_map_base_index (VEC_edge_var_map_base *vec_, unsigned ix_ ) { (void)(vec_ && ix_ < vec_->num); return &vec_->vec[ix_]; } static int VEC_edge_var_map_base_iterate (VEC_edge_var_map_base *vec_, unsigned ix_, edge_var_map **ptr) { if (vec_ && ix_ < vec_->num) { *ptr = &vec_->vec[ix_]; return 1; } else { *ptr = 0; return 0; } } static size_t VEC_edge_var_map_base_embedded_size (int alloc_) { return __builtin_offsetof (VEC_edge_var_map_base, vec) + alloc_ * sizeof(edge_var_map); } static void VEC_edge_var_map_base_embedded_init (VEC_edge_var_map_base *vec_, int alloc_) { vec_->num = 0; vec_->alloc = alloc_; } static int VEC_edge_var_map_base_space (VEC_edge_var_map_base *vec_, int alloc_ ) { (void)(alloc_ >= 0); return vec_ ? vec_->alloc - vec_->num >= (unsigned)alloc_ : !alloc_; } static void VEC_edge_var_map_base_splice (VEC_edge_var_map_base *dst_, VEC_edge_var_map_base *src_ ) { if (src_) { unsigned len_ = src_->num; (void)(dst_->num + len_ <= dst_->alloc); memcpy (&dst_->vec[dst_->num], &src_->vec[0], len_ * sizeof (edge_var_map)); dst_->num += len_; } } static edge_var_map *VEC_edge_var_map_base_quick_push (VEC_edge_var_map_base *vec_, const edge_var_map *obj_ ) { edge_var_map *slot_; (void)(vec_->num < vec_->alloc); slot_ = &vec_->vec[vec_->num++]; if (obj_) *slot_ = *obj_; return slot_; } static void VEC_edge_var_map_base_pop (VEC_edge_var_map_base *vec_ ) { (void)(vec_->num); --vec_->num; } static void VEC_edge_var_map_base_truncate (VEC_edge_var_map_base *vec_, unsigned size_ ) { (void)(vec_ ? vec_->num >= size_ : !size_); if (vec_) vec_->num = size_; } static edge_var_map *VEC_edge_var_map_base_replace (VEC_edge_var_map_base *vec_, unsigned ix_, const edge_var_map *obj_ ) { edge_var_map *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; if (obj_) *slot_ = *obj_; return slot_; } static edge_var_map *VEC_edge_var_map_base_quick_insert (VEC_edge_var_map_base *vec_, unsigned ix_, const edge_var_map *obj_ ) { edge_var_map *slot_; (void)(vec_->num < vec_->alloc); (void)(ix_ <= vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_ + 1, slot_, (vec_->num++ - ix_) * sizeof (edge_var_map)); if (obj_) *slot_ = *obj_; return slot_; } static void VEC_edge_var_map_base_ordered_remove (VEC_edge_var_map_base *vec_, unsigned ix_ ) { edge_var_map *slot_; (void)(ix_ < vec_->num); slot_ = &vec_->vec[ix_]; memmove (slot_, slot_ + 1, (--vec_->num - ix_) * sizeof (edge_var_map)); } static void VEC_edge_var_map_base_unordered_remove (VEC_edge_var_map_base *vec_, unsigned ix_ ) { (void)(ix_ < vec_->num); vec_->vec[ix_] = vec_->vec[--vec_->num]; } static void VEC_edge_var_map_base_block_remove (VEC_edge_var_map_base *vec_, unsigned ix_, unsigned len_ ) { edge_var_map *slot_; (void)(ix_ + len_ <= vec_->num); slot_ = &vec_->vec[ix_]; vec_->num -= len_; memmove (slot_, slot_ + len_, (vec_->num - ix_) * sizeof (edge_var_map)); } static edge_var_map *VEC_edge_var_map_base_address (VEC_edge_var_map_base *vec_) { return vec_ ? vec_->vec : 0; } static unsigned VEC_edge_var_map_base_lower_bound (VEC_edge_var_map_base *vec_, const edge_var_map *obj_, unsigned char (*lessthan_)(const edge_var_map *, const edge_var_map *) ) { unsigned int len_ = VEC_edge_var_map_base_length (vec_); unsigned int half_, middle_; unsigned int first_ = 0; while (len_ > 0) { edge_var_map *middle_elem_; half_ = len_ >> 1; middle_ = first_; middle_ += half_; middle_elem_ = VEC_edge_var_map_base_index (vec_, middle_ ); if (lessthan_ (middle_elem_, obj_)) { first_ = middle_; ++first_; len_ = len_ - half_ - 1; } else len_ = half_; } return first_; } struct vec_swallow_trailing_semi;
typedef struct VEC_edge_var_map_heap { VEC_edge_var_map_base base; } VEC_edge_var_map_heap; static VEC_edge_var_map_heap *VEC_edge_var_map_heap_alloc (int alloc_ ) { return (VEC_edge_var_map_heap *) vec_heap_o_reserve_exact (((void *)0), alloc_, __builtin_offsetof (VEC_edge_var_map_heap, base.vec), sizeof (edge_var_map) ); } static VEC_edge_var_map_heap *VEC_edge_var_map_heap_copy (VEC_edge_var_map_base *vec_ ) { size_t len_ = vec_ ? vec_->num : 0; VEC_edge_var_map_heap *new_vec_ = ((void *)0); if (len_) { new_vec_ = (VEC_edge_var_map_heap *)(vec_heap_o_reserve_exact (((void *)0), len_, __builtin_offsetof (VEC_edge_var_map_heap, base.vec), sizeof (edge_var_map) )); new_vec_->base.num = len_; memcpy (new_vec_->base.vec, vec_->vec, sizeof (edge_var_map) * len_); } return new_vec_; } static void VEC_edge_var_map_heap_free (VEC_edge_var_map_heap **vec_) { if (*vec_) (free) (*vec_); *vec_ = ((void *)0); } static int VEC_edge_var_map_heap_reserve (VEC_edge_var_map_heap **vec_, int alloc_ ) { int extend = !VEC_edge_var_map_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_edge_var_map_heap *) vec_heap_o_reserve (*vec_, alloc_, __builtin_offsetof (VEC_edge_var_map_heap, base.vec), sizeof (edge_var_map) ); return extend; } static int VEC_edge_var_map_heap_reserve_exact (VEC_edge_var_map_heap **vec_, int alloc_ ) { int extend = !VEC_edge_var_map_base_space (((*vec_) ? &(*vec_)->base : 0), alloc_ ); if (extend) *vec_ = (VEC_edge_var_map_heap *) vec_heap_o_reserve_exact (*vec_, alloc_, __builtin_offsetof (VEC_edge_var_map_heap, base.vec), sizeof (edge_var_map) ); return extend; } static void VEC_edge_var_map_heap_safe_grow (VEC_edge_var_map_heap **vec_, int size_ ) { (void)(size_ >= 0 && VEC_edge_var_map_base_length ((*vec_) ? &(*vec_)->base : 0) <= (unsigned)size_); VEC_edge_var_map_heap_reserve_exact (vec_, size_ - (int)(*vec_ ? ((*vec_) ? &(*vec_)->base : 0)->num : 0) ); ((*vec_) ? &(*vec_)->base : 0)->num = size_; } static void VEC_edge_var_map_heap_safe_grow_cleared (VEC_edge_var_map_heap **vec_, int size_ ) { int oldsize = VEC_edge_var_map_base_length ((*vec_) ? &(*vec_)->base : 0); VEC_edge_var_map_heap_safe_grow (vec_, size_ ); memset (&(VEC_edge_var_map_base_address ((*vec_) ? &(*vec_)->base : 0))[oldsize], 0, sizeof (edge_var_map) * (size_ - oldsize)); } static void VEC_edge_var_map_heap_safe_splice (VEC_edge_var_map_heap **dst_, VEC_edge_var_map_base *src_ ) { if (src_) { VEC_edge_var_map_heap_reserve_exact (dst_, src_->num ); VEC_edge_var_map_base_splice (((*dst_) ? &(*dst_)->base : 0), src_ ); } } static edge_var_map *VEC_edge_var_map_heap_safe_push (VEC_edge_var_map_heap **vec_, const edge_var_map *obj_ ) { VEC_edge_var_map_heap_reserve (vec_, 1 ); return VEC_edge_var_map_base_quick_push (((*vec_) ? &(*vec_)->base : 0), obj_ ); } static edge_var_map *VEC_edge_var_map_heap_safe_insert (VEC_edge_var_map_heap **vec_, unsigned ix_, const edge_var_map *obj_ ) { VEC_edge_var_map_heap_reserve (vec_, 1 ); return VEC_edge_var_map_base_quick_insert (((*vec_) ? &(*vec_)->base : 0), ix_, obj_ ); } struct vec_swallow_trailing_semi;


typedef VEC_edge_var_map_heap *edge_var_map_vector;

extern void init_tree_ssa (struct function *);
extern void redirect_edge_var_map_add (edge, tree, tree, source_location);
extern void redirect_edge_var_map_clear (edge);
extern void redirect_edge_var_map_dup (edge, edge);
extern edge_var_map_vector redirect_edge_var_map_vector (edge);
extern void redirect_edge_var_map_destroy (void);

extern edge ssa_redirect_edge (edge, basic_block);
extern void flush_pending_stmts (edge);
extern void verify_ssa (unsigned char);
extern void delete_tree_ssa (void);
extern unsigned char ssa_undefined_value_p (tree);
extern void warn_uninit (tree, const char *, void *);
extern unsigned int warn_uninitialized_vars (unsigned char);
extern void execute_update_addresses_taken (void);



typedef unsigned char (*walk_use_def_chains_fn) (tree, gimple, void *);

extern void walk_use_def_chains (tree, walk_use_def_chains_fn, void *, unsigned char);

void insert_debug_temps_for_defs (gimple_stmt_iterator *);
void insert_debug_temp_for_var_def (gimple_stmt_iterator *, tree);
void reset_debug_uses (gimple);
void release_defs_bitset (bitmap toremove);


void update_ssa (unsigned);
void delete_update_ssa (void);
void register_new_name_mapping (tree, tree);
tree create_new_def_for (tree, gimple, def_operand_p);
unsigned char need_ssa_update_p (struct function *);
unsigned char name_mappings_registered_p (void);
unsigned char name_registered_for_update_p (tree);
bitmap ssa_names_to_replace (void);
void release_ssa_name_after_update_ssa (tree);
void compute_global_livein (bitmap, bitmap);
void mark_sym_for_renaming (tree);
void mark_set_for_renaming (bitmap);
unsigned char symbol_marked_for_renaming (tree);
tree get_current_def (tree);
void set_current_def (tree, tree);


extern void init_ssanames (struct function *, int);
extern void fini_ssanames (void);
extern tree make_ssa_name_fn (struct function *, tree, gimple);
extern tree duplicate_ssa_name (tree, gimple);
extern void duplicate_ssa_name_ptr_info (tree, struct ptr_info_def *);
extern void release_ssa_name (tree);
extern void release_defs (gimple);
extern void replace_ssa_name_symbol (tree, tree);






tree fold_const_aggregate_ref (tree);


extern void dump_dominator_optimization_stats (FILE *);
extern void debug_dominator_optimization_stats (void);
int loop_depth_of_name (tree);
tree degenerate_phi_result (gimple);


extern void propagate_value (use_operand_p, tree);
extern void propagate_tree_value (tree *, tree);
extern void propagate_tree_value_into_stmt (gimple_stmt_iterator *, tree);
extern void replace_exp (use_operand_p, tree);
extern unsigned char may_propagate_copy (tree, tree);
extern unsigned char may_propagate_copy_into_stmt (gimple, tree);
extern unsigned char may_propagate_copy_into_asm (tree);



typedef struct
{

  tree base, step;


  unsigned char no_overflow;
} affine_iv;





struct tree_niter_desc
{
  tree assumptions;



  tree may_be_zero;



  tree niter;



  double_int max;







  affine_iv control;
  tree bound;
  enum tree_code cmp;
};


unsigned char empty_block_p (basic_block);
basic_block *blocks_in_phiopt_order (void);



unsigned int tree_ssa_lim (void);
unsigned int tree_ssa_unswitch_loops (void);
unsigned int canonicalize_induction_variables (void);
unsigned int tree_unroll_loops_completely (unsigned char, unsigned char);
unsigned int tree_ssa_prefetch_arrays (void);
void tree_ssa_iv_optimize (void);
unsigned tree_predictive_commoning (void);
tree canonicalize_loop_ivs (struct loop *, tree *, unsigned char);
unsigned char parallelize_loops (void);

unsigned char loop_only_exit_p (const struct loop *, const_edge);
unsigned char number_of_iterations_exit (struct loop *, edge,
    struct tree_niter_desc *niter, unsigned char);
tree find_loop_niter (struct loop *, edge *);
tree loop_niter_by_eval (struct loop *, edge);
tree find_loop_niter_by_eval (struct loop *, edge *);
void estimate_numbers_of_iterations (unsigned char);
unsigned char array_at_struct_end_p (tree);
unsigned char scev_probably_wraps_p (tree, tree, gimple, struct loop *, unsigned char);
unsigned char convert_affine_scev (struct loop *, tree, tree *, tree *, gimple, unsigned char);

unsigned char nowrap_type_p (tree);
enum ev_direction {EV_DIR_GROWS, EV_DIR_DECREASES, EV_DIR_UNKNOWN};
enum ev_direction scev_direction (const_tree);

void free_numbers_of_iterations_estimates (void);
void free_numbers_of_iterations_estimates_loop (struct loop *);
void rewrite_into_loop_closed_ssa (bitmap, unsigned);
void verify_loop_closed_ssa (unsigned char);
unsigned char for_each_index (tree *, unsigned char (*) (tree, tree *, void *), void *);
void create_iv (tree, tree, tree, struct loop *, gimple_stmt_iterator *, unsigned char,
  tree *, tree *);
basic_block split_loop_exit_edge (edge);
void standard_iv_increment_position (struct loop *, gimple_stmt_iterator *,
         unsigned char *);
basic_block ip_end_pos (struct loop *);
basic_block ip_normal_pos (struct loop *);
unsigned char gimple_duplicate_loop_to_header_edge (struct loop *, edge,
      unsigned int, sbitmap,
      edge, VEC_edge_heap **,
      int);
struct loop *slpeel_tree_duplicate_loop_to_edge_cfg (struct loop *, edge);
void rename_variables_in_loop (struct loop *);
void rename_variables_in_bb (basic_block bb);
struct loop *tree_ssa_loop_version (struct loop *, tree,
        basic_block *);
tree expand_simple_operations (tree);
void substitute_in_loop_info (struct loop *, tree, tree);
edge single_dom_exit (struct loop *);
unsigned char can_unroll_loop_p (struct loop *loop, unsigned factor,
   struct tree_niter_desc *niter);
void tree_unroll_loop (struct loop *, unsigned,
         edge, struct tree_niter_desc *);
typedef void (*transform_callback)(struct loop *, void *);
void tree_transform_and_unroll_loop (struct loop *, unsigned,
         edge, struct tree_niter_desc *,
         transform_callback, void *);
unsigned char contains_abnormal_ssa_name_p (tree);
unsigned char stmt_dominates_stmt_p (gimple, gimple);
void mark_virtual_ops_for_renaming (gimple);


void mark_virtual_phi_result_for_renaming (gimple);


extern void threadedge_initialize_values (void);
extern void threadedge_finalize_values (void);
extern VEC_tree_heap *ssa_name_values;




extern void set_ssa_name_value (tree, tree);
extern unsigned char potentially_threadable_block (basic_block);
extern void thread_across_edge (gimple, edge, unsigned char,
    VEC_tree_heap **, tree (*) (gimple, gimple));




enum move_pos
  {
    MOVE_IMPOSSIBLE,
    MOVE_PRESERVE_EXECUTION,

    MOVE_POSSIBLE
  };
extern enum move_pos movement_possibility (gimple);
char *get_lsm_tmp_name (tree, unsigned);


static void set_is_used (tree);
static unsigned char unmodifiable_var_p (const_tree);
static unsigned char ref_contains_array_ref (const_tree);


extern void make_eh_edges (gimple);
extern unsigned char make_eh_dispatch_edges (gimple);
extern edge redirect_eh_edge (edge, basic_block);
extern void redirect_eh_dispatch_edge (gimple, edge, basic_block);
extern unsigned char tree_could_trap_p (tree);
extern unsigned char operation_could_trap_helper_p (enum tree_code, unsigned char, unsigned char, unsigned char,
        unsigned char, tree, unsigned char *);
extern unsigned char operation_could_trap_p (enum tree_code, unsigned char, unsigned char, tree);
extern unsigned char stmt_could_throw_p (gimple);
extern unsigned char tree_could_throw_p (tree);
extern unsigned char stmt_can_throw_internal (gimple);
extern unsigned char stmt_can_throw_external (gimple);
extern void add_stmt_to_eh_lp_fn (struct function *, gimple, int);
extern void add_stmt_to_eh_lp (gimple, int);
extern unsigned char remove_stmt_from_eh_lp (gimple);
extern unsigned char remove_stmt_from_eh_lp_fn (struct function *, gimple);
extern int lookup_stmt_eh_lp_fn (struct function *, gimple);
extern int lookup_stmt_eh_lp (gimple);
extern unsigned char maybe_clean_eh_stmt_fn (struct function *, gimple);
extern unsigned char maybe_clean_eh_stmt (gimple);
extern unsigned char maybe_clean_or_replace_eh_stmt (gimple, gimple);
extern unsigned char maybe_duplicate_eh_stmt_fn (struct function *, gimple,
     struct function *, gimple,
     struct pointer_map_t *, int);
extern unsigned char maybe_duplicate_eh_stmt (gimple, gimple);
extern unsigned char verify_eh_edges (gimple);
extern unsigned char verify_eh_dispatch_edge (gimple);


struct pre_expr_d;
void add_to_value (unsigned int, struct pre_expr_d *);
void debug_value_expressions (unsigned int);
void print_value_expressions (FILE *, unsigned int);


unsigned char is_hidden_global_store (gimple);


extern void linear_transform_loops (void);
extern unsigned perfect_loop_nest_depth (struct loop *);


extern void graphite_transform_loops (void);


extern void tree_check_data_deps (void);


unsigned char expr_invariant_in_loop_p (struct loop *, tree);
unsigned char stmt_invariant_in_loop_p (struct loop *, gimple);
unsigned char multiplier_allowed_in_address_p (long long, enum machine_mode,
          addr_space_t);
unsigned multiply_by_cost (long long, enum machine_mode, unsigned char);
unsigned char may_be_nonaddressable_p (tree expr);


extern unsigned char thread_through_all_blocks (unsigned char);
extern void register_jump_thread (edge, edge);


tree force_gimple_operand_1 (tree, gimple_seq *, gimple_predicate, tree);
tree force_gimple_operand (tree, gimple_seq *, unsigned char, tree);
tree force_gimple_operand_gsi_1 (gimple_stmt_iterator *, tree,
     gimple_predicate, tree,
     unsigned char, enum gsi_iterator_update);
tree force_gimple_operand_gsi (gimple_stmt_iterator *, tree, unsigned char, tree,
          unsigned char, enum gsi_iterator_update);
tree gimple_fold_indirect_ref (tree);


extern void remove_unused_locals (void);
extern void dump_scope_blocks (FILE *, int);
extern void debug_scope_blocks (int);
extern void debug_scope_block (tree, int);





struct mem_address
{
  tree symbol, base, index, step, offset;
};

struct affine_tree_combination;
tree create_mem_ref (gimple_stmt_iterator *, tree,
       struct affine_tree_combination *, tree, tree, tree, unsigned char);
rtx addr_for_mem_ref (struct mem_address *, addr_space_t, unsigned char);
void get_address_description (tree, struct mem_address *);
tree maybe_fold_tmr (tree);

unsigned int execute_free_datastructures (void);
unsigned int execute_fixup_cfg (void);
unsigned char fixup_noreturn_call (gimple stmt);


void warn_function_noreturn (tree);


unsigned char stmt_is_replaceable_p (gimple);

