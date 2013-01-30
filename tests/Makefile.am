check_PROGRAMS = test-babeltrace

TESTS = $(check_PROGRAMS)
DISTCLEANFILES = test-babeltrace.c test_babeltrace_vala.stamp

AM_VALAFLAGS = --debug --verbose --save-temps --pkg babeltrace --vapidir ../src

test_babeltrace_SOURCES = test-babeltrace.vala
test_babeltrace_LDADD = $(BABELVALA_LIBS)
test_babeltrace_CFLAGS = $(BABELVALA_CFLAGS)
