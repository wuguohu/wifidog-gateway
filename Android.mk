LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libhttpd
LOCAL_C_INCLUDES=$(LOCAL_PATH)/libhttpd
LOCAL_SRC_FILES := ./libhttpd/api.c \
                   ./libhttpd/ip_acl.c \
                   ./libhttpd/protocol.c \
                   ./libhttpd/version.c
LOCAL_CFLAGS := -pie -fPIE
LOCAL_LDFLAGS := -pie -fPIE -shared
LOCAL_LDLIBS    := -llog -pthread
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wdctl
LOCAL_C_INCLUDES=$(LOCAL_PATH)/libhttpd
LOCAL_SRC_FILES = src/wdctl.c
LOCAL_CFLAGS := -pie -fPIE
LOCAL_LDFLAGS := -pie -fPIE
LOCAL_LDLIBS    := -llog -pthread
LOCAL_SHARED_LIBRARIES = $(SHARED_LIBRARIES)
#LOCAL_SHARED_LIBRARIES := libcutil
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := wifidog
LOCAL_C_INCLUDES=$(LOCAL_PATH)/libhttpd
LOCAL_SRC_FILES = src/gateway.c \
                  src/auth.c \
                  src/client_list.c \
                  src/conf.c \
                  src/firewall.c \
                  src/http.c \
                  src/safe.c \
                  src/centralserver.c \
                  src/commandline.c \
                  src/debug.c \
                  src/fw_iptables.c \
                  src/httpd_thread.c \
                  src/ping_thread.c \
                  src/util.c \
                  src/wdctl_thread.c \
                  src/simple_http.c \
                  src/pstring.c \
                  src/wd_util.c \
                  src/main.c \
                  ./libhttpd/api.c \
                  ./libhttpd/ip_acl.c \
                  ./libhttpd/protocol.c \
                  ./libhttpd/version.c
LOCAL_CFLAGS := -pie -fPIE
LOCAL_LDFLAGS := -pie -fPIE
LOCAL_LDLIBS    := -llog -pthread
LOCAL_SHARED_LIBRARIES = $(SHARED_LIBRARIES)
include $(BUILD_EXECUTABLE)
