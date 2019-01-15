LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_MODULE := tmx

LOCAL_SRC_FILES := \
	$(wildcard $(LOCAL_PATH)/src/*.c)

LOCAL_CFLAGS := \
	-D_REENTRANT\
	-DWANT_ZLIB\
	-O2\
	-pedantic-errors\
	-std=c99\
	-Wall\
	-Wextra

LOCAL_LDLIBS := -landroid -lz

LOCAL_STATIC_LIBRARIES :=
LOCAL_SHARED_LIBRARIES := libxml2

include $(BUILD_SHARED_LIBRARY)
