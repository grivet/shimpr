SCRIPT := shimpr
PREFIX ?= /usr/bin
TARGET := $(DESTDIR)$(PREFIX)/$(SCRIPT)

install: $(SCRIPT)
	install -Dm755 $< $(TARGET)

uninstall:
	rm -f $(TARGET)

check:
	@shellcheck -s sh $(SCRIPT)
