SCRIPT := shimpr

-include .config.mk
PREFIX ?= /usr/bin
TARGET := $(DESTDIR)$(PREFIX)/$(SCRIPT)

install: $(SCRIPT) .config.mk
	install -Dm755 $< $(TARGET)

uninstall:
	rm -f $(TARGET)

.PHONY: .config.mk
.config.mk:
	@echo "PREFIX=$(PREFIX)" > $@
	@echo "DESTDIR=$(DESTDIR)" >> $@

check:
	@shellcheck -s sh $(SCRIPT)
