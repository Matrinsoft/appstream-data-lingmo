PREFIX ?= /usr
DESTDIR ?=

all:
	@echo "appstream-data-lingmo: nothing to build"

install:
	install -d $(DESTDIR)$(PREFIX)/share/appstream
	install -m 644 data/*.xml $(DESTDIR)$(PREFIX)/share/appstream/ 2>/dev/null || true
	install -m 644 data/*.yml $(DESTDIR)$(PREFIX)/share/appstream/ 2>/dev/null || true

clean:
	@echo "nothing to clean"

.PHONY: all install clean
