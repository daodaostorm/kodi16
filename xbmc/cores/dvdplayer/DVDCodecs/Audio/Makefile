INCLUDES+=-I/home/pivos/proj/xbmc-16.1-Jarvis/xbmc/cores/dvdplayer

CXXFLAGS+=-DHAVE_MMX

SRCS  = DVDAudioCodecFFmpeg.cpp
SRCS += DVDAudioCodecPassthrough.cpp

LIB=Audio.a

include /home/pivos/proj/xbmc-16.1-Jarvis/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

