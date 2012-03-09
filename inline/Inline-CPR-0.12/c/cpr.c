#include <unistd.h>
#include <stdio.h>
#include <errno.h>

extern int errno;

int main(int argc, char* argv[]) {
  execl("/usr/bin/perl", 
	"/usr/bin/perl",
	"/usr/bin/cpr.pl",
	argv[argc - 1],
	NULL);
  printf("The CPR interpreter failed to exec /usr/bin/perl The system call 'execl' failed with error code %d", errno);
  return errno;
}
