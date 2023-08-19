#include <syslog.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <stdio.h>


int main (int argc, char* argv[]) {

    const char *buf = argv[2];
    const char *name = argv[1];
    ssize_t nr;
    int fd;

    fd = open (name, O_CREAT | O_RDWR | O_TRUNC, 0666);

    if (fd == -1) {
	return 1;
    }

    openlog (NULL, 0, LOG_USER);

    if (argc > 3) {
	syslog(LOG_DEBUG, "Too many arguments!");
	return 1;
    } else if (argc < 2) {
	syslog(LOG_DEBUG, "Not enough arguments!");
	return 1;
    } else {
	nr = write (fd, buf, strlen (buf));
	if (nr == -1) {
	    syslog (LOG_DEBUG, "Unable to write to file");
	    return 1;
	} else {
	    syslog (LOG_DEBUG, "Writing %s to %s", buf, name);
	}
    }

    int x = close(fd);
    closelog();
    return 0;
}
