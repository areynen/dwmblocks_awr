PREFIX ?= /usr/local

output: dwmblocks.c config.h
	cc `pkg-config --cflags x11` `pkg-config --libs x11` dwmblocks.c -o dwmblocks -lX11
clean:
	rm -f *.o *.gch dwmblocks
install: output
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f dwmblocks $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmblocks
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks
