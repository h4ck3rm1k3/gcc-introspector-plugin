/usr/bin/perl /usr/local/share/perl/5.12.4/ExtUtils/xsubpp  -typemap "/usr/share/perl/5.12/ExtUtils/typemap"   GCC_pm_7dc9.xs > GCC_pm_7dc9.xsc && mv GCC_pm_7dc9.xsc GCC_pm_7dc9.c
cc -c  -I"/home/mdupont/experiments/introspector/plugin/firstplugin/inline" /home/mdupont/experiments/introspector/plugin/firstplugin/pluginheaders/ -save-temps --verbose -O2 -g   -DVERSION=\"0.00\" -DXS_VERSION=\"0.00\" -fPIC "-I/usr/lib/perl/5.12/CORE"   GCC_pm_7dc9.c
Using built-in specs.
COLLECT_GCC=/usr/bin/gcc-4.6.real
COLLECT_LTO_WRAPPER=/usr/lib/gcc/i686-linux-gnu/4.6.1/lto-wrapper
Target: i686-linux-gnu
Configured with: ../src/configure -v --with-pkgversion='Ubuntu/Linaro 4.6.1-9ubuntu3' --with-bugurl=file:///usr/share/doc/gcc-4.6/README.Bugs --enable-languages=c,c++,fortran,objc,obj-c++,go --prefix=/usr --program-suffix=-4.6 --enable-shared --enable-linker-build-id --with-system-zlib --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --with-gxx-include-dir=/usr/include/c++/4.6 --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --enable-plugin --enable-objc-gc --enable-targets=all --disable-werror --with-arch-32=i686 --with-tune=generic --enable-checking=release --build=i686-linux-gnu --host=i686-linux-gnu --target=i686-linux-gnu
Thread model: posix
gcc version 4.6.1 (Ubuntu/Linaro 4.6.1-9ubuntu3) 
COLLECT_GCC_OPTIONS='-c' '-I' '/home/mdupont/experiments/introspector/plugin/firstplugin/inline' '-save-temps' '-v' '-O2' '-g' '-D' 'VERSION="0.00"' '-D' 'XS_VERSION="0.00"' '-fPIC' '-I' '/usr/lib/perl/5.12/CORE' '-mtune=generic' '-march=i686'
 /usr/lib/gcc/i686-linux-gnu/4.6.1/cc1 -E -quiet -v -I /home/mdupont/experiments/introspector/plugin/firstplugin/inline -I /usr/lib/perl/5.12/CORE -imultilib . -imultiarch i386-linux-gnu -D VERSION="0.00" -D XS_VERSION="0.00" GCC_pm_7dc9.c -mtune=generic -march=i686 -fPIC -g -fworking-directory -O2 -fpch-preprocess -fstack-protector -o GCC_pm_7dc9.i
ignoring nonexistent directory "/usr/local/include/i386-linux-gnu"
ignoring nonexistent directory "/usr/lib/gcc/i686-linux-gnu/4.6.1/../../../../i686-linux-gnu/include"
#include "..." search starts here:
#include <...> search starts here:
 /home/mdupont/experiments/introspector/plugin/firstplugin/inline
 /usr/lib/perl/5.12/CORE
 /usr/lib/gcc/i686-linux-gnu/4.6.1/include
 /usr/local/include
 /usr/lib/gcc/i686-linux-gnu/4.6.1/include-fixed
 /usr/include/i386-linux-gnu
 /usr/include
End of search list.
In file included from GCC_pm_7dc9.xs:5:0:
/home/mdupont/experiments/introspector/plugin/firstplugin/inline/gcc.h:2:24: fatal error: gcc-plugin.h: No such file or directory
compilation terminated.
make: *** [GCC_pm_7dc9.o] Error 1
