INCLUDES  = -I/home/pivos/proj/xbmc-16.1-Jarvis
INCLUDES += -I/home/pivos/proj/xbmc-16.1-Jarvis/xbmc
INCLUDES += -I/home/pivos/proj/xbmc-16.1-Jarvis/xbmc/linux

.SUFFIXES : .m .mm

SRCS  = XBMCHelper.m
SRCS += AutoPool.mm
SRCS += DarwinUtils.mm
SRCS += CocoaInterface.mm
SRCS += HotKeyController.m
SRCS += OSXGNUReplacements.c
SRCS += OSXTextInputResponder.mm
ifeq ($(findstring osx,arm), osx)
SRCS += smc.c
endif
	
LIB = osx.a

include /home/pivos/proj/xbmc-16.1-Jarvis/Makefile.include
