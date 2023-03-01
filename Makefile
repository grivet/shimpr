SCRIPT := shimpr

-include .config.mk
DESTDIR ?= /usr/bin
TARGET := $(DESTDIR)/$(SCRIPT)
E := @echo

all:
	$E "Usage:"
	$E "make install DESTDIR=<path> # Install to <path=$(DESTDIR)>, memorize the value"
	$E "make uninstall              # Uninstall from the memorized DESTDIR"
	$E "make install                # Re-install to memorized DESTDIR if set"
	$E "make clean                  # Remove DESTDIR memo"
	$E "make check                  # Run shellcheck"

install: $(SCRIPT) .config.mk
	tools/install.sh -Dm755 $< $(TARGET)

uninstall:
	rm -f $(TARGET)

clean:
	rm .config.mk

.PHONY: .config.mk
.config.mk:
	@echo "DESTDIR=$(DESTDIR)" > $@

check:
	@shellcheck -s sh $(SCRIPT)
