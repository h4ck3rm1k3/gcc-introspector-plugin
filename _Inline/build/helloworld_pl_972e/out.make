make[1]: Entering directory `/home/mdupont/experiments/introspector/plugin/firstplugin/_Inline/build/helloworld_pl_972e'
/usr/bin/perl /usr/local/share/perl/5.12.4/ExtUtils/xsubpp  -typemap "/usr/share/perl/5.12/ExtUtils/typemap" -typemap "/home/mdupont/experiments/introspector/plugin/firstplugin/typemap" -typemap "/home/mdupont/experiments/introspector/plugin/firstplugin/typemap"   helloworld_pl_972e.xs > helloworld_pl_972e.xsc && mv helloworld_pl_972e.xsc helloworld_pl_972e.c
cc -c  -I"/home/mdupont/experiments/introspector/plugin/firstplugin" -I/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ -save-temps --verbose -O2 -g   -DVERSION=\"0.00\" -DXS_VERSION=\"0.00\" -fPIC "-I/usr/lib/perl/5.12/CORE"   helloworld_pl_972e.c
Using built-in specs.
COLLECT_GCC=/usr/bin/gcc-4.6.real
COLLECT_LTO_WRAPPER=/usr/lib/gcc/i686-linux-gnu/4.6.1/lto-wrapper
Target: i686-linux-gnu
Configured with: ../src/configure -v --with-pkgversion='Ubuntu/Linaro 4.6.1-9ubuntu3' --with-bugurl=file:///usr/share/doc/gcc-4.6/README.Bugs --enable-languages=c,c++,fortran,objc,obj-c++,go --prefix=/usr --program-suffix=-4.6 --enable-shared --enable-linker-build-id --with-system-zlib --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --with-gxx-include-dir=/usr/include/c++/4.6 --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --enable-plugin --enable-objc-gc --enable-targets=all --disable-werror --with-arch-32=i686 --with-tune=generic --enable-checking=release --build=i686-linux-gnu --host=i686-linux-gnu --target=i686-linux-gnu
Thread model: posix
gcc version 4.6.1 (Ubuntu/Linaro 4.6.1-9ubuntu3) 
COLLECT_GCC_OPTIONS='-c' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/' '-save-temps' '-v' '-O2' '-g' '-D' 'VERSION="0.00"' '-D' 'XS_VERSION="0.00"' '-fPIC' '-I' '/usr/lib/perl/5.12/CORE' '-mtune=generic' '-march=i686'
 /usr/lib/gcc/i686-linux-gnu/4.6.1/cc1 -E -quiet -v -I /home/mdupont/experiments/introspector/plugin/firstplugin -I /home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ -I /usr/lib/perl/5.12/CORE -imultilib . -imultiarch i386-linux-gnu -D VERSION="0.00" -D XS_VERSION="0.00" helloworld_pl_972e.c -mtune=generic -march=i686 -fPIC -g -fworking-directory -O2 -fpch-preprocess -fstack-protector -o helloworld_pl_972e.i
ignoring nonexistent directory "/usr/local/include/i386-linux-gnu"
ignoring nonexistent directory "/usr/lib/gcc/i686-linux-gnu/4.6.1/../../../../i686-linux-gnu/include"
#include "..." search starts here:
#include <...> search starts here:
 /home/mdupont/experiments/introspector/plugin/firstplugin
 /home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/
 /usr/lib/perl/5.12/CORE
 /usr/lib/gcc/i686-linux-gnu/4.6.1/include
 /usr/local/include
 /usr/lib/gcc/i686-linux-gnu/4.6.1/include-fixed
 /usr/include/i386-linux-gnu
 /usr/include
End of search list.
In file included from /home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/gcc-plugin.h:28:0,
                 from /home/mdupont/experiments/introspector/plugin/firstplugin/gcc.h:2,
                 from helloworld_pl_972e.xs:5:
/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/system.h:787:54: warning: poisoning existing macro "BYTEORDER" [enabled by default]
COLLECT_GCC_OPTIONS='-c' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/' '-save-temps' '-v' '-O2' '-g' '-D' 'VERSION="0.00"' '-D' 'XS_VERSION="0.00"' '-fPIC' '-I' '/usr/lib/perl/5.12/CORE' '-mtune=generic' '-march=i686'
 /usr/lib/gcc/i686-linux-gnu/4.6.1/cc1 -fpreprocessed helloworld_pl_972e.i -quiet -dumpbase helloworld_pl_972e.c -mtune=generic -march=i686 -auxbase helloworld_pl_972e -g -O2 -version -fPIC -fstack-protector -o helloworld_pl_972e.s
GNU C (Ubuntu/Linaro 4.6.1-9ubuntu3) version 4.6.1 (i686-linux-gnu)
	compiled by GNU C version 4.6.1, GMP version 5.0.1, MPFR version 3.0.1-p3, MPC version 0.9
GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
GNU C (Ubuntu/Linaro 4.6.1-9ubuntu3) version 4.6.1 (i686-linux-gnu)
	compiled by GNU C version 4.6.1, GMP version 5.0.1, MPFR version 3.0.1-p3, MPC version 0.9
GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
Compiler executable checksum: 4563c158c7f73de3aa3de4c02c58d3f9
helloworld_pl_972e.xs: In function 'print_tree':
helloworld_pl_972e.xs:12:5: warning: format '%ld' expects argument of type 'long int', but argument 3 has type 'tree' [-Wformat]
helloworld_pl_972e.c: In function 'XS_main_print_tree':
helloworld_pl_972e.c:208:11: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
COLLECT_GCC_OPTIONS='-c' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/' '-save-temps' '-v' '-O2' '-g' '-D' 'VERSION="0.00"' '-D' 'XS_VERSION="0.00"' '-fPIC' '-I' '/usr/lib/perl/5.12/CORE' '-mtune=generic' '-march=i686'
 as --32 -o helloworld_pl_972e.o helloworld_pl_972e.s
COMPILER_PATH=/usr/lib/gcc/i686-linux-gnu/4.6.1/:/usr/lib/gcc/i686-linux-gnu/4.6.1/:/usr/lib/gcc/i686-linux-gnu/:/usr/lib/gcc/i686-linux-gnu/4.6.1/:/usr/lib/gcc/i686-linux-gnu/
LIBRARY_PATH=/usr/lib/gcc/i686-linux-gnu/4.6.1/:/usr/lib/gcc/i686-linux-gnu/4.6.1/../../../i386-linux-gnu/:/usr/lib/gcc/i686-linux-gnu/4.6.1/../../../../lib/:/lib/i386-linux-gnu/:/lib/../lib/:/usr/lib/i386-linux-gnu/:/usr/lib/../lib/:/usr/lib/gcc/i686-linux-gnu/4.6.1/../../../:/lib/:/usr/lib/
COLLECT_GCC_OPTIONS='-c' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/' '-save-temps' '-v' '-O2' '-g' '-D' 'VERSION="0.00"' '-D' 'XS_VERSION="0.00"' '-fPIC' '-I' '/usr/lib/perl/5.12/CORE' '-mtune=generic' '-march=i686'
Running Mkbootstrap for helloworld_pl_972e ()
chmod 644 helloworld_pl_972e.bs
rm -f blib/arch/auto/helloworld_pl_972e/helloworld_pl_972e.so
cc  -shared -O2 -g -L/usr/local/lib -fstack-protector helloworld_pl_972e.o  -o blib/arch/auto/helloworld_pl_972e/helloworld_pl_972e.so 	\
	     	\
	  
chmod 755 blib/arch/auto/helloworld_pl_972e/helloworld_pl_972e.so
cp helloworld_pl_972e.bs blib/arch/auto/helloworld_pl_972e/helloworld_pl_972e.bs
chmod 644 blib/arch/auto/helloworld_pl_972e/helloworld_pl_972e.bs
make[1]: Leaving directory `/home/mdupont/experiments/introspector/plugin/firstplugin/_Inline/build/helloworld_pl_972e'
