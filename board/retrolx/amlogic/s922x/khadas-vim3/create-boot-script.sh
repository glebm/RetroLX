#!/bin/bash

# HOST_DIR = host dir
# BOARD_DIR = board specific dir
# BUILD_DIR = base dir/build
# BINARIES_DIR = images dir
# TARGET_DIR = target dir
# RETROLX_BINARIES_DIR = RetroLX binaries sub directory

HOST_DIR=$1
BOARD_DIR=$2
BUILD_DIR=$3
BINARIES_DIR=$4
TARGET_DIR=$5
RETROLX_BINARIES_DIR=$6

mkdir -p "${RETROLX_BINARIES_DIR}/boot/packages" || exit 1
cp -r "${BUILD_DIR}"/repo/* "${RETROLX_BINARIES_DIR}/boot/packages/" || exit 1

mkdir -p "${RETROLX_BINARIES_DIR}/boot/boot/extlinux" || exit 1

cp "${BINARIES_DIR}/Image"                             "${RETROLX_BINARIES_DIR}/boot/boot/linux"           || exit 1
cp "${BINARIES_DIR}/uInitrd"                           "${RETROLX_BINARIES_DIR}/boot/boot/uInitrd"         || exit 1
cp "${BINARIES_DIR}/rootfs.squashfs"                   "${RETROLX_BINARIES_DIR}/boot/boot/retrolx.update" || exit 1
cp "${BINARIES_DIR}/modules"                           "${RETROLX_BINARIES_DIR}/boot/boot/modules"         || exit 1

cp "${BINARIES_DIR}/meson-g12b-a311d-khadas-vim3.dtb"  "${RETROLX_BINARIES_DIR}/boot/boot/"          || exit 1
cp "${BINARIES_DIR}/boot.scr"                          "${RETROLX_BINARIES_DIR}/boot/"               || exit 1
cp "${BOARD_DIR}/boot/logo.bmp"                        "${RETROLX_BINARIES_DIR}/boot/boot/"          || exit 1
cp "${BOARD_DIR}/boot/extlinux.conf"                   "${RETROLX_BINARIES_DIR}/boot/boot/extlinux/" || exit 1

dd if="${BINARIES_DIR}/u-boot.bin.sd-amlogic.bin" of="${BINARIES_DIR}/u-boot1.bin" bs=1   count=444 || exit 1
dd if="${BINARIES_DIR}/u-boot.bin.sd-amlogic.bin" of="${BINARIES_DIR}/u-boot2.bin" bs=512 skip=1    || exit 1

exit 0
