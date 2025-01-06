# Makefile for spooftooph

CC = gcc
BT_LIB = -lbluetooth
NCURSES_LIB = -lncurses
PTHREAD = -pthread
TINFO_LIB = -ltinfo
BIN = /usr/bin

all: spooftooph

spooftooph:
	$(CC) $(BT_LIB) $(NCURSES_LIB) $(PTHREAD) $(TINFO_LIB) dev_class.c namelist.c spooftooph.c bdaddr.c oui.c -o spooftooph

install:
	cp spooftooph $(BIN)

uninstall:
	rm -i $(BIN)/spooftooph

clean:
	rm spooftooph
