# This Makefile automatically generated by configure.

#CC =		clang
CFLAGS +=	-g -O2 -DEMACS -DVI -w -D_GNU_SOURCE
LDFLAGS +=

PREFIX =	
BINDIR =	/bin
MANDIR =	/usr/share/man

PROG =	ksh
OBJS =	alloc.o asprintf.o c_ksh.o c_sh.o c_test.o c_ulimit.o edit.o \
	emacs.o eval.o exec.o expr.o history.o io.o jobs.o lex.o mail.o \
	main.o misc.o path.o shf.o syn.o table.o trap.o tree.o tty.o var.o \
	version.o vi.o confstr.o reallocarray.o siglist.o signame.o \
	strlcat.o strlcpy.o strtonum.o unvis.o vis.o issetugid.o

all: ${PROG}

${PROG}: ${OBJS}
	${CC} ${LDFLAGS} -o ${PROG} ${OBJS} -ltinfo -lncurses ${LIBS}

install:
	install -d ${DESTDIR}${BINDIR}
	install -d ${DESTDIR}/etc/skel
	install -d ${DESTDIR}${MANDIR}/man1
	install -c -m 755 ${PROG} ${DESTDIR}${BINDIR}
	install -c -m 644 ${PROG}.1 ${DESTDIR}${MANDIR}/man1
	install -c -m 644 ksh.kshrc ${DESTDIR}/etc
	install -c -m 644 .kshrc ${DESTDIR}/etc/skel

uninstall:
	rm -f ${DESTDIR}${BINDIR}/${PROG}
	rm -f ${DESTDIR}${MANDIR}/man1/${PROG}.1

test:
	echo "No tests"

clean:
	rm -f ${PROG} ${OBJS}

#distclean: clean
#	rm -f Makefile pconfig.h *.core
