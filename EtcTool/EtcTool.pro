#-------------------------------------------------
#
# Project created by QtCreator 2016-10-24T13:36:59
#
#-------------------------------------------------

QT       -= gui

TARGET = EtcTool
TEMPLATE = lib
CONFIG += c++11

DEFINES += ETCTOOL_LIBRARY

LIBS += -L$$BUILD_DIR
LIBS += -lEtcLib

isEmpty(BUILD_DIR) : BUILD_DIR = $$(BUILD_DIR)
DESTDIR = $$BUILD_DIR

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
