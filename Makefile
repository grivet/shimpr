SCRIPT := shimpr
PREFIX ?= /usr
TARGET := $(DESTDIR)$(PREFIX)/bin/$(SCRIPT)

install: $(SCRIPT)
	install -Dm755 $< $(TARGET)

uninstall:
	rm -f $(TARGET)

check:
	@shellcheck -s sh $(SCRIPT)
