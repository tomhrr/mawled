prefix=/usr/local
bindir=$(prefix)/bin

all: mawled

mawled: libx11-xlib.dtm libworkspace.dtm
	dalec -lm -O4 --static-modules src/mawled.dt -lX11 -o mawled

libworkspace.dtm: libx11-xlib.dtm
	dalec -c src/workspace.dt

libx11-xlib.dtm:
	dalec -c src/x11-xlib.dt

clean:
	rm -f mawled && rm *.so && rm *.bc && rm *.dtm

install:
	install mawled $(bindir)/mawled -m 755
