## mawled

[![Build Status](https://github.com/tomhrr/mawled/workflows/build/badge.svg?branch=master)](https://github.com/tomhrr/mawled/actions)

mawled is a basic X11 tiling window manager, inspired by xmonad,
though with fewer features.  It serves mainly as an example project
for [Dale](https://github.com/tomhrr/dale).

### Dependencies

  * Dale (>= 0.3)
  * X11 development libraries

### Install

    make
    sudo make install

### Setup

The `MAWLED_TERMINAL` environment variable will be read to determine
the terminal command.  If it is not set, it defaults to `xterm`.

### Key bindings

`mod-shift-return`: Launch terminal.

`mod-shift-c`: Close the focussed window.

`mod-tab`: Move focus to the next window.

`mod-shift-tab`: Move focus to the previous window.

`mod-return`: Swap the focussed window and the master window.

`mod-p`: Switch to the fullscreen layout.

`mod-left bracket`: Switch to the vertical layout.

`mod-right bracket`: Switch to the horizontal layout.

`mod-[1..9]`: Switch to workspace N.

`mod-shift-[1..9]`: Move focussed window to workspace N.

### Licence

See LICENCE.

