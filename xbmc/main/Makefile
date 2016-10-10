.SUFFIXES : .m .mm .cpp

SRCS  = main.cpp
SRCS += posix/MessagePrinter.cpp

ifeq ($(findstring osx,arm),osx)
SRCS += osx/SDLMain.mm
endif

LIB=main.a

include /home/pivos/proj/xbmc-16.1-Jarvis/Makefile.include
-include $(patsubst %.mm,%.P,$(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS))))
