################################################################################
#
# RetroLX kernel package
#
################################################################################

# Custom kernel
RETROLX_KERNEL_RK356X_VERSION_VALUE = 20211118
RETROLX_KERNEL_RK356X_ARCH = rk356x
RETROLX_KERNEL_RK356X_VERSION = $(RETROLX_KERNEL_RK356X_ARCH)-$(RETROLX_KERNEL_RK356X_VERSION_VALUE)
RETROLX_KERNEL_RK356X_SOURCE = kernel-$(RETROLX_KERNEL_RK356X_ARCH)-$(RETROLX_KERNEL_RK356X_VERSION_VALUE).tar.gz
RETROLX_KERNEL_RK356X_SITE = https://github.com/RetroLX/kernel/releases/download/$(RETROLX_KERNEL_RK356X_VERSION)

define RETROLX_KERNEL_RK356X_INSTALL_TARGET_CMDS
	cd $(@D) && tar xzvf $(DL_DIR)/$(RETROLX_KERNEL_RK356X_DL_SUBDIR)/$(RETROLX_KERNEL_RK356X_SOURCE) && cp $(@D)/*      $(BINARIES_DIR)/
endef

$(eval $(generic-package))
