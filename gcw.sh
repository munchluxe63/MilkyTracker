#!/bin/sh

env ac_cv_func_realloc_0_nonnull=yes ac_cv_func_malloc_0_nonnull=yes ./configure --host=mipsel-linux  --target=mipsel-linux --without-jack

make

cp ./src/tracker/milkytracker ./opkbuild/

mksquashfs opk_build milky.opk -all-root -noappend -no-exports -no-xattrs

scp ./milky.opk root@192.168.0.156:/media/data/apps/


