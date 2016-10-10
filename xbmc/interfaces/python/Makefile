ifeq (0,1)
DOXYGEN=none
endif

TOPDIR = /home/pivos/proj/xbmc-16.1-Jarvis
INTERFACES_DIR = /home/pivos/proj/xbmc-16.1-Jarvis/xbmc/interfaces
JAVA=/usr/bin/java
SWIG=/home/pivos/xbmc-depends/x86_64-linux-gnu-native/bin/swig
LIB=python_binding.a
all: $(LIB)

include ../../../codegenerator.mk

SRCS =	AddonPythonInvoker.cpp \
	CallbackHandler.cpp \
	ContextItemAddonInvoker.cpp \
	LanguageHook.cpp \
	PythonInvoker.cpp \
	XBPython.cpp \
	swig.cpp \
	PyContext.cpp \
	$(GENERATED)

INCLUDES += -I/home/pivos/xbmc-depends/arm-linux-androideabi-android-17/include/python2.6
.SECONDARY: $(GENERATED)

include ../../../Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

