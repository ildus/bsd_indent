PROG=	indent
SRCS=	indent.c io.c lexi.c parse.c pr_comment.c args.c reallocarray.c

all:
	${CC} ${SRCS} -o ${PROG} ${CCFLAGS}
check:
	cat test.in | ./indent -bc -bl -nce > _test.out
	diff test.out _test.out
	rm _test.out
