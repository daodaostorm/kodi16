ifeq (1, 1)
INCLUDES+=-I/home/pivos/proj/xbmc-16.1-Jarvis/lib/libUPnP \
          -I/home/pivos/proj/xbmc-16.1-Jarvis/lib/libUPnP/Platinum/Source/Core \
          -I/home/pivos/proj/xbmc-16.1-Jarvis/lib/libUPnP/Platinum/Source/Platinum \
          -I/home/pivos/proj/xbmc-16.1-Jarvis/lib/libUPnP/Platinum/Source/Devices/MediaConnect \
          -I/home/pivos/proj/xbmc-16.1-Jarvis/lib/libUPnP/Platinum/Source/Devices/MediaRenderer \
          -I/home/pivos/proj/xbmc-16.1-Jarvis/lib/libUPnP/Platinum/Source/Devices/MediaServer \
          -I/home/pivos/proj/xbmc-16.1-Jarvis/lib/libUPnP/Platinum/Source/Extras \
          -I/home/pivos/proj/xbmc-16.1-Jarvis/lib/libUPnP/Neptune/Source/System/Posix \
          -I/home/pivos/proj/xbmc-16.1-Jarvis/lib/libUPnP/Neptune/Source/Core

SRCS= UPnP.cpp \
      UPnPInternal.cpp \
      UPnPPlayer.cpp \
      UPnPRenderer.cpp \
      UPnPServer.cpp \
      UPnPSettings.cpp \

LIB=upnp.a

include /home/pivos/proj/xbmc-16.1-Jarvis/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

endif

