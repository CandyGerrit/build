ifneq ($(TARGET_IS_64_BIT)|$(LOCAL_32_BIT_ONLY),true|true)
# Build for TARGET_ARCH
LOCAL_2ND_ARCH_VAR_PREFIX :=
include $(BUILD_SYSTEM)/static_library_internal.mk
endif

ifdef TARGET_2ND_ARCH
ifneq ($(LOCAL_NO_2ND_ARCH),true)
# Build for TARGET_2ND_ARCH
OVERRIDE_BUILT_MODULE_PATH :=
LOCAL_BUILT_MODULE :=
LOCAL_INSTALLED_MODULE :=
LOCAL_MODULE_STEM :=
LOCAL_BUILT_MODULE_STEM :=
LOCAL_INSTALLED_MODULE_STEM :=
LOCAL_INTERMEDIATE_TARGETS :=

LOCAL_2ND_ARCH_VAR_PREFIX := $(TARGET_2ND_ARCH_VAR_PREFIX)
include $(BUILD_SYSTEM)/static_library_internal.mk
LOCAL_2ND_ARCH_VAR_PREFIX :=

endif # LOCAL_NO_2ND_ARCH
endif # TARGET_2ND_ARCH

my_module_arch_supported :=

###########################################################
## Copy headers to the install tree
###########################################################
include $(BUILD_COPY_HEADERS)
