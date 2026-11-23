PREFIX ?= /usr/local
BINDIR := $(DESTDIR)$(PREFIX)/bin

.PHONY: install
install:
	install -d "$(BINDIR)"
	install -m 755 LD "$(BINDIR)/LD"
