SRCS  = HTTPPythonInvoker.cpp \
        HTTPPythonWsgiInvoker.cpp \

LIB = httprequesthandlers-python.a

INCLUDES += -I/home/pivos/xbmc-depends/arm-linux-androideabi-android-17/include/python2.6

include /home/pivos/proj/xbmc-16.1-Jarvis/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))
