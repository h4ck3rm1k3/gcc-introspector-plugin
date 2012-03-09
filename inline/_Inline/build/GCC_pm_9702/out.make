make[1]: Entering directory `/home/mdupont/experiments/introspector/plugin/firstplugin/inline/_Inline/build/GCC_pm_9702'
/usr/bin/perl /usr/local/share/perl/5.12.4/ExtUtils/xsubpp  -typemap "/usr/share/perl/5.12/ExtUtils/typemap"   GCC_pm_9702.xs > GCC_pm_9702.xsc && mv GCC_pm_9702.xsc GCC_pm_9702.c
cc -c  -I"/home/mdupont/experiments/introspector/plugin/firstplugin/inline" -I/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ -save-temps --verbose -O2 -g   -DVERSION=\"0.00\" -DXS_VERSION=\"0.00\" -fPIC "-I/usr/lib/perl/5.12/CORE"   GCC_pm_9702.c
Using built-in specs.
COLLECT_GCC=/usr/bin/gcc-4.6.real
COLLECT_LTO_WRAPPER=/usr/lib/gcc/i686-linux-gnu/4.6.1/lto-wrapper
Target: i686-linux-gnu
Configured with: ../src/configure -v --with-pkgversion='Ubuntu/Linaro 4.6.1-9ubuntu3' --with-bugurl=file:///usr/share/doc/gcc-4.6/README.Bugs --enable-languages=c,c++,fortran,objc,obj-c++,go --prefix=/usr --program-suffix=-4.6 --enable-shared --enable-linker-build-id --with-system-zlib --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --with-gxx-include-dir=/usr/include/c++/4.6 --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --enable-plugin --enable-objc-gc --enable-targets=all --disable-werror --with-arch-32=i686 --with-tune=generic --enable-checking=release --build=i686-linux-gnu --host=i686-linux-gnu --target=i686-linux-gnu
Thread model: posix
gcc version 4.6.1 (Ubuntu/Linaro 4.6.1-9ubuntu3) 
COLLECT_GCC_OPTIONS='-c' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/inline' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/' '-save-temps' '-v' '-O2' '-g' '-D' 'VERSION="0.00"' '-D' 'XS_VERSION="0.00"' '-fPIC' '-I' '/usr/lib/perl/5.12/CORE' '-mtune=generic' '-march=i686'
 /usr/lib/gcc/i686-linux-gnu/4.6.1/cc1 -E -quiet -v -I /home/mdupont/experiments/introspector/plugin/firstplugin/inline -I /home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ -I /usr/lib/perl/5.12/CORE -imultilib . -imultiarch i386-linux-gnu -D VERSION="0.00" -D XS_VERSION="0.00" GCC_pm_9702.c -mtune=generic -march=i686 -fPIC -g -fworking-directory -O2 -fpch-preprocess -fstack-protector -o GCC_pm_9702.i
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
                 from GCC_pm_9702.xs:5:
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/system.h:787:54: warning: poisoning existing macro "BYTEORDER" [enabled by default]
COLLECT_GCC_OPTIONS='-c' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/inline' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/' '-save-temps' '-v' '-O2' '-g' '-D' 'VERSION="0.00"' '-D' 'XS_VERSION="0.00"' '-fPIC' '-I' '/usr/lib/perl/5.12/CORE' '-mtune=generic' '-march=i686'
 /usr/lib/gcc/i686-linux-gnu/4.6.1/cc1 -fpreprocessed GCC_pm_9702.i -quiet -dumpbase GCC_pm_9702.c -mtune=generic -march=i686 -auxbase GCC_pm_9702 -g -O2 -version -fPIC -fstack-protector -o GCC_pm_9702.s
GNU C (Ubuntu/Linaro 4.6.1-9ubuntu3) version 4.6.1 (i686-linux-gnu)
	compiled by GNU C version 4.6.1, GMP version 5.0.1, MPFR version 3.0.1-p3, MPC version 0.9
GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
GNU C (Ubuntu/Linaro 4.6.1-9ubuntu3) version 4.6.1 (i686-linux-gnu)
	compiled by GNU C version 4.6.1, GMP version 5.0.1, MPFR version 3.0.1-p3, MPC version 0.9
GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
Compiler executable checksum: 4563c158c7f73de3aa3de4c02c58d3f9
GCC_pm_9702.xs: In function 'print_tree':
GCC_pm_9702.xs:13:40: error: request for member 'base' in something not a structure or union
make[1]: *** [GCC_pm_9702.o] Error 1
make[1]: Leaving directory `/home/mdupont/experiments/introspector/plugin/firstplugin/inline/_Inline/build/GCC_pm_9702'
