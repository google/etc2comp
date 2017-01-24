include(../common.pri)
QT       -= gui

TARGET = EtcTool
TEMPLATE = lib
CONFIG += c++11

DEFINES += ETCTOOL_LIBRARY
DEFINES -= ETCLIB_LIBRARY

DESTDIR = $$ETC2_LIBRARY_DESTINATION

LIBS += -lEtcLib

LIBS += -L$$BUILD_DIR
LIBS += -lEtcLib

INCLUDEPATH += ../EtcLib/EtcCodec/ \
               ../EtcLib/Etc/ \
               ../EtcLib/ \
               ../third_party/lodepng/


SOURCES += \
    EtcAnalysis.cpp \
    EtcComparison.cpp \
    EtcFile.cpp \
    EtcFileHeader.cpp \
    EtcSourceImage.cpp \
    EtcTool.cpp \
    ../third_party/lodepng/lodepng.cpp

HEADERS +=\
    etctool_global.h \
    EtcAnalysis.h \
    EtcComparison.h \
    EtcFile.h \
    EtcFileHeader.h \
    EtcSourceImage.h \
    EtcTool.h \
    ../third_party/lodepng/lodepng.h

header_files.path = $$ETC2_BUILD_ROOT/include
for(header, HEADERS) {
  eval(header_files.files += $$header)
}

INSTALLS += header_files
