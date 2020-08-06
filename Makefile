SCRIPT := shimpr

-include .config.mk
DESTDIR ?= /usr/bin
TARGET := $(DESTDIR)/$(SCRIPT)

install: $(SCRIPT) .config.mk
	install -Dm755 $< $(TARGET)

uninstall:
	rm -f $(TARGET)

clean:
	rm .config.mk

.PHONY: .config.mk
.config.mk:
	@echo "DESTDIR=$(DESTDIR)" > $@

check:
	@shellcheck -s sh $(SCRIPT)
