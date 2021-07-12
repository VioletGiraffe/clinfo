TEMPLATE = app
CONFIG -= qt
CONFIG += console

mac* | linux*{
	CONFIG(release, debug|release):CONFIG += Release
	CONFIG(debug, debug|release):CONFIG += Debug
}

HEADERS += \
	src/ctx_prop.h \
	src/error.h \
	src/ext.h \
	src/fmtmacros.h \
	src/info_loc.h \
	src/info_ret.h \
	src/memory.h \
	src/ms_support.h \
	src/opt_out.h \
	src/strbuf.h

SOURCES += \
	src/clinfo.c

INCLUDEPATH += \
	$${PWD}/include/

LIBS += -L$${PWD}/lib/x86_64 -lOpenCL
