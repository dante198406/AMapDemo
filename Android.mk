LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-subdir-java-files)
LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v4 \
    amap-sdk \
    amap-location \
    amap-navi \
    msc

LOCAL_PACKAGE_NAME := AMapDemo


LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := platform
LOCAL_PROGUARD_ENABLED := disabled
include $(BUILD_PACKAGE)
include $(CLEAR_VARS)
LOCAL_JNI_SHARED_LIBRARIES := \
    libgdamapv4sdk751 \
    libgdamapv4sdk751ex \
    libmsc \
    libtbt \
    libwtbt

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
    amap-sdk:libs/3d-map-sdk-v3.1.0.jar \
    amap-location:libs/location-v1.4.1.jar \
    amap-navi:libs/navi-v1.5.0.jar \
    msc:libs/msc.jar
    
include $(BUILD_MULTI_PREBUILT)

include $(call all-makefiles-under, $(LOCAL_PATH))
