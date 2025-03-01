################################################################################
#
# LIBRETRO-FLYCAST
#
################################################################################
# Version.: Commits on Nov 22, 2021
LIBRETRO_FLYCAST_VERSION = 465499f6c322267f2ef246465070f7eb7223a190
LIBRETRO_FLYCAST_SITE = https://github.com/flyinghead/flycast.git
LIBRETRO_FLYCAST_SITE_METHOD = git
LIBRETRO_FLYCAST_GIT_SUBMODULES = YES
LIBRETRO_FLYCAST_LICENSE = GPLv2

LIBRETRO_FLYCAST_PKG_DIR = $(TARGET_DIR)/opt/retrolx/libretro
LIBRETRO_FLYCAST_PKG_INSTALL_DIR = /userdata/packages/$(RETROLX_SYSTEM_ARCH)/lr-flycast

LIBRETRO_FLYCAST_CONF_OPTS += -DLIBRETRO=ON

# hack, building with Vulkan currently fails
LIBRETRO_FLYCAST_CONF_OPTS += -DUSE_VULKAN=OFF

# GLES 3
ifeq ($(BR2_PACKAGE_RETROLX_TARGET_RPI4)$(BR2_PACKAGE_RETROLX_TARGET_EXYNOS5422)$(BR2_PACKAGE_RETROLX_PANFROST_MESA3D),y)
LIBRETRO_FLYCAST_CONF_OPTS += -DUSE_GLES=ON
# GLES 2
else ifeq ($(BR2_PACKAGE_RETROLX_TARGET_RPI3)$(BR2_PACKAGE_RETROLX_LIMA_MESA3D),y)
LIBRETRO_FLYCAST_CONF_OPTS += -DUSE_GLES2=ON
endif

LIBRETRO_FLYCAST_SUPPORTS_IN_SOURCE_BUILD = NO

define LIBRETRO_FLYCAST_INSTALL_TARGET_CMDS
	echo "lr-flycast built as package, no rootfs install"
endef

define LIBRETRO_FLYCAST_MAKEPKG
	# Create directories
	mkdir -p $(LIBRETRO_FLYCAST_PKG_DIR)$(LIBRETRO_FLYCAST_PKG_INSTALL_DIR)

	# Copy package files
	$(INSTALL) -D $(@D)/buildroot-build/flycast_libretro.so \
	$(LIBRETRO_FLYCAST_PKG_DIR)$(LIBRETRO_FLYCAST_PKG_INSTALL_DIR)

	# Build Pacman package
	cd $(LIBRETRO_FLYCAST_PKG_DIR) && $(BR2_EXTERNAL_RETROLX_PATH)/scripts/retrolx-makepkg \
	$(BR2_EXTERNAL_RETROLX_PATH)/package/retrolx/emulators/libretro/libretro-flycast/PKGINFO \
	$(RETROLX_SYSTEM_ARCH) $(HOST_DIR)
	mv $(TARGET_DIR)/opt/retrolx/*.zst $(BR2_EXTERNAL_RETROLX_PATH)/repo/$(RETROLX_SYSTEM_ARCH)/

	# Cleanup
	rm -Rf $(TARGET_DIR)/opt/retrolx/*
endef

LIBRETRO_FLYCAST_POST_INSTALL_TARGET_HOOKS = LIBRETRO_FLYCAST_MAKEPKG

$(eval $(cmake-package))
