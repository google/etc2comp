include(../common.pri)
QT       -= gui

TARGET = EtcTool
TEMPLATE = lib
CONFIG += c++11

DEFINES += ETCTOOL_LIBRARY

DESTDIR = $$ETC2_LIBRARY_DESTINATION

LIBS += -lEtcLib

INCLUDEPATH += ../EtcLib/EtcCodec/ \
               ../EtcLib/Etc/ \
               ../third_party/lodepng/

SOURCES += \
    EtcAnalysis.cpp \
    EtcComparison.cpp \
    EtcFile.cpp \
    EtcFileHeader.cpp \
    EtcMemTest.cpp \
    EtcSourceImage.cpp \
    EtcTool.cpp \
    ../third_party/lodepng/lodepng.cpp

HEADERS +=\
    etctool_global.h \
    EtcAnalysis.h \
    EtcComparison.h \
    EtcFile.h \
    EtcFileHeader.h \
    EtcMemTest.h \
    EtcSourceImage.h \
    EtcTool.h \
    ../third_party/lodepng/lodepng.h

header_files.path = $$ETC2_BUILD_ROOT/include
for(header, HEADERS) {
  eval(header_files.files += $$header)
}

INSTALLS += header_files
