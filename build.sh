#!/bin/bash
./autogen.sh
./configure --prefix=/usr
make -j $SHED_NUMJOBS
make "DESTDIR=$SHED_FAKEROOT" install
install -Dm755 "${SHED_FAKEROOT}/usr/games/angband" "${SHED_FAKEROOT}/usr/bin/angband"
rmdir "${SHED_FAKEROOT}/usr/games"
