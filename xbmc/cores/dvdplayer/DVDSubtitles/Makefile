INCLUDES+=-I/home/pivos/proj/xbmc-16.1-Jarvis/xbmc/cores/dvdplayer

SRCS  = DVDFactorySubtitle.cpp
SRCS += DVDSubtitleLineCollection.cpp
SRCS += DVDSubtitleParserMicroDVD.cpp
SRCS += DVDSubtitleParserMPL2.cpp
SRCS += DVDSubtitleParserSami.cpp
SRCS += DVDSubtitleParserSSA.cpp
SRCS += DVDSubtitleParserSubrip.cpp
SRCS += DVDSubtitleParserVplayer.cpp
SRCS += DVDSubtitleTagMicroDVD.cpp
SRCS += DVDSubtitleTagSami.cpp
SRCS += DVDSubtitlesLibass.cpp
SRCS += DVDSubtitleStream.cpp

LIB = DVDSubtitles.a

include /home/pivos/proj/xbmc-16.1-Jarvis/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

