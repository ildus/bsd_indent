PROG=	indent
SRCS=	indent.c io.c lexi.c parse.c pr_comment.c args.c reallocarray.c

all:
	${CC} ${SRCS} -o ${PROG}
