#!/bin/bash
./autogen.sh &&
./configure --prefix=/usr \
            --enable-sdl &&
make -j $SHED_NUMJOBS &&
make DESTDIR="$SHED_FAKEROOT" install &&
install -v -Dm755 "${SHED_FAKEROOT}/usr/games/angband" "${SHED_FAKEROOT}/usr/bin/angband" &&
rm -rfv "${SHED_FAKEROOT}/usr/games"
