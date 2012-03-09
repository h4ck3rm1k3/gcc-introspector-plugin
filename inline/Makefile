all :
	perl GCC.pm

#	/usr/bin/perl /usr/local/share/perl/5.12.4/ExtUtils/xsubpp  -typemap "/usr/share/perl/5.12/ExtUtils/typemap"   GCC_pm_7dc9.xs > GCC_pm_7dc9.xsc && mv GCC_pm_7dc9.xsc GCC_pm_7dc9.c
#cc -c  -I"/home/mdupont/experiments/introspector/plugin/firstplugin/inline" -I/usr/lib/gcc/i686-linux-gnu/4.6/plugin/include/ -save-temps --verbose -O2 -g   -DVERSION=\"0.00\" -DXS_VERSION=\"0.00\" -fPIC "-I/usr/lib/perl/5.12/CORE"   GCC_pm_7dc9.c

# /usr/lib/gcc/i686-linux-gnu/4.6.1/cc1 -E -quiet -v -I /home/mdupont/experiments/introspector/plugin/firstplugin/inline -I /usr/lib/gcc/i686-linux-gnu/4.6/plugin/include/ -I /usr/lib/perl/5.12/CORE -imultilib . -imultiarch i386-linux-gnu -D VERSION="0.00" -D XS_VERSION="0.00" GCC_pm_7dc9.c -mtune=generic -march=i686 -fPIC -g -fworking-directory -O2 -fpch-preprocess -fstack-protector -o GCC_pm_7dc9.i