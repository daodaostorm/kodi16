ARCH=arm

OBJS +=libexif.o ExifParse.o IptcParse.o JpegParse.o
CFLAGS +=-D_LINUX -D_DLL -fPIC -O2
CXXFLAGS +=-D_LINUX -D_DLL -fPIC -O2

SYSDIR=/home/pivos/proj/xbmc-16.1-Jarvis/system
SO=libexif-$(ARCH).so
SLIB=/home/pivos/proj/xbmc-16.1-Jarvis/system/$(SO)

$(SLIB): $(OBJS)
ifeq ($(findstring osx,$(ARCH)), osx)
	$(CXX) $(LDFLAGS) -Wl,-alias_list,/home/pivos/proj/xbmc-16.1-Jarvis/xbmc/cores/DllLoader/exports/wrapper_mach_alias \
		-bundle -undefined dynamic_lookup -read_only_relocs suppress -o $@ \
		/home/pivos/proj/xbmc-16.1-Jarvis/xbmc/cores/DllLoader/exports/wrapper.o $(OBJS)
else
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -shared -o $@ $(OBJS) -Wl,--unresolved-symbols=ignore-all \
		`cat /home/pivos/proj/xbmc-16.1-Jarvis/xbmc/cores/DllLoader/exports/wrapper.def` /home/pivos/proj/xbmc-16.1-Jarvis/xbmc/cores/DllLoader/exports/wrapper.o
endif

include /home/pivos/proj/xbmc-16.1-Jarvis/Makefile.include
