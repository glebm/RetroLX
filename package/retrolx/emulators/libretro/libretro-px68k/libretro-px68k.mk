################################################################################
#
# PX68K
#
################################################################################
# Version. Commits on Nov 7, 2021
LIBRETRO_PX68K_VERSION = ea6e5a7ac00b6472cafca0132fddf854ec7bd666
LIBRETRO_PX68K_SITE = $(call github,libretro,px68k-libretro,$(LIBRETRO_PX68K_VERSION))
LIBRETRO_PX68K_LICENSE = Unknown

LIBRETRO_PX68K_PKG_DIR = $(TARGET_DIR)/opt/retrolx/libretro
LIBRETRO_PX68K_PKG_INSTALL_DIR = /userdata/packages/$(RETROLX_SYSTEM_ARCH)/lr-px68k

define LIBRETRO_PX68K_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" -C $(@D)/ -f Makefile.libretro platform="$(LIBRETRO_PLATFORM)"
endef

define LIBRETRO_PX68K_MAKEPKG
	# Create directories
	mkdir -p $(LIBRETRO_PX68K_PKG_DIR)$(LIBRETRO_PX68K_PKG_INSTALL_DIR)/bios/keropi

	# Copy package files
	$(INSTALL) -D $(@D)/px68k_libretro.so \
	$(LIBRETRO_PX68K_PKG_DIR)$(LIBRETRO_PX68K_PKG_INSTALL_DIR)

	# Write config
	echo "[WinX68k]" > $(LIBRETRO_PX68K_PKG_DIR)$(LIBRETRO_PX68K_PKG_INSTALL_DIR)/bios/keropi/config
	echo "StartDir=/userdata/roms/x68000/" >> $(LIBRETRO_PX68K_PKG_DIR)$(LIBRETRO_PX68K_PKG_INSTALL_DIR)/bios/keropi/config

	# Build Pacman package
	cd $(LIBRETRO_PX68K_PKG_DIR) && $(BR2_EXTERNAL_RETROLX_PATH)/scripts/retrolx-makepkg \
	$(BR2_EXTERNAL_RETROLX_PATH)/package/retrolx/emulators/libretro/libretro-px68k/PKGINFO \
	$(RETROLX_SYSTEM_ARCH) $(HOST_DIR)
	mv $(TARGET_DIR)/opt/retrolx/*.zst $(BR2_EXTERNAL_RETROLX_PATH)/repo/$(RETROLX_SYSTEM_ARCH)/

	# Cleanup
	rm -Rf $(TARGET_DIR)/opt/retrolx/*
endef

LIBRETRO_PX68K_POST_INSTALL_TARGET_HOOKS = LIBRETRO_PX68K_MAKEPKG

$(eval $(generic-package))
