################################################################################
#
# CAP32
#
################################################################################
# Version.: Commits on Nov 19, 2021
LIBRETRO_CAP32_VERSION = 22a0d3750093c94dba8f95cd21f5a7dfeac88f53
LIBRETRO_CAP32_SITE = $(call github,libretro,libretro-cap32,$(LIBRETRO_CAP32_VERSION))
LIBRETRO_CAP32_LICENSE = GPLv2

LIBRETRO_CAP32_PKG_DIR = $(TARGET_DIR)/opt/retrolx/libretro
LIBRETRO_CAP32_PKG_INSTALL_DIR = /userdata/packages/$(RETROLX_SYSTEM_ARCH)/lr-cap32

LIBRETRO_CAP32_PLATFORM = $(LIBRETRO_PLATFORM)

ifeq ($(BR2_arm1176jzf_s),y)
LIBRETRO_CAP32_PLATFORM = armv
else ifeq ($(BR2_arm),y)
LIBRETRO_CAP32_PLATFORM = armv neon
else
LIBRETRO_CAP32_PLATFORM = unix
endif

define LIBRETRO_CAP32_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" -C $(@D)/ -f Makefile platform="$(LIBRETRO_CAP32_PLATFORM)"
endef

define LIBRETRO_CAP32_MAKEPKG
	# Create directories
	mkdir -p $(LIBRETRO_CAP32_PKG_DIR)$(LIBRETRO_CAP32_PKG_INSTALL_DIR)

	# Copy package files
	$(INSTALL) -D $(@D)/cap32_libretro.so \
	$(LIBRETRO_CAP32_PKG_DIR)$(LIBRETRO_CAP32_PKG_INSTALL_DIR)

	# Build Pacman package
	cd $(LIBRETRO_CAP32_PKG_DIR) && $(BR2_EXTERNAL_RETROLX_PATH)/scripts/retrolx-makepkg \
	$(BR2_EXTERNAL_RETROLX_PATH)/package/retrolx/emulators/libretro/libretro-cap32/PKGINFO \
	$(RETROLX_SYSTEM_ARCH) $(HOST_DIR)
	mv $(TARGET_DIR)/opt/retrolx/*.zst $(BR2_EXTERNAL_RETROLX_PATH)/repo/$(RETROLX_SYSTEM_ARCH)/

	# Cleanup
	rm -Rf $(TARGET_DIR)/opt/retrolx/*
endef

LIBRETRO_CAP32_POST_INSTALL_TARGET_HOOKS = LIBRETRO_CAP32_MAKEPKG

$(eval $(generic-package))
