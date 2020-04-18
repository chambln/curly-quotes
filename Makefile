PROGRAM = curly-quotes
PREFIX = /usr
BIN = $(PREFIX)/bin
MAN = $(PREFIX)/share/man/man1
INSTALL = install

install: $(PROGRAM)
	$(INSTALL) -d $(BIN)
	$(INSTALL) -m 0755 $(PROGRAM) $(BIN)
