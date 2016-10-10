INCLUDES+=-I/home/pivos/proj/xbmc-16.1-Jarvis/xbmc/cores/dvdplayer

SRCS  = DVDVideoCodec.cpp
SRCS += DVDVideoCodecFFmpeg.cpp
SRCS += DVDVideoCodecLibMpeg2.cpp
SRCS += DVDVideoPPFFmpeg.cpp

ifeq (0,1)
SRCS += VDPAU.cpp
endif
ifeq (0,1)
SRCS += VAAPI.cpp
endif
ifeq ($(findstring osx,arm),osx)
SRCS += DVDVideoCodecVDA.cpp
SRCS += VDA.cpp
endif
ifeq (0,1)
SRCS += OpenMax.cpp
SRCS += OpenMaxVideo.cpp
SRCS += DVDVideoCodecOpenMax.cpp
endif
ifeq (,1)
SRCS += DVDVideoCodecIMX.cpp
endif
ifeq (1,1)
SRCS += AMLCodec.cpp
SRCS += DVDVideoCodecAmlogic.cpp
INCLUDES += -I$(prefix)/include/amcodec
INCLUDES += -I$(prefix)/include/amplayer
endif

ifeq (1,1)
SRCS += DVDVideoCodecAndroidMediaCodec.cpp
endif
ifeq (,1)
SRCS += DVDVideoCodecStageFright.cpp
endif

ifeq (,1)
SRCS += MMALCodec.cpp
endif

LIB=Video.a

include /home/pivos/proj/xbmc-16.1-Jarvis/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

