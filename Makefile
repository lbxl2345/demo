CFLAGS += -g -O3

all: 
	$(CC) $(CFLAGS) -o libdemo.so -fPIC libdemo.c $(LDFLAGS) -shared
	$(CC) $(CFLAGS) -o demo demo.c $(LDFLAGS) -L. -ldemo

clean:
	$(RM) demo libdemo.so

install:
	install -d $(DESTDIR)/usr/bin
	install -m 755 demo $(DESTDIR)/usr/bin
	install -d $(DESTDIR)/usr/lib
	install -m 644 libdemo.so $(DESTDIR)/usr/lib	

