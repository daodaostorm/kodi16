INCLUDES+=-I/home/pivos/proj/xbmc-16.1-Jarvis/xbmc/cores/dvdplayer

SRCS  = DVDOverlayCodec.cpp
SRCS += DVDOverlayCodecFFmpeg.cpp
SRCS += DVDOverlayCodecSSA.cpp
SRCS += DVDOverlayCodecText.cpp
SRCS += DVDOverlayCodecTX3G.cpp
SRCS += contrib/cc_decoder.c
SRCS += contrib/cc_decoder708.cpp

LIB = Overlay.a

include /home/pivos/proj/xbmc-16.1-Jarvis/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

