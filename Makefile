PREFIX ?= $(HOME)

all:
	@echo Run \'make install\' to install scripts.

install:
	@mkdir -pv $(DESTDIR)$(PREFIX)/bin
	@cp -pv scripts/bat $(DESTDIR)$(PREFIX)/bin/bat
	@cp -pv scripts/bri $(DESTDIR)$(PREFIX)/bin/bri
	@cp -pv scripts/clo $(DESTDIR)$(PREFIX)/bin/clo
	@cp -pv scripts/dmn $(DESTDIR)$(PREFIX)/bin/dmn
	@cp -pv scripts/irc $(DESTDIR)$(PREFIX)/bin/irc
	@cp -pv scripts/luv $(DESTDIR)$(PREFIX)/bin/luv
	@cp -pv scripts/mon $(DESTDIR)$(PREFIX)/bin/mon
	@cp -pv scripts/pac $(DESTDIR)$(PREFIX)/bin/pac
	@cp -pv scripts/rnm $(DESTDIR)$(PREFIX)/bin/rnm
	@cp -pv scripts/scl $(DESTDIR)$(PREFIX)/bin/scl
	@cp -pv scripts/scr $(DESTDIR)$(PREFIX)/bin/scr
	@cp -pv scripts/sqh $(DESTDIR)$(PREFIX)/bin/sqh
	@cp -pv scripts/stx $(DESTDIR)$(PREFIX)/bin/stx
	@cp -pv scripts/tin $(DESTDIR)$(PREFIX)/bin/tin
	@cp -pv scripts/vol $(DESTDIR)$(PREFIX)/bin/vol
	@echo Add \'~/bin\' to PATH.

uninstall:
	@rm -fv $(DESTDIR)$(PREFIX)/bin/bat
	@rm -fv $(DESTDIR)$(PREFIX)/bin/bri
	@rm -fv $(DESTDIR)$(PREFIX)/bin/clo
	@rm -fv $(DESTDIR)$(PREFIX)/bin/dmn
	@rm -fv $(DESTDIR)$(PREFIX)/bin/irc
	@rm -fv $(DESTDIR)$(PREFIX)/bin/luv
	@rm -fv $(DESTDIR)$(PREFIX)/bin/mon
	@rm -fv $(DESTDIR)$(PREFIX)/bin/pac
	@rm -fv $(DESTDIR)$(PREFIX)/bin/rnm
	@rm -fv $(DESTDIR)$(PREFIX)/bin/scl
	@rm -fv $(DESTDIR)$(PREFIX)/bin/scr
	@rm -fv $(DESTDIR)$(PREFIX)/bin/sqh
	@rm -fv $(DESTDIR)$(PREFIX)/bin/stx
	@rm -fv $(DESTDIR)$(PREFIX)/bin/tin
	@rm -fv $(DESTDIR)$(PREFIX)/bin/vol
