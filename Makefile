prefix=/usr/local
bindir=$(prefix)/bin

all: mawled

mawled: libx11-xlib.dtm libworkspace.dtm src/mawled.dt
	dalec -lm -O4 src/mawled.dt -lX11 -o mawled

libworkspace.dtm: libx11-xlib.dtm src/workspace.dt
	dalec -c src/workspace.dt

libx11-xlib.dtm: src/x11-xlib.dt
	dalec -c src/x11-xlib.dt

src/workspace.dt:
	true

src/x11-xlib.dt:
	true

src/mawled.dt:
	true

clean:
	rm -f mawled && rm *.so && rm *.bc && rm *.dtm

install:
	install -D -m 755 mawled $(bindir)/mawled
