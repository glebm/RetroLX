################################################################################
#
# LIBRETRO-VICE
#
################################################################################
# Version.: Commits on Nov 19, 2021
LIBRETRO_VICE_VERSION = 81e9837fe4aee32c2e88967fa2f0ca3de240f735
LIBRETRO_VICE_SITE = $(call github,libretro,vice-libretro,$(LIBRETRO_VICE_VERSION))
LIBRETRO_VICE_LICENSE = GPLv2

LIBRETRO_VICE_PKG_DIR = $(TARGET_DIR)/opt/retrolx/libretro
LIBRETRO_VICE_PKG_INSTALL_DIR = /userdata/packages/$(RETROLX_SYSTEM_ARCH)/lr-vice

LIBRETRO_VICE_PLATFORM = $(LIBRETRO_PLATFORM)

ifeq ($(BR2_PACKAGE_RETROLX_TARGET_S812),y)
LIBRETRO_VICE_PLATFORM = armv neon

else ifeq ($(BR2_aarch64),y)
LIBRETRO_VICE_PLATFORM = unix

else ifeq ($(BR2_PACKAGE_RETROLX_TARGET_RPI3),y)
LIBRETRO_VICE_PLATFORM = armv neon
endif

define LIBRETRO_VICE_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" -C $(@D) -f Makefile platform="$(LIBRETRO_VICE_PLATFORM)" EMUTYPE=x64
	$(TARGET_CONFIGURE_OPTS) $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" -C $(@D) -f Makefile platform="$(LIBRETRO_VICE_PLATFORM)" EMUTYPE=x64sc
	$(TARGET_CONFIGURE_OPTS) $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" -C $(@D) -f Makefile platform="$(LIBRETRO_VICE_PLATFORM)" EMUTYPE=x128
	$(TARGET_CONFIGURE_OPTS) $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" -C $(@D) -f Makefile platform="$(LIBRETRO_VICE_PLATFORM)" EMUTYPE=xpet
	$(TARGET_CONFIGURE_OPTS) $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" -C $(@D) -f Makefile platform="$(LIBRETRO_VICE_PLATFORM)" EMUTYPE=xplus4
	$(TARGET_CONFIGURE_OPTS) $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" -C $(@D) -f Makefile platform="$(LIBRETRO_VICE_PLATFORM)" EMUTYPE=xvic
endef

define LIBRETRO_VICE_MAKEPKG
	# Create directories
	mkdir -p $(LIBRETRO_VICE_PKG_DIR)$(LIBRETRO_VICE_PKG_INSTALL_DIR)

	# Copy package files
	$(INSTALL) -D $(@D)/vice_x64_libretro.so $(LIBRETRO_VICE_PKG_DIR)$(LIBRETRO_VICE_PKG_INSTALL_DIR)
	$(INSTALL) -D $(@D)/vice_x64sc_libretro.so $(LIBRETRO_VICE_PKG_DIR)$(LIBRETRO_VICE_PKG_INSTALL_DIR)
	$(INSTALL) -D $(@D)/vice_x128_libretro.so $(LIBRETRO_VICE_PKG_DIR)$(LIBRETRO_VICE_PKG_INSTALL_DIR)
	$(INSTALL) -D $(@D)/vice_xpet_libretro.so $(LIBRETRO_VICE_PKG_DIR)$(LIBRETRO_VICE_PKG_INSTALL_DIR)
	$(INSTALL) -D $(@D)/vice_xplus4_libretro.so $(LIBRETRO_VICE_PKG_DIR)$(LIBRETRO_VICE_PKG_INSTALL_DIR)
	$(INSTALL) -D $(@D)/vice_xvic_libretro.so $(LIBRETRO_VICE_PKG_DIR)$(LIBRETRO_VICE_PKG_INSTALL_DIR)

	# Build Pacman package
	cd $(LIBRETRO_VICE_PKG_DIR) && $(BR2_EXTERNAL_RETROLX_PATH)/scripts/retrolx-makepkg \
	$(BR2_EXTERNAL_RETROLX_PATH)/package/retrolx/emulators/libretro/libretro-vice/PKGINFO \
	$(RETROLX_SYSTEM_ARCH) $(HOST_DIR)
	mv $(TARGET_DIR)/opt/retrolx/*.zst $(BR2_EXTERNAL_RETROLX_PATH)/repo/$(RETROLX_SYSTEM_ARCH)/

	# Cleanup
	rm -Rf $(TARGET_DIR)/opt/retrolx/*
endef

LIBRETRO_VICE_POST_INSTALL_TARGET_HOOKS = LIBRETRO_VICE_MAKEPKG

$(eval $(generic-package))
