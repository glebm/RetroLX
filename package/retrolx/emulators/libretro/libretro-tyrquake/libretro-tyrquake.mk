################################################################################
#
# TYRQUAKE - Quake 1 Engine
#
################################################################################
# Version.: Commits on Nov 6, 2021
LIBRETRO_TYRQUAKE_VERSION = 19aa11e965a6dbb31d418e99bcd14d86eb822b20
LIBRETRO_TYRQUAKE_SITE = $(call github,libretro,tyrquake,$(LIBRETRO_TYRQUAKE_VERSION))
LIBRETRO_TYRQUAKE_LICENSE = GPLv2

LIBRETRO_TYRQUAKE_PKG_DIR = $(TARGET_DIR)/opt/retrolx/libretro
LIBRETRO_TYRQUAKE_PKG_INSTALL_DIR = /userdata/packages/$(RETROLX_SYSTEM_ARCH)/lr-tyrquake

LIBRETRO_TYRQUAKE_PLATFORM = $(LIBRETRO_PLATFORM)

ifeq ($(BR2_PACKAGE_RETROLX_TARGET_S812),y)
LIBRETRO_TYRQUAKE_PLATFORM = armv

else ifeq ($(BR2_PACKAGE_RETROLX_TARGET_RPI3),y)
LIBRETRO_TYRQUAKE_PLATFORM = rpi3_64

else ifeq ($(BR2_PACKAGE_RETROLX_TARGET_RPI4),y)
LIBRETRO_TYRQUAKE_PLATFORM = rpi4_64

else ifeq ($(BR2_aarch64),y)
LIBRETRO_TYRQUAKE_PLATFORM = unix
endif

define LIBRETRO_TYRQUAKE_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" -C $(@D)/ -f Makefile platform="$(LIBRETRO_TYRQUAKE_PLATFORM)"
endef

define LIBRETRO_TYRQUAKE_MAKEPKG
	# Create directories
	mkdir -p $(LIBRETRO_TYRQUAKE_PKG_DIR)$(LIBRETRO_TYRQUAKE_PKG_INSTALL_DIR)

	# Copy package files
	$(INSTALL) -D $(@D)/tyrquake_libretro.so \
	$(LIBRETRO_TYRQUAKE_PKG_DIR)$(LIBRETRO_TYRQUAKE_PKG_INSTALL_DIR)

	# Build Pacman package
	cd $(LIBRETRO_TYRQUAKE_PKG_DIR) && $(BR2_EXTERNAL_RETROLX_PATH)/scripts/retrolx-makepkg \
	$(BR2_EXTERNAL_RETROLX_PATH)/package/retrolx/emulators/libretro/libretro-tyrquake/PKGINFO \
	$(RETROLX_SYSTEM_ARCH) $(HOST_DIR)
	mv $(TARGET_DIR)/opt/retrolx/*.zst $(BR2_EXTERNAL_RETROLX_PATH)/repo/$(RETROLX_SYSTEM_ARCH)/

	# Cleanup
	rm -Rf $(TARGET_DIR)/opt/retrolx/*
endef

LIBRETRO_TYRQUAKE_POST_INSTALL_TARGET_HOOKS = LIBRETRO_TYRQUAKE_MAKEPKG

$(eval $(generic-package))
