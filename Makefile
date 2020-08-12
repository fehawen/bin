PREFIX ?= $(HOME)

.SILENT:

all:
	@echo Run \'make install\' to install scripts.

install:
	./install.sh "install"

uninstall:
	./install.sh "uninstall"
