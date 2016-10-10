ARCH=arm

.PHONY: compile

ifneq ($(findstring osx,$(ARCH)), osx)
CFLAGS += -DHAS_ALSA
CXXFLAGS += -DHAS_ALSA
endif

SRCS  = AudioDecoder.cpp
SRCS += CodecFactory.cpp
SRCS += DVDPlayerCodec.cpp
SRCS += PAPlayer.cpp

LIB = paplayer.a

include /home/pivos/proj/xbmc-16.1-Jarvis/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))
