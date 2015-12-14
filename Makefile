# Makefile
# 19-Nov-11 Markku-Juhani O. Saarinen <mjos@iki.fi>

BINARY          = sha3test
OBJS     	= sha3.o main.o
DIST            = tiny_sha3

CC              = gcc
CFLAGS		= -Wall -O3
LIBS            =
LDFLAGS         =
INCLUDES	=

$(BINARY):      $(OBJS)
		$(CC) $(LDFLAGS) -o $(BINARY) $(OBJS) $(LIBS)

.c.o:
		$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
		rm -rf $(DIST).tgz $(OBJS) $(BINARY) *~ 

dist:           clean
		cd ..; tar cfvz $(DIST)/$(DIST).tgz $(DIST)/*
