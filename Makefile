all: mawled

mawled: xlib workspace
	dalec -lm -O4 --static-modules src/mawled.dt -lX11 -o mawled

workspace: xlib
	dalec -c src/workspace.dt

xlib:
	dalec -c src/x11-xlib.dt

clean:
	rm -f mawled && rm *.so && rm *.bc && rm *.dtm
