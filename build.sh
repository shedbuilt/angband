#!/bin/bash
./autogen.sh &&
./configure --prefix=/usr \
            --enable-sdl &&
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install &&
install -v -Dm755 "${SHED_FAKE_ROOT}/usr/games/angband" "${SHED_FAKE_ROOT}/usr/bin/angband" &&
rm -rfv "${SHED_FAKE_ROOT}/usr/games"
