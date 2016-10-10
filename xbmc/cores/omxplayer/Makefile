CXXFLAGS += -D__STDC_FORMAT_MACROS

SRCS  = OMXHelper.cpp
SRCS += OMXAudio.cpp
SRCS += OMXVideo.cpp
SRCS += OMXAudioCodecOMX.cpp
SRCS += OMXPlayerAudio.cpp
SRCS += OMXPlayerVideo.cpp
SRCS += OMXImage.cpp

LIB = omxplayer.a

/home/pivos/proj/xbmc-16.1-Jarvis/system/advancedsettings.xml: $(LIB)
	cp -f omxplayer_advancedsettings.xml $@

include /home/pivos/proj/xbmc-16.1-Jarvis/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

