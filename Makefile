libzxc:
	@echo "[CC] zxc.o"
	@gcc -c zxc/zxc.c -o zxc.o
	@echo "[LD] libzxc.so"
	@gcc -shared -o libzxc.so zxc.o

headers:
	mkdir -p $(DESTDIR)/usr/include
	install -m775 include/zxc.h $(DESTDIR)/usr/include/zxc.h

install: headers
	mkdir -p $(DESTDIR)/usr/lib64
	install -m775 libzxc.so $(DESTDIR)/usr/lib64/libzxc.so

clean:
	rm -rf zxc.o
	rm -rf libzxc.so
