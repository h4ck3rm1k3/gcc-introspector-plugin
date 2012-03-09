make[1]: Entering directory `/home/mdupont/experiments/introspector/plugin/firstplugin/inline/_Inline/build/GCC_pm_ffd8'
/usr/bin/perl /usr/local/share/perl/5.12.4/ExtUtils/xsubpp  -typemap "/usr/share/perl/5.12/ExtUtils/typemap"   GCC_pm_ffd8.xs > GCC_pm_ffd8.xsc && mv GCC_pm_ffd8.xsc GCC_pm_ffd8.c
cc -c  -I"/home/mdupont/experiments/introspector/plugin/firstplugin/inline" -I/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ -save-temps --verbose -O2 -g   -DVERSION=\"0.00\" -DXS_VERSION=\"0.00\" -fPIC "-I/usr/lib/perl/5.12/CORE"   GCC_pm_ffd8.c
Using built-in specs.
COLLECT_GCC=/usr/bin/gcc-4.6.real
COLLECT_LTO_WRAPPER=/usr/lib/gcc/i686-linux-gnu/4.6.1/lto-wrapper
Target: i686-linux-gnu
Configured with: ../src/configure -v --with-pkgversion='Ubuntu/Linaro 4.6.1-9ubuntu3' --with-bugurl=file:///usr/share/doc/gcc-4.6/README.Bugs --enable-languages=c,c++,fortran,objc,obj-c++,go --prefix=/usr --program-suffix=-4.6 --enable-shared --enable-linker-build-id --with-system-zlib --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --with-gxx-include-dir=/usr/include/c++/4.6 --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --enable-plugin --enable-objc-gc --enable-targets=all --disable-werror --with-arch-32=i686 --with-tune=generic --enable-checking=release --build=i686-linux-gnu --host=i686-linux-gnu --target=i686-linux-gnu
Thread model: posix
gcc version 4.6.1 (Ubuntu/Linaro 4.6.1-9ubuntu3) 
COLLECT_GCC_OPTIONS='-c' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/inline' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/' '-save-temps' '-v' '-O2' '-g' '-D' 'VERSION="0.00"' '-D' 'XS_VERSION="0.00"' '-fPIC' '-I' '/usr/lib/perl/5.12/CORE' '-mtune=generic' '-march=i686'
 /usr/lib/gcc/i686-linux-gnu/4.6.1/cc1 -E -quiet -v -I /home/mdupont/experiments/introspector/plugin/firstplugin/inline -I /home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ -I /usr/lib/perl/5.12/CORE -imultilib . -imultiarch i386-linux-gnu -D VERSION="0.00" -D XS_VERSION="0.00" GCC_pm_ffd8.c -mtune=generic -march=i686 -fPIC -g -fworking-directory -O2 -fpch-preprocess -fstack-protector -o GCC_pm_ffd8.i
ignoring nonexistent directory "/usr/local/include/i386-linux-gnu"
ignoring nonexistent directory "/usr/lib/gcc/i686-linux-gnu/4.6.1/../../../../i686-linux-gnu/include"
#include "..." search starts here:
#include <...> search starts here:
 /home/mdupont/experiments/introspector/plugin/firstplugin/inline
 /home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/
 /usr/lib/perl/5.12/CORE
 /usr/lib/gcc/i686-linux-gnu/4.6.1/include
 /usr/local/include
 /usr/lib/gcc/i686-linux-gnu/4.6.1/include-fixed
 /usr/include/i386-linux-gnu
 /usr/include
End of search list.
In file included from /home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/gcc-plugin.h:28:0,
                 from /home/mdupont/experiments/introspector/plugin/firstplugin/inline/gcc.h:2,
                 from GCC_pm_ffd8.xs:5:
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/system.h:787:54: warning: poisoning existing macro "BYTEORDER" [enabled by default]
COLLECT_GCC_OPTIONS='-c' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/inline' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/' '-save-temps' '-v' '-O2' '-g' '-D' 'VERSION="0.00"' '-D' 'XS_VERSION="0.00"' '-fPIC' '-I' '/usr/lib/perl/5.12/CORE' '-mtune=generic' '-march=i686'
 /usr/lib/gcc/i686-linux-gnu/4.6.1/cc1 -fpreprocessed GCC_pm_ffd8.i -quiet -dumpbase GCC_pm_ffd8.c -mtune=generic -march=i686 -auxbase GCC_pm_ffd8 -g -O2 -version -fPIC -fstack-protector -o GCC_pm_ffd8.s
GNU C (Ubuntu/Linaro 4.6.1-9ubuntu3) version 4.6.1 (i686-linux-gnu)
	compiled by GNU C version 4.6.1, GMP version 5.0.1, MPFR version 3.0.1-p3, MPC version 0.9
GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
GNU C (Ubuntu/Linaro 4.6.1-9ubuntu3) version 4.6.1 (i686-linux-gnu)
	compiled by GNU C version 4.6.1, GMP version 5.0.1, MPFR version 3.0.1-p3, MPC version 0.9
GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
Compiler executable checksum: 4563c158c7f73de3aa3de4c02c58d3f9
GCC_pm_ffd8.xs:7:6: error: nested redefinition of 'enum tree_code'
GCC_pm_ffd8.xs:7:6: error: redeclaration of 'enum tree_code'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:42:6: note: originally defined here
GCC_pm_ffd8.xs:8:1: error: redeclaration of enumerator 'ERROR_MARK'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:42:1: note: previous definition of 'ERROR_MARK' was here
GCC_pm_ffd8.xs:9:1: error: redeclaration of enumerator 'IDENTIFIER_NODE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:48:1: note: previous definition of 'IDENTIFIER_NODE' was here
GCC_pm_ffd8.xs:10:1: error: redeclaration of enumerator 'TREE_LIST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:55:1: note: previous definition of 'TREE_LIST' was here
GCC_pm_ffd8.xs:11:1: error: redeclaration of enumerator 'TREE_VEC'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:58:1: note: previous definition of 'TREE_VEC' was here
GCC_pm_ffd8.xs:12:1: error: redeclaration of enumerator 'GCC_BLOCK'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:79:1: note: previous definition of 'GCC_BLOCK' was here
GCC_pm_ffd8.xs:13:1: error: redeclaration of enumerator 'OFFSET_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:123:1: note: previous definition of 'OFFSET_TYPE' was here
GCC_pm_ffd8.xs:14:1: error: redeclaration of enumerator 'ENUMERAL_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:136:1: note: previous definition of 'ENUMERAL_TYPE' was here
GCC_pm_ffd8.xs:15:1: error: redeclaration of enumerator 'BOOLEAN_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:140:1: note: previous definition of 'BOOLEAN_TYPE' was here
GCC_pm_ffd8.xs:16:1: error: redeclaration of enumerator 'INTEGER_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:150:1: note: previous definition of 'INTEGER_TYPE' was here
GCC_pm_ffd8.xs:17:1: error: redeclaration of enumerator 'REAL_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:154:1: note: previous definition of 'REAL_TYPE' was here
GCC_pm_ffd8.xs:18:1: error: redeclaration of enumerator 'POINTER_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:163:1: note: previous definition of 'POINTER_TYPE' was here
GCC_pm_ffd8.xs:19:1: error: redeclaration of enumerator 'REFERENCE_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:167:1: note: previous definition of 'REFERENCE_TYPE' was here
GCC_pm_ffd8.xs:22:1: error: redeclaration of enumerator 'NULLPTR_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:170:1: note: previous definition of 'NULLPTR_TYPE' was here
GCC_pm_ffd8.xs:27:1: error: redeclaration of enumerator 'FIXED_POINT_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:175:1: note: previous definition of 'FIXED_POINT_TYPE' was here
GCC_pm_ffd8.xs:29:1: error: redeclaration of enumerator 'COMPLEX_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:184:1: note: previous definition of 'COMPLEX_TYPE' was here
GCC_pm_ffd8.xs:34:1: error: redeclaration of enumerator 'VECTOR_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:189:1: note: previous definition of 'VECTOR_TYPE' was here
GCC_pm_ffd8.xs:36:1: error: redeclaration of enumerator 'ARRAY_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:205:1: note: previous definition of 'ARRAY_TYPE' was here
GCC_pm_ffd8.xs:38:1: error: redeclaration of enumerator 'RECORD_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:215:1: note: previous definition of 'RECORD_TYPE' was here
GCC_pm_ffd8.xs:44:1: error: redeclaration of enumerator 'UNION_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:221:1: note: previous definition of 'UNION_TYPE' was here
GCC_pm_ffd8.xs:50:1: error: redeclaration of enumerator 'QUAL_UNION_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:227:1: note: previous definition of 'QUAL_UNION_TYPE' was here
GCC_pm_ffd8.xs:57:1: error: redeclaration of enumerator 'VOID_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:234:1: note: previous definition of 'VOID_TYPE' was here
GCC_pm_ffd8.xs:65:1: error: redeclaration of enumerator 'FUNCTION_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:242:1: note: previous definition of 'FUNCTION_TYPE' was here
GCC_pm_ffd8.xs:72:1: error: redeclaration of enumerator 'METHOD_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:249:1: note: previous definition of 'METHOD_TYPE' was here
GCC_pm_ffd8.xs:77:1: error: stray '`' in program
GCC_pm_ffd8.xs:78:1: error: redeclaration of enumerator 'LANG_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:255:1: note: previous definition of 'LANG_TYPE' was here
GCC_pm_ffd8.xs:80:1: error: redeclaration of enumerator 'INTEGER_CST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:268:1: note: previous definition of 'INTEGER_CST' was here
GCC_pm_ffd8.xs:83:1: error: redeclaration of enumerator 'REAL_CST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:271:1: note: previous definition of 'REAL_CST' was here
GCC_pm_ffd8.xs:86:1: error: redeclaration of enumerator 'FIXED_CST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:274:1: note: previous definition of 'FIXED_CST' was here
GCC_pm_ffd8.xs:90:1: error: redeclaration of enumerator 'COMPLEX_CST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:278:1: note: previous definition of 'COMPLEX_CST' was here
GCC_pm_ffd8.xs:93:1: error: redeclaration of enumerator 'VECTOR_CST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:281:1: note: previous definition of 'VECTOR_CST' was here
GCC_pm_ffd8.xs:96:1: error: redeclaration of enumerator 'STRING_CST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:284:1: note: previous definition of 'STRING_CST' was here
GCC_pm_ffd8.xs:98:1: error: redeclaration of enumerator 'FUNCTION_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:344:1: note: previous definition of 'FUNCTION_DECL' was here
GCC_pm_ffd8.xs:99:1: error: redeclaration of enumerator 'LABEL_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:345:1: note: previous definition of 'LABEL_DECL' was here
GCC_pm_ffd8.xs:104:1: error: redeclaration of enumerator 'FIELD_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:350:1: note: previous definition of 'FIELD_DECL' was here
GCC_pm_ffd8.xs:105:1: error: redeclaration of enumerator 'VAR_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:351:1: note: previous definition of 'VAR_DECL' was here
GCC_pm_ffd8.xs:106:1: error: redeclaration of enumerator 'CONST_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:352:1: note: previous definition of 'CONST_DECL' was here
GCC_pm_ffd8.xs:107:1: error: redeclaration of enumerator 'PARM_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:353:1: note: previous definition of 'PARM_DECL' was here
GCC_pm_ffd8.xs:108:1: error: redeclaration of enumerator 'TYPE_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:354:1: note: previous definition of 'TYPE_DECL' was here
GCC_pm_ffd8.xs:109:1: error: redeclaration of enumerator 'RESULT_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:355:1: note: previous definition of 'RESULT_DECL' was here
GCC_pm_ffd8.xs:113:1: error: redeclaration of enumerator 'DEBUG_EXPR_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:359:1: note: previous definition of 'DEBUG_EXPR_DECL' was here
GCC_pm_ffd8.xs:117:1: error: redeclaration of enumerator 'NAMESPACE_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:363:1: note: previous definition of 'NAMESPACE_DECL' was here
GCC_pm_ffd8.xs:119:1: error: redeclaration of enumerator 'IMPORTED_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:374:1: note: previous definition of 'IMPORTED_DECL' was here
GCC_pm_ffd8.xs:123:1: error: redeclaration of enumerator 'TRANSLATION_UNIT_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:378:1: note: previous definition of 'TRANSLATION_UNIT_DECL' was here
GCC_pm_ffd8.xs:125:1: error: redeclaration of enumerator 'COMPONENT_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:391:1: note: previous definition of 'COMPONENT_REF' was here
GCC_pm_ffd8.xs:127:1: error: redeclaration of enumerator 'BIT_FIELD_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:401:1: note: previous definition of 'BIT_FIELD_REF' was here
GCC_pm_ffd8.xs:131:1: error: redeclaration of enumerator 'REALPART_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:405:1: note: previous definition of 'REALPART_EXPR' was here
GCC_pm_ffd8.xs:132:1: error: redeclaration of enumerator 'IMAGPART_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:406:1: note: previous definition of 'IMAGPART_EXPR' was here
GCC_pm_ffd8.xs:139:1: error: redeclaration of enumerator 'ARRAY_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:413:1: note: previous definition of 'ARRAY_REF' was here
GCC_pm_ffd8.xs:144:1: error: redeclaration of enumerator 'ARRAY_RANGE_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:418:1: note: previous definition of 'ARRAY_RANGE_REF' was here
GCC_pm_ffd8.xs:147:1: error: redeclaration of enumerator 'INDIRECT_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:421:1: note: previous definition of 'INDIRECT_REF' was here
GCC_pm_ffd8.xs:149:1: error: redeclaration of enumerator 'OBJ_TYPE_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:430:1: note: previous definition of 'OBJ_TYPE_REF' was here
GCC_pm_ffd8.xs:151:1: error: redeclaration of enumerator 'CONSTRUCTOR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:446:1: note: previous definition of 'CONSTRUCTOR' was here
GCC_pm_ffd8.xs:153:1: error: redeclaration of enumerator 'COMPOUND_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:456:1: note: previous definition of 'COMPOUND_EXPR' was here
GCC_pm_ffd8.xs:156:1: error: redeclaration of enumerator 'MODIFY_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:459:1: note: previous definition of 'MODIFY_EXPR' was here
GCC_pm_ffd8.xs:161:1: error: redeclaration of enumerator 'INIT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:464:1: note: previous definition of 'INIT_EXPR' was here
GCC_pm_ffd8.xs:169:1: error: redeclaration of enumerator 'TARGET_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:472:1: note: previous definition of 'TARGET_EXPR' was here
GCC_pm_ffd8.xs:171:1: error: redeclaration of enumerator 'COND_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:486:1: note: previous definition of 'COND_EXPR' was here
GCC_pm_ffd8.xs:173:1: error: redeclaration of enumerator 'VEC_COND_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:498:1: note: previous definition of 'VEC_COND_EXPR' was here
GCC_pm_ffd8.xs:175:1: error: redeclaration of enumerator 'BIND_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:521:1: note: previous definition of 'BIND_EXPR' was here
GCC_pm_ffd8.xs:183:1: error: redeclaration of enumerator 'CALL_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:529:1: note: previous definition of 'CALL_EXPR' was here
GCC_pm_ffd8.xs:190:1: error: redeclaration of enumerator 'WITH_CLEANUP_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:536:1: note: previous definition of 'WITH_CLEANUP_EXPR' was here
GCC_pm_ffd8.xs:192:1: error: redeclaration of enumerator 'CLEANUP_POINT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:553:1: note: previous definition of 'CLEANUP_POINT_EXPR' was here
GCC_pm_ffd8.xs:194:1: error: redeclaration of enumerator 'PLACEHOLDER_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:605:1: note: previous definition of 'PLACEHOLDER_EXPR' was here
GCC_pm_ffd8.xs:197:1: error: redeclaration of enumerator 'PLUS_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:608:1: note: previous definition of 'PLUS_EXPR' was here
GCC_pm_ffd8.xs:198:1: error: redeclaration of enumerator 'MINUS_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:609:1: note: previous definition of 'MINUS_EXPR' was here
GCC_pm_ffd8.xs:199:1: error: redeclaration of enumerator 'MULT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:610:1: note: previous definition of 'MULT_EXPR' was here
GCC_pm_ffd8.xs:203:1: error: redeclaration of enumerator 'POINTER_PLUS_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:614:1: note: previous definition of 'POINTER_PLUS_EXPR' was here
GCC_pm_ffd8.xs:206:1: error: redeclaration of enumerator 'TRUNC_DIV_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:617:1: note: previous definition of 'TRUNC_DIV_EXPR' was here
GCC_pm_ffd8.xs:209:1: error: redeclaration of enumerator 'CEIL_DIV_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:620:1: note: previous definition of 'CEIL_DIV_EXPR' was here
GCC_pm_ffd8.xs:212:1: error: redeclaration of enumerator 'FLOOR_DIV_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:623:1: note: previous definition of 'FLOOR_DIV_EXPR' was here
GCC_pm_ffd8.xs:215:1: error: redeclaration of enumerator 'ROUND_DIV_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:626:1: note: previous definition of 'ROUND_DIV_EXPR' was here
GCC_pm_ffd8.xs:218:1: error: redeclaration of enumerator 'TRUNC_MOD_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:629:1: note: previous definition of 'TRUNC_MOD_EXPR' was here
GCC_pm_ffd8.xs:219:1: error: redeclaration of enumerator 'CEIL_MOD_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:630:1: note: previous definition of 'CEIL_MOD_EXPR' was here
GCC_pm_ffd8.xs:220:1: error: redeclaration of enumerator 'FLOOR_MOD_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:631:1: note: previous definition of 'FLOOR_MOD_EXPR' was here
GCC_pm_ffd8.xs:221:1: error: redeclaration of enumerator 'ROUND_MOD_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:632:1: note: previous definition of 'ROUND_MOD_EXPR' was here
GCC_pm_ffd8.xs:224:1: error: redeclaration of enumerator 'RDIV_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:635:1: note: previous definition of 'RDIV_EXPR' was here
GCC_pm_ffd8.xs:228:1: error: redeclaration of enumerator 'EXACT_DIV_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:639:1: note: previous definition of 'EXACT_DIV_EXPR' was here
GCC_pm_ffd8.xs:231:1: error: redeclaration of enumerator 'FIX_TRUNC_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:642:1: note: previous definition of 'FIX_TRUNC_EXPR' was here
GCC_pm_ffd8.xs:234:1: error: redeclaration of enumerator 'FLOAT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:645:1: note: previous definition of 'FLOAT_EXPR' was here
GCC_pm_ffd8.xs:237:1: error: redeclaration of enumerator 'NEGATE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:648:1: note: previous definition of 'NEGATE_EXPR' was here
GCC_pm_ffd8.xs:242:1: error: redeclaration of enumerator 'MIN_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:653:1: note: previous definition of 'MIN_EXPR' was here
GCC_pm_ffd8.xs:243:1: error: redeclaration of enumerator 'MAX_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:654:1: note: previous definition of 'MAX_EXPR' was here
GCC_pm_ffd8.xs:249:1: error: redeclaration of enumerator 'ABS_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:660:1: note: previous definition of 'ABS_EXPR' was here
GCC_pm_ffd8.xs:251:1: error: redeclaration of enumerator 'LSHIFT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:675:1: note: previous definition of 'LSHIFT_EXPR' was here
GCC_pm_ffd8.xs:252:1: error: redeclaration of enumerator 'RSHIFT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:676:1: note: previous definition of 'RSHIFT_EXPR' was here
GCC_pm_ffd8.xs:253:1: error: redeclaration of enumerator 'LROTATE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:677:1: note: previous definition of 'LROTATE_EXPR' was here
GCC_pm_ffd8.xs:254:1: error: redeclaration of enumerator 'RROTATE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:678:1: note: previous definition of 'RROTATE_EXPR' was here
GCC_pm_ffd8.xs:257:1: error: redeclaration of enumerator 'BIT_IOR_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:681:1: note: previous definition of 'BIT_IOR_EXPR' was here
GCC_pm_ffd8.xs:258:1: error: redeclaration of enumerator 'BIT_XOR_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:682:1: note: previous definition of 'BIT_XOR_EXPR' was here
GCC_pm_ffd8.xs:259:1: error: redeclaration of enumerator 'BIT_AND_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:683:1: note: previous definition of 'BIT_AND_EXPR' was here
GCC_pm_ffd8.xs:260:1: error: redeclaration of enumerator 'BIT_NOT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:684:1: note: previous definition of 'BIT_NOT_EXPR' was here
GCC_pm_ffd8.xs:262:1: error: redeclaration of enumerator 'TRUTH_ANDIF_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:695:1: note: previous definition of 'TRUTH_ANDIF_EXPR' was here
GCC_pm_ffd8.xs:263:1: error: redeclaration of enumerator 'TRUTH_ORIF_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:696:1: note: previous definition of 'TRUTH_ORIF_EXPR' was here
GCC_pm_ffd8.xs:264:1: error: redeclaration of enumerator 'TRUTH_AND_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:697:1: note: previous definition of 'TRUTH_AND_EXPR' was here
GCC_pm_ffd8.xs:265:1: error: redeclaration of enumerator 'TRUTH_OR_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:698:1: note: previous definition of 'TRUTH_OR_EXPR' was here
GCC_pm_ffd8.xs:266:1: error: redeclaration of enumerator 'TRUTH_XOR_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:699:1: note: previous definition of 'TRUTH_XOR_EXPR' was here
GCC_pm_ffd8.xs:267:1: error: redeclaration of enumerator 'TRUTH_NOT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:700:1: note: previous definition of 'TRUTH_NOT_EXPR' was here
GCC_pm_ffd8.xs:275:1: error: redeclaration of enumerator 'LT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:708:1: note: previous definition of 'LT_EXPR' was here
GCC_pm_ffd8.xs:276:1: error: redeclaration of enumerator 'LE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:709:1: note: previous definition of 'LE_EXPR' was here
GCC_pm_ffd8.xs:277:1: error: redeclaration of enumerator 'GT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:710:1: note: previous definition of 'GT_EXPR' was here
GCC_pm_ffd8.xs:278:1: error: redeclaration of enumerator 'GE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:711:1: note: previous definition of 'GE_EXPR' was here
GCC_pm_ffd8.xs:279:1: error: redeclaration of enumerator 'EQ_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:712:1: note: previous definition of 'EQ_EXPR' was here
GCC_pm_ffd8.xs:280:1: error: redeclaration of enumerator 'NE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:713:1: note: previous definition of 'NE_EXPR' was here
GCC_pm_ffd8.xs:283:1: error: redeclaration of enumerator 'UNORDERED_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:716:1: note: previous definition of 'UNORDERED_EXPR' was here
GCC_pm_ffd8.xs:284:1: error: redeclaration of enumerator 'ORDERED_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:717:1: note: previous definition of 'ORDERED_EXPR' was here
GCC_pm_ffd8.xs:287:1: error: redeclaration of enumerator 'UNLT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:720:1: note: previous definition of 'UNLT_EXPR' was here
GCC_pm_ffd8.xs:288:1: error: redeclaration of enumerator 'UNLE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:721:1: note: previous definition of 'UNLE_EXPR' was here
GCC_pm_ffd8.xs:289:1: error: redeclaration of enumerator 'UNGT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:722:1: note: previous definition of 'UNGT_EXPR' was here
GCC_pm_ffd8.xs:290:1: error: redeclaration of enumerator 'UNGE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:723:1: note: previous definition of 'UNGE_EXPR' was here
GCC_pm_ffd8.xs:291:1: error: redeclaration of enumerator 'UNEQ_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:724:1: note: previous definition of 'UNEQ_EXPR' was here
GCC_pm_ffd8.xs:294:1: error: redeclaration of enumerator 'LTGT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:727:1: note: previous definition of 'LTGT_EXPR' was here
GCC_pm_ffd8.xs:296:1: error: redeclaration of enumerator 'RANGE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:729:1: note: previous definition of 'RANGE_EXPR' was here
GCC_pm_ffd8.xs:300:1: error: redeclaration of enumerator 'PAREN_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:733:1: note: previous definition of 'PAREN_EXPR' was here
GCC_pm_ffd8.xs:305:1: error: redeclaration of enumerator 'CONVERT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:738:1: note: previous definition of 'CONVERT_EXPR' was here
GCC_pm_ffd8.xs:309:1: error: redeclaration of enumerator 'ADDR_SPACE_CONVERT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:742:1: note: previous definition of 'ADDR_SPACE_CONVERT_EXPR' was here
GCC_pm_ffd8.xs:314:1: error: redeclaration of enumerator 'FIXED_CONVERT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:747:1: note: previous definition of 'FIXED_CONVERT_EXPR' was here
GCC_pm_ffd8.xs:317:1: error: redeclaration of enumerator 'NOP_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:750:1: note: previous definition of 'NOP_EXPR' was here
GCC_pm_ffd8.xs:320:1: error: redeclaration of enumerator 'NON_LVALUE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:753:1: note: previous definition of 'NON_LVALUE_EXPR' was here
GCC_pm_ffd8.xs:322:1: error: redeclaration of enumerator 'VIEW_CONVERT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:765:1: note: previous definition of 'VIEW_CONVERT_EXPR' was here
GCC_pm_ffd8.xs:329:1: error: redeclaration of enumerator 'COMPOUND_LITERAL_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:772:1: note: previous definition of 'COMPOUND_LITERAL_EXPR' was here
GCC_pm_ffd8.xs:334:1: error: redeclaration of enumerator 'SAVE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:777:1: note: previous definition of 'SAVE_EXPR' was here
GCC_pm_ffd8.xs:338:1: error: redeclaration of enumerator 'ADDR_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:781:1: note: previous definition of 'ADDR_EXPR' was here
GCC_pm_ffd8.xs:342:1: error: redeclaration of enumerator 'FDESC_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:785:1: note: previous definition of 'FDESC_EXPR' was here
GCC_pm_ffd8.xs:346:1: error: redeclaration of enumerator 'COMPLEX_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:789:1: note: previous definition of 'COMPLEX_EXPR' was here
GCC_pm_ffd8.xs:349:1: error: redeclaration of enumerator 'CONJ_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:792:1: note: previous definition of 'CONJ_EXPR' was here
GCC_pm_ffd8.xs:354:1: error: redeclaration of enumerator 'PREDECREMENT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:797:1: note: previous definition of 'PREDECREMENT_EXPR' was here
GCC_pm_ffd8.xs:355:1: error: redeclaration of enumerator 'PREINCREMENT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:798:1: note: previous definition of 'PREINCREMENT_EXPR' was here
GCC_pm_ffd8.xs:356:1: error: redeclaration of enumerator 'POSTDECREMENT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:799:1: note: previous definition of 'POSTDECREMENT_EXPR' was here
GCC_pm_ffd8.xs:357:1: error: redeclaration of enumerator 'POSTINCREMENT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:800:1: note: previous definition of 'POSTINCREMENT_EXPR' was here
GCC_pm_ffd8.xs:360:1: error: redeclaration of enumerator 'VA_ARG_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:803:1: note: previous definition of 'VA_ARG_EXPR' was here
GCC_pm_ffd8.xs:367:1: error: redeclaration of enumerator 'TRY_CATCH_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:810:1: note: previous definition of 'TRY_CATCH_EXPR' was here
GCC_pm_ffd8.xs:372:1: error: redeclaration of enumerator 'TRY_FINALLY_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:815:1: note: previous definition of 'TRY_FINALLY_EXPR' was here
GCC_pm_ffd8.xs:378:1: error: redeclaration of enumerator 'DECL_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:821:1: note: previous definition of 'DECL_EXPR' was here
GCC_pm_ffd8.xs:383:1: error: redeclaration of enumerator 'LABEL_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:826:1: note: previous definition of 'LABEL_EXPR' was here
GCC_pm_ffd8.xs:387:1: error: redeclaration of enumerator 'GOTO_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:830:1: note: previous definition of 'GOTO_EXPR' was here
GCC_pm_ffd8.xs:394:1: error: redeclaration of enumerator 'RETURN_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:837:1: note: previous definition of 'RETURN_EXPR' was here
GCC_pm_ffd8.xs:398:1: error: redeclaration of enumerator 'EXIT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:841:1: note: previous definition of 'EXIT_EXPR' was here
GCC_pm_ffd8.xs:403:1: error: redeclaration of enumerator 'LOOP_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:846:1: note: previous definition of 'LOOP_EXPR' was here
GCC_pm_ffd8.xs:405:1: error: redeclaration of enumerator 'SWITCH_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:860:1: note: previous definition of 'SWITCH_EXPR' was here
GCC_pm_ffd8.xs:411:1: error: redeclaration of enumerator 'CASE_LABEL_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:866:1: note: previous definition of 'CASE_LABEL_EXPR' was here
GCC_pm_ffd8.xs:418:1: error: redeclaration of enumerator 'ASM_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:873:1: note: previous definition of 'ASM_EXPR' was here
GCC_pm_ffd8.xs:423:1: error: redeclaration of enumerator 'SSA_NAME'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:878:1: note: previous definition of 'SSA_NAME' was here
GCC_pm_ffd8.xs:427:1: error: redeclaration of enumerator 'CATCH_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:882:1: note: previous definition of 'CATCH_EXPR' was here
GCC_pm_ffd8.xs:433:1: error: redeclaration of enumerator 'EH_FILTER_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:888:1: note: previous definition of 'EH_FILTER_EXPR' was here
GCC_pm_ffd8.xs:437:1: error: redeclaration of enumerator 'SCEV_KNOWN'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:892:1: note: previous definition of 'SCEV_KNOWN' was here
GCC_pm_ffd8.xs:441:1: error: redeclaration of enumerator 'SCEV_NOT_KNOWN'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:896:1: note: previous definition of 'SCEV_NOT_KNOWN' was here
GCC_pm_ffd8.xs:445:1: error: redeclaration of enumerator 'POLYNOMIAL_CHREC'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:900:1: note: previous definition of 'POLYNOMIAL_CHREC' was here
GCC_pm_ffd8.xs:449:1: error: redeclaration of enumerator 'STATEMENT_LIST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:904:1: note: previous definition of 'STATEMENT_LIST' was here
GCC_pm_ffd8.xs:451:1: error: redeclaration of enumerator 'ASSERT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:923:1: note: previous definition of 'ASSERT_EXPR' was here
GCC_pm_ffd8.xs:455:1: error: redeclaration of enumerator 'TREE_BINFO'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:927:1: note: previous definition of 'TREE_BINFO' was here
GCC_pm_ffd8.xs:462:1: error: redeclaration of enumerator 'WITH_SIZE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:934:1: note: previous definition of 'WITH_SIZE_EXPR' was here
GCC_pm_ffd8.xs:464:1: error: redeclaration of enumerator 'REALIGN_LOAD_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:945:1: note: previous definition of 'REALIGN_LOAD_EXPR' was here
GCC_pm_ffd8.xs:466:1: error: redeclaration of enumerator 'TARGET_MEM_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:961:1: note: previous definition of 'TARGET_MEM_REF' was here
GCC_pm_ffd8.xs:468:1: error: redeclaration of enumerator 'MEM_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:971:1: note: previous definition of 'MEM_REF' was here
GCC_pm_ffd8.xs:476:1: error: redeclaration of enumerator 'OMP_PARALLEL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:979:1: note: previous definition of 'OMP_PARALLEL' was here
GCC_pm_ffd8.xs:482:1: error: redeclaration of enumerator 'OMP_TASK'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:985:1: note: previous definition of 'OMP_TASK' was here
GCC_pm_ffd8.xs:484:1: error: redeclaration of enumerator 'OMP_FOR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1006:1: note: previous definition of 'OMP_FOR' was here
GCC_pm_ffd8.xs:489:1: error: redeclaration of enumerator 'OMP_SECTIONS'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1011:1: note: previous definition of 'OMP_SECTIONS' was here
GCC_pm_ffd8.xs:494:1: error: redeclaration of enumerator 'OMP_SINGLE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1016:1: note: previous definition of 'OMP_SINGLE' was here
GCC_pm_ffd8.xs:498:1: error: redeclaration of enumerator 'OMP_SECTION'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1020:1: note: previous definition of 'OMP_SECTION' was here
GCC_pm_ffd8.xs:502:1: error: redeclaration of enumerator 'OMP_MASTER'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1024:1: note: previous definition of 'OMP_MASTER' was here
GCC_pm_ffd8.xs:506:1: error: redeclaration of enumerator 'OMP_ORDERED'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1028:1: note: previous definition of 'OMP_ORDERED' was here
GCC_pm_ffd8.xs:511:1: error: redeclaration of enumerator 'OMP_CRITICAL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1033:1: note: previous definition of 'OMP_CRITICAL' was here
GCC_pm_ffd8.xs:519:1: error: redeclaration of enumerator 'OMP_ATOMIC'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1041:1: note: previous definition of 'OMP_ATOMIC' was here
GCC_pm_ffd8.xs:522:1: error: redeclaration of enumerator 'OMP_CLAUSE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1044:1: note: previous definition of 'OMP_CLAUSE' was here
GCC_pm_ffd8.xs:530:1: error: redeclaration of enumerator 'REDUC_MAX_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1052:1: note: previous definition of 'REDUC_MAX_EXPR' was here
GCC_pm_ffd8.xs:531:1: error: redeclaration of enumerator 'REDUC_MIN_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1053:1: note: previous definition of 'REDUC_MIN_EXPR' was here
GCC_pm_ffd8.xs:532:1: error: redeclaration of enumerator 'REDUC_PLUS_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1054:1: note: previous definition of 'REDUC_PLUS_EXPR' was here
GCC_pm_ffd8.xs:534:1: error: redeclaration of enumerator 'DOT_PROD_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1065:1: note: previous definition of 'DOT_PROD_EXPR' was here
GCC_pm_ffd8.xs:536:1: error: redeclaration of enumerator 'WIDEN_SUM_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1074:1: note: previous definition of 'WIDEN_SUM_EXPR' was here
GCC_pm_ffd8.xs:543:1: error: redeclaration of enumerator 'WIDEN_MULT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1081:1: note: previous definition of 'WIDEN_MULT_EXPR' was here
GCC_pm_ffd8.xs:545:1: error: redeclaration of enumerator 'WIDEN_MULT_PLUS_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1090:1: note: previous definition of 'WIDEN_MULT_PLUS_EXPR' was here
GCC_pm_ffd8.xs:548:1: error: redeclaration of enumerator 'WIDEN_MULT_MINUS_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1093:1: note: previous definition of 'WIDEN_MULT_MINUS_EXPR' was here
GCC_pm_ffd8.xs:554:1: error: redeclaration of enumerator 'FMA_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1099:1: note: previous definition of 'FMA_EXPR' was here
GCC_pm_ffd8.xs:559:1: error: redeclaration of enumerator 'VEC_LSHIFT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1104:1: note: previous definition of 'VEC_LSHIFT_EXPR' was here
GCC_pm_ffd8.xs:560:1: error: redeclaration of enumerator 'VEC_RSHIFT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1105:1: note: previous definition of 'VEC_RSHIFT_EXPR' was here
GCC_pm_ffd8.xs:567:1: error: redeclaration of enumerator 'VEC_WIDEN_MULT_HI_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1112:1: note: previous definition of 'VEC_WIDEN_MULT_HI_EXPR' was here
GCC_pm_ffd8.xs:568:1: error: redeclaration of enumerator 'VEC_WIDEN_MULT_LO_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1113:1: note: previous definition of 'VEC_WIDEN_MULT_LO_EXPR' was here
GCC_pm_ffd8.xs:574:1: error: redeclaration of enumerator 'VEC_UNPACK_HI_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1119:1: note: previous definition of 'VEC_UNPACK_HI_EXPR' was here
GCC_pm_ffd8.xs:575:1: error: redeclaration of enumerator 'VEC_UNPACK_LO_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1120:1: note: previous definition of 'VEC_UNPACK_LO_EXPR' was here
GCC_pm_ffd8.xs:581:1: error: redeclaration of enumerator 'VEC_UNPACK_FLOAT_HI_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1126:1: note: previous definition of 'VEC_UNPACK_FLOAT_HI_EXPR' was here
GCC_pm_ffd8.xs:582:1: error: redeclaration of enumerator 'VEC_UNPACK_FLOAT_LO_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1127:1: note: previous definition of 'VEC_UNPACK_FLOAT_LO_EXPR' was here
GCC_pm_ffd8.xs:588:1: error: redeclaration of enumerator 'VEC_PACK_TRUNC_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1133:1: note: previous definition of 'VEC_PACK_TRUNC_EXPR' was here
GCC_pm_ffd8.xs:589:1: error: redeclaration of enumerator 'VEC_PACK_SAT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1134:1: note: previous definition of 'VEC_PACK_SAT_EXPR' was here
GCC_pm_ffd8.xs:595:1: error: redeclaration of enumerator 'VEC_PACK_FIX_TRUNC_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1140:1: note: previous definition of 'VEC_PACK_FIX_TRUNC_EXPR' was here
GCC_pm_ffd8.xs:598:1: error: redeclaration of enumerator 'VEC_EXTRACT_EVEN_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1143:1: note: previous definition of 'VEC_EXTRACT_EVEN_EXPR' was here
GCC_pm_ffd8.xs:599:1: error: redeclaration of enumerator 'VEC_EXTRACT_ODD_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1144:1: note: previous definition of 'VEC_EXTRACT_ODD_EXPR' was here
GCC_pm_ffd8.xs:602:1: error: redeclaration of enumerator 'VEC_INTERLEAVE_HIGH_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1147:1: note: previous definition of 'VEC_INTERLEAVE_HIGH_EXPR' was here
GCC_pm_ffd8.xs:603:1: error: redeclaration of enumerator 'VEC_INTERLEAVE_LOW_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1148:1: note: previous definition of 'VEC_INTERLEAVE_LOW_EXPR' was here
GCC_pm_ffd8.xs:610:1: error: redeclaration of enumerator 'PREDICT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1155:1: note: previous definition of 'PREDICT_EXPR' was here
GCC_pm_ffd8.xs:613:1: error: redeclaration of enumerator 'OPTIMIZATION_NODE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1158:1: note: previous definition of 'OPTIMIZATION_NODE' was here
GCC_pm_ffd8.xs:616:1: error: redeclaration of enumerator 'TARGET_OPTION_NODE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.def:1161:1: note: previous definition of 'TARGET_OPTION_NODE' was here
GCC_pm_ffd8.xs:618:1: error: redeclaration of enumerator 'LAST_AND_UNUSED_TREE_CODE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/all-tree.def:2:1: note: previous definition of 'LAST_AND_UNUSED_TREE_CODE' was here
GCC_pm_ffd8.xs:621:1: error: redeclaration of enumerator 'C_MAYBE_CONST_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/c-family/c-common.def:41:1: note: previous definition of 'C_MAYBE_CONST_EXPR' was here
GCC_pm_ffd8.xs:628:1: error: redeclaration of enumerator 'EXCESS_PRECISION_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/c-family/c-common.def:48:1: note: previous definition of 'EXCESS_PRECISION_EXPR' was here
GCC_pm_ffd8.xs:632:1: error: redeclaration of enumerator 'UNCONSTRAINED_ARRAY_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ada/gcc-interface/ada-tree.def:29:1: note: previous definition of 'UNCONSTRAINED_ARRAY_TYPE' was here
GCC_pm_ffd8.xs:638:1: error: redeclaration of enumerator 'UNCONSTRAINED_ARRAY_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ada/gcc-interface/ada-tree.def:35:1: note: previous definition of 'UNCONSTRAINED_ARRAY_REF' was here
GCC_pm_ffd8.xs:643:1: error: redeclaration of enumerator 'NULL_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ada/gcc-interface/ada-tree.def:40:1: note: previous definition of 'NULL_EXPR' was here
GCC_pm_ffd8.xs:647:1: error: redeclaration of enumerator 'PLUS_NOMOD_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ada/gcc-interface/ada-tree.def:44:1: note: previous definition of 'PLUS_NOMOD_EXPR' was here
GCC_pm_ffd8.xs:651:1: error: redeclaration of enumerator 'MINUS_NOMOD_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ada/gcc-interface/ada-tree.def:48:1: note: previous definition of 'MINUS_NOMOD_EXPR' was here
GCC_pm_ffd8.xs:656:1: error: redeclaration of enumerator 'ATTR_ADDR_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ada/gcc-interface/ada-tree.def:53:1: note: previous definition of 'ATTR_ADDR_EXPR' was here
GCC_pm_ffd8.xs:658:1: error: redeclaration of enumerator 'STMT_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ada/gcc-interface/ada-tree.def:62:1: note: previous definition of 'STMT_STMT' was here
GCC_pm_ffd8.xs:664:1: error: redeclaration of enumerator 'LOOP_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ada/gcc-interface/ada-tree.def:68:1: note: previous definition of 'LOOP_STMT' was here
GCC_pm_ffd8.xs:670:1: error: redeclaration of enumerator 'EXIT_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ada/gcc-interface/ada-tree.def:74:1: note: previous definition of 'EXIT_STMT' was here
GCC_pm_ffd8.xs:674:1: error: redeclaration of enumerator 'OFFSET_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:43:1: note: previous definition of 'OFFSET_REF' was here
GCC_pm_ffd8.xs:679:1: error: redeclaration of enumerator 'PTRMEM_CST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:48:1: note: previous definition of 'PTRMEM_CST' was here
GCC_pm_ffd8.xs:685:1: error: redeclaration of enumerator 'NEW_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:54:1: note: previous definition of 'NEW_EXPR' was here
GCC_pm_ffd8.xs:686:1: error: redeclaration of enumerator 'VEC_NEW_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:55:1: note: previous definition of 'VEC_NEW_EXPR' was here
GCC_pm_ffd8.xs:691:1: error: redeclaration of enumerator 'DELETE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:60:1: note: previous definition of 'DELETE_EXPR' was here
GCC_pm_ffd8.xs:692:1: error: redeclaration of enumerator 'VEC_DELETE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:61:1: note: previous definition of 'VEC_DELETE_EXPR' was here
GCC_pm_ffd8.xs:697:1: error: redeclaration of enumerator 'SCOPE_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:66:1: note: previous definition of 'SCOPE_REF' was here
GCC_pm_ffd8.xs:702:1: error: redeclaration of enumerator 'MEMBER_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:71:1: note: previous definition of 'MEMBER_REF' was here
GCC_pm_ffd8.xs:706:1: error: redeclaration of enumerator 'TYPE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:75:1: note: previous definition of 'TYPE_EXPR' was here
GCC_pm_ffd8.xs:713:1: error: redeclaration of enumerator 'AGGR_INIT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:82:1: note: previous definition of 'AGGR_INIT_EXPR' was here
GCC_pm_ffd8.xs:718:1: error: redeclaration of enumerator 'VEC_INIT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:87:1: note: previous definition of 'VEC_INIT_EXPR' was here
GCC_pm_ffd8.xs:722:1: error: redeclaration of enumerator 'THROW_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:91:1: note: previous definition of 'THROW_EXPR' was here
GCC_pm_ffd8.xs:726:1: error: redeclaration of enumerator 'EMPTY_CLASS_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:95:1: note: previous definition of 'EMPTY_CLASS_EXPR' was here
GCC_pm_ffd8.xs:728:1: error: redeclaration of enumerator 'BASELINK'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:109:1: note: previous definition of 'BASELINK' was here
GCC_pm_ffd8.xs:730:1: error: redeclaration of enumerator 'TEMPLATE_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:126:1: note: previous definition of 'TEMPLATE_DECL' was here
GCC_pm_ffd8.xs:732:1: error: redeclaration of enumerator 'TEMPLATE_PARM_INDEX'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:161:1: note: previous definition of 'TEMPLATE_PARM_INDEX' was here
GCC_pm_ffd8.xs:734:1: error: redeclaration of enumerator 'TEMPLATE_TEMPLATE_PARM'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:170:1: note: previous definition of 'TEMPLATE_TEMPLATE_PARM' was here
GCC_pm_ffd8.xs:736:1: error: redeclaration of enumerator 'TEMPLATE_TYPE_PARM'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:179:1: note: previous definition of 'TEMPLATE_TYPE_PARM' was here
GCC_pm_ffd8.xs:742:1: error: redeclaration of enumerator 'TYPENAME_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:185:1: note: previous definition of 'TYPENAME_TYPE' was here
GCC_pm_ffd8.xs:746:1: error: redeclaration of enumerator 'TYPEOF_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:189:1: note: previous definition of 'TYPEOF_TYPE' was here
GCC_pm_ffd8.xs:752:1: error: redeclaration of enumerator 'BOUND_TEMPLATE_TEMPLATE_PARM'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:195:1: note: previous definition of 'BOUND_TEMPLATE_TEMPLATE_PARM' was here
GCC_pm_ffd8.xs:758:1: error: redeclaration of enumerator 'UNBOUND_CLASS_TEMPLATE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:201:1: note: previous definition of 'UNBOUND_CLASS_TEMPLATE' was here
GCC_pm_ffd8.xs:764:1: error: redeclaration of enumerator 'USING_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:207:1: note: previous definition of 'USING_DECL' was here
GCC_pm_ffd8.xs:767:1: error: redeclaration of enumerator 'USING_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:210:1: note: previous definition of 'USING_STMT' was here
GCC_pm_ffd8.xs:772:1: error: redeclaration of enumerator 'DEFAULT_ARG'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:215:1: note: previous definition of 'DEFAULT_ARG' was here
GCC_pm_ffd8.xs:779:1: error: redeclaration of enumerator 'TEMPLATE_ID_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:222:1: note: previous definition of 'TEMPLATE_ID_EXPR' was here
GCC_pm_ffd8.xs:783:1: error: redeclaration of enumerator 'OVERLOAD'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:226:1: note: previous definition of 'OVERLOAD' was here
GCC_pm_ffd8.xs:785:1: error: redeclaration of enumerator 'PSEUDO_DTOR_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:238:1: note: previous definition of 'PSEUDO_DTOR_EXPR' was here
GCC_pm_ffd8.xs:789:1: error: redeclaration of enumerator 'MODOP_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:242:1: note: previous definition of 'MODOP_EXPR' was here
GCC_pm_ffd8.xs:790:1: error: redeclaration of enumerator 'CAST_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:243:1: note: previous definition of 'CAST_EXPR' was here
GCC_pm_ffd8.xs:791:1: error: redeclaration of enumerator 'REINTERPRET_CAST_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:244:1: note: previous definition of 'REINTERPRET_CAST_EXPR' was here
GCC_pm_ffd8.xs:792:1: error: redeclaration of enumerator 'CONST_CAST_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:245:1: note: previous definition of 'CONST_CAST_EXPR' was here
GCC_pm_ffd8.xs:793:1: error: redeclaration of enumerator 'STATIC_CAST_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:246:1: note: previous definition of 'STATIC_CAST_EXPR' was here
GCC_pm_ffd8.xs:794:1: error: redeclaration of enumerator 'DYNAMIC_CAST_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:247:1: note: previous definition of 'DYNAMIC_CAST_EXPR' was here
GCC_pm_ffd8.xs:795:1: error: redeclaration of enumerator 'DOTSTAR_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:248:1: note: previous definition of 'DOTSTAR_EXPR' was here
GCC_pm_ffd8.xs:796:1: error: redeclaration of enumerator 'TYPEID_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:249:1: note: previous definition of 'TYPEID_EXPR' was here
GCC_pm_ffd8.xs:797:1: error: redeclaration of enumerator 'NOEXCEPT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:250:1: note: previous definition of 'NOEXCEPT_EXPR' was here
GCC_pm_ffd8.xs:799:1: error: redeclaration of enumerator 'NON_DEPENDENT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:261:1: note: previous definition of 'NON_DEPENDENT_EXPR' was here
GCC_pm_ffd8.xs:803:1: error: redeclaration of enumerator 'CTOR_INITIALIZER'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:265:1: note: previous definition of 'CTOR_INITIALIZER' was here
GCC_pm_ffd8.xs:805:1: error: redeclaration of enumerator 'TRY_BLOCK'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:267:1: note: previous definition of 'TRY_BLOCK' was here
GCC_pm_ffd8.xs:807:1: error: redeclaration of enumerator 'EH_SPEC_BLOCK'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:269:1: note: previous definition of 'EH_SPEC_BLOCK' was here
GCC_pm_ffd8.xs:813:1: error: redeclaration of enumerator 'HANDLER'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:275:1: note: previous definition of 'HANDLER' was here
GCC_pm_ffd8.xs:817:1: error: redeclaration of enumerator 'MUST_NOT_THROW_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:279:1: note: previous definition of 'MUST_NOT_THROW_EXPR' was here
GCC_pm_ffd8.xs:822:1: error: redeclaration of enumerator 'CLEANUP_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:284:1: note: previous definition of 'CLEANUP_STMT' was here
GCC_pm_ffd8.xs:828:1: error: redeclaration of enumerator 'IF_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:290:1: note: previous definition of 'IF_STMT' was here
GCC_pm_ffd8.xs:832:1: error: redeclaration of enumerator 'FOR_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:294:1: note: previous definition of 'FOR_STMT' was here
GCC_pm_ffd8.xs:837:1: error: redeclaration of enumerator 'RANGE_FOR_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:299:1: note: previous definition of 'RANGE_FOR_STMT' was here
GCC_pm_ffd8.xs:841:1: error: redeclaration of enumerator 'WHILE_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:303:1: note: previous definition of 'WHILE_STMT' was here
GCC_pm_ffd8.xs:845:1: error: redeclaration of enumerator 'DO_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:307:1: note: previous definition of 'DO_STMT' was here
GCC_pm_ffd8.xs:848:1: error: redeclaration of enumerator 'BREAK_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:310:1: note: previous definition of 'BREAK_STMT' was here
GCC_pm_ffd8.xs:851:1: error: redeclaration of enumerator 'CONTINUE_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:313:1: note: previous definition of 'CONTINUE_STMT' was here
GCC_pm_ffd8.xs:855:1: error: redeclaration of enumerator 'SWITCH_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:317:1: note: previous definition of 'SWITCH_STMT' was here
GCC_pm_ffd8.xs:859:1: error: redeclaration of enumerator 'EXPR_STMT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:321:1: note: previous definition of 'EXPR_STMT' was here
GCC_pm_ffd8.xs:861:1: error: redeclaration of enumerator 'TAG_DEFN'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:323:1: note: previous definition of 'TAG_DEFN' was here
GCC_pm_ffd8.xs:864:1: error: redeclaration of enumerator 'OFFSETOF_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:326:1: note: previous definition of 'OFFSETOF_EXPR' was here
GCC_pm_ffd8.xs:867:1: error: redeclaration of enumerator 'SIZEOF_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:329:1: note: previous definition of 'SIZEOF_EXPR' was here
GCC_pm_ffd8.xs:870:1: error: redeclaration of enumerator 'ARROW_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:332:1: note: previous definition of 'ARROW_EXPR' was here
GCC_pm_ffd8.xs:874:1: error: redeclaration of enumerator 'ALIGNOF_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:336:1: note: previous definition of 'ALIGNOF_EXPR' was here
GCC_pm_ffd8.xs:878:1: error: redeclaration of enumerator 'AT_ENCODE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:340:1: note: previous definition of 'AT_ENCODE_EXPR' was here
GCC_pm_ffd8.xs:883:1: error: redeclaration of enumerator 'STMT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:345:1: note: previous definition of 'STMT_EXPR' was here
GCC_pm_ffd8.xs:887:1: error: redeclaration of enumerator 'UNARY_PLUS_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:349:1: note: previous definition of 'UNARY_PLUS_EXPR' was here
GCC_pm_ffd8.xs:895:1: error: redeclaration of enumerator 'STATIC_ASSERT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:357:1: note: previous definition of 'STATIC_ASSERT' was here
GCC_pm_ffd8.xs:897:1: error: redeclaration of enumerator 'TYPE_ARGUMENT_PACK'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:376:1: note: previous definition of 'TYPE_ARGUMENT_PACK' was here
GCC_pm_ffd8.xs:899:1: error: redeclaration of enumerator 'NONTYPE_ARGUMENT_PACK'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:385:1: note: previous definition of 'NONTYPE_ARGUMENT_PACK' was here
GCC_pm_ffd8.xs:901:1: error: redeclaration of enumerator 'TYPE_PACK_EXPANSION'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:408:1: note: previous definition of 'TYPE_PACK_EXPANSION' was here
GCC_pm_ffd8.xs:908:1: error: redeclaration of enumerator 'EXPR_PACK_EXPANSION'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:415:1: note: previous definition of 'EXPR_PACK_EXPANSION' was here
GCC_pm_ffd8.xs:910:1: error: redeclaration of enumerator 'ARGUMENT_PACK_SELECT'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:427:1: note: previous definition of 'ARGUMENT_PACK_SELECT' was here
GCC_pm_ffd8.xs:915:1: error: redeclaration of enumerator 'TRAIT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:432:1: note: previous definition of 'TRAIT_EXPR' was here
GCC_pm_ffd8.xs:917:1: error: redeclaration of enumerator 'LAMBDA_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:441:1: note: previous definition of 'LAMBDA_EXPR' was here
GCC_pm_ffd8.xs:919:1: error: redeclaration of enumerator 'DECLTYPE_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:450:1: note: previous definition of 'DECLTYPE_TYPE' was here
GCC_pm_ffd8.xs:921:1: error: redeclaration of enumerator 'TEMPLATE_INFO'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/cp/cp-tree.def:460:1: note: previous definition of 'TEMPLATE_INFO' was here
GCC_pm_ffd8.xs:925:1: error: redeclaration of enumerator 'URSHIFT_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/java/java-tree.def:23:1: note: previous definition of 'URSHIFT_EXPR' was here
GCC_pm_ffd8.xs:929:1: error: redeclaration of enumerator 'COMPARE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/java/java-tree.def:27:1: note: previous definition of 'COMPARE_EXPR' was here
GCC_pm_ffd8.xs:932:1: error: redeclaration of enumerator 'COMPARE_L_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/java/java-tree.def:30:1: note: previous definition of 'COMPARE_L_EXPR' was here
GCC_pm_ffd8.xs:934:1: error: redeclaration of enumerator 'COMPARE_G_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/java/java-tree.def:32:1: note: previous definition of 'COMPARE_G_EXPR' was here
GCC_pm_ffd8.xs:938:1: error: redeclaration of enumerator 'CLASS_INTERFACE_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:25:1: note: previous definition of 'CLASS_INTERFACE_TYPE' was here
GCC_pm_ffd8.xs:939:1: error: redeclaration of enumerator 'CLASS_IMPLEMENTATION_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:26:1: note: previous definition of 'CLASS_IMPLEMENTATION_TYPE' was here
GCC_pm_ffd8.xs:941:1: error: redeclaration of enumerator 'CATEGORY_INTERFACE_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:28:1: note: previous definition of 'CATEGORY_INTERFACE_TYPE' was here
GCC_pm_ffd8.xs:942:1: error: redeclaration of enumerator 'CATEGORY_IMPLEMENTATION_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:29:1: note: previous definition of 'CATEGORY_IMPLEMENTATION_TYPE' was here
GCC_pm_ffd8.xs:944:1: error: redeclaration of enumerator 'PROTOCOL_INTERFACE_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:31:1: note: previous definition of 'PROTOCOL_INTERFACE_TYPE' was here
GCC_pm_ffd8.xs:947:1: error: redeclaration of enumerator 'KEYWORD_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:34:1: note: previous definition of 'KEYWORD_DECL' was here
GCC_pm_ffd8.xs:948:1: error: redeclaration of enumerator 'INSTANCE_METHOD_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:35:1: note: previous definition of 'INSTANCE_METHOD_DECL' was here
GCC_pm_ffd8.xs:949:1: error: redeclaration of enumerator 'CLASS_METHOD_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:36:1: note: previous definition of 'CLASS_METHOD_DECL' was here
GCC_pm_ffd8.xs:950:1: error: redeclaration of enumerator 'PROPERTY_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:37:1: note: previous definition of 'PROPERTY_DECL' was here
GCC_pm_ffd8.xs:953:1: error: redeclaration of enumerator 'MESSAGE_SEND_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:40:1: note: previous definition of 'MESSAGE_SEND_EXPR' was here
GCC_pm_ffd8.xs:954:1: error: redeclaration of enumerator 'CLASS_REFERENCE_EXPR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:41:1: note: previous definition of 'CLASS_REFERENCE_EXPR' was here
GCC_pm_ffd8.xs:956:1: error: redeclaration of enumerator 'PROPERTY_REF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/objc/objc-tree.def:71:1: note: previous definition of 'PROPERTY_REF' was here
GCC_pm_ffd8.xs:959:1: error: redeclaration of enumerator 'MAX_TREE_CODES'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:44:1: note: previous definition of 'MAX_TREE_CODES' was here
GCC_pm_ffd8.xs:967:6: error: nested redefinition of 'enum tree_code_class'
GCC_pm_ffd8.xs:967:6: error: redeclaration of 'enum tree_code_class'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:61:6: note: originally defined here
GCC_pm_ffd8.xs:968:3: error: redeclaration of enumerator 'tcc_exceptional'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:62:3: note: previous definition of 'tcc_exceptional' was here
GCC_pm_ffd8.xs:969:3: error: redeclaration of enumerator 'tcc_constant'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:63:3: note: previous definition of 'tcc_constant' was here
GCC_pm_ffd8.xs:971:3: error: redeclaration of enumerator 'tcc_type'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:65:3: note: previous definition of 'tcc_type' was here
GCC_pm_ffd8.xs:972:3: error: redeclaration of enumerator 'tcc_declaration'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:66:3: note: previous definition of 'tcc_declaration' was here
GCC_pm_ffd8.xs:973:3: error: redeclaration of enumerator 'tcc_reference'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:67:3: note: previous definition of 'tcc_reference' was here
GCC_pm_ffd8.xs:974:3: error: redeclaration of enumerator 'tcc_comparison'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:68:3: note: previous definition of 'tcc_comparison' was here
GCC_pm_ffd8.xs:975:3: error: redeclaration of enumerator 'tcc_unary'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:69:3: note: previous definition of 'tcc_unary' was here
GCC_pm_ffd8.xs:976:3: error: redeclaration of enumerator 'tcc_binary'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:70:3: note: previous definition of 'tcc_binary' was here
GCC_pm_ffd8.xs:977:3: error: redeclaration of enumerator 'tcc_statement'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:71:3: note: previous definition of 'tcc_statement' was here
GCC_pm_ffd8.xs:979:3: error: redeclaration of enumerator 'tcc_vl_exp'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:73:3: note: previous definition of 'tcc_vl_exp' was here
GCC_pm_ffd8.xs:981:3: error: redeclaration of enumerator 'tcc_expression'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:75:3: note: previous definition of 'tcc_expression' was here
GCC_pm_ffd8.xs:1004:3: error: redeclaration of enumerator 'ALIAS_DIAG_NONE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:191:3: note: previous definition of 'ALIAS_DIAG_NONE' was here
GCC_pm_ffd8.xs:1005:3: error: redeclaration of enumerator 'ALIAS_DIAG_TO_UNDEF'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:192:3: note: previous definition of 'ALIAS_DIAG_TO_UNDEF' was here
GCC_pm_ffd8.xs:1006:3: error: redeclaration of enumerator 'ALIAS_DIAG_TO_EXTERN'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:193:3: note: previous definition of 'ALIAS_DIAG_TO_EXTERN' was here
GCC_pm_ffd8.xs:1007:3: error: conflicting types for 'alias_diag_flags'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:194:3: note: previous declaration of 'alias_diag_flags' was here
GCC_pm_ffd8.xs:1013:8: error: redefinition of 'struct tree_base'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:367:8: note: originally defined here
GCC_pm_ffd8.xs:1047:8: error: redefinition of 'struct tree_common'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:410:8: note: originally defined here
GCC_pm_ffd8.xs:1053:6: error: nested redefinition of 'enum tree_node_structure_enum'
GCC_pm_ffd8.xs:1053:6: error: redeclaration of 'enum tree_node_structure_enum'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:645:6: note: originally defined here
GCC_pm_ffd8.xs:1056:1: error: redeclaration of enumerator 'TS_BASE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:33:1: note: previous definition of 'TS_BASE' was here
GCC_pm_ffd8.xs:1057:1: error: redeclaration of enumerator 'TS_COMMON'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:34:1: note: previous definition of 'TS_COMMON' was here
GCC_pm_ffd8.xs:1058:1: error: redeclaration of enumerator 'TS_INT_CST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:35:1: note: previous definition of 'TS_INT_CST' was here
GCC_pm_ffd8.xs:1059:1: error: redeclaration of enumerator 'TS_REAL_CST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:36:1: note: previous definition of 'TS_REAL_CST' was here
GCC_pm_ffd8.xs:1060:1: error: redeclaration of enumerator 'TS_FIXED_CST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:37:1: note: previous definition of 'TS_FIXED_CST' was here
GCC_pm_ffd8.xs:1061:1: error: redeclaration of enumerator 'TS_VECTOR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:38:1: note: previous definition of 'TS_VECTOR' was here
GCC_pm_ffd8.xs:1062:1: error: redeclaration of enumerator 'TS_STRING'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:39:1: note: previous definition of 'TS_STRING' was here
GCC_pm_ffd8.xs:1063:1: error: redeclaration of enumerator 'TS_COMPLEX'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:40:1: note: previous definition of 'TS_COMPLEX' was here
GCC_pm_ffd8.xs:1064:1: error: redeclaration of enumerator 'TS_IDENTIFIER'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:41:1: note: previous definition of 'TS_IDENTIFIER' was here
GCC_pm_ffd8.xs:1065:1: error: redeclaration of enumerator 'TS_DECL_MINIMAL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:42:1: note: previous definition of 'TS_DECL_MINIMAL' was here
GCC_pm_ffd8.xs:1066:1: error: redeclaration of enumerator 'TS_DECL_COMMON'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:43:1: note: previous definition of 'TS_DECL_COMMON' was here
GCC_pm_ffd8.xs:1067:1: error: redeclaration of enumerator 'TS_DECL_WRTL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:44:1: note: previous definition of 'TS_DECL_WRTL' was here
GCC_pm_ffd8.xs:1068:1: error: redeclaration of enumerator 'TS_DECL_NON_COMMON'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:45:1: note: previous definition of 'TS_DECL_NON_COMMON' was here
GCC_pm_ffd8.xs:1069:1: error: redeclaration of enumerator 'TS_DECL_WITH_VIS'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:46:1: note: previous definition of 'TS_DECL_WITH_VIS' was here
GCC_pm_ffd8.xs:1070:1: error: redeclaration of enumerator 'TS_FIELD_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:47:1: note: previous definition of 'TS_FIELD_DECL' was here
GCC_pm_ffd8.xs:1071:1: error: redeclaration of enumerator 'TS_VAR_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:48:1: note: previous definition of 'TS_VAR_DECL' was here
GCC_pm_ffd8.xs:1072:1: error: redeclaration of enumerator 'TS_PARM_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:49:1: note: previous definition of 'TS_PARM_DECL' was here
GCC_pm_ffd8.xs:1073:1: error: redeclaration of enumerator 'TS_LABEL_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:50:1: note: previous definition of 'TS_LABEL_DECL' was here
GCC_pm_ffd8.xs:1074:1: error: redeclaration of enumerator 'TS_RESULT_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:51:1: note: previous definition of 'TS_RESULT_DECL' was here
GCC_pm_ffd8.xs:1075:1: error: redeclaration of enumerator 'TS_CONST_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:52:1: note: previous definition of 'TS_CONST_DECL' was here
GCC_pm_ffd8.xs:1076:1: error: redeclaration of enumerator 'TS_TYPE_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:53:1: note: previous definition of 'TS_TYPE_DECL' was here
GCC_pm_ffd8.xs:1077:1: error: redeclaration of enumerator 'TS_FUNCTION_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:54:1: note: previous definition of 'TS_FUNCTION_DECL' was here
GCC_pm_ffd8.xs:1078:1: error: redeclaration of enumerator 'TS_TRANSLATION_UNIT_DECL'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:55:1: note: previous definition of 'TS_TRANSLATION_UNIT_DECL' was here
GCC_pm_ffd8.xs:1079:1: error: redeclaration of enumerator 'TS_TYPE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:56:1: note: previous definition of 'TS_TYPE' was here
GCC_pm_ffd8.xs:1080:1: error: redeclaration of enumerator 'TS_LIST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:57:1: note: previous definition of 'TS_LIST' was here
GCC_pm_ffd8.xs:1081:1: error: redeclaration of enumerator 'TS_VEC'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:58:1: note: previous definition of 'TS_VEC' was here
GCC_pm_ffd8.xs:1082:1: error: redeclaration of enumerator 'TS_EXP'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:59:1: note: previous definition of 'TS_EXP' was here
GCC_pm_ffd8.xs:1083:1: error: redeclaration of enumerator 'TS_SSA_NAME'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:60:1: note: previous definition of 'TS_SSA_NAME' was here
GCC_pm_ffd8.xs:1084:1: error: redeclaration of enumerator 'TS_BLOCK'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:61:1: note: previous definition of 'TS_BLOCK' was here
GCC_pm_ffd8.xs:1085:1: error: redeclaration of enumerator 'TS_BINFO'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:62:1: note: previous definition of 'TS_BINFO' was here
GCC_pm_ffd8.xs:1086:1: error: redeclaration of enumerator 'TS_STATEMENT_LIST'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:63:1: note: previous definition of 'TS_STATEMENT_LIST' was here
GCC_pm_ffd8.xs:1087:1: error: redeclaration of enumerator 'TS_CONSTRUCTOR'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:64:1: note: previous definition of 'TS_CONSTRUCTOR' was here
GCC_pm_ffd8.xs:1088:1: error: redeclaration of enumerator 'TS_OMP_CLAUSE'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:65:1: note: previous definition of 'TS_OMP_CLAUSE' was here
GCC_pm_ffd8.xs:1089:1: error: redeclaration of enumerator 'TS_OPTIMIZATION'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:66:1: note: previous definition of 'TS_OPTIMIZATION' was here
GCC_pm_ffd8.xs:1090:1: error: redeclaration of enumerator 'TS_TARGET_OPTION'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/treestruct.def:67:1: note: previous definition of 'TS_TARGET_OPTION' was here
GCC_pm_ffd8.xs:1092:3: error: redeclaration of enumerator 'LAST_TS_ENUM'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:647:3: note: previous definition of 'LAST_TS_ENUM' was here
GCC_pm_ffd8.xs:1094:8: error: redefinition of 'struct tree_int_cst'
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/tree.h:1409:8: note: originally defined here
make[1]: *** [GCC_pm_ffd8.o] Error 1
make[1]: Leaving directory `/home/mdupont/experiments/introspector/plugin/firstplugin/inline/_Inline/build/GCC_pm_ffd8'
