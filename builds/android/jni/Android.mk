LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

REL_PATH:= ../../..
ABS_PATH:= $(LOCAL_PATH)/$(REL_PATH)

#see doc/INSTALL.ANY

#base component (required)
LOCAL_SRC_FILES:= 						\
	$(REL_PATH)/src/base/ftsystem.c		\
	$(REL_PATH)/src/base/ftinit.c		\
	$(REL_PATH)/src/base/ftdebug.c		\
	$(REL_PATH)/src/base/ftbase.c		\
	$(REL_PATH)/src/base/ftglyph.c		\
	$(REL_PATH)/src/base/ftbitmap.c		\
	$(REL_PATH)/src/sfnt/sfnt.c			\
	$(REL_PATH)/src/truetype/truetype.c	\
	$(REL_PATH)/src/smooth/smooth.c		\
	$(REL_PATH)/src/psnames/psnames.c	\
	$(REL_PATH)/src/autofit/autofit.c	\
	$(REL_PATH)/src/base/ftbdf.c			\
	$(REL_PATH)/src/base/fttype1.c

LOCAL_C_INCLUDES:= $(ABS_PATH)/include

LOCAL_EXPORT_C_INCLUDES:= $(ABS_PATH)/include

LOCAL_CFLAGS :=							\
	-DFT2_BUILD_LIBRARY=1

LOCAL_MODULE:= freetype2
LOCAL_LDLIBS:= -lz -llog

include $(BUILD_SHARED_LIBRARY)
