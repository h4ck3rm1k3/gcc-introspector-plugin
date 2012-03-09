/usr/bin/perl /usr/local/share/perl/5.12.4/ExtUtils/xsubpp  -typemap /usr/share/perl/5.12/ExtUtils/typemap  cpr_pl_8e6b.xs > cpr_pl_8e6b.xsc && mv cpr_pl_8e6b.xsc cpr_pl_8e6b.c
cc -c   -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fno-strict-aliasing -pipe -fstack-protector -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -g   -DVERSION=\"0.00\" -DXS_VERSION=\"0.00\" -fPIC "-I/usr/lib/perl/5.12/CORE"   cpr_pl_8e6b.c
cpr_pl_8e6b.xs:7:3: error: invalid preprocessing directive #!
make: *** [cpr_pl_8e6b.o] Error 1
