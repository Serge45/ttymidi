all:
	${CC} src/ttymidi.c -o ttymidi -D_POSIX_C_SOURCE=200809L -Wall -std=c99 -lasound -lpthread 
clean:
	rm ttymidi
install:
	mkdir -p $(DESTDIR)/bin
	cp ttymidi $(DESTDIR)/bin
uninstall:
	rm $(DESTDIR)/bin/ttymidi
